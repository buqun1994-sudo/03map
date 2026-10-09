package com.icar03.content.runtime

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.database.ContentObserver
import android.graphics.Bitmap
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentRegistry
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.ui.*
import com.icar03.content.model.VehicleFeature
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.util.concurrent.Executors
import java.util.concurrent.Future
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.atomic.AtomicLongArray
import kotlin.math.roundToInt

/** Shared never destroys the caller's store; Owned transfers lifetime to this binding. */
enum class StoreOwnership { Shared, Owned }

/** Main-thread projection. External system reads/writes run on one serial worker. */
class ContentBinding(
    private val store: ContentStore,
    private val ownership: StoreOwnership = StoreOwnership.Shared,
    private val mapper: ContentUiMapper = ContentUiMapper(),
    private val ambientFactory: (Bitmap) -> AmbientArtwork? = ::createAmbientField,
) : AutoCloseable {
    private val handler = Handler(Looper.getMainLooper())
    private var generation = 0L
    private val workerEpoch = AtomicLong()
    private val latestSystemRequest = AtomicLongArray(5)
    private var systemWriteSequence = 0L
    private var systemObservationSequence = 0L
    private var appliedSystemObservation = 0L
    private var systemReadInFlight = false
    private var systemReadDirty = false
    private var systemJob: Future<*>? = null
    private val systemWorker = Executors.newSingleThreadExecutor()
    private val systemTargets = arrayOfNulls<Float>(5)
    private val systemKindSequence = LongArray(5)
    private var running = false
    private var closed = false
    private var queuedProjectionEpoch: Long? = null
    private var listener: ContentStore.Listener? = null
    private var brightness = ContentPorts.SystemSnapshot(false, 0)
    private var volume = ContentPorts.SystemSnapshot(false, 0)
    private var screenCleaningAvailable = false
    private var systemLevels: Map<SystemQuickControl, ContentPorts.SystemSnapshot> =
        SystemQuickControl.entries.associateWith { ContentPorts.SystemSnapshot(false, 0) }
    private var sourcesOpen = false
    private var settingsOpen = false
    private var settingsCollapsed = false
    private var settingsSection = SettingsSection.Home
    private var lyricsSettings: LyricsSettingsBinding? = null
    private var placeholderSwitches: Map<ShortcutId, Boolean> = emptyMap()
    private var themeKey: Int? = null
    private var lyricsSystemAccentColor: Int = IcarThemeAccent.DEFAULT_ACCENT
    private var themeObserverRegistered = false
    private var feedback: String? = null
    private var feedbackRevision = 0L
    private val feedbackTimeout = Runnable {
        if (feedback != null) {
            feedback = null
            feedbackRevision++
            publishShell()
        }
    }
    private fun replaceFeedback(message: String?) {
        handler.removeCallbacks(feedbackTimeout)
        feedback = message?.takeIf { latestSnapshot.showActionFeedback && it.isNotBlank() }
        feedbackRevision++
        if (feedback != null && running) handler.postDelayed(feedbackTimeout, FEEDBACK_DURATION_MS)
    }
    private var latestSnapshot = store.snapshot()
    private var commandSequence = latestSnapshot.commandSequence
    private val mutableState = MutableStateFlow(inactive(shell(latestSnapshot)))
    /** Shell only. Lyrics and wall clock are independently projected and collected at their leaves. */
    val state: StateFlow<ContentUiState> = mutableState.asStateFlow()
    private val mutableLyrics = MutableStateFlow(mapper.mapLyrics(latestSnapshot))
    val lyrics: StateFlow<LyricsState> = mutableLyrics.asStateFlow()
    private val mutableClock = MutableStateFlow(mapper.clock(latestSnapshot))
    val clock: StateFlow<ClockText> = mutableClock.asStateFlow()
    private val mutableArtwork = MutableStateFlow<Bitmap?>(null)
    val artwork: StateFlow<Bitmap?> = mutableArtwork.asStateFlow()
    private val mutableActive = MutableStateFlow(false)
    val active: StateFlow<Boolean> = mutableActive.asStateFlow()
    private val mutableAmbient = MutableStateFlow<AmbientArtwork?>(null)
    val ambientArtwork: StateFlow<AmbientArtwork?> = mutableAmbient.asStateFlow()
    private var retainedAmbient: AmbientArtwork? = null
    private var ambientRecording = ""
    private var ambientSource: Bitmap? = null
    private var ambientBitmapGeneration = 0
    private var ambientSequence = 0L
    private var ambientJob: Future<*>? = null
    private val artworkWorker = Executors.newSingleThreadExecutor()
    private var environment: Context? = null
    private var observersRegistered = false
    private val brightnessObserver = object : ContentObserver(handler) {
        override fun onChange(selfChange: Boolean) { requestSystemRead() }
    }
    private val themeColorObserver = object : ContentObserver(handler) {
        override fun onChange(selfChange: Boolean) { refreshThemeAccent() }
    }
    private val environmentReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            if (!running) return
            if (intent.action == VOLUME_CHANGED) requestSystemRead()
            else {
                mapper.invalidateClock()
                projectClock(System.currentTimeMillis())
            }
        }
    }
    private val clockTick = Runnable { if (running) projectClock(System.currentTimeMillis()) }
    private val systemTick = object : Runnable {
        override fun run() {
            if (!running) return
            requestSystemRead()
            handler.postDelayed(this, 1_000L)
        }
    }

    /** App-context observers are attached by the actual Compose host, not by media callbacks. */
    internal fun observeEnvironment(context: Context) {
        checkMain()
        val app = context.applicationContext
        if (environment === app) return
        detachObservers()
        lyricsSettings?.close()
        environment = app
        lyricsSettings = LyricsSettingsBinding(app,
            onChanged = { if (running && !closed) publishShell() },
            onFeedback = { message ->
                if (running && !closed) { replaceFeedback(message); publishShell() }
            })
        if (running) { lyricsSettings?.start(); attachObservers() }
    }

    internal fun clearEnvironment() {
        checkMain()
        detachObservers()
        lyricsSettings?.close()
        lyricsSettings = null
        environment = null
    }

    fun start() {
        checkMain()
        if (closed || running) return
        running = true
        mutableActive.value = true
        val epoch = ++generation
        workerEpoch.set(epoch)
        store.startLyrics()
        listener = ContentStore.Listener { snapshot ->
            if (Looper.myLooper() == Looper.getMainLooper()) {
                if (running && generation == epoch) project(snapshot)
            } else {
                // UI publication may be coalesced; Store already reduced every media fact.
                synchronized(handler) {
                    if (workerEpoch.get() != epoch || queuedProjectionEpoch == epoch) return@Listener
                    queuedProjectionEpoch = epoch
                    handler.post {
                        synchronized(handler) { if (queuedProjectionEpoch == epoch) queuedProjectionEpoch = null }
                        if (running && generation == epoch) project(store.snapshot())
                    }
                }
            }
        }.also(store::addListener)
        lyricsSettings?.start()
        attachObservers()
        projectClock(System.currentTimeMillis())
        systemTick.run()
    }

    fun stop() {
        checkMain()
        if (!running) return
        running = false
        lyricsSettings?.stop()
        mutableActive.value = false
        store.stopLyrics()
        generation++
        workerEpoch.set(generation)
        ambientSequence++
        ambientJob?.cancel(true)
        ambientJob = null
        systemJob?.cancel(true)
        systemJob = null
        systemReadInFlight = false
        systemReadDirty = false
        systemTargets.fill(null)
        screenCleaningAvailable = false
        listener?.let(store::removeListener)
        listener = null
        detachObservers()
        themeKey = null
        lyricsSystemAccentColor = IcarThemeAccent.DEFAULT_ACCENT
        handler.removeCallbacksAndMessages(null)
        synchronized(handler) { queuedProjectionEpoch = null }
        sourcesOpen = false
        settingsOpen = false
        settingsCollapsed = false
        settingsSection = SettingsSection.Home
        replaceFeedback(null)
        mutableArtwork.value = null
        mutableAmbient.value = null
        retainedAmbient = null
        ambientRecording = ""
        ambientSource = null
        mutableState.value = inactive(mutableState.value)
    }

    private fun inactive(state: ContentUiState) = state.copy(
        sourcesOpen = false, settingsOpen = false, settingsCollapsed = false, settingsSection = SettingsSection.Home,
        lyricsSystemAccentColor = IcarThemeAccent.DEFAULT_ACCENT, message = null,
        lyricsProviderSettings = (lyricsSettings?.state ?: state.lyricsProviderSettings).copy(
            available = false, appleLoginOpen = false, applePreparing = false),
        controls = state.controls.mapValues { it.value.copy(available = false) },
        brightness = state.brightness.copy(available = false, target = null), volume = state.volume.copy(available = false, target = null),
        media = state.media.copy(playbackAvailable = false, nextAvailable = false, sourceAvailable = false),
        features = state.features.mapValues { it.value.copy(available = false, target = null) },
        systemLevels = state.systemLevels.mapValues { it.value.copy(available = false, target = null) },
        screenCleanAvailable = false,
            )

    override fun close() {
        checkMain()
        if (closed) return
        stop()
        closed = true
        lyricsSettings?.close()
        lyricsSettings = null
        environment = null
        artworkWorker.shutdownNow()
        systemWorker.shutdownNow()
        if (ownership == StoreOwnership.Owned) store.destroy()
    }

    @androidx.compose.runtime.Composable
    internal fun AppleMusicLoginContent(onEvent: (ContentEvent) -> Unit) {
        lyricsSettings?.LoginContent(onEvent)
    }

    fun navigateBack(): Boolean {
        checkMain()
        if (!running || closed || !settingsOpen) return false
        dispatch(ContentEvent.SettingsBack)
        return true
    }

    /** All dismissal causes share the same owner, including the credential-window lifecycle. */
    private fun closeSettings() {
        settingsOpen = false
        settingsCollapsed = false
        replaceFeedback(null)
        lyricsSettings?.dispatch(AppleMusicLoginDismissed)
    }

    internal fun canDispatch(event: ContentEvent): Boolean {
        if (!running || closed) return false
        if (!settingsOpen && event.isSettingsInteraction() && event !in setOf(
                ContentEvent.SettingsTapped, ContentEvent.OpenLyricsSettings, ContentEvent.SettingsBack,
                ContentEvent.SettingsDismissed, ContentEvent.DismissSheet)) return false
        if (settingsOpen && !event.isSettingsInteraction()) return false
        if (event == ContentEvent.SettingsCollapseTapped && (!settingsOpen || settingsSection != SettingsSection.Lyrics)) return false
        if (event == ContentEvent.SettingsRestored && (!settingsOpen || !settingsCollapsed)) return false
        if (settingsCollapsed && event !in setOf(ContentEvent.SettingsCollapseTapped, ContentEvent.SettingsRestored,
                ContentEvent.SettingsTapped, ContentEvent.SettingsBack, ContentEvent.SettingsDismissed,
                ContentEvent.OpenLyricsSettings, ContentEvent.DismissSheet)) return false
        if (lyricsSettings?.state?.appleLoginOpen == true && event !in setOf(
                ContentEvent.SettingsBack, AppleMusicLoginDismissed, ContentEvent.SettingsDismissed,
                ContentEvent.SettingsTapped, ContentEvent.DismissSheet)) return false
        return when (event) {
            is ContentEvent.ControlTapped -> shell(store.snapshot()).controls[event.id]?.available == true
            is ContentEvent.ControlPowerTapped -> shell(store.snapshot()).controls[event.id]?.available == true
            is ContentEvent.ControlAutomaticTapped -> shell(store.snapshot()).controls[event.id]?.available == true
            is ContentEvent.ControlLevelChanged -> shell(store.snapshot()).controls[event.id]?.available == true
            is ContentEvent.FeatureTapped -> event.id.feature?.let { shell(store.snapshot()).features[it]?.available } == true
            ContentEvent.RearWashTapped -> shell(store.snapshot()).controls[ControlId.RearWash]?.available == true
            ContentEvent.ScreenCleanTapped -> screenCleaningAvailable && state.value.screenCleanAvailable
            else -> true
        }
    }

    fun dispatch(event: ContentEvent) {
        checkMain()
        if (!canDispatch(event)) return
        // Reduce fresh cached facts before accepting an intent; a queued departure cannot write a closing sheet.
        project(store.snapshot())
        if (!canDispatch(event)) return
        if (lyricsSettings?.state?.appleLoginOpen == true && event == ContentEvent.SettingsBack) {
            lyricsSettings?.dispatch(AppleMusicLoginDismissed)
            return
        }
        if (lyricsSettings?.dispatch(event) == true) { publishShell(); return }
        if (event is ContentEvent.ControlTapped || event is ContentEvent.ControlPowerTapped ||
            event is ContentEvent.ControlAutomaticTapped || event is ContentEvent.ControlLevelChanged ||
            event == ContentEvent.PlayPause || event == ContentEvent.NextTrack || event == ContentEvent.RearWashTapped ||
            event is ContentEvent.SourceSelected || event is ContentEvent.BrightnessChanged || event is ContentEvent.VolumeChanged ||
             event is ContentEvent.SystemVolumeChanged || event is ContentEvent.FeatureTapped || event == ContentEvent.ScreenCleanTapped) replaceFeedback(null)
        // A fresh capability snapshot is a cached fact, never a synchronous service probe.
        when (event) {
            is ContentEvent.ControlTapped -> {
                if (state.value.controls[event.id]?.available != true) return
                if (event.id == ControlId.Lock) store.toggleLock()
                else if (event.id == ControlId.Wiper) store.toggleControlPower(event.id.id)
                else store.cycleControlLevel(event.id.id)
            }
            is ContentEvent.ControlPowerTapped -> {
                if (state.value.controls[event.id]?.available == true) store.toggleControlPower(event.id.id)
            }
            is ContentEvent.ControlAutomaticTapped -> {
                if (state.value.controls[event.id]?.available == true) store.toggleControlAutomatic(event.id.id)
            }
            is ContentEvent.ControlLevelChanged -> {
                if (state.value.controls[event.id]?.available == true) store.setControlLevel(event.id.id, event.level)
            }
            is ContentEvent.FeatureTapped -> {
                val feature = event.id.feature
                if (feature != null && state.value.features[feature]?.available == true) {
                    val current = state.value.features.getValue(feature)
                    if (feature.action) store.requestFeature(feature.id, 1)
                    else store.requestFeature(feature.id, if (current.displayed == 0) 1 else 0)
                }
            }
            // This is an OEM system command. A failed native launch invalidates the cached fact;
            // the content layer never creates a local cleaning overlay.
            ContentEvent.ScreenCleanTapped -> {
                if (state.value.screenCleanAvailable && !store.systemPort().startScreenCleaning()) {
                    screenCleaningAvailable = false
                    replaceFeedback("系统清洁屏幕不可用，请稍后重试")
                    publishShell()
                    requestSystemRead()
                }
            }
            is ContentEvent.BrightnessChanged -> store.setCenterBrightness((1 + event.value.coerceIn(0f, 1f) * 9f).roundToInt())
            is ContentEvent.VolumeChanged -> writeSystem(1, event.value)
            is ContentEvent.SystemVolumeChanged -> writeSystem(event.id.systemKind(), event.value)
            ContentEvent.PlayPause -> if (state.value.media.playbackAvailable) store.toggleMediaPlayback()
            ContentEvent.NextTrack -> if (state.value.media.nextAvailable) store.nextMediaTrack()
            ContentEvent.RearWashTapped -> store.triggerControl(ControlId.RearWash.id)
            is ContentEvent.SourceSelected -> {
                if (!state.value.media.sourceAvailable) return
                sourcesOpen = false
                store.selectMediaSource(event.source.label)
                project(store.snapshot())
            }
            is ContentEvent.PageSelected -> store.setPageIndex(if (event.page == PanelPage.Lyrics) 1 else 0)
            ContentEvent.OpenSources -> { if (state.value.media.sourceAvailable) sourcesOpen = true; publishShell() }
            ContentEvent.DismissSheet -> {
                sourcesOpen = false
                closeSettings()
                publishShell()
            }
            ContentEvent.SettingsTapped -> {
                lyricsSettings?.dispatch(AppleMusicLoginDismissed)
                sourcesOpen = false
                if (settingsOpen) closeSettings() else settingsOpen = true
                settingsCollapsed = false
                settingsSection = SettingsSection.Home
                replaceFeedback(null)
                publishShell()
            }
            ContentEvent.SettingsBack -> {
                if (settingsOpen) {
                    if (settingsSection == SettingsSection.Home) {
                        closeSettings()
                    } else {
                        settingsSection = SettingsSection.Home
                        settingsCollapsed = false
                    }
                    replaceFeedback(null)
                    publishShell()
                }
            }
            ContentEvent.SettingsCollapseTapped -> {
                settingsCollapsed = !settingsCollapsed
                publishShell()
            }
            ContentEvent.SettingsRestored -> {
                settingsCollapsed = false
                publishShell()
            }
            ContentEvent.OpenLyricsSettings -> {
                sourcesOpen = false
                settingsCollapsed = false
                settingsSection = SettingsSection.Lyrics
                settingsOpen = true
                replaceFeedback(null)
                publishShell()
            }
            // Geometry and immersion requests are consumed by the map host, never a second Binding animator.
            ContentEvent.EnterLyricsImmersive, ContentEvent.ExitLyricsImmersive -> Unit
            is ContentEvent.SettingsSectionSelected -> {
                if (settingsOpen) {
                    settingsSection = event.section
                    publishShell()
                }
            }
            ContentEvent.SettingsDismissed -> {
                closeSettings()
                publishShell()
            }
            is ContentEvent.ShowWeekdayChanged -> store.setShowWeekday(event.value)
            is ContentEvent.ShowSecondsChanged -> store.setShowSeconds(event.value)
            is ContentEvent.ShowIndoorTemperatureChanged -> store.setShowIndoorTemperature(event.value)
            is ContentEvent.ShowBatteryChanged -> store.setShowBattery(event.value)
            is ContentEvent.ShowRangeChanged -> store.setShowRange(event.value)
            is ContentEvent.ShowChargingStatusChanged -> store.setShowChargingStatus(event.value)
            is ContentEvent.ShowPluggedStatusChanged -> store.setShowPluggedStatus(event.value)
            is ContentEvent.ShowScheduledChargingChanged -> store.setShowScheduledCharging(event.value)
            is ContentEvent.ShowChargingRemainingTimeChanged -> store.setShowChargingRemainingTime(event.value)
            is ContentEvent.ShowChargingPowerChanged -> store.setShowChargingPower(event.value)
            is ContentEvent.LyricsFontScaleChanged -> store.setLyricsFontScale(event.value)
            is ContentEvent.LyricsFontSizeChanged -> store.setLyricsFontSizeSp(event.value)
            is ContentEvent.LyricsCurrentFontSizeChanged -> store.setLyricsCurrentFontSizeSp(event.value)
            is ContentEvent.LyricsLineGapChanged -> store.setLyricsLineGapDp(event.value)
            is ContentEvent.LyricsAlignmentChanged -> store.setLyricsAlignment(event.value)
            is ContentEvent.LyricsColorModeChanged -> store.setLyricsColorMode(event.value)
            is ContentEvent.LyricsCustomColorChanged -> store.setLyricsCustomColor(event.value)
            is ContentEvent.LyricsCurrentColorModeChanged -> store.setLyricsCurrentColorMode(event.value)
            is ContentEvent.LyricsCurrentCustomColorChanged -> store.setLyricsCurrentCustomColor(event.value)
            is ContentEvent.LyricsImmersiveFontSizeChanged -> store.setLyricsImmersiveFontSizeSp(event.value)
            is ContentEvent.LyricsImmersiveCurrentFontSizeChanged -> store.setLyricsImmersiveCurrentFontSizeSp(event.value)
            is ContentEvent.LyricsImmersiveLineGapChanged -> store.setLyricsImmersiveLineGapDp(event.value)
            is ContentEvent.LyricsLineSpacingChanged -> store.setLyricsLineSpacing(event.value)
            is ContentEvent.LyricsSpeakerLayoutChanged -> store.setLyricsSpeakerLayout(event.value)
            is ContentEvent.LyricsShowTranslationChanged -> store.setLyricsShowTranslation(event.value)
            is ContentEvent.LyricsHighlightChanged -> store.setLyricsHighlight(event.value)
            ContentEvent.LyricsDefaultsRequested -> {
                store.resetLyricsPreferences()
                lyricsSettings?.dispatch(LyricsPlatformSelected("auto"))
                publishShell()
            }
            is ContentEvent.ImmersiveShowTopBarChanged -> store.setImmersiveShowTopBar(event.value)
            is ContentEvent.ImmersiveTopBarKeepSplitChanged -> store.setImmersiveTopBarKeepSplit(event.value)
            is ContentEvent.ImmersiveShowDockChanged -> store.setImmersiveShowDock(event.value)
            is ContentEvent.ShowAmbientArtworkChanged -> store.setShowAmbientArtwork(event.value)
            is ContentEvent.ShowMediaSourceSwitcherChanged -> store.setShowMediaSourceSwitcher(event.value)
            is ContentEvent.DockButtonCountChanged -> store.setDockButtonCount(event.value)
            is ContentEvent.ShowActionFeedbackChanged -> store.setShowActionFeedback(event.value)
            is ContentEvent.AutoCloseSettingsOnDriveChanged -> store.setAutoCloseSettingsOnDrive(event.value)
            is ContentEvent.GestureBarReminderChanged -> store.setGestureBarReminder(event.value)
            is ContentEvent.UiOpacityChanged -> store.setUiOpacity(event.value)
            else -> Unit
        }
    }

    private fun read(kind: Int): ContentPorts.SystemSnapshot = try {
        store.systemPort().read(kind) ?: ContentPorts.SystemSnapshot(false, 0)
    } catch (_: RuntimeException) { ContentPorts.SystemSnapshot(false, 0) }

    private fun requestSystemRead() {
        if (!running || closed) return
        if (systemReadInFlight) { systemReadDirty = true; return }
        systemReadInFlight = true
        val epoch = generation
        val sequence = ++systemObservationSequence
        systemJob = systemWorker.submit {
            if (workerEpoch.get() != epoch) return@submit
            val light = read(0)
            val sound = read(1)
            val call = read(2)
            val navigation = read(3)
            val voice = read(4)
            val screenClean = try { store.systemPort().screenCleaningAvailable() } catch (_: RuntimeException) { false }
            handler.post {
                if (!running || generation != epoch) return@post
                systemReadInFlight = false
                applySystem(sequence, light, sound, call, navigation, voice, screenClean)
                if (systemReadDirty) { systemReadDirty = false; requestSystemRead() }
            }
        }
    }

    private fun applySystem(
        sequence: Long,
        light: ContentPorts.SystemSnapshot,
        sound: ContentPorts.SystemSnapshot,
        call: ContentPorts.SystemSnapshot,
        navigation: ContentPorts.SystemSnapshot,
        voice: ContentPorts.SystemSnapshot,
        screenClean: Boolean,
    ) {
        if (sequence <= appliedSystemObservation) return
        appliedSystemObservation = sequence
        brightness = light
        volume = sound
        systemLevels = mapOf(
            SystemQuickControl.Brightness to light,
            SystemQuickControl.Volume to sound,
            SystemQuickControl.CallVolume to call,
            SystemQuickControl.NavigationVolume to navigation,
            SystemQuickControl.VoiceVolume to voice,
        )
        screenCleaningAvailable = screenClean
        publishShell()
    }

    private fun writeSystem(kind: Int, value: Float) {
        if (!value.isFinite()) return
        val target = (value.coerceIn(0f, 1f) * 100f).roundToInt()
        val requestSequence = ++systemWriteSequence
        val feedbackOwner = feedbackRevision
        systemKindSequence[kind] = requestSequence
        latestSystemRequest.set(kind, requestSequence)
        systemTargets[kind] = target / 100f
        publishShell()
        val epoch = generation
        val observation = ++systemObservationSequence
        systemJob = systemWorker.submit {
            if (workerEpoch.get() != epoch || latestSystemRequest.get(kind) != requestSequence) return@submit
            val before = read(kind)
            if (workerEpoch.get() != epoch || latestSystemRequest.get(kind) != requestSequence) return@submit
            val accepted = before.matches(target) ||
                try { store.systemPort().write(kind, target) } catch (_: RuntimeException) { false }
            val light = read(0)
            val sound = read(1)
            val call = read(2)
            val navigation = read(3)
            val voice = read(4)
            val actual = when (kind) {
                0 -> light
                1 -> sound
                2 -> call
                3 -> navigation
                else -> voice
            }
            handler.post {
                if (!running || generation != epoch) return@post
                if (systemKindSequence[kind] == requestSequence) systemTargets[kind] = null
                if (systemWriteSequence == requestSequence && feedbackRevision == feedbackOwner) {
                    replaceFeedback(if (accepted && actual.matches(target)) null else "系统状态未确认")
                }
                applySystem(observation, light, sound, call, navigation, voice, screenCleaningAvailable)
                publishShell()
                handler.postDelayed({
                    if (running && generation == epoch && systemWriteSequence == requestSequence) {
                        confirmSystem(kind, target, accepted, requestSequence, feedbackOwner, epoch)
                    }
                }, 250L)
            }
        }
    }

    private fun confirmSystem(kind: Int, target: Int, accepted: Boolean, requestSequence: Long, feedbackOwner: Long, epoch: Long) {
        val observation = ++systemObservationSequence
        systemJob = systemWorker.submit {
            if (workerEpoch.get() != epoch || latestSystemRequest.get(kind) != requestSequence) return@submit
            val light = read(0)
            val sound = read(1)
            val call = read(2)
            val navigation = read(3)
            val voice = read(4)
            val actual = when (kind) {
                0 -> light
                1 -> sound
                2 -> call
                3 -> navigation
                else -> voice
            }
            handler.post {
                if (!running || generation != epoch) return@post
                if (systemWriteSequence == requestSequence && feedbackRevision == feedbackOwner && accepted && actual.matches(target)) replaceFeedback(null)
                applySystem(observation, light, sound, call, navigation, voice, screenCleaningAvailable)
                publishShell()
            }
        }
    }

    private fun shell(snapshot: ContentState): ContentUiState {
        val writableFeatures = VehicleFeature.entries.filter { feature ->
            val actual = snapshot.featureLevel(feature.id)
            val target = if (feature.action) 1 else if (actual == 1) 0 else 1
            store.isFeatureAvailable(feature.id, target)
        }.map { it.id }.toSet()
        return mapper.mapShell(snapshot, brightness, volume, RuntimeCapabilities(
            snapshot.vehicleWriteAvailable, snapshot.lockWriteAvailable, snapshot.mediaSourceWriteAvailable, snapshot.writableSeatControls,
            writableFeatures, screenCleaningAvailable),
            lyricsSystemAccentColor, systemLevels).copy(lyricsProviderSettings = lyricsSettings?.state ?: LyricsProviderUiState())
    }

    private fun publishShell() {
        // A confirmed non-P fact closes the entire session even on its first read or reopen.
        if (settingsOpen && latestSnapshot.autoCloseSettingsOnDrive && latestSnapshot.gear.isNonPark()) closeSettings()
        if (settingsCollapsed && settingsSection != SettingsSection.Lyrics) settingsCollapsed = false
        val projected = shell(latestSnapshot)
        val message = feedback
        val messageRevision = if (message == null) 0L else feedbackRevision
        val light = if (systemTargets[0] == null) projected.brightness else projected.brightness.copy(target = systemTargets[0])
        val sound = if (systemTargets[1] == null) projected.volume else projected.volume.copy(target = systemTargets[1])
        val system = projected.systemLevels.mapValues { (id, level) ->
            systemTargets[id.systemKind()]?.let { level.copy(target = it) } ?: level
        }
        val result = if (projected.sourcesOpen == sourcesOpen && projected.settingsOpen == settingsOpen &&
            projected.settingsCollapsed == settingsCollapsed && projected.settingsSection == settingsSection && projected.message == message && projected.messageRevision == messageRevision &&
            light === projected.brightness && sound === projected.volume && system == projected.systemLevels &&
            projected.placeholderSwitches == placeholderSwitches) projected
            else projected.copy(sourcesOpen = sourcesOpen, settingsOpen = settingsOpen, settingsCollapsed = settingsCollapsed,
                settingsSection = settingsSection,
                message = message, messageRevision = messageRevision, brightness = light, volume = sound,
                systemLevels = system, placeholderSwitches = placeholderSwitches)
        if (mutableState.value != result) mutableState.value = result
    }

    private fun projectClock(nowMillis: Long) {
        mutableClock.value = mapper.clock(latestSnapshot, nowMillis)
        handler.removeCallbacks(clockTick)
        if (running) {
            val unit = if (latestSnapshot.showSeconds) 1_000L else 60_000L
            val remainder = (nowMillis % unit).let { if (it < 0L) it + unit else it }
            handler.postDelayed(clockTick, unit - remainder)
        }
    }

    private fun project(snapshot: ContentState) {
        val previous = latestSnapshot
        latestSnapshot = snapshot
        if (snapshot.settingsAutoCloseSequence != previous.settingsAutoCloseSequence && settingsOpen) closeSettings()
        lyricsSystemAccentColor = IcarThemeAccent.resolve(
            themeKey, snapshot.themeMode == ContentState.THEME_DARK)
        if (!snapshot.showActionFeedback && previous.showActionFeedback) replaceFeedback(null)
        if (snapshot.commandSequence != commandSequence) {
            commandSequence = snapshot.commandSequence
            if (snapshot.commandStatus == ContentState.COMMAND_FAILED && snapshot.commandMessage.isNotBlank()) {
                replaceFeedback(snapshot.commandMessage)
            } else {
                replaceFeedback(null)
            }
        }
        publishShell()
        mutableLyrics.value = mapper.mapLyrics(snapshot)
        if (snapshot.nowMillis != previous.nowMillis) {
            projectClock(snapshot.nowMillis.takeIf { it > 0L } ?: System.currentTimeMillis())
        } else if (snapshot.showSeconds != previous.showSeconds || snapshot.showWeekday != previous.showWeekday) {
            projectClock(System.currentTimeMillis())
        }
        projectArtwork(snapshot)
    }

    private fun projectArtwork(snapshot: ContentState) {
        val isSong = snapshot.mediaDataAvailable && !snapshot.mediaPreview && snapshot.mediaSongIdentity == ContentPorts.MediaSongIdentity.SONG
        mutableArtwork.value = snapshot.mediaArtwork?.takeIf { isSong && snapshot.pendingSource.isEmpty() && !it.isRecycled }
        if (!snapshot.showAmbientArtwork) {
            cancelAmbientRequest()
            retainedAmbient = null
            mutableAmbient.value = null
            return
        }
        if (!isSong) {
            cancelAmbientRequest()
            mutableAmbient.value = null
            return
        }
        mutableAmbient.value = retainedAmbient
        val source = mutableArtwork.value
        val bitmapGeneration = source?.generationId ?: 0
        val recording = snapshot.mediaRecordingKey
        if (source !== ambientSource || bitmapGeneration != ambientBitmapGeneration || recording != ambientRecording) {
            cancelAmbientRequest()
            ambientSource = source
            ambientRecording = recording
            ambientBitmapGeneration = bitmapGeneration
            if (source != null) {
                val epoch = generation
                val sequence = ambientSequence
                ambientJob = artworkWorker.submit {
                    val field = ambientFactory(source)
                    handler.post {
                        if (running && generation == epoch && ambientSequence == sequence && ambientRecording == recording && ambientSource === source &&
                            !source.isRecycled && source.generationId == bitmapGeneration) {
                            ambientJob = null
                            if (field != null) { retainedAmbient = field; mutableAmbient.value = field }
                        } else {
                            field?.base?.takeUnless { it.isRecycled }?.recycle()
                            field?.glow?.takeUnless { it.isRecycled }?.recycle()
                        }
                    }
                }
            }
        }
    }

    private fun cancelAmbientRequest() {
        ambientSequence++
        ambientJob?.cancel(true)
        ambientJob = null
        ambientSource = null
        ambientRecording = ""
        ambientBitmapGeneration = 0
    }

    private fun refreshThemeAccent() {
        if (closed) return
        themeKey = runCatching {
            Settings.Global.getInt(
                requireNotNull(environment).contentResolver,
                IcarThemeAccent.GLOBAL_THEME_KEY,
            )
        }.getOrNull()
        lyricsSystemAccentColor = IcarThemeAccent.resolve(
            themeKey, latestSnapshot.themeMode == ContentState.THEME_DARK)
        if (running) publishShell()
    }

    @Suppress("DEPRECATION")
    private fun attachObservers() {
        val context = environment ?: return
        if (!observersRegistered) {
            val filter = IntentFilter().apply {
                addAction(Intent.ACTION_TIME_CHANGED)
                addAction(Intent.ACTION_TIMEZONE_CHANGED)
                addAction(Intent.ACTION_LOCALE_CHANGED)
                addAction(VOLUME_CHANGED)
            }
            if (Build.VERSION.SDK_INT >= 33) context.registerReceiver(environmentReceiver, filter, Context.RECEIVER_EXPORTED)
            else context.registerReceiver(environmentReceiver, filter)
            context.contentResolver.registerContentObserver(
                Settings.System.getUriFor(Settings.System.SCREEN_BRIGHTNESS), false, brightnessObserver)
            observersRegistered = true
        }
        if (!themeObserverRegistered) {
            runCatching {
                context.contentResolver.registerContentObserver(
                    Settings.Global.getUriFor(IcarThemeAccent.GLOBAL_THEME_KEY), false, themeColorObserver)
                themeObserverRegistered = true
            }
        }
        refreshThemeAccent()
    }

    private fun detachObservers() {
        val context = environment ?: return
        if (observersRegistered) {
            runCatching { context.unregisterReceiver(environmentReceiver) }
            runCatching { context.contentResolver.unregisterContentObserver(brightnessObserver) }
            observersRegistered = false
        }
        if (themeObserverRegistered) {
            runCatching { context.contentResolver.unregisterContentObserver(themeColorObserver) }
            themeObserverRegistered = false
        }
    }

    private fun checkMain() { check(Looper.myLooper() == Looper.getMainLooper()) { "ContentBinding must be used on the main thread" } }
    private companion object {
        private const val VOLUME_CHANGED = "android.media.VOLUME_CHANGED_ACTION"
        private const val FEEDBACK_DURATION_MS = 3_000L
    }
}
