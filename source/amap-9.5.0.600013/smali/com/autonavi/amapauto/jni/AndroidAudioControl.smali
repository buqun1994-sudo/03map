.class public Lcom/autonavi/amapauto/jni/AndroidAudioControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidAudioControl"

.field private static final UNKNOWN_VOLUME:B = -0x1t

.field private static sMuteStatusSetForPhoneCalling:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandomFocusSystem()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AndroidAudioControl"

    .line 6
    const-string v3, "abandomFocusSystem "

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lo6;->j()Lo6;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lo6;->a(I)Z

    .line 18
    return-void
.end method

.method public static getFilePlayState()I
    .locals 5

    .line 1
    const-string v0, "AndroidAudioControl"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-static {}, Lo6;->j()Lo6;

    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lo6;->q()Lzt;

    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3}, Llq;->b()I

    .line 16
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v3

    .line 19
    new-array v4, v2, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v4, v1

    .line 27
    const-string v3, "getFilePlayState Exception:{?}"

    .line 29
    invoke-static {v0, v3, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 v3, 0x1

    .line 33
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v2, v1

    .line 41
    const-string v1, "getFilePlayState filePlayState:{?}"

    .line 43
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return v3
.end method

.method public static getPlayState()I
    .locals 3

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->w()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "AndroidAudioControl"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v0, "getPlayState isPhoneCalling"

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-boolean v0, Lo6;->w:Z

    .line 25
    if-eqz v0, :cond_1

    .line 27
    const-string v0, "getPlayState is PLAYSTATE_LOSS_TRANS"

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {v2, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lo6;->j()Lo6;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lo6;->p()Ldb;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ldb;->b()I

    .line 47
    move-result v0

    .line 48
    :goto_0
    return v0
.end method

.method public static getStreamType()I
    .locals 4

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->m()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    aput-object v3, v1, v2

    .line 19
    const-string v2, "AndroidAudioControl"

    .line 21
    const-string v3, "getStreamType streamType:{?}"

    .line 23
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return v0
.end method

.method public static getSystemMaxVolume()I
    .locals 6

    .line 1
    const-string v0, "AndroidAudioControl"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->getSystemMaxVolumeFromStandardProtocol()I

    .line 8
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    if-ne v3, v2, :cond_0

    .line 11
    :try_start_1
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lse;->a()Leq;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Lkq;->getSystemMaxVolume()I

    .line 22
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v2

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v3

    .line 27
    move-object v2, v3

    .line 28
    const/4 v3, -0x1

    .line 29
    :goto_0
    const-string v4, "getSystemMaxVolume:"

    .line 31
    new-array v5, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {v0, v4, v2, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 37
    new-array v4, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v5

    .line 43
    aput-object v5, v4, v1

    .line 45
    const-string v5, "getSystemMaxVolume maxVol:{?}"

    .line 47
    invoke-static {v0, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v4

    .line 56
    aput-object v4, v2, v1

    .line 58
    const-string v1, "get System Volume maxVol:{?}"

    .line 60
    invoke-static {v0, v1, v2}, Lza;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return v3
.end method

.method private static getSystemMaxVolumeFromStandardProtocol()I
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;-><init>()V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;

    .line 12
    invoke-virtual {v1, v0, v2}, Ll30;->c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 v0, -0x1

    .line 21
    return v0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->getVolumeMax()I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v2

    .line 36
    const-string v2, "AndroidAudioControl"

    .line 38
    const-string v3, "get volume max {?} from standard protocol "

    .line 40
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return v0
.end method

.method public static getSystemVolume()I
    .locals 6

    .line 1
    const-string v0, "AndroidAudioControl"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->getSystemVolumeFromStandardProtocol()I

    .line 8
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    if-ne v3, v2, :cond_0

    .line 11
    :try_start_1
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lse;->a()Leq;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Lkq;->getSystemVolume()I

    .line 22
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v2

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v3

    .line 27
    move-object v2, v3

    .line 28
    const/4 v3, -0x1

    .line 29
    :goto_0
    const-string v4, "getSystemVolume:"

    .line 31
    new-array v5, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {v0, v4, v2, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v4

    .line 43
    aput-object v4, v2, v1

    .line 45
    const-string v1, "get System Volume value:{?}"

    .line 47
    invoke-static {v0, v1, v2}, Lza;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return v3
.end method

.method private static getSystemVolumeFromStandardProtocol()I
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;-><init>()V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;

    .line 12
    invoke-virtual {v1, v0, v2}, Ll30;->c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 v0, -0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const-string v1, "get volume level start  from standard protocol "

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    const-string v4, "AndroidAudioControl"

    .line 29
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->getVolumeLevel()I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v1, v2

    .line 45
    const-string v2, "get volume level end {?} from standard protocol "

    .line 47
    invoke-static {v4, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return v0
.end method

.method public static getTextToSpeechState()I
    .locals 1

    .line 1
    invoke-static {}, Lg3;->h()Lg3;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lg3;->b()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static init(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AndroidAudioControl"

    .line 13
    const-string v4, "init sampleRate:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lo6;->j()Lo6;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lo6;->p()Ldb;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p0}, Ldb;->o(I)Ljava/nio/ByteBuffer;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;)V

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v1

    .line 43
    aput-object v1, v0, v3

    .line 45
    const-string v1, "init capacity:{?}"

    .line 47
    invoke-static {v2, v1, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public static isMuteStatusSetForPhoneCalling()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->sMuteStatusSetForPhoneCalling:Z

    .line 3
    return v0
.end method

.method public static jniGetUseAudioTrack()Z
    .locals 6

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->getStreamType()I

    .line 12
    move-result v1

    .line 13
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 15
    const/4 v3, 0x5

    .line 16
    const/4 v4, 0x1

    .line 17
    if-gt v1, v3, :cond_0

    .line 19
    iget-boolean v3, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 21
    if-eqz v3, :cond_1

    .line 23
    :cond_0
    const/4 v2, 0x1

    .line 24
    :cond_1
    const/4 v3, 0x3

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 32
    aput-object v1, v3, v5

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v1

    .line 38
    aput-object v1, v3, v4

    .line 40
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x2

    .line 47
    aput-object v0, v3, v1

    .line 49
    const-string v0, "AndroidAudioControl"

    .line 51
    const-string v1, "jniGetUseAudioTrack streamType:{?} isNeedUseAudioTrack:{?} isUserHighVersionAudioApi:{?}"

    .line 53
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return v2
.end method

.method public static jniIsMusicActive()Z
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo6;->v()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static jniMuteStatusSetForPhoneCalling(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->sMuteStatusSetForPhoneCalling:Z

    .line 3
    return-void
.end method

.method private static native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;)V
.end method

.method public static native nativeChangeVolume(I)V
.end method

.method public static native nativeGetTtsCacheBufferSize()I
.end method

.method public static native nativeNotifyVoiceBlockDynamic()V
.end method

.method public static native nativeTextPlayAbnormal(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V
.end method

.method public static native notifyPlayStateChange(I)V
.end method

.method public static notifyTTSPlayStatus(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidAudioControl"

    .line 13
    const-string v2, " notifyTTSPlayStatus status:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lo6;->j()Lo6;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lo6;->p()Ldb;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Ldb;->u(I)V

    .line 29
    return-void
.end method

.method public static native onStreamVolumeChange(I)V
.end method

.method public static playByAudioTrack(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeIsMute()Z

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lo6;->j()Lo6;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 12
    move-result-object v1

    .line 13
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isVolumeZeroNeedPauseBackgroundNoises:Z

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const/4 v4, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v4, 0x0

    .line 24
    :goto_0
    invoke-static {}, Lc;->i()Lc;

    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Lc;->j()Z

    .line 31
    move-result v5

    .line 32
    if-nez v4, :cond_2

    .line 34
    if-eqz v5, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 40
    :goto_2
    const/4 v6, 0x5

    .line 41
    new-array v6, v6, [Ljava/lang/Object;

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v7

    .line 47
    aput-object v7, v6, v3

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v0

    .line 53
    aput-object v0, v6, v2

    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    move-result-object v1

    .line 60
    aput-object v1, v6, v0

    .line 62
    const/4 v0, 0x3

    .line 63
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    move-result-object v1

    .line 67
    aput-object v1, v6, v0

    .line 69
    const/4 v0, 0x4

    .line 70
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    move-result-object v1

    .line 74
    aput-object v1, v6, v0

    .line 76
    const-string v0, "AndroidAudioControl"

    .line 78
    const-string v1, "playByAudioTrack audioLen:{?}  isNativeMute:{?} isNeddZeroVolPause:{?} isNeedPlayMute:{?} imMixModeTtsPause:{?}"

    .line 80
    invoke-static {v0, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lo6;->j()Lo6;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lo6;->p()Ldb;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, v4}, Ldb;->t(Z)V

    .line 94
    invoke-virtual {v0, p0}, Ldb;->B(I)V

    .line 97
    return-void
.end method

.method public static playByMediaPlayer(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p0, v0, v1

    .line 14
    const-string v1, "AndroidAudioControl"

    .line 16
    const-string v2, "playByMediaPlayer volumPercent:{?} filepath:{?} "

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;

    .line 23
    invoke-direct {v0, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl$a;-><init>(Ljava/lang/String;I)V

    .line 26
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public static playByTextToSpeech(Ljava/lang/String;II)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    aput-object v2, v0, v1

    .line 21
    const-string v1, "AndroidAudioControl"

    .line 23
    const-string v2, "playByTextToSpeech text:{?}, volumPercent:{?},priority:{?}"

    .line 25
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lg3;->h()Lg3;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lg3;->r(I)V

    .line 35
    invoke-static {}, Lg3;->h()Lg3;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p2, p0}, Lg3;->m(ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public static releaseMediaPlayer(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidAudioControl"

    .line 6
    const-string v2, "releaseMediaPlayer "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne v0, p0, :cond_0

    .line 14
    invoke-static {}, Lo6;->j()Lo6;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lo6;->l()Lzt;

    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Lzt;->c()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lo6;->j()Lo6;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lo6;->q()Lzt;

    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Lzt;->c()V

    .line 37
    :goto_0
    return-void
.end method

.method public static requestFocusSystem(I)I
    .locals 8

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1}, Lo6;->D(II)I

    .line 9
    move-result v0

    .line 10
    invoke-static {}, Lo6;->j()Lo6;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 17
    move-result-object v2

    .line 18
    iget-boolean v2, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWithoutFocusSucced:Z

    .line 20
    const/4 v3, 0x3

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v4

    .line 27
    aput-object v4, v3, v1

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x1

    .line 34
    aput-object v4, v3, v5

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v4

    .line 40
    const/4 v6, 0x2

    .line 41
    aput-object v4, v3, v6

    .line 43
    const-string v4, "AndroidAudioControl"

    .line 45
    const-string v7, "requestFocusSystem durationHint:{?} obtainCode:{?} isPlayWithoutFocusSucced:{?}"

    .line 47
    invoke-static {v4, v7, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    if-nez v0, :cond_0

    .line 52
    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v3, "streamType:"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {}, Lo6;->j()Lo6;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lo6;->m()I

    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v3, ",audioMode:"

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {v6, p0}, Li6;->t(ILjava/lang/String;)V

    .line 90
    :cond_0
    if-ne v5, v0, :cond_1

    .line 92
    sput-boolean v1, Lo6;->w:Z

    .line 94
    :cond_1
    return v0
.end method

.method public static setIsUseSystemTTS(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lg3;->h()Lg3;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lg3;->q(Z)V

    .line 8
    return-void
.end method

.method public static setMuteState(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "AndroidAudioControl"

    .line 13
    const-string v3, "setMuteState:{?}"

    .line 15
    invoke-static {v1, v3, v0}, Lza;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {v2, v2, p0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setNaviMuteModel(IIZ)V

    .line 21
    return-void
.end method

.method public static setStreamType(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidAudioControl"

    .line 13
    const-string v2, "setStreamType streamType:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lo6;->j()Lo6;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lo6;->I(I)V

    .line 25
    return-void
.end method

.method public static setSystemVolume(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "AndroidAudioControl"

    .line 13
    const-string v3, "set System Volume value:{?}"

    .line 15
    invoke-static {v1, v3, v0}, Lza;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lse;->a()Leq;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, p0, v2}, Lkq;->setSystemVolume(II)V

    .line 29
    new-instance v0, Lrl0;

    .line 31
    invoke-direct {v0, p0}, Lrl0;-><init>(I)V

    .line 34
    invoke-static {}, Ll30;->g()Ll30;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string v0, "setSystemVolume:"

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {v1, v0, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void
.end method

.method public static setTempMuteState(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AndroidAudioControl"

    .line 13
    const-string v4, "setTempMuteState:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lza;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {v3, v0, p0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setNaviMuteModel(IIZ)V

    .line 21
    return-void
.end method

.method public static stopAudioTrack()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->stopAudioTrack(Z)V

    return-void
.end method

.method public static stopAudioTrack(Z)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AndroidAudioControl"

    const-string v2, " stopAudioTrack [stop_TTS] stop by Native"

    .line 2
    invoke-static {v1, v2, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    invoke-virtual {v0}, Lo6;->p()Ldb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldb;->x(Z)V

    return-void
.end method

.method public static stopTextToSpeech()V
    .locals 1

    .line 1
    invoke-static {}, Lg3;->h()Lg3;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lg3;->t()V

    .line 8
    return-void
.end method

.method public static textPlayEventTracking(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;-><init>()V

    .line 2
    invoke-static {}, Li6;->h()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 3
    iput p0, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 4
    iput-object p1, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    const p1, 0xbfb044c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    .line 5
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isHappyEnd:Z

    .line 6
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isAbEnd:Z

    goto :goto_0

    :cond_0
    const p1, 0xbfb044b

    if-ne p0, p1, :cond_1

    .line 7
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isHappyEnd:Z

    .line 8
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isAbEnd:Z

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isHappyEnd:Z

    .line 10
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isAbEnd:Z

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->textPlayEventTracking(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)Z

    return-void
.end method

.method public static textPlayEventTracking(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)Z
    .locals 3

    .line 12
    invoke-static {}, Lib;->l()Z

    move-result v0

    const-string v1, "AndroidAudioControl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "textPlayEventTracking: current version below 500 and return false"

    new-array v0, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "textPlayEventTracking: playTrackingData is null and return false"

    new-array v0, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 15
    :cond_1
    invoke-static {p0}, Li6;->b(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)Z

    .line 16
    iget v0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    const v1, 0xbfb0440

    if-eq v0, v1, :cond_2

    const v1, 0xbfb0828

    if-lt v0, v1, :cond_3

    const v1, 0xbfb1f9e

    if-eq v0, v1, :cond_3

    const v1, 0xbfb1f9f

    if-eq v0, v1, :cond_3

    .line 17
    :cond_2
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->nativeTextPlayAbnormal(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static uninit()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidAudioControl"

    .line 6
    const-string v2, "uninit "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public static native updateAudioFocusChange(I)V
.end method
