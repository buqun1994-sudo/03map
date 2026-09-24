.class public Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static native onDisplaySync(J)V
.end method

.method public static native onSurfaceEventNative(ILandroid/view/Surface;)V
.end method

.method public static native setActivityStatusNative(JI)V
.end method


# virtual methods
.method public native getDlErrorNative()Ljava/lang/String;
.end method

.method public native initAutoApplicationNative(Landroid/content/Context;)V
.end method

.method public native loadCodeNative(Z)J
.end method

.method public native onConfigurationChangedNative(J)V
.end method

.method public native onLowMemoryNative(J)V
.end method

.method public native onPauseNative(JZ)V
.end method

.method public native onResumeNative(J)V
.end method

.method public native onStartNative(J)V
.end method

.method public native onStopNative(JZ)V
.end method

.method public native onSurfaceChangedNative(JLandroid/view/Surface;IIIJ)V
.end method

.method public native onSurfaceCreatedNative(JLandroid/view/Surface;J)V
.end method

.method public native onSurfaceDestroyedNative(JJZ)V
.end method

.method public native onTouchEventNative(J[I[F[FIJI)V
.end method

.method public native onWindowFocusChangedNative(JZ)V
.end method

.method public native unloadCodeNative(J)V
.end method
