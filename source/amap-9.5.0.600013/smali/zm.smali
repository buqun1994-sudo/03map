.class public Lzm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm$b;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/String; = "isNeedForcedToSpecialScreen"

.field public static B:Ljava/lang/String; = "isSupportAlinkFunction"

.field public static C:Ljava/lang/String; = "IsNeedCertificateAuthority"

.field public static D:Ljava/lang/String; = "CaCertsPath"

.field public static E:Ljava/lang/String; = "GetArCameraType"

.field public static F:Ljava/lang/String; = "gdArCameraServiceAppPackage"

.field public static G:Ljava/lang/String; = "gdArCameraServiceActionName"

.field public static H:Ljava/lang/String; = "isNeedPhonePermission"

.field public static I:Ljava/lang/String; = "isNeedAudioPermission"

.field public static J:Ljava/lang/String; = "isPlayBySystemTTS"

.field public static K:Ljava/lang/String; = "isNeedShowSysTTSOption"

.field public static L:Ljava/lang/String; = "isRequestDelayedNeedPlay"

.field public static M:Ljava/lang/String; = "isNeedSwitchNewIconID"

.field public static N:Ljava/lang/String; = "ttsShakeDelayBeforePlay"

.field public static O:Ljava/lang/String; = "ttsShakeState"

.field public static P:Ljava/lang/String; = "ttsShakeVolatilityValue"

.field public static Q:Ljava/lang/String; = "isNeedFrontMemory"

.field public static R:Ljava/lang/String; = "ttsShakeDelayLimit"

.field public static S:Ljava/lang/String; = "isSupportMultiscreenInput"

.field public static T:Ljava/lang/String; = "isNeedKeepKeyboardType"

.field public static U:Ljava/lang/String; = "isSupportInputSelectionMove"

.field public static V:Ljava/lang/String; = "waitForBackgroundStatusTimes"

.field public static W:Ljava/lang/String; = "notifySystemKeyboardHidden"

.field public static X:Ljava/lang/String; = "isNeedPltHook"

.field public static Y:Ljava/lang/String; = "isMixTypeTogetherNeedRequestFocus"

.field public static Z:Ljava/lang/String; = "isIgnoreAndroidConnectivityChangeBroadcast"

.field public static a0:Ljava/lang/String; = "killProcessInterface"

.field public static c:Ljava/lang/String; = "isEnableInitIflytek"

.field public static d:Ljava/lang/String; = "isNeedNmeaPos"

.field public static e:Ljava/lang/String; = "isCreateAutoDiuByActivateInfo"

.field public static f:Ljava/lang/String; = "isCarTeamEnabled"

.field public static g:Ljava/lang/String; = "isSupportArNavi"

.field public static h:Ljava/lang/String; = "getARCameraId"

.field public static i:Ljava/lang/String; = "isSocolEnable"

.field public static j:Ljava/lang/String; = "Pos_Type"

.field public static k:Ljava/lang/String; = "isLocationDecryptedIntoGcj02"

.field public static l:Ljava/lang/String; = "isNeedNotifyGpsState"

.field public static m:Ljava/lang/String; = "isUseNetworkLocation"

.field public static n:Ljava/lang/String; = "gpsTimeOffset"

.field public static o:Ljava/lang/String; = "locationInteval"

.field public static p:Ljava/lang/String; = "isSpeakByTTS"

.field public static q:Ljava/lang/String; = "XunFeiVoiceLine"

.field public static r:Ljava/lang/String; = "isOpenSystemStatusBar"

.field public static s:Ljava/lang/String; = "isUserHighVersionAudioApi"

.field public static t:Ljava/lang/String; = "isIgnoreAndroidVolumeBroadcast"

.field public static u:Ljava/lang/String; = "isNeedForcedTakeoverVolumeButton"

.field public static v:Ljava/lang/String; = "WaitForIncrementTimes"

.field public static w:Ljava/lang/String; = "DIRECT_FEATURE_ENABLE"

.field public static x:Ljava/lang/String; = "NewOldAgreement13004"

.field public static y:Ljava/lang/String; = "IsNeedScreencapture"

.field public static z:Ljava/lang/String; = "DysmorphismInfo"


# instance fields
.field public a:I

