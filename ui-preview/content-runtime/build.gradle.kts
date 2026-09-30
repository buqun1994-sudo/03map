plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
}
val formalClasses = listOf("ContentState", "ContentRegistry", "ContentPreferenceStore", "ContentPorts",
    "ContentStore", "ContentVehicleAdapter", "ContentMediaAdapter", "ContentMediaListener")
android {
    namespace = "com.icar03.content.runtime"
    compileSdk = 35
    defaultConfig { minSdk = 28 }
    buildFeatures { compose = true }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = "17" }
    sourceSets.getByName("main").java {
        setSrcDirs(listOf("../../source/amap-9.5.0.600013/content-compose/runtime"))
        srcDir("../../source/amap-9.5.0.600013/content-src")
        val selected = this as org.gradle.api.tasks.util.PatternFilterable
        selected.include("com/icar03/content/runtime/**")
        formalClasses.forEach { selected.include("com/autonavi/amapauto/content/$it.java") }
    }
    testOptions { unitTests.isIncludeAndroidResources = true }
}
// AGP's variant source directories do not retain legacy source-set include filters.
// Keep the same allowlist on javac and fail if its closure changes unexpectedly.
tasks.withType<JavaCompile>().configureEach {
    formalClasses.forEach { include("**/$it.java") }
    if (!name.contains("Test")) doFirst {
        check(source.files.map { it.name }.toSet() == formalClasses.map { "$it.java" }.toSet()) {
            "Unexpected formal content source closure: ${source.files}"
        }
    }
}
dependencies {
    api(project(":content-ui"))
    api("androidx.compose.ui:ui:1.7.6")
    api("androidx.compose.runtime:runtime:1.7.6")
    api("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.9.0")
    implementation("androidx.compose.foundation:foundation:1.7.6")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.8.7")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.9.0")
    testImplementation("junit:junit:4.13.2")
    testImplementation("org.robolectric:robolectric:4.14.1")
    testImplementation("androidx.compose.ui:ui-test-junit4:1.7.6")
    debugImplementation("androidx.compose.ui:ui-test-manifest:1.7.6")
}
