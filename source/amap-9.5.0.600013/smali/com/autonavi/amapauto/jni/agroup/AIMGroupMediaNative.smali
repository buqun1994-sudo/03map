.class public Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AIM_PARAM_AUDIO_INCREASE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AIMGroupMediaPlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayStatus()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "AIMGroupMediaPlayer"

    .line 13
    const-string v3, "getPlayStatus state:{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lc;->i()Lc;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lc;->l(I)I

    .line 25
    return v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AIMGroupMediaPlayer"

    .line 9
    const-string v2, "init fileDirPath:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lc;->i()Lc;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lc;->v(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static native nativePlayeStatus(ILjava/lang/String;)V
.end method

.method public static notifyPlayeStatus(I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->nativePlayeStatus(ILjava/lang/String;)V

    return-void
.end method

.method public static notifyPlayeStatus(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->nativePlayeStatus(ILjava/lang/String;)V

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lab;

    const/16 p1, 0xbc0

    invoke-direct {p0, p1}, Lab;-><init>(I)V

    .line 3
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object p1

    invoke-virtual {p1, p0}, Ll30;->a(Lec;)V

    :goto_0
    return-void
.end method

.method public static onAudioStateChanged(ILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

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
    const/4 v2, 0x1

    .line 12
    aput-object p1, v1, v2

    .line 14
    const-string v4, "AIMGroupMediaPlayer"

    .line 16
    const-string v5, "onAudioStateChanged state:{?} filename:{?}"

    .line 18
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-eqz p0, :cond_3

    .line 23
    if-eq p0, v2, :cond_2

    .line 25
    if-eq p0, v0, :cond_1

    .line 27
    const/4 p1, 0x3

    .line 28
    if-eq p0, p1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    invoke-static {}, Lc;->i()Lc;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v3}, Lc;->q(Z)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->stopAudioTrack(Z)V

    .line 42
    invoke-static {}, Lc;->i()Lc;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v2}, Lc;->q(Z)V

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lc;->i()Lc;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v3, p1}, Lc;->p(ZLjava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {}, Lc;->i()Lc;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, v2, p1}, Lc;->p(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string p1, "onAudioStateChanged: "

    .line 69
    new-array v0, v3, [Ljava/lang/Object;

    .line 71
    invoke-static {v4, p1, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void
.end method

.method public static setAIMAudioParam(II)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

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
    const/4 v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AIMGroupMediaPlayer"

    .line 20
    const-string v2, "setAIMAudioParam paramID:{?} paramValue:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lc;->i()Lc;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0, p1}, Lc;->u(II)Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static setMixMode(I)V
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
    const-string v1, "AIMGroupMediaPlayer"

    .line 13
    const-string v2, "setMixMode durationHint:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lc;->i()Lc;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lc;->w(I)V

    .line 25
    return-void
.end method