.field public b:Lcom/autonavi/amapauto/framework/TurboConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lzm;->a:I

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    move-result-object v0

    iput-object v0, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lzm$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzm;-><init>()V

    return-void
.end method

.method public static d()Lzm;
    .locals 1

    .line 1
    invoke-static {}, Lzm$b;->a()Lzm;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return p2

    .line 6
    :cond_0
    iget-object v0, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/framework/TurboConfig;->b(Ljava/lang/String;Z)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public b()I
    .locals 5

    .line 1
    iget v0, p0, Lzm;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Lse;->c()Lse;

    .line 9
    move-result-object v0

    .line 10
    const/16 v2, 0x7545

    .line 12
    invoke-virtual {v0, v2}, Lse;->getIntValue(I)I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lzm;->a:I

    .line 18
    const/4 v2, 0x1

    .line 19
    const-string v3, "FuncConfig"

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eq v0, v1, :cond_0

    .line 24
    new-array v1, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v0

    .line 30
    aput-object v0, v1, v4

    .line 32
    const-string v0, "ChannelManager getGpsTimeOffset={?}"

    .line 34
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget v0, p0, Lzm;->a:I

    .line 39
    return v0

    .line 40
    :cond_0
    sget-object v0, Lzm;->n:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0, v4}, Lzm;->e(Ljava/lang/String;I)I

    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lzm;->a:I

    .line 48
    new-array v1, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v0

    .line 54
    aput-object v0, v1, v4

    .line 56
    const-string v0, "getGpsTimeOffset={?}"

    .line 58
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_1
    iget v0, p0, Lzm;->a:I

    .line 63
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "C04010001001"

    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 10
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/TurboConfig;->e()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public e(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return p2

    .line 6
    :cond_0
    iget-object v0, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/framework/TurboConfig;->d(Ljava/lang/String;I)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public f()I
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7548

    .line 7
    invoke-virtual {v0, v1}, Lse;->getIntValue(I)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    sget-object v0, Lzm;->o:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 28
    aput-object v3, v1, v2

    .line 30
    const-string v2, "FuncConfig"

    .line 32
    const-string v3, "ChannelManager getLocationInteval={?}"

    .line 34
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v0
.end method

.method public g()I
    .locals 3

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7535

    .line 7
    invoke-virtual {v0, v1}, Lse;->getIntValue(I)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-static {}, Lai;->d()Z

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const-string v0, "DebugFileUtils.hasConfigLocationMode()"

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    const-string v2, "FuncConfig"

    .line 28
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lai;->a()I

    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_1
    sget-object v0, Lzm;->j:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0, v1}, Lzm;->e(Ljava/lang/String;I)I

    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "C04010001001"

    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 10
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/TurboConfig;->f()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object p2

    .line 6
    :cond_0
    iget-object v0, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/framework/TurboConfig;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public j()I
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7547

    .line 7
    invoke-virtual {v0, v1}, Lse;->getIntValue(I)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    sget-object v0, Lzm;->q:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 28
    aput-object v3, v1, v2

    .line 30
    const-string v2, "FuncConfig"

    .line 32
    const-string v3, "ChannelManager getXunfeiVoiceLine={?}"

    .line 34
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    sget-object v0, Lzm;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public l()Z
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x7546

    .line 7
    invoke-virtual {v0, v1}, Lse;->getIntValue(I)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    sget-object v0, Lzm;->p:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v0, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ne v0, v3, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v2

    .line 36
    const-string v2, "FuncConfig"

    .line 38
    const-string v3, "ChannelManager isSpeakByTts={?}"

    .line 40
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "FuncConfig"

    .line 9
    const-string v4, "[resetConfigByChannelId] channel={?}, now clear sub channel config"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-boolean v1, Li;->a:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 21
    invoke-virtual {v1, p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->q(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v0, v2

    .line 33
    const-string p1, "mConfigImpl.setSubChannel ret={?}"

    .line 35
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lzm;->b:Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/framework/TurboConfig;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    aput-object p1, v2, v1

    .line 18
    const/4 p1, 0x1

    .line 19
    aput-object p2, v2, p1

    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p2

    .line 26
    aput-object p2, v2, p1

    .line 28
    const-string p1, "FuncConfig"

    .line 30
    const-string p2, "setString, key:{?}, value:{?}, ret:{?}"

    .line 32
    invoke-static {p1, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return v0
.end method
