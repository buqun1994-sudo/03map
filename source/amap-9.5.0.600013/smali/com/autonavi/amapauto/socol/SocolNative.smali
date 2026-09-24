.class public Lcom/autonavi/amapauto/socol/SocolNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SocolNative"

.field private static mGetInstanceMethod:Ljava/lang/reflect/Method;

.field private static mIsSocolEnabled:Z

.field private static mSocolPlugin:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mSocolPluginInstant:Ljava/lang/Object;


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

.method public static dataTransmission([B[B[BIII)V
    .locals 13

    .line 1
    const-class v0, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "SocolNative"

    .line 8
    const-string v4, "[dataTransmission]"

    .line 10
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    sget-boolean v2, Lcom/autonavi/amapauto/socol/SocolNative;->mIsSocolEnabled:Z

    .line 15
    if-eqz v2, :cond_0

    .line 17
    const/4 v2, 0x1

    .line 18
    :try_start_0
    sget-object v5, Lcom/autonavi/amapauto/socol/SocolNative;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 20
    new-instance v6, Ljava/lang/Object;

    .line 22
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v7, v1, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    sput-object v5, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 33
    sget-object v5, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPlugin:Ljava/lang/Class;

    .line 35
    const-string v6, "dataTransmission"

    .line 37
    const/4 v7, 0x6

    .line 38
    new-array v8, v7, [Ljava/lang/Class;

    .line 40
    aput-object v0, v8, v1

    .line 42
    aput-object v0, v8, v2

    .line 44
    const/4 v9, 0x2

    .line 45
    aput-object v0, v8, v9

    .line 47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    const/4 v10, 0x3

    .line 50
    aput-object v0, v8, v10

    .line 52
    const/4 v11, 0x4

    .line 53
    aput-object v0, v8, v11

    .line 55
    const/4 v12, 0x5

    .line 56
    aput-object v0, v8, v12

    .line 58
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    move-result-object v0

    .line 62
    sget-object v5, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 64
    new-array v6, v7, [Ljava/lang/Object;

    .line 66
    aput-object p0, v6, v1

    .line 68
    aput-object p1, v6, v2

    .line 70
    aput-object p2, v6, v9

    .line 72
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v7

    .line 76
    aput-object v7, v6, v10

    .line 78
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v7

    .line 82
    aput-object v7, v6, v11

    .line 84
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v7

    .line 88
    aput-object v7, v6, v12

    .line 90
    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    aput-object v0, v2, v1

    .line 99
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "[dataTransmission] socol can not use"

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void
.end method

.method public static init()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SocolNative"

    .line 6
    const-string v3, "[init]start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lse;->getSocolEnabled()Z

    .line 18
    move-result v1

    .line 19
    sput-boolean v1, Lcom/autonavi/amapauto/socol/SocolNative;->mIsSocolEnabled:Z

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v1

    .line 28
    aput-object v1, v4, v0

    .line 30
    const-string v1, " [init]isSocolEnabled:{?}"

    .line 32
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget-boolean v1, Lcom/autonavi/amapauto/socol/SocolNative;->mIsSocolEnabled:Z

    .line 37
    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    const-string v1, "com.autonavi.amapauto.business.SocolPlugin"

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPlugin:Ljava/lang/Class;

    .line 47
    const-string v4, "getInstance"

    .line 49
    new-array v5, v0, [Ljava/lang/Class;

    .line 51
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    move-result-object v1

    .line 55
    sput-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 57
    new-instance v4, Ljava/lang/Object;

    .line 59
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v5, v0, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    sput-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPlugin:Ljava/lang/Class;

    .line 72
    const-string v4, "bindService"

    .line 74
    new-array v5, v0, [Ljava/lang/Class;

    .line 76
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    move-result-object v1

    .line 80
    sget-object v4, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 82
    new-array v5, v0, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    new-array v3, v3, [Ljava/lang/Object;

    .line 91
    aput-object v1, v3, v0

    .line 93
    const-string v0, "[init]"

    .line 95
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const-string v1, "[init]socol can not use"

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_0
    return-void
.end method

.method public static native nativeGetSocolState()Z
.end method

.method public static native nativeGetTbtInitDeviceIdType()Ljava/lang/String;
.end method

.method public static native nativeNotifyRunningState(I)V
.end method

.method public static native nativeOnCloseSocolService()V
.end method

.method public static native nativeOnPictureUpload()V
.end method

.method public static native nativeOnPictureUploadFinish()V
.end method

.method public static native nativeOnRequestUnbindSocol()V
.end method

.method public static notifyArStateChange()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    .line 8
    const-string v2, "com.socol"

    .line 10
    const-string v3, "com.socol.SocolService"

    .line 12
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18
    const-string v1, "com.intent.action.SOCOL"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 29
    const-string v2, ""

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 37
    :cond_0
    const-string v1, "AUTOAR=="

    .line 39
    :cond_1
    const-string v2, "Value"

    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-static {}, Lrv;->H()Lrv;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    const/4 v2, 0x0

    .line 59
    aput-object v1, v0, v2

    .line 61
    const-string v1, "SocolNative"

    .line 63
    const-string v2, "notifyArStateChange uuid={?}"

    .line 65
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static onUpdateSocolText(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string p0, "SocolNative"

    .line 9
    const-string v3, "[onSocolUpdateText]text:{?}"

    .line 11
    invoke-static {p0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-boolean v1, Lcom/autonavi/amapauto/socol/SocolNative;->mIsSocolEnabled:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 20
    new-instance v3, Ljava/lang/Object;

    .line 22
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v4, v2, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPlugin:Ljava/lang/Class;

    .line 35
    const-string v3, "onUpdateSocolTextInfo"

    .line 37
    new-array v4, v0, [Ljava/lang/Class;

    .line 39
    const-class v5, Ljava/lang/String;

    .line 41
    aput-object v5, v4, v2

    .line 43
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    move-result-object v1

    .line 47
    sget-object v3, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 49
    new-array v4, v2, [Ljava/lang/Object;

    .line 51
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    aput-object v1, v0, v2

    .line 60
    const-string v1, "[onSocolUpdateText]"

    .line 62
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "[onSocolUpdateText] socol can not use"

    .line 68
    new-array v1, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {p0, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void
.end method

.method public static restart()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/socol/SocolNative;->mIsSocolEnabled:Z

    .line 3
    const-string v1, "SocolNative"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    sget-object v0, Lcom/autonavi/amapauto/socol/SocolNative;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 10
    new-instance v3, Ljava/lang/Object;

    .line 12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v4, v2, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPlugin:Ljava/lang/Class;

    .line 25
    const-string v3, "restartSocol"

    .line 27
    new-array v4, v2, [Ljava/lang/Class;

    .line 29
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    move-result-object v0

    .line 33
    sget-object v3, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 35
    new-array v4, v2, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const/4 v3, 0x1

    .line 43
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    aput-object v0, v3, v2

    .line 47
    const-string v0, "[restart]"

    .line 49
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "[restart] socol can not use"

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void
.end method

.method public static setUploadPictureRequestResult(II)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p0

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object p0, v1, v2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p0, v1, p1

    .line 18
    const-string p0, "SocolNative"

    .line 20
    const-string v3, "[setSocolUploadPicResult]code:{?};count:{?}"

    .line 22
    invoke-static {p0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    sget-boolean v1, Lcom/autonavi/amapauto/socol/SocolNative;->mIsSocolEnabled:Z

    .line 27
    if-eqz v1, :cond_0

    .line 29
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 31
    new-instance v3, Ljava/lang/Object;

    .line 33
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v4, v2, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPlugin:Ljava/lang/Class;

    .line 46
    const-string v3, "setUploadPictureRequestResult"

    .line 48
    new-array v0, v0, [Ljava/lang/Class;

    .line 50
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 52
    aput-object v4, v0, v2

    .line 54
    aput-object v4, v0, p1

    .line 56
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 62
    new-array v3, v2, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-array p1, p1, [Ljava/lang/Object;

    .line 71
    aput-object v0, p1, v2

    .line 73
    const-string v0, "[setSocolUploadPicResult]"

    .line 75
    invoke-static {p0, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string p1, "[setSocolUploadPicResult] socol can not use"

    .line 81
    new-array v0, v2, [Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-void
.end method

.method public static uninit()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SocolNative"

    .line 6
    const-string v3, "[uninit]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-boolean v1, Lcom/autonavi/amapauto/socol/SocolNative;->mIsSocolEnabled:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 17
    new-instance v4, Ljava/lang/Object;

    .line 19
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v5, v0, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    sput-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPlugin:Ljava/lang/Class;

    .line 32
    const-string v4, "onDestroy"

    .line 34
    new-array v5, v0, [Ljava/lang/Class;

    .line 36
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    move-result-object v1

    .line 40
    sget-object v4, Lcom/autonavi/amapauto/socol/SocolNative;->mSocolPluginInstant:Ljava/lang/Object;

    .line 42
    new-array v5, v0, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    const/4 v4, 0x1

    .line 50
    new-array v4, v4, [Ljava/lang/Object;

    .line 52
    aput-object v1, v4, v0

    .line 54
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "[uninit] socol can not use"

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    return-void
.end method
