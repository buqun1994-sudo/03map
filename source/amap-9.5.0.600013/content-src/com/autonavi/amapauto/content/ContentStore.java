package com.autonavi.amapauto.content;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public final class ContentStore {
    public interface Listener {
        void onContentStateChanged(ContentState state);
    }

    private final ContentState state = new ContentState();
    private final ContentPreferenceStore preferenceStore;
    private final ContentPorts.VehiclePort vehiclePort;
    private final ContentPorts.MediaPort mediaPort;
    private final List<Listener> listeners = new ArrayList<>();

    public ContentStore(Context context) {
        preferenceStore = new ContentPreferenceStore(context);
        vehiclePort = new ContentVehicleAdapter(context);
        mediaPort = new ContentMediaAdapter(context);
        preferenceStore.load(state);
        acceptVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable());
        acceptMediaSnapshot(ContentPorts.MediaSnapshot.unavailable());
        vehiclePort.start(new ContentPorts.VehicleSnapshotListener() {
            @Override
            public void onVehicleSnapshot(ContentPorts.VehicleSnapshot snapshot) {
                acceptVehicleSnapshot(snapshot);
            }
        });
        mediaPort.start(new ContentPorts.MediaSnapshotListener() {
            @Override
            public void onMediaSnapshot(ContentPorts.MediaSnapshot snapshot) {
                acceptMediaSnapshot(snapshot);
            }
        });
    }

    public synchronized ContentState snapshot() {
        return state.copy();
    }

    public void addListener(Listener listener) {
        if (listener == null) {
            return;
        }
        ContentState stateSnapshot;
        synchronized (this) {
            if (listeners.contains(listener)) {
                return;
            }
            listeners.add(listener);
            stateSnapshot = state.copy();
        }
        listener.onContentStateChanged(stateSnapshot);
    }

    public synchronized void removeListener(Listener listener) {
        listeners.remove(listener);
    }

    public void destroy() {
        vehiclePort.stop();
        mediaPort.stop();
        synchronized (this) {
            listeners.clear();
        }
    }

    public void updateClock(long nowMillis) {
        synchronized (this) {
            state.nowMillis = nowMillis;
        }
        publish();
    }

    public void setThemeMode(int themeMode) {
        int resolvedMode = themeMode == ContentState.THEME_DARK
                ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
        synchronized (this) {
            if (state.themeMode == resolvedMode) {
                return;
            }
            state.themeMode = resolvedMode;
        }
        publish();
    }

    public void setPageIndex(int pageIndex) {
        int boundedPage = Math.max(0, Math.min(ContentRegistry.visiblePageIds().length - 1, pageIndex));
        synchronized (this) {
            if (state.pageIndex == boundedPage) {
                return;
            }
            state.pageIndex = boundedPage;
            preferenceStore.save(state);
        }
        publish();
    }

    public void setControlIndex(int controlIndex) {
        int boundedControl = Math.max(0, Math.min(ContentRegistry.controlIds().length - 1, controlIndex));
        synchronized (this) {
            if (state.controlIndex == boundedControl) {
                return;
            }
            state.controlIndex = boundedControl;
            preferenceStore.save(state);
        }
        publish();
    }

    public void setShowWeekday(boolean showWeekday) {
        synchronized (this) {
            state.showWeekday = showWeekday;
            preferenceStore.save(state);
        }
        publish();
    }

    public void setShowSeconds(boolean showSeconds) {
        synchronized (this) {
            state.showSeconds = showSeconds;
            preferenceStore.save(state);
        }
        publish();
    }

    public void acceptVehicleSnapshot(ContentPorts.VehicleSnapshot snapshot) {
        if (snapshot == null) {
            return;
        }
        synchronized (this) {
            state.vehicleDataAvailable = snapshot.dataAvailable;
            state.vehiclePreview = snapshot.preview;
            state.temperatureC = snapshot.temperatureC;
            state.batteryPercent = snapshot.batteryPercent;
            state.rangeKm = snapshot.rangeKm;
            state.chargeState = normalizeChargeState(snapshot.chargeState);
            state.chargePowerKw = snapshot.chargePowerKw;
            state.chargeRemainingMinutes = snapshot.chargeRemainingMinutes;
            state.ventilationLevel = snapshot.ventilationLevel;
            state.heatingLevel = snapshot.heatingLevel;
            state.massageLevel = snapshot.massageLevel;
            state.seatControlsKnown = snapshot.seatControlsKnown;
            state.lockKnown = snapshot.lockKnown;
            state.locked = snapshot.locked;
        }
        publish();
    }

    public void acceptMediaSnapshot(ContentPorts.MediaSnapshot snapshot) {
        if (snapshot == null) {
            return;
        }
        synchronized (this) {
            state.mediaDataAvailable = snapshot.dataAvailable;
            state.mediaPreview = snapshot.preview;
            state.mediaSource = snapshot.source == null || snapshot.source.length() == 0
                    ? "本机" : snapshot.source;
            state.mediaPlaying = snapshot.playing;
            state.mediaGeneration = Math.max(0, snapshot.generation);
            state.mediaTitle = snapshot.title == null || snapshot.title.length() == 0
                    ? "暂无媒体" : snapshot.title;
            state.mediaArtist = snapshot.artist == null || snapshot.artist.length() == 0
                    ? "未连接" : snapshot.artist;
            state.mediaPlaybackAvailable = snapshot.playbackAvailable;
            state.mediaNextAvailable = snapshot.nextAvailable;
        }
        publish();
    }

    public void cycleSeatLevel(String seatId) {
        int nextLevel;
        synchronized (this) {
            if (!state.seatControlsKnown) {
                return;
            }
            if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(seatId)) {
                nextLevel = nextLevel(state.ventilationLevel);
            } else if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(seatId)) {
                nextLevel = nextLevel(state.heatingLevel);
            } else if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(seatId)) {
                nextLevel = nextLevel(state.massageLevel);
            } else {
                return;
            }
        }
        boolean accepted = vehiclePort.requestSeatLevel(seatId, nextLevel);
        recordCommandResult(accepted, "座椅车控命令未发送，请检查车机状态");
        publish();
    }

    public void toggleLock() {
        boolean nextLocked;
        synchronized (this) {
            if (!state.lockKnown || !vehiclePort.isLockAvailable()) {
                return;
            }
            nextLocked = !state.locked;
        }
        boolean accepted = vehiclePort.requestLock(nextLocked);
        recordCommandResult(accepted, "车锁命令未发送，请检查车机状态");
        publish();
    }

    public void toggleMediaPlayback() {
        boolean nextPlaying;
        synchronized (this) {
            if (!state.mediaPlaybackAvailable) {
                return;
            }
            nextPlaying = !state.mediaPlaying;
        }
        boolean accepted = mediaPort.requestPlayback(nextPlaying);
        recordCommandResult(accepted, "媒体播放命令未发送，请检查媒体会话");
        publish();
    }

    public void nextMediaTrack() {
        synchronized (this) {
            if (!state.mediaNextAvailable) {
                return;
            }
        }
        boolean accepted = mediaPort.requestNext();
        recordCommandResult(accepted, "下一首命令未发送，请检查媒体会话");
        publish();
    }

    public void selectMediaSource(String source) {
        if (source == null || source.length() == 0) {
            return;
        }
        boolean accepted = mediaPort.requestSource(source);
        recordCommandResult(accepted, "媒体来源切换未发送，请检查车机媒体服务");
        publish();
    }

    public void replaceDockItem(int slot, String itemId) {
        if (slot < 0 || slot >= state.dockItems.length || !preferenceStore.isValidDockItem(itemId)) {
            return;
        }
        synchronized (this) {
            for (int existingSlot = 0; existingSlot < state.dockItems.length; existingSlot++) {
                if (existingSlot != slot && itemId.equals(state.dockItems[existingSlot])) {
                    state.dockItems[existingSlot] = state.dockItems[slot];
                    break;
                }
            }
            state.dockItems[slot] = itemId;
            preferenceStore.save(state);
        }
        publish();
    }

    private int nextLevel(int currentLevel) {
        if (currentLevel < 0) {
            return 0;
        }
        return currentLevel == 0 ? 3 : currentLevel == 3 ? 2 : currentLevel == 2 ? 1 : 0;
    }

    private int normalizeChargeState(int chargeState) {
        return chargeState < ContentState.CHARGE_DEFAULT || chargeState > ContentState.CHARGE_CHARGING
                ? ContentState.CHARGE_DEFAULT : chargeState;
    }

    private void recordCommandResult(boolean accepted, String failureMessage) {
        synchronized (this) {
            state.commandStatus = accepted ? ContentState.COMMAND_NONE : ContentState.COMMAND_FAILED;
            state.commandSequence++;
            state.commandMessage = accepted ? "" : failureMessage;
        }
    }

    private void publish() {
        List<Listener> listenerSnapshot;
        ContentState stateSnapshot;
        synchronized (this) {
            stateSnapshot = state.copy();
            listenerSnapshot = new ArrayList<>(listeners);
        }
        for (Listener listener : listenerSnapshot) {
            listener.onContentStateChanged(stateSnapshot.copy());
        }
    }
}
