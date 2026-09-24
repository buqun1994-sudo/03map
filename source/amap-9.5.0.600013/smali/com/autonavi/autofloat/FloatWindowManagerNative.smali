.class public Lcom/autonavi/autofloat/FloatWindowManagerNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatWindowManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backToAuto()V
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->X()V

    .line 8
    return-void
.end method

.method public static checkFloatPermission()Z
    .locals 2

    .line 1
    invoke-static {}, Llm;->b()Llm;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Llm;->c(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static dispatchFloatGuideInfo(ZLcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    if-nez p1, :cond_0

    .line 13
    const-string v1, "is null"

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    :goto_0
    const/4 v2, 0x1

    .line 21
    aput-object v1, v0, v2

    .line 23
    const-string v1, "FloatWindowManagerNative"

    .line 25
    const-string v2, "dispatchFloatGuideInfo arrived:{?},GuideInfoProtocolData:{?}"

    .line 27
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lnm;->e()Lnm;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p0, p1}, Lnm;->p(ZLcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 37
    return-void
.end method

.method public static existFloatWindowShown()Z
    .locals 4

    .line 1
    invoke-static {}, Lhm;->a()Lhm;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhm;->b()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 13
    invoke-static {}, Lnm;->e()Lnm;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lnm;->h()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v2, v1

    .line 35
    const-string v1, "FloatWindowManagerNative"

    .line 37
    const-string v3, "\u5f53\u524d\u662f\u5426\u5b58\u5728\u60ac\u6d6e\u7a97\u663e\u793a from:JNI isHasShown:{?}"

    .line 39
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return v0
.end method

.method public static native floatGuideInfoAcquire(I)V
.end method

.method public static handleCloseFloatWidnowSetting()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/autofloat/FloatWindowManagerNative;->nativeCloseFloatWidnowSetting()V

    .line 4
    return-void
.end method

.method public static hideFloatWindow()V
    .locals 3

    .line 1
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/autonavi/autofloat/FloatWindowManagerNative$a;

    .line 7
    invoke-direct {v1}, Lcom/autonavi/autofloat/FloatWindowManagerNative$a;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    const-string v1, "FloatWindowManagerNative"

    .line 18
    const-string v2, "AL\u5173\u95ed\u670d\u52a1\u60ac\u6d6e\u7a97 hideFloatWindow from:JNI"

    .line 20
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static jniShowFloatWindow(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/autonavi/autofloat/FloatWindowManagerNative;->nativeShowFloatWindow(I)I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    aput-object p0, v0, v1

    .line 15
    const-string p0, "FloatWindowManagerNative"

    .line 17
    const-string v1, "nativeShowFloatWindow ret:{?}"

    .line 19
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static native nativeBackToAuto()I
.end method

.method public static native nativeCloseFloatWidnowSetting()V
.end method

.method public static native nativeShowFloatWindow(I)I
.end method

.method public static requestFloatPermission()V
    .locals 2

    .line 1
    invoke-static {}, Llm;->b()Llm;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Llm;->a(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public static showFloatWindow(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lnm;->m:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v1, "bundle_layout_type"

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-static {}, Lhm;->a()Lhm;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lhm;->c(Z)V

    .line 24
    new-array v1, v2, [Ljava/lang/Object;

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    aput-object p0, v1, v2

    .line 33
    const-string p0, "FloatWindowManagerNative"

    .line 35
    const-string v2, "AL\u5f00\u542f\u670d\u52a1\u60ac\u6d6e\u7a97 showFloatWindow windowtype:{?} form JNI"

    .line 37
    invoke-static {p0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lhm;->a()Lhm;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {}, Lrv;->H()Lrv;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1, v0}, Lhm;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method
