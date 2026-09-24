.class public Lcom/autonavi/amapauto/ar/camera/ArSensorManagerNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native notifySensorEvent(Lcom/autonavi/amapauto/ar/camera/model/ArSensorInfo;)V
.end method

.method public static registSensorEvent()Z
    .locals 1

    .line 1
    invoke-static {}, Lt5;->d()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static unRegistSensorEvent()Z
    .locals 1

    .line 1
    invoke-static {}, Lt5;->e()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method
