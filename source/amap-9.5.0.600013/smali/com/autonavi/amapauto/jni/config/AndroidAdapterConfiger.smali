.class public Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidAdapterConfiger"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntValue(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static jniGetBooleanValue(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lse;->getBooleanValue(I)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    aput-object p0, v1, v2

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v1, p0

    .line 26
    const-string p0, "AndroidAdapterConfiger"

    .line 28
    const-string v2, "jniGetBooleanValue key:{?} value:{?}"

    .line 30
    invoke-static {p0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return v0
.end method

.method public static jniGetFloatValue(I)F
    .locals 3

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lse;->getFloatValue(I)F

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    aput-object p0, v1, v2

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v1, p0

    .line 26
    const-string p0, "AndroidAdapterConfiger"

    .line 28
    const-string v2, "jniGetFloatValue key:{?} value:{?}"

    .line 30
    invoke-static {p0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return v0
.end method

.method public static jniGetIntValue(I)I
    .locals 3

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    invoke-static {}, Lse;->c()Lse;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lse;->getIntValue(I)I

    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    invoke-static {}, Lsk;->c()Lsk;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lsk;->b()Lrk;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lrk;->a()I

    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    invoke-static {}, Lsk;->c()Lsk;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lsk;->b()Lrk;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lrk;->c()I

    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    invoke-static {}, Lsk;->c()Lsk;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lsk;->b()Lrk;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lrk;->d()I

    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :pswitch_3
    invoke-static {}, Lsk;->c()Lsk;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lsk;->b()Lrk;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lrk;->b()I

    .line 63
    move-result v0

    .line 64
    :goto_0
    const/4 v1, 0x2

    .line 65
    new-array v1, v1, [Ljava/lang/Object;

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p0

    .line 72
    aput-object p0, v1, v2

    .line 74
    const/4 p0, 0x1

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v2

    .line 79
    aput-object v2, v1, p0

    .line 81
    const-string p0, "AndroidAdapterConfiger"

    .line 83
    const-string v2, "jniGetIntValue key:{?} value:{?}"

    .line 85
    invoke-static {p0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return v0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static jniGetStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    aput-object p0, v1, v2

    .line 19
    const/4 p0, 0x1

    .line 20
    aput-object v0, v1, p0

    .line 22
    const-string p0, "AndroidAdapterConfiger"

    .line 24
    const-string v2, "jniGetStringValue key:{?} value:{?}"

    .line 26
    invoke-static {p0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-object v0
.end method

.method public static jniInitChannelValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string p0, "AndroidAdapterConfiger"

    .line 9
    const-string v3, "jniInitChannelValue HMI channelId:{?} "

    .line 11
    invoke-static {p0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lzm;->d()Lzm;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lzm;->h()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    invoke-static {}, Lzm;->d()Lzm;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lzm;->c()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v1}, Lse;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x2

    .line 45
    new-array v4, v4, [Ljava/lang/Object;

    .line 47
    aput-object v1, v4, v2

    .line 49
    aput-object v3, v4, v0

    .line 51
    const-string v0, "jniInitChannelValue channelId:{?} realChannelId:{?}"

    .line 53
    invoke-static {p0, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lse;->c()Lse;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lse;->startup()Z

    .line 63
    return-object v3
.end method

.method public static jniNotifyAudioConfiger(Lcom/autonavi/amapauto/jni/config/AudioConfigData;)V
    .locals 1

    .line 1
    invoke-static {}, Lo6;->j()Lo6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lo6;->M(Lcom/autonavi/amapauto/jni/config/AudioConfigData;)V

    .line 8
    return-void
.end method

.method public static native nativeConfigDecrypt([BILjava/lang/String;)[B
.end method

.method public static native nativeConfigEncrypt([BILjava/lang/String;)[B
.end method

.method public static native nativeGetBooleanValue(I)Z
.end method

.method public static native nativeGetFloatValue(I)F
.end method

.method public static native nativeGetIntValue(I)I
.end method

.method public static native nativeGetStringValue(I)Ljava/lang/String;
.end method

.method public static native nativeVoiceConfiger()Lcom/autonavi/amapauto/jni/config/AudioConfigData;
.end method
