plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
}
android {
    namespace = "com.icar03.content.ui"
    compileSdk = 35
    defaultConfig { minSdk = 28 }
    buildFeatures { compose = true }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = "17" }
    sourceSets.getByName("main") {
        java.setSrcDirs(listOf("../../source/amap-9.5.0.600013/content-compose/ui"))
        res.setSrcDirs(listOf(layout.buildDirectory.dir("formal-oem-res")))
    }
    testOptions { unitTests.isIncludeAndroidResources = true }
}
val exportFormalOemResources by tasks.registering(Sync::class) {
    from("../../source/amap-9.5.0.600013/res") { include("drawable/content_oem_*.xml", "drawable/content_oem_*.png", "values/content_oem_values.xml") }
    into(layout.buildDirectory.dir("formal-oem-res"))
}
tasks.named("preBuild") { dependsOn(exportFormalOemResources) }

dependencies {
    implementation("androidx.compose.ui:ui:1.7.6")
    implementation("androidx.compose.foundation:foundation:1.7.6")
    implementation("androidx.compose.material3:material3:1.3.1")
    implementation("androidx.compose.material:material-icons-extended:1.7.6")
    compileOnly("androidx.compose.ui:ui-tooling-preview:1.7.6")
    debugImplementation("androidx.compose.ui:ui-tooling:1.7.6")
    testImplementation("junit:junit:4.13.2")
    testImplementation("org.robolectric:robolectric:4.14.1")
    testImplementation("androidx.compose.ui:ui-test-junit4:1.7.6")
    debugImplementation("androidx.compose.ui:ui-test-manifest:1.7.6")
}
