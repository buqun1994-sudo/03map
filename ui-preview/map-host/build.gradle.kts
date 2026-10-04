plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
}
android {
    namespace = "com.icar03.content.host"
    compileSdk = 35
    defaultConfig { minSdk = 28 }
    buildFeatures { compose = true }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = "17" }
    sourceSets.getByName("main").java.srcDirs("../../source/amap-9.5.0.600013/content-compose/host", "../../source/amap-9.5.0.600013/content-src")
    (sourceSets.getByName("main").java as org.gradle.api.tasks.util.PatternFilterable).apply {
        include("com/icar03/content/host/**")
        include("com/autonavi/amapauto/content/ContentRuntime.java")
    }
    testOptions { unitTests.isIncludeAndroidResources = true }
    sourceSets.getByName("main").res.srcDir("../../source/amap-9.5.0.600013/content-compose/host-res")
}
tasks.withType<JavaCompile>().configureEach {
    include("**/ContentRuntime.java")
    if (!name.contains("Test")) doFirst {
        check(source.files.map { it.name }.toSet() == setOf("ContentRuntime.java")) { "Unexpected map-host Java closure" }
    }
}
// Window dispatchers cache platform schedulers; isolate Robolectric host classes.
tasks.withType<Test>().configureEach { forkEvery = 1 }

dependencies {
    api(project(":content-runtime"))
    implementation("androidx.savedstate:savedstate:1.2.1")
    implementation("androidx.lifecycle:lifecycle-viewmodel:2.8.7")
    testImplementation("junit:junit:4.13.2")
    testImplementation("org.robolectric:robolectric:4.14.1")
    testImplementation("androidx.compose.ui:ui-test-junit4:1.7.6")
    debugImplementation("androidx.compose.ui:ui-test-manifest:1.7.6")
}

val relocationTools by configurations.creating
dependencies {
    relocationTools("org.ow2.asm:asm:9.7.1")
    relocationTools("org.ow2.asm:asm-commons:9.7.1")
}
// Export only the production release graph. Paths are local build metadata, never the lock.
tasks.register("exportComposeDependencies") {
    doLast {
        val artifacts = configurations.getByName("releaseRuntimeClasspath").incoming.artifactView {
            componentFilter { it is org.gradle.api.artifacts.component.ModuleComponentIdentifier }
        }.artifacts.artifacts
        val records = artifacts.map {
            val id = it.id.componentIdentifier as org.gradle.api.artifacts.component.ModuleComponentIdentifier
            mapOf("group" to id.group, "name" to id.module,
                "version" to id.version, "type" to it.file.extension,
                "file" to it.file.absolutePath)
        }.sortedBy { "${it["group"]}:${it["name"]}:${it["version"]}" }
        val modules = listOf("content-model", "content-ui", "content-runtime", "map-host").map { name ->
            mapOf("name" to name, "file" to rootProject.file("$name/build/outputs/aar/$name-release.aar").absolutePath)
        }
        val output = layout.buildDirectory.file("compose-export.json").get().asFile
        output.parentFile.mkdirs()
        val tools = relocationTools.resolvedConfiguration.resolvedArtifacts.map {
            mapOf("group" to it.moduleVersion.id.group, "name" to it.moduleVersion.id.name,
                "version" to it.moduleVersion.id.version, "type" to it.type, "file" to it.file.absolutePath)
        }
        output.writeText(groovy.json.JsonOutput.prettyPrint(groovy.json.JsonOutput.toJson(mapOf("dependencies" to records, "tools" to tools, "modules" to modules))))
    }
}
tasks.register("exportComposeRuntime") {
    dependsOn("exportComposeDependencies", ":content-model:assembleRelease", ":content-ui:assembleRelease", ":content-runtime:assembleRelease", "assembleRelease")
}
