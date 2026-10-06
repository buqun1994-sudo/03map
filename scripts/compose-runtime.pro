-dontobfuscate
# Okio 1.17.6 references optional JSR-305 metadata, not executable code.
# R8 drops the absent annotation; final DEX checks reject any surviving reference.
-dontwarn javax.annotation.Nullable
-keep class com.autonavi.amapauto.content.** { *; }
-keep class com.icar03.content.host.ContentComposeHost { public *; }
-keep class com.icar03.content.host.MapGestureBar { public *; }
-keep class com.icar03.content.host.MapGestureBarHost { public *; }
-keep class com.icar03.content.model.** { *; }
-keep class com.icar03.content.ui.** { *; }
-keep class com.icar03.content.runtime.** { *; }
-keepattributes RuntimeVisibleAnnotations,RuntimeInvisibleAnnotations,AnnotationDefault,InnerClasses,EnclosingMethod,Signature
-keep class kotlinx.coroutines.android.AndroidDispatcherFactory { *; }
-keep class kotlinx.coroutines.android.AndroidExceptionPreHandler { *; }
-keep class androidx.graphics.path.** { *; }
-keep class * implements kotlinx.coroutines.internal.MainDispatcherFactory { *; }
