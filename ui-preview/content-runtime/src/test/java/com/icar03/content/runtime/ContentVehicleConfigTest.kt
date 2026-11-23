package com.icar03.content.runtime

import android.content.ComponentName
import android.content.ContextWrapper
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.content.pm.ServiceInfo
import android.os.Build
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentVehicleConfig
import com.autonavi.amapauto.content.ContentVehicleProtocol
import com.icar03.content.model.ControlCatalog
import com.icar03.content.model.ControlSection
import com.icar03.content.model.ControlSurface
import org.json.JSONArray
import org.json.JSONObject
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import org.robolectric.shadows.ShadowBuild
import java.io.File

/** Real Android assets/preferences/package facts and filesystem imports; no Store or UI fixture. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], shadows = [ContentVehicleConfigAtomicOsShadow::class])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleConfigTest {
    private val application get() = RuntimeEnvironment.getApplication()
    private val imported get() = File(application.filesDir, "vehicle-config.json")
    private val cache get() = application.getSharedPreferences("vehicle_config_self_check_v2", 0)

    @Before fun startWithFreshConfigCache() {
        check(imported.canonicalFile.parentFile == application.filesDir.canonicalFile)
        check(!imported.exists())
        cache.edit().clear().commit()
        ContentVehicleConfigAtomicOsShadow.reset()
    }

    @After fun cleanupProfileAndSelfCheckCache() {
        imported.delete()
        cache.edit().clear().commit()
        ContentVehicleConfigAtomicOsShadow.reset()
    }

    @Test fun shippedProfileAndCompleteMappingTemplatePassSemanticContractAndSchema() {
        val schema = jsonAsset("vehicle-profile.schema.json")
        for (name in listOf("icar03.json", "vehicle-profile.template.json")) {
            val bytes = asset(name)
            val result = ContentVehicleConfig.validate(bytes)
            assertTrue("$name: ${result.message()}", result.isValid)
            assertSchema(JSONObject(bytes.toString(Charsets.UTF_8)), schema, schema)
        }
        assertEquals(ControlCatalog.ids, jsonAsset("icar03.json").let { root ->
            listOf("controls", "features", "system", "content").flatMap { root.getJSONObject(it).keys().asSequence().toList() }.toSet()
        })
    }

    @Test fun fileNameTracksTheLoadedSourceWithoutChangingProfileIdentityOrTheSelfCheckCache() {
        val bytes = asset("icar03.json")
        assertNull(ContentVehicleConfig.validate(bytes).fileName())
        val bundled = ContentVehicleConfig.load(application)
        assertEquals("icar03.json", bundled.fileName())
        assertTrue(ContentVehicleConfig.saveImported(application, bytes))
        val overridden = ContentVehicleConfig.load(application)
        assertEquals("vehicle-config.json", overridden.fileName())
        assertEquals(bundled.profileId(), overridden.profileId())
        assertEquals(bundled.hash(), overridden.hash())
        assertTrue(overridden.selfCheckCacheHit())
        imported.writeText("{bad json}")
        val invalid = ContentVehicleConfig.load(application)
        assertFalse(invalid.isValid)
        assertEquals("vehicle-config.json", invalid.fileName())
    }

    @Test fun firstLoadRunsReadonlySelfCheckAndPersistsEveryFingerprintInput() {
        val port = RecordingPort(false)
        val config = ContentVehicleConfig.load(application, port)
        assertTrue(config.message(), config.isValid)
        assertTrue(config.selfCheckRan())
        assertFalse(config.selfCheckCacheHit())
        assertEquals(64, config.hash().length)
        assertEquals(64, config.environmentFingerprint().length)
        assertEquals(64, config.selfCheckFingerprint().length)
        assertEquals(config.hash(), cache.getString("config_hash", null))
        assertEquals(config.selfCheckFingerprint(), cache.getString("fingerprint", null))
        assertEquals(ContentVehicleConfig.ADAPTER_VERSION, cache.getString("adapter_version", null))
        assertEquals(config.environmentFingerprint(), cache.getString("environment_fingerprint", null))
        assertFalse(cache.contains("app_version"))
        assertTrue(cache.contains("capabilities"))
        assertTrue(cache.getBoolean("self_check_valid", false))
        assertTrue(port.availabilityReads > 0)
        assertEquals(emptyList<String>(), port.commands)
    }

    @Test fun sameFingerprintReusesCacheAcrossNewPortInstances() {
        val first = ContentVehicleConfig.load(application, RecordingPort(true))
        val stored = cache.all.toMap()
        val port = RecordingPort(true)
        val second = ContentVehicleConfig.load(application, port)
        assertTrue(first.selfCheckRan())
        assertTrue(second.isValid)
        assertFalse(second.selfCheckRan())
        assertTrue(second.selfCheckCacheHit())
        assertEquals(first.selfCheckFingerprint(), second.selfCheckFingerprint())
        assertEquals(stored, cache.all)
        assertEquals(emptyList<String>(), port.commands)
    }

    @Test fun changingConfigurationContentsRunsSelfCheckOnTheNextLoad() {
        val first = ContentVehicleConfig.load(application)
        val bytes = modified { put("displayName", "iCAR 03 imported"); put("profileRevision", 2) }
        assertTrue(ContentVehicleConfig.saveImported(application, bytes))
        val changed = ContentVehicleConfig.load(application)
        assertTrue(changed.message(), changed.isValid)
        assertTrue(changed.selfCheckRan())
        assertEquals("iCAR 03 imported", changed.displayName())
        assertNotEquals(first.hash(), changed.hash())
        assertEquals(first.environmentFingerprint(), changed.environmentFingerprint())
        assertNotEquals(first.selfCheckFingerprint(), changed.selfCheckFingerprint())
        assertTrue(ContentVehicleConfig.load(application).selfCheckCacheHit())
    }

    @Test fun changingOnlyWhitespaceStillChangesTheConfigurationContentHash() {
        val first = ContentVehicleConfig.load(application)
        assertTrue(ContentVehicleConfig.saveImported(application, asset("icar03.json") + "\n  ".toByteArray()))
        val changed = ContentVehicleConfig.load(application)
        assertTrue(changed.selfCheckRan())
        assertEquals(first.profileId(), changed.profileId())
        assertNotEquals(first.hash(), changed.hash())
    }

    @Test fun hostAppVersionAndUnrelatedBuildFingerprintDoNotInvalidateVehicleSupport() {
        val first = ContentVehicleConfig.load(application)
        val manager = shadowOf(application.packageManager)
        val info = application.packageManager.getPackageInfo(application.packageName, 0)
        info.versionName = "unrelated-host-update"
        info.setLongVersionCode(200)
        manager.installPackage(info)
        ShadowBuild.setFingerprint(Build.FINGERPRINT + "/changed")
        for (name in listOf("com.android.systemui", "android")) {
            manager.installPackage(PackageInfo().apply { packageName = name; versionName = "changed"; setLongVersionCode(999) })
        }
        val changed = ContentVehicleConfig.load(application)
        assertTrue(changed.selfCheckCacheHit())
        assertEquals(first.environmentFingerprint(), changed.environmentFingerprint())
        assertEquals(first.selfCheckFingerprint(), changed.selfCheckFingerprint())
        assertFalse(cache.contains("app_version"))
    }

    @Test fun changedCompiledAdapterIdentityInvalidatesTheSameConfigurationCache() {
        val first = ContentVehicleConfig.load(application, RecordingPort(false))
        val changed = ContentVehicleConfig.load(application, OtherRecordingPort(false))
        assertTrue(changed.selfCheckRan())
        assertEquals(first.hash(), changed.hash())
        assertNotEquals(first.environmentFingerprint(), changed.environmentFingerprint())
        cache.edit().putString("adapter_version", "old-contract").commit()
        assertTrue(ContentVehicleConfig.load(application, OtherRecordingPort(false)).selfCheckRan())
    }

    @Test fun deviceBuildOrModelChangeInvalidatesTheSameConfigurationCache() {
        val first = ContentVehicleConfig.load(application)
        ShadowBuild.setFingerprint(Build.FINGERPRINT + "/changed")
        ShadowBuild.setModel("S56_HQX")
        val changed = ContentVehicleConfig.load(application)
        assertTrue(changed.selfCheckRan())
        assertEquals(first.hash(), changed.hash())
        assertNotEquals(first.environmentFingerprint(), changed.environmentFingerprint())
        assertTrue(ContentVehicleConfig.load(application).selfCheckCacheHit())
    }

    @Test fun installingOrUpdatingRequiredServiceInvalidatesCacheWithoutMakingOfflineInvalid() {
        val first = ContentVehicleConfig.load(application, RecordingPort(false))
        installVehicleService(1)
        val installed = ContentVehicleConfig.load(application, RecordingPort(false))
        assertTrue(installed.message(), installed.isValid)
        assertTrue(installed.selfCheckRan())
        assertNotEquals(first.environmentFingerprint(), installed.environmentFingerprint())
        assertTrue(installed.allowsControl("lock"))
        installVehicleService(2)
        val updated = ContentVehicleConfig.load(application, RecordingPort(false))
        assertTrue(updated.selfCheckRan())
        assertNotEquals(installed.environmentFingerprint(), updated.environmentFingerprint())
        assertTrue(updated.allowsFeature("rear_fog"))
    }

    @Test fun temporaryComponentDisableDoesNotInvalidateHardwareSupportCache() {
        installVehicleService(1)
        val first = ContentVehicleConfig.load(application, RecordingPort(true))
        application.packageManager.setComponentEnabledSetting(vehicleComponent(), PackageManager.COMPONENT_ENABLED_STATE_DISABLED, 0)
        val disabled = ContentVehicleConfig.load(application, RecordingPort(false))
        assertTrue(disabled.isValid)
        assertTrue(disabled.selfCheckCacheHit())
        assertEquals(first.environmentFingerprint(), disabled.environmentFingerprint())
        assertTrue(disabled.allowsControl("lock"))
        application.packageManager.setComponentEnabledSetting(vehicleComponent(), PackageManager.COMPONENT_ENABLED_STATE_ENABLED, 0)
        val enabled = ContentVehicleConfig.load(application, RecordingPort(true))
        assertTrue(enabled.selfCheckCacheHit())
        assertTrue(enabled.isValid)
    }

    @Test fun serviceOfflineAndOnlineAreFreshDiagnosticsAndDoNotInvalidateStaticContract() {
        val port = RecordingPort(false)
        val offline = ContentVehicleConfig.load(application, port)
        assertTrue(offline.isValid)
        assertTrue(offline.allowsControl("lock"))
        assertTrue(offline.message().contains("离线"))
        assertFalse(cache.getString("self_check_message", "")!!.contains("离线"))
        port.available = true
        val online = ContentVehicleConfig.load(application, port)
        assertTrue(online.selfCheckCacheHit())
        assertEquals(offline.selfCheckFingerprint(), online.selfCheckFingerprint())
        assertFalse(online.message().contains("离线"))
        port.available = false
        assertTrue(ContentVehicleConfig.load(application, port).message().contains("离线"))
        assertEquals(emptyList<String>(), port.commands)
    }

    @Test fun unavailableOrThrowingTransportNeverSendsAnyRequestOrStartsAnyServiceDuringSelfCheck() {
        val port = RecordingPort(false).apply { throwOnAvailability = true }
        val first = ContentVehicleConfig.load(application, port)
        val cached = ContentVehicleConfig.load(application, port)
        assertTrue(first.isValid)
        assertTrue(cached.isValid)
        assertTrue(first.message().contains("未知"))
        assertTrue(cached.selfCheckCacheHit())
        assertTrue(first.allowsControl("front_wiper"))
        assertEquals(emptyList<String>(), port.commands)
    }

    @Test fun undeclaredCatalogItemsAreAbsentAndCannotExecuteEvenThoughTheyAreKnown() {
        val bytes = modified {
            getJSONObject("system").remove("call_volume")
            val before = getJSONObject("presentation").getJSONArray("controlCenter")
            getJSONObject("presentation").put("controlCenter", JSONArray(before.values().filter { it != "call_volume" }))
        }
        val config = ContentVehicleConfig.validate(bytes)
        assertTrue(config.message(), config.isValid)
        assertFalse(config.isDeclared("call_volume"))
        assertFalse(config.allowsSystem("call_volume"))
        assertFalse(config.availableControlCenterItems().contains("call_volume"))
        assertFalse(config.allowsSurface("call_volume", ControlSurface.ControlCenter))
        assertFalse(ContentVehicleConfig.validate(modified {
            getJSONObject("system").remove("call_volume")
            getJSONObject("presentation").getJSONArray("controlCenter").put("call_volume")
        }).isValid)
        assertFalse(ContentVehicleConfig.validate(modified { getJSONObject("content").remove("media") }).isValid)
    }

    @Test fun unknownIdsWrongSectionsAndForgedMappingsAreRejectedEvenWhenDisabled() {
        assertRejected { getJSONObject("controls").put("invented", entry("controls", "lock")) }
        assertRejected {
            val lock = getJSONObject("controls").remove("lock")
            getJSONObject("features").put("lock", lock)
        }
        assertRejected { entry("controls", "lock").getJSONObject("mapping").put("adapter", "forged_door_lock") }
        assertRejected { entry("features", "rear_fog").put("enabled", false).getJSONObject("mapping").put("adapter", "door_lock") }
        assertRejected { entry("controls", "lock").put("mapping", JSONObject.NULL) }
    }

    @Test fun unimplementedCapabilitiesCannotBeEnabledOrGivenInventedMappings() {
        for ((section, id) in listOf("controls" to "climate", "features" to "passenger_seat_adjust")) {
            assertRejected { entry(section, id).put("enabled", true) }
            assertRejected { entry(section, id).put("mapping", JSONObject().put("adapter", "pretend_compiled_binding")) }
        }
        val config = ContentVehicleConfig.validate(asset("icar03.json"))
        assertTrue(config.isDeclared("climate"))
        assertFalse(config.allowsControl("climate"))
        assertTrue(config.isDeclared("passenger_seat_adjust"))
        assertFalse(config.allowsFeature("passenger_seat_adjust"))
        assertTrue(config.allowsFeatureMode("glove_box", 1))
        assertFalse(config.allowsFeatureMode("glove_box", 0))
        assertTrue(config.availableDockItems().contains("glove_box"))
        assertTrue(config.availableDockItems().contains("window_vent"))
    }

    @Test fun unimplementedClimateIsHiddenAndItsOnlyLegalSurfacesAreCardAndGesture() {
        val config = ContentVehicleConfig.validate(asset("icar03.json"))
        assertTrue(config.isDeclared("climate"))
        for (surface in ControlSurface.entries) assertFalse(config.availableItems(surface).contains("climate"))
        assertFalse(config.controlCenterItems().contains("climate"))
        assertFalse(config.controlCardItems().contains("climate"))
        assertFalse(config.gestureItems().contains("climate"))
        assertEquals(setOf(ControlSurface.ControlCard, ControlSurface.Gesture), ControlCatalog.find("climate")!!.surfaces)
        assertRejected { entry("controls", "climate").getJSONArray("surfaces").put("dock") }
        assertRejected { entry("controls", "climate").getJSONArray("surfaces").put("control_center") }
        assertRejected { getJSONObject("presentation").getJSONArray("dock").put("climate") }
    }

    @Test fun enabledDeclarationsRemainCandidatesWhileDisabledOnesAreHidden() {
        val config = ContentVehicleConfig.validate(modified { entry("controls", "lock").put("enabled", false) })
        assertTrue(config.isValid)
        assertFalse(config.allowsControl("lock"))
        assertFalse(config.availableDockItems().contains("lock"))
        assertTrue(config.availableControlCenterItems().contains("call_volume"))
        assertTrue(config.controlCenterItems().contains("call_volume"))
        assertTrue(config.availableControlCenterItems().contains("media"))
        assertFalse(config.controlCenterItems().contains("media"))
        assertTrue(config.availableGestureItems().contains("control_center_page"))
        assertTrue(config.gestureItems().contains("control_center_page"))
        assertTrue(config.availablePageItems().isEmpty())
        assertEquals(setOf("media", "brightness", "volume", "call_volume", "navigation_volume", "voice_volume", "front_wiper"), config.availableControlCardItems())
        try {
            (config.availableDockItems() as MutableSet<String>).add("climate")
            fail("available sets must be immutable")
        } catch (_: UnsupportedOperationException) { }
        try {
            (config.dockItems() as MutableList<String>).clear()
            fail("initial layouts must be immutable ordered lists")
        } catch (_: UnsupportedOperationException) { }
    }

    @Test fun crossSurfaceRequiresBothCatalogPermissionAndTheProfileDeclaration() {
        assertRejected { entry("controls", "lock").getJSONArray("surfaces").put("gesture") }
        assertRejected { entry("controls", "lock").put("surfaces", JSONArray(listOf("control_center"))) }
        val narrowed = ContentVehicleConfig.validate(modified {
            entry("controls", "lock").put("surfaces", JSONArray(listOf("control_center")))
            getJSONObject("presentation").put("dock", JSONArray(listOf("settings")))
        })
        assertTrue(narrowed.message(), narrowed.isValid)
        assertTrue(narrowed.availableControlCenterItems().contains("lock"))
        assertFalse(narrowed.availableDockItems().contains("lock"))
    }

    @Test fun fieldTypesAreStrictAndCannotCoerceStringsNullsFractionsOrObjects() {
        assertRejected { put("schemaVersion", "1") }
        assertRejected { put("profileRevision", 1.5) }
        assertRejected { put("profileId", "BAD ID") }
        assertRejected { put("displayName", " ") }
        assertRejected { put("system", JSONObject.NULL) }
        assertRejected { entry("controls", "lock").put("enabled", "true") }
        assertRejected { entry("controls", "lock").put("mapping", 123) }
        assertRejected { entry("controls", "lock").put("surfaces", "dock") }
        assertRejected { entry("controls", "lock").getJSONArray("surfaces").put(17) }
        assertRejected { getJSONObject("presentation").put("gestures", JSONObject()) }
        assertRejected { entry("controls", "climate").put("mapping", false) }
    }

    @Test fun duplicateKeysAndArrayEntriesAreRejectedRatherThanCollapsed() {
        val duplicate = asset("icar03.json").toString(Charsets.UTF_8).replace(
            "\"schemaVersion\": 2", "\"schemaVersion\": 2, \"schemaVersion\": 2",
        )
        assertFalse(ContentVehicleConfig.validate(duplicate.toByteArray()).isValid)
        val escapedKey = duplicate.replace("\"schemaVersion\": 2, \"schemaVersion\": 2", "\"schemaVersion\": 2, \"schema\\u0056ersion\": 2")
        assertFalse(ContentVehicleConfig.validate(escapedKey.toByteArray()).isValid)
        assertRejected { entry("controls", "lock").getJSONArray("surfaces").put("dock") }
        assertRejected { entry("controls", "lock").getJSONArray("allowedModes").put(1) }
        assertRejected { getJSONObject("presentation").getJSONArray("controlCenter").put("lock") }
        assertRejected { getJSONObject("compatibility").getJSONArray("modelHints").put("S56_HQX") }
    }

    @Test fun backendDependencyAndReadOnlyCachePolicyMustMatchCompiledContract() {
        assertRejected { getJSONObject("backend").put("id", "invented_backend") }
        assertRejected { getJSONObject("backend").put("contractRevision", 3) }
        assertRejected { getJSONObject("backend").put("contractRevision", "1") }
        assertRejected { getJSONObject("compatibility").put("requiredServices", JSONArray()) }
        assertRejected { getJSONObject("compatibility").getJSONArray("requiredServices").getJSONObject(0).put("descriptor", "fake") }
        assertRejected { getJSONObject("selfCheck").put("mode", "execute_commands") }
        assertRejected { getJSONObject("selfCheck").put("reuse", "config_hash") }
        assertRejected { put("unknownField", true) }
    }

    @Test fun rendererSpanAndModeContractsCannotBeReplacedExpandedOrRepeated() {
        assertRejected { entry("controls", "front_wiper").put("renderer", "toggle") }
        assertRejected { entry("controls", "front_wiper").getJSONObject("span").put("rows", 1) }
        assertRejected { entry("system", "brightness").getJSONObject("span").put("columns", 5) }
        assertRejected { entry("controls", "seat_heating").getJSONArray("allowedModes").put(8) }
        assertRejected { entry("controls", "auto_wiper").put("allowedModes", JSONArray(listOf(0, 1))) }
        assertRejected { entry("controls", "lock").put("allowedModes", JSONArray(listOf("0", 1))) }
        val config = ContentVehicleConfig.validate(asset("icar03.json"))
        assertTrue(config.allowsControlMode("auto_wiper", 5))
        assertFalse(config.allowsControlMode("auto_wiper", 1))
        assertTrue(config.allowsFeatureMode("glove_box", 1))
        assertFalse(config.allowsFeatureMode("glove_box", 0))
    }

    @Test fun schemaAndRuntimeRejectTheSameBindingModeAndDeclarationViolations() {
        val schema = jsonAsset("vehicle-profile.schema.json")
        val changes: List<JSONObject.() -> Unit> = listOf(
            { entry("controls", "lock").getJSONObject("mapping").put("adapter", "fake") },
            { entry("features", "passenger_seat_adjust").put("enabled", true) },
            { entry("controls", "climate").getJSONArray("surfaces").put("dock") },
            { getJSONObject("system").remove("brightness") },
            { entry("controls", "lock").put("surfaces", JSONArray(listOf("control_center"))) },
            { getJSONObject("presentation").put("dock", JSONArray(listOf("settings", "invented"))) },
            { entry("controls", "seat_heating").getJSONArray("allowedModes").put(7) },
        )
        for (change in changes) {
            val bytes = modified(change)
            assertFalse(ContentVehicleConfig.validate(bytes).isValid)
            assertFalse(acceptsSchema(JSONObject(bytes.toString(Charsets.UTF_8)), schema, schema, "root"))
        }
    }

    @Test fun catalogMetadataCollectionsAreImmutableAndCompleteForImplementedEntries() {
        for (definition in ControlCatalog.all) {
            if (definition.implemented) assertNotNull(definition.bindingId)
            try {
                (definition.surfaces as MutableSet<ControlSurface>).add(ControlSurface.Page)
                fail("catalog surfaces must be immutable")
            } catch (_: UnsupportedOperationException) { }
        }
        assertEquals(ControlSection.Control, ControlCatalog.find("climate")!!.section)
        assertFalse(ControlCatalog.find("climate")!!.implemented)
        assertFalse(ControlCatalog.find("passenger_seat_adjust")!!.implemented)
    }

    @Test fun strictJsonRejectsCommentsTrailingCommaTrailingGarbageBadUtf8AndSizeOverflow() {
        val text = asset("icar03.json").toString(Charsets.UTF_8)
        for (invalid in listOf("/*comment*/$text", "$text {}", "'profile'", text.replace("\"schemaVersion\": 2,", "\"schemaVersion\": 02,"), text.replace("\"schemaVersion\": 2,", "\"schemaVersion\": 2.0,"), text.replace("\"schemaVersion\": 2,", "\"schemaVersion\": 2e0,"), text.replace("\"mode\": \"read_only\"", "\"mode\": NaN"))) {
            assertFalse(ContentVehicleConfig.validate(invalid.toByteArray()).isValid)
        }
        assertFalse(ContentVehicleConfig.validate(text.trimEnd().dropLast(1).plus(",}").toByteArray()).isValid)
        assertFalse(ContentVehicleConfig.validate(byteArrayOf(0xc3.toByte(), 0x28)).isValid)
        assertFalse(ContentVehicleConfig.validate(ByteArray(ContentVehicleConfig.MAX_CONFIG_BYTES + 1)).isValid)
        assertFalse(ContentVehicleConfig.validate(byteArrayOf()).isValid)
        assertFalse(ContentVehicleConfig.validate(null).isValid)
    }

    @Test fun validatedImportIsAtomicallyReplacedAndConsumedOnlyByTheNextLoad() {
        val original = ContentVehicleConfig.load(application)
        val first = modified { put("profileId", "icar03.imported1") }
        assertTrue(ContentVehicleConfig.saveImported(application, first))
        assertArrayEquals(first, imported.readBytes())
        assertEquals("icar03", original.profileId())
        assertEquals("icar03.imported1", ContentVehicleConfig.load(application).profileId())
        val second = modified { put("profileId", "icar03.imported2") }
        assertTrue(ContentVehicleConfig.saveImported(application, second))
        assertEquals(2, ContentVehicleConfigAtomicOsShadow.renameCalls)
        assertArrayEquals(second, imported.readBytes())
        assertEquals("icar03.imported2", ContentVehicleConfig.load(application).profileId())
        assertFalse(application.filesDir.listFiles()!!.any { it.name.startsWith("vehicle-config-") && it.extension == "tmp" })
    }

    @Test fun validationAndFilesystemImportFailuresPreserveThePreviousConfigurationAndCache() {
        val good = modified { put("profileId", "icar03.saved") }
        assertTrue(ContentVehicleConfig.saveImported(application, good))
        val active = ContentVehicleConfig.load(application)
        val cached = cache.all.toMap()
        assertFalse(ContentVehicleConfig.saveImported(application, modified { entry("controls", "lock").getJSONObject("mapping").put("adapter", "fake") }))
        assertFalse(ContentVehicleConfig.saveImported(application, ByteArray(ContentVehicleConfig.MAX_CONFIG_BYTES + 1)))
        assertFalse(ContentVehicleConfig.saveImported(application, null))
        ContentVehicleConfigAtomicOsShadow.failNextRename = true
        assertFalse(ContentVehicleConfig.saveImported(application, asset("icar03.json")))
        assertFalse(application.filesDir.listFiles()!!.any { it.name.startsWith("vehicle-config-") && it.extension == "tmp" })
        val unavailableDirectory = object : ContextWrapper(application) {
            override fun getFilesDir(): File = imported // A regular file cannot be a temporary-file directory.
        }
        assertFalse(ContentVehicleConfig.saveImported(unavailableDirectory, asset("icar03.json")))
        assertArrayEquals(good, imported.readBytes())
        assertEquals(cached, cache.all)
        assertEquals(active.hash(), ContentVehicleConfig.load(application).hash())
    }

    @Test fun corruptImportedFileDoesNotFallBackToAssetOrAuthorizeAnyCommand() {
        assertTrue(ContentVehicleConfig.saveImported(application, asset("icar03.json")))
        imported.writeText("{bad json}")
        val port = RecordingPort(true)
        val invalid = ContentVehicleConfig.load(application, port)
        assertFalse(invalid.isValid)
        assertFalse(invalid.allowsControl("lock"))
        assertTrue(invalid.availableControlCenterItems().isEmpty())
        assertEquals(emptyList<String>(), port.commands)
        imported.writeBytes(ByteArray(ContentVehicleConfig.MAX_CONFIG_BYTES + 1))
        assertFalse(ContentVehicleConfig.load(application, port).isValid)
    }

    @Test fun functionAreaAndRawSemanticTablesCanChangeWithoutCompilingAnotherBinding() {
        val bytes = modified {
            val mapping = entry("controls", "lock").getJSONObject("mapping")
            mapping.getJSONArray("reads").getJSONObject(0).put("functionId", 9001).put("area", 16)
            mapping.put("readModes", JSONArray().put(JSONObject().put("raw", JSONArray(listOf(41))).put("mode", 1))
                .put(JSONObject().put("raw", JSONArray(listOf(42))).put("mode", 0)))
            mapping.put("writes", JSONArray().put(JSONObject().put("mode", 0).put("functionId", 9002).put("area", 64).put("value", 92))
                .put(JSONObject().put("mode", 1).put("functionId", 9002).put("area", 64).put("value", 91)))
        }
        val config = ContentVehicleConfig.validate(bytes)
        assertTrue(config.message(), config.isValid)
        val mapping = config.mapping("lock")!!
        assertEquals(9001, mapping.reads.single().functionId)
        assertEquals(16, mapping.reads.single().area)
        assertEquals(1, mapping.normalize(41))
        assertEquals(0, mapping.normalize(42))
        assertEquals(-1, mapping.normalize(1))
        assertEquals(9002, mapping.write(1).functionId)
        assertEquals(64, mapping.write(1).area)
        assertEquals(91, mapping.write(1).value)
        assertSchema(JSONObject(bytes.toString(Charsets.UTF_8)), jsonAsset("vehicle-profile.schema.json"), jsonAsset("vehicle-profile.schema.json"))
    }

    @Test fun unknownAdaptersAmbiguousCodecsErrorSentinelsAndIncompleteWritesAreRejected() {
        assertRejected { entry("controls", "lock").getJSONObject("mapping").put("adapter", "unknown_transport") }
        assertRejected { entry("controls", "lock").getJSONObject("mapping").put("script", "send(1)") }
        assertRejected { entry("controls", "lock").getJSONObject("mapping").getJSONArray("reads").getJSONObject(0).put("area", -1) }
        assertRejected { entry("controls", "lock").getJSONObject("mapping").getJSONArray("writes").remove(0) }
        assertRejected { entry("controls", "lock").getJSONObject("mapping").getJSONArray("readModes").getJSONObject(0).put("raw", JSONArray(listOf(-1000))) }
        assertRejected { entry("controls", "lock").getJSONObject("mapping").getJSONArray("readModes").put(JSONObject().put("raw", JSONArray(listOf(1))).put("mode", 0)) }
        assertRejected { getJSONObject("signals").getJSONObject("cabin_temperature").put("kind", "script") }
        assertRejected { getJSONObject("signals").getJSONObject("battery_soc").put("scale", 0) }
    }

    @Test fun perItemSupportCachePreservesMissingSupportedAndUnknownIndependently() {
        val port = RecordingPort(false).apply {
            evidence["lock"] = ContentPorts.CapabilityCheck(ContentPorts.Capability.MISSING, "车型不提供车锁")
            evidence["seat_heating"] = ContentPorts.CapabilityCheck(ContentPorts.Capability.SUPPORTED, "已确认硬件支持")
        }
        val first = ContentVehicleConfig.load(application, port)
        assertTrue(first.isValid)
        assertFalse(first.availableDockItems().contains("lock"))
        assertFalse(first.allowsControl("lock"))
        assertTrue(first.availableControlCenterItems().contains("seat_heating"))
        assertEquals(ContentPorts.Capability.SUPPORTED, first.capability("seat_heating").status)
        assertEquals(ContentPorts.Capability.UNKNOWN, first.capability("seat_massage").status)
        assertTrue(first.availableControlCenterItems().contains("seat_massage"))
        val cachedPort = RecordingPort(true)
        val cached = ContentVehicleConfig.load(application, cachedPort)
        assertTrue(cached.selfCheckCacheHit())
        assertTrue(cachedPort.inspections.isEmpty())
        assertEquals(ContentPorts.Capability.MISSING, cached.capability("lock").status)
        assertEquals(ContentPorts.Capability.SUPPORTED, cached.capability("seat_heating").status)
        assertEquals(ContentPorts.Capability.UNKNOWN, cached.capability("seat_massage").status)
        assertTrue(port.inspections.distinct().size == port.inspections.size)
        assertTrue(port.commands.isEmpty())
    }

    @Test fun automaticCompanionEvidenceFollowsTupleCodecWhenReadColumnsAreReordered() {
        val config = ContentVehicleConfig.validate(modified {
            val mapping = entry("controls", "seat_heating").getJSONObject("mapping")
            val reads = mapping.getJSONArray("reads")
            mapping.put("reads", JSONArray(listOf(reads.getJSONObject(1), reads.getJSONObject(0))))
            val rows = mapping.getJSONArray("readModes")
            for (index in 0 until rows.length()) {
                val row = rows.getJSONObject(index)
                val raw = row.getJSONArray("raw")
                row.put("raw", JSONArray(listOf(raw.get(1), raw.get(0))))
            }
        })
        assertTrue(config.message(), config.isValid)
        val mapping = config.mapping("seat_heating")!!
        assertEquals(-1, mapping.normalize(2, 0))
        assertEquals(1, mapping.automaticCompanionState(intArrayOf(2, 0), 4))
        assertEquals(0, mapping.automaticCompanionState(intArrayOf(1, 0), 4))
        assertEquals(-1, mapping.automaticCompanionState(intArrayOf(-1, 1), 4))
    }

    @Test fun systemSupportChecksArePerItemAndNeverInvokeReadWriteOrOpenActions() {
        val checked = mutableListOf<String>()
        val system = object : ContentPorts.SystemPort {
            override fun read(kind: Int): ContentPorts.SystemSnapshot = error("self-check must not bind/read the audio service")
            override fun write(kind: Int, percent: Int): Boolean = error("self-check must not send actions")
            override fun inspectCapability(id: String, mapping: ContentVehicleProtocol.Mapping): ContentPorts.CapabilityCheck {
                checked += id
                return when (id) {
                    "volume" -> ContentPorts.CapabilityCheck(ContentPorts.Capability.MISSING, "硬件缺少媒体音量")
                    "call_volume" -> ContentPorts.CapabilityCheck(ContentPorts.Capability.SUPPORTED, "已确认硬件支持")
                    else -> ContentPorts.CapabilityCheck.unknown("硬件支持待确认")
                }
            }
        }
        val config = ContentVehicleConfig.load(application, RecordingPort(false), system)
        assertTrue(config.isValid)
        assertFalse(config.availableControlCardItems().contains("volume"))
        assertTrue(config.availableControlCardItems().contains("call_volume"))
        assertEquals(ContentPorts.Capability.UNKNOWN, config.capability("voice_volume").status)
        assertEquals(setOf("volume", "call_volume", "navigation_volume", "voice_volume", "screen_clean", "system_control_center"), checked.toSet())
        checked.clear()
        assertTrue(ContentVehicleConfig.load(application, RecordingPort(true), system).selfCheckCacheHit())
        assertTrue(checked.isEmpty())
    }

    @Test fun realReadbackUpgradesUnknownSupportAndTemporaryOfflineNeverErasesIt() {
        val port = RecordingPort(true)
        val config = ContentVehicleConfig.load(application, port)
        val state = com.autonavi.amapauto.content.ContentState().apply {
            vehicleDataAvailable = true; lockKnown = true; locked = true
        }
        config.acceptReadbackSupport(state)
        assertEquals(ContentPorts.Capability.SUPPORTED, config.capability("lock").status)
        state.vehicleDataAvailable = false
        config.acceptReadbackSupport(state)
        val restored = ContentVehicleConfig.load(application, RecordingPort(false))
        assertTrue(restored.selfCheckCacheHit())
        assertEquals(ContentPorts.Capability.SUPPORTED, restored.capability("lock").status)
        assertTrue(restored.availableDockItems().contains("lock"))
    }

    private fun asset(name: String): ByteArray = application.assets.open("content-vehicle/$name").use { it.readBytes() }
    private fun jsonAsset(name: String): JSONObject = JSONObject(asset(name).toString(Charsets.UTF_8))
    private fun modified(change: JSONObject.() -> Unit): ByteArray = jsonAsset("icar03.json").apply(change).toString().toByteArray()
    private fun JSONObject.entry(section: String, id: String): JSONObject = getJSONObject(section).getJSONObject(id)
    private fun assertRejected(change: JSONObject.() -> Unit) {
        val result = ContentVehicleConfig.validate(modified(change))
        assertFalse("invalid fixture was accepted", result.isValid)
        assertTrue(result.availableControlCenterItems().isEmpty())
    }
    private fun vehicleComponent() = ComponentName(ContentVehicleProtocol.VEHICLE_SERVICE_PACKAGE, ContentVehicleProtocol.VEHICLE_SERVICE_CLASS)
    private fun installVehicleService(version: Int) {
        val appInfo = ApplicationInfo().apply { packageName = ContentVehicleProtocol.VEHICLE_SERVICE_PACKAGE; enabled = true }
        shadowOf(application.packageManager).installPackage(PackageInfo().apply {
            packageName = appInfo.packageName
            applicationInfo = appInfo
            versionName = "service-$version"
            setLongVersionCode(version.toLong())
            lastUpdateTime = version * 1000L
            services = arrayOf(ServiceInfo().apply {
                packageName = appInfo.packageName
                name = ContentVehicleProtocol.VEHICLE_SERVICE_CLASS
                applicationInfo = appInfo
                enabled = true
                exported = true
            })
        })
    }

    private open class RecordingPort(var available: Boolean) : ContentPorts.VehiclePort {
        var availabilityReads = 0
        var throwOnAvailability = false
        val commands = mutableListOf<String>()
        val evidence = mutableMapOf<String, ContentPorts.CapabilityCheck>()
        val inspections = mutableListOf<String>()
        override fun inspectCapability(semanticId: String, mapping: ContentVehicleProtocol.Mapping): ContentPorts.CapabilityCheck {
            inspections += semanticId
            return evidence[semanticId] ?: ContentPorts.CapabilityCheck.unknown("尚无硬件读回")
        }
        override fun isAvailable(): Boolean {
            availabilityReads++
            if (throwOnAvailability) throw IllegalStateException("transport disconnected")
            return available
        }
        private fun command(name: String): Boolean { commands += name; error("self-check invoked $name") }
        override fun isLockAvailable(): Boolean = error("state capability must remain dynamic")
        override fun isControlAvailable(controlId: String): Boolean = error("state capability must remain dynamic")
        override fun isFeatureAvailable(featureId: String, target: Int): Boolean = error("state capability must remain dynamic")
        override fun requestLock(locked: Boolean, requestId: Long): Boolean = command("requestLock")
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long): Boolean = command("requestSeatLevel")
        override fun requestControlLevel(controlId: String, level: Int, requestId: Long): Boolean = command("requestControlLevel")
        override fun requestRearWindow(controlId: String, expectedLevel: Int, targetLevel: Int, requestId: Long, deadlineUptimeMs: Long): Boolean = command("requestRearWindow")
        override fun requestFeature(featureId: String, target: Int, requestId: Long, deadlineUptimeMs: Long): Boolean = command("requestFeature")
        override fun requestCenterBrightness(level: Int, requestId: Long, deadlineUptimeMs: Long): Boolean = command("requestCenterBrightness")
        override fun cancelRearWindowRequest(requestId: Long) { command("cancelRearWindowRequest") }
        override fun cancelFeatureRequest(requestId: Long) { command("cancelFeatureRequest") }
        override fun start(listener: ContentPorts.VehicleSnapshotListener) { command("start") }
        override fun stop() { command("stop") }
    }
    private class OtherRecordingPort(available: Boolean) : RecordingPort(available) {
        override fun capabilityContract() = "other-implemented-contract-v2"
    }

    /** Independent evaluation of the JSON Schema vocabulary used by the shipped schema. */
    private fun assertSchema(value: Any, schema: JSONObject, root: JSONObject, path: String = "root") {
        if (schema.has("\$ref")) {
            val reference = schema.getString("\$ref").removePrefix("#/").split('/').fold(root as Any) { parent, key ->
                (parent as JSONObject).get(key.replace("~1", "/").replace("~0", "~"))
            } as JSONObject
            assertSchema(value, reference, root, path)
            return
        }
        if (schema.has("const")) assertTrue("$path const", sameJson(value, schema.get("const")))
        if (schema.has("enum")) assertTrue("$path enum", schema.getJSONArray("enum").values().any { sameJson(value, it) })
        schema.optJSONArray("allOf")?.values()?.forEach { assertSchema(value, it as JSONObject, root, path) }
        schema.optJSONArray("anyOf")?.let { choices ->
            assertTrue("$path anyOf", choices.values().any { acceptsSchema(value, it as JSONObject, root, path) })
        }
        schema.optJSONObject("if")?.let { condition ->
            if (acceptsSchema(value, condition, root, path)) assertSchema(value, schema.getJSONObject("then"), root, path)
        }
        if (value is JSONObject) {
            schema.optJSONArray("required")?.values()?.forEach { assertTrue("$path required $it", value.has(it as String)) }
            val properties = schema.optJSONObject("properties") ?: JSONObject()
            value.keys().forEach { key ->
                if (properties.has(key)) assertSchema(value.get(key), properties.getJSONObject(key), root, "$path.$key")
                else assertFalse("$path additional $key", schema.has("additionalProperties") && schema.get("additionalProperties") == false)
            }
        }
        if (value is JSONArray) {
            assertTrue("$path minItems", value.length() >= schema.optInt("minItems", 0))
            assertTrue("$path maxItems", value.length() <= schema.optInt("maxItems", Int.MAX_VALUE))
            schema.optJSONArray("prefixItems")?.values()?.forEachIndexed { index, prefix ->
                if (index < value.length() && prefix is JSONObject) assertSchema(value[index], prefix, root, "$path[$index]")
            }
            schema.optJSONObject("contains")?.let { contains ->
                assertTrue("$path contains", value.values().any { acceptsSchema(it, contains, root, path) })
            }
        }
        when (schema.optString("type")) {
            "object" -> {
                assertTrue("$path object", value is JSONObject)
                value as JSONObject
                schema.optJSONArray("required")?.values()?.forEach { assertTrue("$path required $it", value.has(it as String)) }
                val properties = schema.optJSONObject("properties") ?: JSONObject()
                value.keys().forEach { key ->
                    if (properties.has(key)) assertSchema(value.get(key), properties.getJSONObject(key), root, "$path.$key")
                    else assertFalse("$path additional $key", schema.has("additionalProperties") && schema.get("additionalProperties") == false)
                }
            }
            "array" -> {
                assertTrue("$path array", value is JSONArray)
                value as JSONArray
                assertTrue("$path minItems", value.length() >= schema.optInt("minItems", 0))
                assertTrue("$path maxItems", value.length() <= schema.optInt("maxItems", Int.MAX_VALUE))
                if (schema.optBoolean("uniqueItems")) for (i in 0 until value.length()) for (j in i + 1 until value.length()) assertFalse("$path duplicate", sameJson(value[i], value[j]))
                if (schema.has("items")) value.values().forEach {
                    val items = schema.get("items")
                    assertTrue("$path items false", items is JSONObject)
                    assertSchema(it, items as JSONObject, root, "$path[]")
                }
                schema.optJSONObject("contains")?.let { contains -> assertTrue("$path contains", value.values().any { sameJson(it, contains.get("const")) }) }
            }
            "null" -> assertEquals("$path null", JSONObject.NULL, value)
            "number" -> assertTrue("$path number", value is Number)
            "boolean" -> assertTrue("$path boolean", value is Boolean)
            "integer" -> {
                assertTrue("$path integer", value is Int || value is Long)
                val integer = (value as Number).toLong()
                assertTrue("$path minimum", integer >= schema.optLong("minimum", Long.MIN_VALUE))
                assertTrue("$path maximum", integer <= schema.optLong("maximum", Long.MAX_VALUE))
            }
            "string" -> {
                assertTrue("$path string", value is String)
                value as String
                assertTrue("$path minLength", value.length >= schema.optInt("minLength", 0))
                assertTrue("$path maxLength", value.length <= schema.optInt("maxLength", Int.MAX_VALUE))
                if (schema.has("pattern")) assertTrue("$path pattern", Regex(schema.getString("pattern")).containsMatchIn(value))
            }
        }
    }
    private fun acceptsSchema(value: Any, schema: JSONObject, root: JSONObject, path: String): Boolean =
        try { assertSchema(value, schema, root, path); true } catch (_: AssertionError) { false }
    private fun JSONArray.values() = (0 until length()).map(::get)
    private fun sameJson(a: Any, b: Any): Boolean = when {
        a is JSONObject && b is JSONObject -> a.keys().asSequence().toSet() == b.keys().asSequence().toSet() && a.keys().asSequence().all { sameJson(a.get(it), b.get(it)) }
        a is JSONArray && b is JSONArray -> a.length() == b.length() && (0 until a.length()).all { sameJson(a[it], b[it]) }
        a is Number && b is Number -> a.toDouble() == b.toDouble()
        else -> a == b
    }
}
