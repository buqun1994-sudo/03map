.class public Lcom/autonavi/amapauto/audio/TTSOpenslPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getTTSPlayState()I
.end method

.method public static pcmBufferCallBack(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "TTSOpenslPlayer"

    .line 13
    const-string v3, "pcmBufferCallBack result:{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-ne p0, v0, :cond_0

    .line 20
    const p0, 0xbfb044c

    .line 23
    const-string v0, ""

    .line 25
    invoke-static {p0, v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(ILjava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->abandomFocusSystem()V

    .line 31
    const/16 p0, 0xe

    .line 33
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public static native stopTTS()V
.end method
