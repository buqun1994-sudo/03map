.class public Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEFAULT_VALID_VALUE:I = -0x63

.field private static final EHP_CONFIG_FILE:Ljava/lang/String; = "ehp_config_version.properties"

.field private static EHP_VERSION:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AndroidProtocolExe"

.field private static floatPropertyMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static integerPropertyMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static isHmiSwtichReady:Z = false

.field private static locationConvertLatchHolderHashMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lfy;",
            ">;"
        }
    .end annotation
.end field

.field private static mAutoStatus:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->locationConvertLatchHolderHashMap:Ljava/util/HashMap;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->EHP_VERSION:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->integerPropertyMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->floatPropertyMap:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native answerEnergyPrediction(Lcom/autonavi/amapauto/jni/protocol/data/EnergyPredictionData;)V
.end method

.method public static native answerPowerPrediction(Lcom/autonavi/amapauto/jni/protocol/data/PowerPredictionData;)V
.end method

.method public static native bindAutoUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native carBindUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static dispatchALCConfigInfo(Ljava/lang/String;)V
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
    const-string v1, "AndroidProtocolExe"

    .line 9
    const-string v2, "dispatchALCConfigInfo configJson:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Ld;

    .line 16
    invoke-direct {v0, p0}, Ld;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ll30;->g()Ll30;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 26
    return-void
.end method

.method public static dispatchAutoStatus(I)V
    .locals 1

    const/4 v0, -0x1

    .line 6
    invoke-static {p0, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(II)V

    return-void
.end method

.method public static dispatchAutoStatus(II)V
    .locals 4

    .line 1
    sput p0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->mAutoStatus:I

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "AndroidProtocolExe"

    const-string v3, "dispatchAutoStatus status:{?}, statusDetails{?}"

    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lab;

    invoke-direct {v1, p0, p1}, Lab;-><init>(II)V

    .line 4
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object p1

    invoke-virtual {p1, v1}, Ll30;->a(Lec;)V

    if-ne p0, v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->y()Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;

    move-result-object p0

    invoke-interface {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;->u()V

    :cond_0
    return-void
.end method

.method public static dispatchGuideInfo(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 2

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lse;->wrapGuideInfoProtocolData(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 8
    new-instance v0, Loo;

    .line 10
    invoke-direct {v0, p0}, Loo;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 13
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->requestCode:I

    .line 15
    iput v1, v0, Lec;->c:I

    .line 17
    invoke-static {}, Ll30;->g()Ll30;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 24
    invoke-static {}, Lnb;->j()Lnb;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lnb;->A(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 31
    invoke-static {}, Lnm;->e()Lnm;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lnm;->l(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 38
    invoke-static {}, Lse;->c()Lse;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lse;->sendTurn(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 45
    invoke-static {}, Lh6;->c()Lh6;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p0}, Lh6;->e(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 52
    return-void
.end method

.method public static doOperaMap(III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->doOperaMap(IIII)V

    return-void
.end method

.method public static native doOperaMap(IIII)V
.end method

.method public static native getAreaInfoAction(IDD)V
.end method

.method public static getEhpVersion()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->EHP_VERSION:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AndroidProtocolExe"

    .line 6
    if-nez v0, :cond_1

    .line 8
    const-string v0, ""

    .line 10
    sput-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->EHP_VERSION:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 28
    move-result-object v3

    .line 29
    const-string v4, "ehp_config_version.properties"

    .line 31
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 34
    move-result-object v0

    .line 35
    new-instance v3, Ljava/util/Properties;

    .line 37
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 40
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 43
    const-string v4, "version"

    .line 45
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    sput-object v3, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->EHP_VERSION:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v3

    .line 56
    const-string v4, "getEhpVersion ocuur a Exception:{?}"

    .line 58
    if-eqz v0, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    new-array v5, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {v2, v4, v0, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 73
    :cond_0
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {v2, v4, v3, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 78
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    sget-object v3, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->EHP_VERSION:Ljava/lang/String;

    .line 83
    aput-object v3, v0, v1

    .line 85
    const-string v1, "getEhpVersion EHP_VERSION:{?}"

    .line 87
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->EHP_VERSION:Ljava/lang/String;

    .line 92
    return-object v0
.end method

.method public static native getFavoriteInfo(II)V
.end method

.method public static getLastAutoStatus()I
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->mAutoStatus:I

    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    .line 2
    sget v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->mAutoStatus:I

    return v0
.end method

.method public static native getLastAutoStatus(I)V
.end method

.method public static native getLastGuideInfo(I)V
.end method

.method public static native getProviderFavoriteInfo(IDDI)V
.end method

.method public static getReadyStatus()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->isHmiSwtichReady:Z

    .line 3
    return v0
.end method

.method public static getUnionUserInfo()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "[getUnionUserInfo]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ly70;->b()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static homeCompanyInfoNotify(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
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
    const-string v1, "AndroidProtocolExe"

    .line 9
    const-string v2, "homeCompanyInfoNotify data:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lnb;->j()Lnb;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lnb;->H(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V

    .line 21
    return-void
.end method

.method public static jniALSimulatePlayback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x4

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
    const/4 v1, 0x1

    .line 12
    aput-object p1, v0, v1

    .line 14
    const/4 v3, 0x2

    .line 15
    aput-object p2, v0, v3

    .line 17
    const/4 v4, 0x3

    .line 18
    aput-object p3, v0, v4

    .line 20
    const-string v4, "AndroidProtocolExe"

    .line 22
    const-string v5, "[ALSimulate]\u00a0jniALSimulatePlayback protocolType = {?} protocolContent = {?} protocolId = {?} version = {?}"

    .line 24
    invoke-static {v4, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const-string v0, "202012101229"

    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 37
    const-string v5, "UTF-8"

    .line 39
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5, v3}, Landroid/util/Base64;->decode([BI)[B

    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :try_start_1
    const-string p1, "[ALSimulate]\u00a0jniALSimulatePlayback base64 decode protocolContent = {?} "

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    aput-object v0, v1, v2

    .line 56
    invoke-static {v4, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    move-object v6, v0

    .line 64
    move-object v0, p1

    .line 65
    move-object p1, v6

    .line 66
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    new-array v1, v2, [Ljava/lang/Object;

    .line 72
    invoke-static {v4, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_1
    move-object p1, v0

    .line 76
    :cond_0
    invoke-static {}, Lh;->a()Lh;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p0, p1, p2, p3}, Lh;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static jniAcquireQREnable()Z
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->isQREnableFlag()Z

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lse;->c()Lse;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lse;->a()Leq;

    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0x3b07

    .line 19
    invoke-interface {v1, v2}, Leq;->getStringValue(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v3, "jniAcquireQREnable customId:"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " isQREnableFlag:"

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    const-string v3, "AndroidProtocolExe"

    .line 53
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return v0
.end method

.method public static jniAvoidJamMessageShow(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lrb;

    .line 3
    invoke-direct {v0, p0, p1}, Lrb;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 13
    return-void
.end method

.method public static jniAvoidJamOperateStatus(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "jniAvoidJamOperateStatus isAvoid = {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ltb;

    .line 20
    invoke-direct {v0, p0}, Ltb;-><init>(Z)V

    .line 23
    invoke-static {}, Ll30;->g()Ll30;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 30
    return-void
.end method

.method public static jniDispatchArStatus(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniDispatchArStatus"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lu5;

    .line 17
    invoke-direct {v1, p0}, Lu5;-><init>(I)V

    .line 20
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static jniDispatchExtScreenMapLevel(IF)V
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
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "dispatchExtScreenMapLevel engineId:{?}, mapLevel:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Ll30;->g()Ll30;

    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lbl;

    .line 31
    invoke-direct {v1, p0, p1}, Lbl;-><init>(IF)V

    .line 34
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 37
    return-void
.end method

.method public static jniDispatchLocNmeaInfo(Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;)V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->timestamp:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgga:Ljava/lang/String;

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x2

    .line 20
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgll:Ljava/lang/String;

    .line 22
    aput-object v2, v0, v1

    .line 24
    const/4 v1, 0x3

    .line 25
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgsa:Ljava/lang/String;

    .line 27
    aput-object v2, v0, v1

    .line 29
    const/4 v1, 0x4

    .line 30
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpgsv:Ljava/lang/String;

    .line 32
    aput-object v2, v0, v1

    .line 34
    const/4 v1, 0x5

    .line 35
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gprmc:Ljava/lang/String;

    .line 37
    aput-object v2, v0, v1

    .line 39
    const/4 v1, 0x6

    .line 40
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->gpvtg:Ljava/lang/String;

    .line 42
    aput-object v2, v0, v1

    .line 44
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->course:F

    .line 46
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x7

    .line 51
    aput-object v1, v0, v2

    .line 53
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->drStatus:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    const/16 v2, 0x8

    .line 61
    aput-object v1, v0, v2

    .line 63
    const/16 v1, 0x9

    .line 65
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->ew:Ljava/lang/String;

    .line 67
    aput-object v2, v0, v1

    .line 69
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->lat:D

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 74
    move-result-object v1

    .line 75
    const/16 v2, 0xa

    .line 77
    aput-object v1, v0, v2

    .line 79
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->lon:D

    .line 81
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 84
    move-result-object v1

    .line 85
    const/16 v2, 0xb

    .line 87
    aput-object v1, v0, v2

    .line 89
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->matchLat:D

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 94
    move-result-object v1

    .line 95
    const/16 v2, 0xc

    .line 97
    aput-object v1, v0, v2

    .line 99
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->matchLon:D

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 104
    move-result-object v1

    .line 105
    const/16 v2, 0xd

    .line 107
    aput-object v1, v0, v2

    .line 109
    const/16 v1, 0xe

    .line 111
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->ns:Ljava/lang/String;

    .line 113
    aput-object v2, v0, v1

    .line 115
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;->posAcc:F

    .line 117
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 120
    move-result-object v1

    .line 121
    const/16 v2, 0xf

    .line 123
    aput-object v1, v0, v2

    .line 125
    const-string v1, "AndroidProtocolExe"

    .line 127
    const-string v2, "jniDispatchLocNmeaInfo LocNmeaInfo: timestamp={?}, gpgga={?}, gpgll={?}, gpgsa={?}, gpgsv={?}, gprmc={?}, gpvtg={?}, course={?}, drStatus={?}, ew={?}, lat={?}, lon={?}, matchLat={?}, matchLon={?}, ns={?}, posAcc={?}"

    .line 129
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v0, Lck;

    .line 134
    invoke-direct {v0, p0}, Lck;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/LocNmeaInfo;)V

    .line 137
    invoke-static {}, Ll30;->g()Ll30;

    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 144
    return-void
.end method

.method public static jniDispatchPassViaPoi(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

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
    const-string v1, "AndroidProtocolExe"

    .line 16
    const-string v2, "jniDispatchPassViaPoi viaPoiInfo :{?} passControl:{?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Ll30;->g()Ll30;

    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ln50;

    .line 27
    invoke-direct {v1, p0, p1}, Ln50;-><init>(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 33
    return-void
.end method

.method public static jniDispatchPoiInfo(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniDispatchPoiInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lpj;

    .line 17
    invoke-direct {v1, p0}, Lpj;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V

    .line 20
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static jniDispatchTripReport(Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AndroidProtocolExe"

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 v2, 0x3

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;->driveDistance:Ljava/lang/String;

    .line 11
    aput-object v3, v2, v0

    .line 13
    const/4 v0, 0x1

    .line 14
    iget-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;->driveTime:Ljava/lang/String;

    .line 16
    aput-object v3, v2, v0

    .line 18
    const/4 v0, 0x2

    .line 19
    iget-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;->aveSpeed:Ljava/lang/String;

    .line 21
    aput-object v3, v2, v0

    .line 23
    const-string v0, "jniDispatchTripReport driveDistance:{?} driveTime:{?} aveSpeed:{?}"

    .line 25
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lai0;

    .line 30
    invoke-direct {v0, p0}, Lai0;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/TripReportData;)V

    .line 33
    invoke-static {}, Ll30;->g()Ll30;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    const-string v2, "jniDispatchTripReport:reportData must not be null"

    .line 46
    invoke-static {v1, v2, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void
.end method

.method public static jniDispatchVolumeMuteState(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniDispatchVolumeMuteState"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lpl0;

    .line 17
    invoke-direct {v1, p0}, Lpl0;-><init>(I)V

    .line 20
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static jniFloatPropertyRegistering()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniFloatPropertyRegistering"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->floatPropertyMap:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Float;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 52
    move-result v1

    .line 53
    invoke-static {v2, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeFloatProperty(IF)V

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public static jniGetPhotoReq(JI)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "jniGetPhotoReq time:{?} requestcode:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lx50;

    .line 27
    invoke-direct {v0}, Lx50;-><init>()V

    .line 30
    invoke-virtual {v0, p0, p1}, Lx50;->h(J)V

    .line 33
    invoke-virtual {v0, p2}, Lx50;->g(I)V

    .line 36
    invoke-static {}, Ll30;->g()Ll30;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 43
    return-void
.end method

.method public static jniIntPropertyRegistering()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniIntPropertyRegistering"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->integerPropertyMap:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Integer;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v1

    .line 53
    invoke-static {v2, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeIntProperty(II)V

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public static jniNotifyCarCompanyLogin()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniNotifyCarCompanyLogin"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lfz;

    .line 13
    invoke-direct {v0}, Lfz;-><init>()V

    .line 16
    invoke-static {}, Ll30;->g()Ll30;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {v0}, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->callSystemApp(I)V

    .line 27
    return-void
.end method

.method public static jniNotifyFavInfoUpdate(ILcom/autonavi/amapauto/jni/protocol/data/PoiData;)V
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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "jniNotifyFavInfoUpdate editType:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lyl;

    .line 20
    invoke-direct {v0, p0, p1}, Lyl;-><init>(ILcom/autonavi/amapauto/jni/protocol/data/PoiData;)V

    .line 23
    invoke-static {}, Ll30;->g()Ll30;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 30
    return-void
.end method

.method public static jniPlaySettingStatus(I)V
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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "jniPlaySettingStatus openBtnStatus={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lc60;

    .line 20
    invoke-direct {v0, p0}, Lc60;-><init>(I)V

    .line 23
    invoke-static {}, Ll30;->g()Ll30;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 30
    return-void
.end method

.method public static jniRequestAutoTheme()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniRequestAutoTheme"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lea0;

    .line 17
    invoke-direct {v1}, Lea0;-><init>()V

    .line 20
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static jniRequestCarHWStatus(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniRequestCarHWStatus"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lfa0;

    .line 17
    invoke-direct {v1, p0}, Lfa0;-><init>(I)V

    .line 20
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static jniRequestSystemFont()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniRequestSystemFont"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Loa0;

    .line 17
    invoke-direct {v1}, Loa0;-><init>()V

    .line 20
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static jniResponseCallback(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    instance-of v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    move-object v2, p0

    .line 9
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 11
    iget v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->requestALId:I

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, -0x1

    .line 15
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v0, v3

    .line 22
    const/4 v2, 0x1

    .line 23
    aput-object p0, v0, v2

    .line 25
    const-string v2, "AndroidProtocolExe"

    .line 27
    const-string v3, "jniResponseCallback requestId:{?}, resultData:{?}"

    .line 29
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    if-eqz v1, :cond_3

    .line 34
    move-object v0, p0

    .line 35
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 37
    iget v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->requestALId:I

    .line 39
    invoke-static {}, Lse;->c()Lse;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Lse;->isChannelProtocolResult(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 49
    invoke-static {}, Lse;->c()Lse;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, v1, v0}, Lse;->responseProtocolResult(ILcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V

    .line 56
    return-void

    .line 57
    :cond_1
    const/16 v0, 0x13ee

    .line 59
    if-eq v1, v0, :cond_2

    .line 61
    const/16 v0, 0x13ef

    .line 63
    if-eq v1, v0, :cond_2

    .line 65
    const/16 v0, 0x13f0

    .line 67
    if-ne v1, v0, :cond_3

    .line 69
    :cond_2
    invoke-static {}, Lf80;->c()Lf80;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lf80;->a(Ljava/lang/Object;)V

    .line 76
    return-void

    .line 77
    :cond_3
    invoke-static {}, Ll30;->g()Ll30;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Ll30;->n(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static jniReturnIfly(ILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

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
    const/4 v1, 0x1

    .line 12
    aput-object p1, v0, v1

    .line 14
    const-string v1, "AndroidProtocolExe"

    .line 16
    const-string v3, "jniReturnIfly state:{?},str:{?}"

    .line 18
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lg3;->h()Lg3;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lg3;->l()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    const-string p0, "jniReturnIfly UseSystemTTS"

    .line 33
    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lg3;->h()Lg3;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, p1}, Lg3;->o(Ljava/lang/String;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lqo0;->a()Lqo0;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lqo0;->d()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 56
    const-string p0, "jniReturnIfly XunFeiTTS"

    .line 58
    new-array v0, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lqo0;->a()Lqo0;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Lqo0;->e(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "jniReturnIfly returnIfly"

    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lrv;->H()Lrv;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p0, p1}, Lrv;->f0(ILjava/lang/String;)V

    .line 85
    :goto_0
    return-void
.end method

.method public static jniSendArHudArrivePoint(Lk5;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static jniSendArHudChangeLineData(Ll5;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static jniSendArHudGuideLineData(Lm5;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static jniSendArHudRouteInfoData(Lo5;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static jniSendArHudTbtData(Lq5;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static jniSendConvertedLocationInfo(IDD)V
    .locals 9

    .line 1
    const/4 v0, 0x3

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
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const-string v1, "AndroidProtocolExe"

    .line 27
    const-string v2, "jniSendConvertedLocationInfo dataType:{?},latitude:{?},longitude:{?}"

    .line 29
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lgy;

    .line 34
    move-object v3, v0

    .line 35
    move v4, p0

    .line 36
    move-wide v5, p1

    .line 37
    move-wide v7, p3

    .line 38
    invoke-direct/range {v3 .. v8}, Lgy;-><init>(IDD)V

    .line 41
    invoke-static {}, Ll30;->g()Ll30;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 48
    return-void
.end method

.method public static jniSendConvertedNewLocationInfo(IDDI)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 4
    const-string p1, "AndroidProtocolExe"

    .line 6
    const-string p2, "jniSendConvertedNewLocationInfo enter"

    .line 8
    invoke-static {p1, p2, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object p0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->locationConvertLatchHolderHashMap:Ljava/util/HashMap;

    .line 13
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ld00;->a(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static jniSendDataPathState(ILjava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Luh;

    .line 3
    invoke-direct {p0, p1}, Luh;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Ll30;->a(Lec;)V

    .line 13
    return-void
.end method

.method public static jniSendDialogInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lgj;

    .line 3
    move-object v0, v7

    .line 4
    move v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lgj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ll30;->g()Ll30;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v7}, Ll30;->a(Lec;)V

    .line 20
    return-void
.end method

.method public static jniSendDriveGasInfo(I)V
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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "jniSendDriveGasInfo type:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lkk;

    .line 20
    invoke-direct {v0, p0}, Lkk;-><init>(I)V

    .line 23
    invoke-static {}, Ll30;->g()Ll30;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 30
    return-void
.end method

.method public static jniSendExtScreenStatus(Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;)V
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
    const-string v1, "AndroidProtocolExe"

    .line 9
    const-string v2, "jniSendExtScreenStatus controlData={?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Lil;

    .line 16
    invoke-direct {v0}, Lil;-><init>()V

    .line 19
    invoke-virtual {v0, p0}, Lil;->g(Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;)V

    .line 22
    invoke-static {}, Ll30;->g()Ll30;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 29
    return-void
.end method

.method public static jniSendFactoryDataClearResult(I)V
    .locals 1

    .line 1
    new-instance v0, Lsl;

    .line 3
    invoke-direct {v0, p0}, Lsl;-><init>(I)V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 13
    return-void
.end method

.method public static jniSendHomeCompany(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v2, "AndroidProtocolExe"

    .line 9
    const-string v3, "jniSendHomeCompany data:{?}"

    .line 11
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p0, :cond_0

    .line 16
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->type:I

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v2, v1, :cond_0

    .line 21
    new-instance v1, Lop;

    .line 23
    invoke-direct {v1, p0}, Lop;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V

    .line 26
    invoke-static {}, Ll30;->g()Ll30;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Ll30;->a(Lec;)V

    .line 33
    const/16 v1, 0x3ed

    .line 35
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Li10;

    .line 43
    invoke-direct {v1}, Li10;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Li10;->m(I)V

    .line 49
    invoke-virtual {v1, p0}, Li10;->h(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V

    .line 52
    invoke-static {}, Ll30;->g()Ll30;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v1}, Ll30;->a(Lec;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static jniSendIntervalCameraInfo(Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "jniSendIntervalCameraInfo data:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const-string v2, "AndroidProtocolExe"

    .line 23
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    new-instance v0, Lev;

    .line 28
    invoke-direct {v0, p0}, Lev;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;)V

    .line 31
    invoke-static {}, Ll30;->g()Ll30;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 38
    return-void
.end method

.method public static jniSendManeuverIconData(Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->getIconId()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;->getAroundNum()I

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    const-string v1, "AndroidProtocolExe"

    .line 28
    const-string v2, "jniSendManeuverIconData iconId:{?} aroundNum:{?}"

    .line 30
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lqz;

    .line 35
    invoke-direct {v0, p0}, Lqz;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/ManeuverIconData;)V

    .line 38
    invoke-static {}, Ll30;->g()Ll30;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 45
    return-void
.end method

.method public static jniSendMessageBar(Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v2, v1, v3

    .line 22
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isTop:Z

    .line 24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x2

    .line 29
    aput-object v2, v1, v3

    .line 31
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 33
    const/4 v4, 0x3

    .line 34
    aput-object v2, v1, v4

    .line 36
    const-string v2, "AndroidProtocolExe"

    .line 38
    const-string v5, "jniSendMessageBar msgType = {?}, isShow={?}, isTop={?}, content={?}"

    .line 40
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 45
    if-ne v3, v1, :cond_0

    .line 47
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 49
    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lzk;

    .line 53
    invoke-direct {v1, p0}, Lzk;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;)V

    .line 56
    invoke-static {}, Ll30;->g()Ll30;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Ll30;->a(Lec;)V

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 65
    if-nez v1, :cond_1

    .line 67
    new-instance v1, Lh10;

    .line 69
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 71
    invoke-direct {v1, v2}, Lh10;-><init>(I)V

    .line 74
    invoke-static {}, Ll30;->g()Ll30;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Ll30;->a(Lec;)V

    .line 81
    :cond_1
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 83
    if-ne v4, v1, :cond_2

    .line 85
    new-instance v1, Li10;

    .line 87
    invoke-direct {v1}, Li10;-><init>()V

    .line 90
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 92
    invoke-virtual {v1, v2}, Li10;->m(I)V

    .line 95
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v2}, Li10;->k(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ll30;->g()Ll30;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2, v1}, Ll30;->a(Lec;)V

    .line 107
    :cond_2
    const/4 v1, 0x5

    .line 108
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 110
    if-ne v1, v2, :cond_3

    .line 112
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 114
    if-nez v1, :cond_3

    .line 116
    new-instance v1, Li10;

    .line 118
    invoke-direct {v1}, Li10;-><init>()V

    .line 121
    invoke-virtual {v1, v0}, Li10;->g(I)V

    .line 124
    invoke-static {}, Ll30;->g()Ll30;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 131
    :cond_3
    const/4 v0, 0x7

    .line 132
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 134
    if-ne v0, v1, :cond_4

    .line 136
    new-instance v0, Li10;

    .line 138
    invoke-direct {v0}, Li10;-><init>()V

    .line 141
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 143
    invoke-virtual {v0, v1}, Li10;->m(I)V

    .line 146
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Li10;->n(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Ll30;->g()Ll30;

    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 158
    :cond_4
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 160
    const/16 v1, 0xe

    .line 162
    if-eq v1, v0, :cond_5

    .line 164
    const/16 v1, 0xf

    .line 166
    if-ne v1, v0, :cond_6

    .line 168
    :cond_5
    new-instance v0, Li10;

    .line 170
    invoke-direct {v0}, Li10;-><init>()V

    .line 173
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 175
    invoke-virtual {v0, v1}, Li10;->m(I)V

    .line 178
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 180
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1, p0}, Li10;->l(ILjava/lang/String;)V

    .line 185
    invoke-static {}, Ll30;->g()Ll30;

    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 192
    :cond_6
    return-void
.end method

.method public static jniSendMidPoiInfo(Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AndroidProtocolExe"

    .line 6
    const-string v3, "jniSendMidPoiInfo "

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;->getMidPoiList()Ljava/util/List;

    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 19
    :cond_0
    const-string v1, "jniSendMidPoiInfo midPoiData == null || midPoiData.getMidPoiList() == null"

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_1
    new-instance v0, Lo10;

    .line 28
    invoke-direct {v0, p0}, Lo10;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;)V

    .line 31
    invoke-static {}, Ll30;->g()Ll30;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 38
    return-void
.end method

.method public static jniSendNaviParkingInfo(Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;)V
    .locals 1

    .line 1
    new-instance v0, Lj50;

    .line 3
    invoke-direct {v0, p0}, Lj50;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;)V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 13
    return-void
.end method

.method public static jniSendRouteInfo(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniSendRouteInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lgb0;

    .line 13
    invoke-direct {v0, p0}, Lgb0;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)V

    .line 16
    invoke-static {}, Ll30;->g()Ll30;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static jniSendSearchList(IIIIII)V
    .locals 10

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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "jniSendSearchList poiNum:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ljc0;

    .line 20
    move-object v3, v0

    .line 21
    move v4, p0

    .line 22
    move v5, p1

    .line 23
    move v6, p2

    .line 24
    move v7, p3

    .line 25
    move v8, p4

    .line 26
    move v9, p5

    .line 27
    invoke-direct/range {v3 .. v9}, Ljc0;-><init>(IIIIII)V

    .line 30
    invoke-static {}, Ll30;->g()Ll30;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 37
    return-void
.end method

.method public static jniSendTrafficReportResult(I)V
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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "jniSendTrafficReportResult type = %d"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lyh0;

    .line 20
    invoke-direct {v0, p0}, Lyh0;-><init>(I)V

    .line 23
    invoke-static {}, Ll30;->g()Ll30;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 30
    return-void
.end method

.method public static jniSendViewControlStatus(IZ)V
    .locals 5

    .line 1
    const/4 v0, 0x2

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
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 18
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v4, "jniSendViewControlStatus type:{?} isSuccess:{?}"

    .line 22
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lhl0;

    .line 27
    invoke-direct {v0, p0, p1}, Lhl0;-><init>(IZ)V

    .line 30
    invoke-static {}, Ll30;->g()Ll30;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Ll30;->a(Lec;)V

    .line 37
    const/4 p1, 0x3

    .line 38
    if-eq p1, p0, :cond_0

    .line 40
    const/4 v0, 0x4

    .line 41
    if-ne v0, p0, :cond_3

    .line 43
    :cond_0
    if-ne p1, p0, :cond_1

    .line 45
    const/4 p0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x1

    .line 48
    :goto_0
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->getZoomMode()I

    .line 51
    move-result p1

    .line 52
    new-array v0, v3, [Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v4

    .line 58
    aput-object v4, v0, v2

    .line 60
    const-string v4, "AndroidWidgetMap.getZoomMode():{?}"

    .line 62
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    if-ne p1, v3, :cond_2

    .line 67
    const/4 v2, 0x1

    .line 68
    :cond_2
    new-instance p1, Lwz;

    .line 70
    invoke-direct {p1, p0, v2}, Lwz;-><init>(IZ)V

    .line 73
    invoke-static {}, Ll30;->g()Ll30;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Ll30;->a(Lec;)V

    .line 80
    :cond_3
    return-void
.end method

.method public static jniSetLinksdkLog(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "jniSetLinksdkLog isOpen:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lz90;->j()Lz90;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lz90;->A(Z)V

    .line 25
    return-void
.end method

.method public static jniStopSpeak()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "jniStopSpeak"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lg3;->h()Lg3;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lg3;->k()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lg3;->h()Lg3;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lg3;->t()V

    .line 28
    :cond_0
    invoke-static {}, Lqo0;->a()Lqo0;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lqo0;->f()V

    .line 35
    return-void
.end method

.method public static jniTinyAppReq()V
    .locals 3

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2740

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "AndroidProtocolExe"

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const-string v0, "jniTinyAppReq start Tiny App!"

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    const-string v0, "jniTinyAppReq do nothing!"

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static jniZoomMapTimesCallback(I)V
    .locals 0

    .line 1
    invoke-static {}, Lsl0;->b()Lsl0;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lsl0;->a()Lsl0$b;

    .line 8
    return-void
.end method

.method public static native launchAuto(ILjava/lang/String;)V
.end method

.method public static native logoutAutoAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static nativeAccOn(IZ)V
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
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "nativeAccOn requestId:{?} isOn:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->rawNativeAccOn(IZ)V

    .line 28
    return-void
.end method

.method public static native nativeAddFavoriteCurPoi(I)V
.end method

.method public static native nativeAlongWaySearch(III)V
.end method

.method public static native nativeAvoidJam(IZ)V
.end method

.method public static native nativeBackToMap(II)V
.end method

.method public static native nativeCameraStatusNotify(II)V
.end method

.method public static native nativeCarCompanyLoginSuccess(I)V
.end method

.method public static native nativeCarPlateSet(Ljava/lang/String;)V
.end method

.method public static native nativeCloseGuideInfo(IZ)V
.end method

.method public static native nativeControlMessageCard(IZ)V
.end method

.method public static native nativeCruiseReportPolicy(I)V
.end method

.method public static native nativeDayNightMode(II)V
.end method

.method public static native nativeEnduranceChoose(IZ)V
.end method

.method public static native nativeFactoryDataClear(I)V
.end method

.method public static native nativeFactoryReset()V
.end method

.method private static native nativeFloatProperty(IF)V
.end method

.method public static native nativeGetActiveState(I)V
.end method

.method public static native nativeGetMuteState(I)V
.end method

.method public static native nativeGetPathConfigInfo(I)V
.end method

.method public static native nativeGetRouteInfo(II)V
.end method

.method public static native nativeGetTrafficRestrictInfo(ILjava/lang/String;DDLjava/lang/String;)V
.end method

.method public static native nativeGoToHomeOrCopType(II)V
.end method

.method public static native nativeHomeOrCompanyNavi(Lcom/autonavi/amapauto/jni/protocol/data/SpecialPoiNaviData;)V
.end method

.method private static native nativeIntProperty(II)V
.end method

.method public static native nativeIsExitApp()Z
.end method

.method public static native nativeMapLabel(Ljava/lang/String;Ljava/lang/String;DDIII)V
.end method

.method public static native nativeMoveMap(III)V
.end method

.method public static native nativeNavGuidanceControl(ILjava/lang/String;)V
.end method

.method public static native nativeNaviOpera(II)V
.end method

.method public static native nativeNaviPreview(IZ)V
.end method

.method public static native nativeNaviRoutePrefer(II)V
.end method

.method public static native nativeNaviViaModify(IILjava/lang/String;IDDI)V
.end method

.method public static native nativeNotifyCarHWStatus(ILcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;)V
.end method

.method public static native nativeNotifyTSRInfo(Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;)V
.end method

.method public static native nativeOilLowRemindOpera(IIII)V
.end method

.method public static native nativeOilStatusNotify(IFF)V
.end method

.method public static native nativeOperaHomeCompanyTip(II)V
.end method

.method public static native nativePageControl(III)V
.end method

.method public static native nativePageJumpOperate(II)V
.end method

.method public static native nativePassViaPoiControl(II)V
.end method

.method public static native nativePlaySound(Ljava/lang/String;)V
.end method

.method public static native nativePowerOn(IZ)V
.end method

.method public static native nativeQREnable(IZ)V
.end method

.method public static native nativeRecvJsonAsync(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V
.end method

.method public static native nativeRecvJsonSync(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;
.end method

.method public static native nativeRefreshRoute(I)V
.end method

.method public static native nativeRepeatLastVoice()V
.end method

.method public static native nativeRequestDayNightMode(I)V
.end method

.method public static native nativeRequestLocationInfoConvert(IDD)V
.end method

.method public static native nativeRequestLocationInfoConvertNew(IDDI)V
.end method

.method public static native nativeRequestNaviExitInfo(II)V
.end method

.method public static native nativeRequestSetting(II)V
.end method

.method public static native nativeRequestSilentAutoLogin(Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;)V
.end method

.method public static native nativeRouteAvoidLimit(ILjava/lang/String;DD)I
.end method

.method public static native nativeSearch(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;)V
.end method

.method public static native nativeSearchLocationTrafficInfo(III)V
.end method

.method public static native nativeSearchResultOperate(IIII)V
.end method

.method public static native nativeSearchTrafficCondition(ILjava/lang/String;I)V
.end method

.method public static native nativeSelectParking(II)V
.end method

.method public static native nativeSelectRoute(IIZ)V
.end method

.method public static native nativeSetDrivingTalk(III)V
.end method

.method public static native nativeSetHeadLampStatus(II)V
.end method

.method public static native nativeSetHomeOrCompany(ILjava/lang/String;DDDDLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetHudEnabled(IZ)V
.end method

.method public static native nativeSetLocationEnable(Z)V
.end method

.method public static native nativeSetNaviType(II)V
.end method

.method public static native nativeSetPhotoResult(ILjava/lang/String;)V
.end method

.method public static native nativeSetReportNaviType(II)V
.end method

.method public static native nativeSetSetting(IIZ)V
.end method

.method public static native nativeSetSideRoadSwitch(IZ)V
.end method

.method public static native nativeSetSystemFont(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static native nativeSetVoice(I)V
.end method

.method public static native nativeSetWipeState(II)V
.end method

.method public static native nativeShareRoute(ILjava/lang/String;)V
.end method

.method public static native nativeShowMyLocation(II)V
.end method

.method public static native nativeShutdown()V
.end method

.method public static native nativeStopGuide(I)V
.end method

.method public static native nativeSwitchAutoTheme(ILjava/lang/String;)V
.end method

.method public static native nativeSwitchAvoidLimit(II)V
.end method

.method public static native nativeTestCardShow(ILjava/lang/String;)V
.end method

.method public static native nativeTestMapParameter(ILjava/lang/String;IIII)V
.end method

.method public static native nativeThemeStyleNotify(II)V
.end method

.method public static native nativeThemeStyleV2Notify(III)V
.end method

.method public static native nativeTrafficReport(IIIII)V
.end method

.method public static native nativeVoiceControlReq(IZZ)V
.end method

.method public static native nativeZoomMapTimes(III)V
.end method

.method public static notifyFloatProperty(IF)V
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
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "notifyFloatProperty propertyId:{?}, fValue:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->floatPropertyMap:Ljava/util/Map;

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeFloatProperty(IF)V

    .line 41
    return-void
.end method

.method public static notifyIntProperty(II)V
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
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "notifyIntProperty propertyId:{?}, iValue:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->integerPropertyMap:Ljava/util/Map;

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeIntProperty(II)V

    .line 41
    return-void
.end method

.method public static notifyReadyStatus(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

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
    const-string v1, "AndroidProtocolExe"

    .line 13
    const-string v2, "notifyReadyStatus hasReady:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Ll30;->g()Ll30;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ll30;->q(Z)V

    .line 25
    return-void
.end method

.method public static native onAdditionalPowerUsageNotified(III)V
.end method

.method public static native onChargeStateChanged(II)V
.end method

.method public static native onDriveModeChanged(I)V
.end method

.method public static native onOperateExscreenNotified(III)V
.end method

.method public static native openFavorite(I)V
.end method

.method public static native providerIsInit()Z
.end method

.method public static native publishChargingProcessInformation(Lcom/autonavi/amapauto/jni/protocol/data/ChargingProcessInformationData;)V
.end method

.method public static native rawNativeAccOn(IZ)V
.end method

.method public static requestCameraStatus()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const-string v1, "AndroidProtocolExe"

    .line 17
    const-string v2, "requestCameraStatus elapsedRealtime:{?}"

    .line 19
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lde;

    .line 24
    invoke-direct {v0}, Lde;-><init>()V

    .line 27
    invoke-static {}, Ll30;->g()Ll30;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 34
    return-void
.end method

.method public static native requestFrequentPois(II)V
.end method

.method public static requestLocationInfoConvertNew(Lfy;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static native requestRoute(Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;)V
.end method

.method public static sendAccountSyncLoginState(Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "sendAccountSyncLoginState "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ly0;

    .line 13
    invoke-direct {v0, p0}, Ly0;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;)V

    .line 16
    invoke-static {}, Ll30;->g()Ll30;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static sendAreaInfo(Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;)V
    .locals 1

    .line 1
    new-instance v0, Lw5;

    .line 3
    invoke-direct {v0, p0}, Lw5;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/AreaInfoData;)V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 13
    return-void
.end method

.method public static sendAutoStatus(I)V
    .locals 1

    const/4 v0, -0x1

    .line 98
    invoke-static {p0, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(II)V

    return-void
.end method

.method public static sendAutoStatus(II)V
    .locals 8

    const/4 v0, 0x1

    if-ne p0, v0, :content_theme_ready_end

    invoke-static {}, Lcom/autonavi/amapauto/content/ContentRuntime;->onAmapReady()V

    :content_theme_ready_end
    .line 1
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    new-instance v1, Leq$a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Leq$a;-><init>(Ljava/lang/Object;)V

    const v2, 0xea66

    invoke-virtual {v0, v2, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 2
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->onNaviStatusChange(I)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "AndroidProtocolExe"

    const-string v5, "sendAutoStatus status = {?} statusDetails = {?}"

    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x31

    const/16 v5, 0x19f

    if-eq p0, v4, :cond_11

    const/16 v6, 0xc

    if-eq p0, v6, :cond_10

    const/16 v6, 0x22

    if-eq p0, v6, :cond_f

    const/16 v6, 0x2b

    if-eq p0, v6, :cond_e

    const/16 v6, 0x68

    if-eq p0, v6, :cond_d

    const/16 v6, 0x192

    if-eq p0, v6, :cond_c

    if-eq p0, v5, :cond_b

    const/16 v6, 0x18

    if-eq p0, v6, :cond_a

    const/16 v6, 0x19

    if-eq p0, v6, :cond_9

    const/16 v6, 0x30

    if-eq p0, v6, :cond_8

    if-eq p0, v1, :cond_7

    const/16 v6, 0xca

    if-eq p0, v6, :cond_5

    const/16 v7, 0xcb

    if-eq p0, v7, :cond_5

    const/16 v6, 0x19c

    if-eq p0, v6, :cond_4

    const/16 v6, 0x19d

    if-eq p0, v6, :cond_3

    const/16 v6, 0xbd0

    if-eq p0, v6, :cond_2

    const/16 v6, 0xbd1

    if-eq p0, v6, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-static {}, Lbk;->m()Lbk;

    move-result-object v0

    const v2, 0x40000013    # 2.0000045f

    invoke-virtual {v0, v2}, Lbk;->w(I)V

    goto/16 :goto_3

    .line 5
    :pswitch_1
    invoke-static {}, Lbk;->m()Lbk;

    move-result-object v0

    const v2, 0x40000012    # 2.0000043f

    invoke-virtual {v0, v2}, Lbk;->w(I)V

    goto/16 :goto_3

    .line 6
    :pswitch_2
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe$b;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe$b;-><init>()V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 7
    :pswitch_3
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe$a;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe$a;-><init>()V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 8
    :pswitch_4
    new-instance v0, Lwl;

    invoke-direct {v0}, Lwl;-><init>()V

    .line 9
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v2

    invoke-virtual {v2, v0}, Ll30;->a(Lec;)V

    goto/16 :goto_3

    .line 10
    :pswitch_5
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->stopWakeUp()V

    goto/16 :goto_3

    .line 11
    :pswitch_6
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->initWakeUp()V

    goto/16 :goto_3

    .line 12
    :pswitch_7
    new-instance v0, Ldi0;

    invoke-direct {v0, v4}, Ldi0;-><init>(I)V

    .line 13
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v2

    invoke-virtual {v2, v0}, Ll30;->a(Lec;)V

    goto/16 :goto_3

    .line 14
    :pswitch_8
    new-instance v0, Ldi0;

    invoke-direct {v0, v3}, Ldi0;-><init>(I)V

    .line 15
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v2

    invoke-virtual {v2, v0}, Ll30;->a(Lec;)V

    goto/16 :goto_3

    :pswitch_9
    new-array v0, v4, [Ljava/lang/Object;

    const/16 v4, 0x134

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "\u60ac\u6d6e\u7a97 \u5bfc\u822a\u9014\u4e2d\u9000\u51fa\u5bfc\u822a \u9690\u85cf\u60ac\u6d6e\u7a97 NAVI_GUIDE_EXIT\uff1a{?}"

    invoke-static {v2, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/autonavi/autofloat/FloatWindowManagerNative;->hideFloatWindow()V

    .line 18
    invoke-static {}, Lnb;->j()Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->B()V

    .line 19
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    sget v2, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->DEFAULT_VALID_VALUE:I

    invoke-virtual {v0, v2, v2, v2, v3}, Lse;->writeEnergyAtDistance(IIIZ)V

    goto/16 :goto_3

    .line 20
    :pswitch_a
    invoke-static {}, Lnm;->e()Lnm;

    move-result-object v0

    invoke-virtual {v0}, Lnm;->r()V

    const-string v0, "\u5bfc\u822a\u9014\u4e2d\u504f\u822a\u91cd\u7b97\u5f00\u59cb"

    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_b
    const/16 v0, 0x131

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    new-instance v6, Lra0;

    invoke-direct {v6, v0}, Lra0;-><init>(Z)V

    .line 23
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v7

    invoke-virtual {v7, v6}, Ll30;->a(Lec;)V

    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "\u60ac\u6d6e\u7a97 \u504f\u822a\u91cd\u7b97\u7ed3\u679c\u900f\u51fa status\uff1a{?}"

    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lnm;->e()Lnm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnm;->s(Z)V

    if-eqz v0, :cond_15

    .line 26
    invoke-static {}, Lnb;->j()Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->B()V

    goto/16 :goto_3

    .line 27
    :pswitch_c
    new-instance v0, Lsh0;

    invoke-direct {v0, p0}, Lsh0;-><init>(I)V

    .line 28
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v2

    invoke-virtual {v2, v0}, Ll30;->a(Lec;)V

    goto/16 :goto_3

    :pswitch_d
    new-array v0, v4, [Ljava/lang/Object;

    const/16 v4, 0x27

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "\u60ac\u6d6e\u7a97 \u5230\u8fbe\u76ee\u7684\u5730\u900f\u51fa AUTO_NAVI_ARRIVAE_DESTINATION\uff1a{?}"

    invoke-static {v2, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lnm;->e()Lnm;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lnm;->j(I)V

    .line 31
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    sget v2, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->DEFAULT_VALID_VALUE:I

    invoke-virtual {v0, v2, v2, v2, v3}, Lse;->writeEnergyAtDistance(IIIZ)V

    goto/16 :goto_3

    .line 32
    :pswitch_e
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->onDayNightChange(I)V

    goto/16 :goto_3

    .line 33
    :pswitch_f
    invoke-static {v4}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->onDayNightChange(I)V

    goto/16 :goto_3

    .line 34
    :pswitch_10
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->startCluster()V

    .line 35
    invoke-static {}, Lnb;->j()Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->B()V

    goto/16 :goto_3

    .line 36
    :pswitch_11
    invoke-static {}, Lse;->c()Lse;

    move-result-object v2

    invoke-virtual {v2}, Lse;->stopCluster()V

    .line 37
    invoke-static {}, Lnb;->j()Lnb;

    move-result-object v2

    invoke-virtual {v2}, Lnb;->B()V

    .line 38
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->onNaviStatusChange(I)V

    .line 39
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    sget v2, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->DEFAULT_VALID_VALUE:I

    invoke-virtual {v0, v2, v2, v2, v3}, Lse;->writeEnergyAtDistance(IIIZ)V

    .line 40
    sget v0, Li6;->i:I

    sget v2, Li6;->f:I

    invoke-static {v0, v2}, Li6;->y(II)Z

    goto/16 :goto_3

    .line 41
    :pswitch_12
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->startCluster()V

    .line 42
    invoke-static {}, Lnb;->j()Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->B()V

    goto/16 :goto_3

    .line 43
    :cond_1
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lrv;->a0(Z)V

    goto/16 :goto_3

    .line 44
    :cond_2
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lrv;->a0(Z)V

    goto/16 :goto_3

    .line 45
    :cond_3
    sput-boolean v3, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->isHmiSwtichReady:Z

    .line 46
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->notifyReadyStatus(Z)V

    goto/16 :goto_3

    .line 47
    :cond_4
    sput-boolean v4, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->isHmiSwtichReady:Z

    .line 48
    invoke-static {v4}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->notifyReadyStatus(Z)V

    goto/16 :goto_3

    .line 49
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "KEY_TYPE"

    const/16 v7, 0x2723

    .line 51
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p0, v6, :cond_6

    const/4 v3, 0x1

    :cond_6
    const-string v2, "EXTRA_CROSS_MAP"

    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v2

    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 54
    :cond_7
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrv;->k0(I)V

    goto/16 :goto_3

    :cond_8
    new-array v0, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    const-string v3, "\u60ac\u6d6e\u7a97\u5b9a\u4f4d\u6210\u529f\u900f\u51fa GPS_LOCATED\uff1a{?}"

    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lnm;->e()Lnm;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnm;->k(Z)V

    goto/16 :goto_3

    .line 57
    :cond_9
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetCruise;->onCruiseStatusChange(I)V

    goto/16 :goto_3

    .line 58
    :cond_a
    invoke-static {v4}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetCruise;->onCruiseStatusChange(I)V

    goto/16 :goto_3

    :cond_b
    new-array v0, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    const-string v6, "\u60ac\u6d6e\u7a97\u5b9a\u4f4d\u4e22\u5931\u900f\u51fa GPS_UNLOCATED\uff1a{?}"

    invoke-static {v2, v6, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lnm;->e()Lnm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnm;->k(Z)V

    .line 61
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v0

    sget-object v2, Lzm;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lzm;->e(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_15

    .line 62
    new-instance v0, Lgo;

    new-instance v2, Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;

    invoke-direct {v2, v4}, Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;-><init>(I)V

    invoke-direct {v0, v2}, Lgo;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;)V

    .line 63
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v2

    invoke-virtual {v2, v0}, Ll30;->a(Lec;)V

    goto/16 :goto_3

    .line 64
    :cond_c
    sget v0, Li6;->h:I

    sget v2, Li6;->f:I

    invoke-static {v0, v2}, Li6;->y(II)Z

    goto/16 :goto_3

    .line 65
    :cond_d
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    sget v2, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->DEFAULT_VALID_VALUE:I

    invoke-virtual {v0, v2, v2, v2, v3}, Lse;->writeEnergyAtDistance(IIIZ)V

    goto/16 :goto_3

    .line 66
    :cond_e
    invoke-static {v4}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->onNaviStatusChange(I)V

    goto/16 :goto_3

    .line 67
    :cond_f
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->stopCluster()V

    .line 68
    invoke-static {}, Lnb;->j()Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->B()V

    .line 69
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    sget v2, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->DEFAULT_VALID_VALUE:I

    invoke-virtual {v0, v2, v2, v2, v3}, Lse;->writeEnergyAtDistance(IIIZ)V

    goto/16 :goto_3

    .line 70
    :cond_10
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->stopCluster()V

    .line 71
    invoke-static {}, Lnb;->j()Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->B()V

    .line 72
    invoke-static {}, Lse;->c()Lse;

    move-result-object v0

    sget v2, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->DEFAULT_VALID_VALUE:I

    invoke-virtual {v0, v2, v2, v2, v3}, Lse;->writeEnergyAtDistance(IIIZ)V

    .line 73
    sget v0, Li6;->j:I

    sget v2, Li6;->f:I

    invoke-static {v0, v2}, Li6;->y(II)Z

    goto/16 :goto_3

    :cond_11
    const-string v0, "BackgroudService sendAutoStatus setIsBackgroudLoaded true"

    new-array v6, v3, [Ljava/lang/Object;

    .line 74
    invoke-static {v2, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3f5

    .line 75
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "EBOOL_KEY_IS_ENABLE_INIT_IFLYTEK : true "

    new-array v6, v3, [Ljava/lang/Object;

    .line 76
    invoke-static {v2, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "iflyCallBack == null,please check!"

    new-array v6, v3, [Ljava/lang/Object;

    .line 78
    invoke-static {v2, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_12
    const-string v0, "EBOOL_KEY_IS_ENABLE_INIT_IFLYTEK : false "

    new-array v6, v3, [Ljava/lang/Object;

    .line 79
    invoke-static {v2, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_1
    invoke-static {}, Lqo0;->a()Lqo0;

    move-result-object v0

    invoke-virtual {v0}, Lqo0;->d()Z

    move-result v0

    new-array v6, v4, [Ljava/lang/Object;

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "sendAutoStatus isSpeakByTts={?}"

    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_13

    .line 82
    invoke-static {}, Lqo0;->a()Lqo0;

    move-result-object v0

    invoke-virtual {v0}, Lqo0;->b()V

    .line 83
    :cond_13
    :try_start_0
    invoke-static {}, Lg3;->h()Lg3;

    move-result-object v0

    invoke-virtual {v0}, Lg3;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 84
    invoke-static {}, Lg3;->h()Lg3;

    move-result-object v0

    invoke-virtual {v0}, Lg3;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v6, "AndroidTTSPlayer Exception"

    new-array v7, v3, [Ljava/lang/Object;

    .line 85
    invoke-static {v2, v6, v0, v7}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 86
    :cond_14
    :goto_2
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v0

    invoke-virtual {v0}, Ll30;->i()V

    .line 87
    invoke-static {}, La7;->c()La7;

    move-result-object v0

    invoke-virtual {v0}, La7;->e()V

    .line 88
    invoke-static {}, Ll30;->g()Ll30;

    move-result-object v0

    invoke-virtual {v0}, Ll30;->i()V

    .line 89
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendRequestVehicleInfo()V

    .line 90
    invoke-static {}, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->registerTimeChangeReceiver()V

    .line 91
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendDriveRestrictionStatus()V

    .line 92
    invoke-static {}, Lpa;->p()V

    const/16 v0, 0x28a

    .line 93
    invoke-static {v0}, Lib;->u(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 94
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v0

    sget-object v6, Lzm;->X:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lzm;->e(Ljava/lang/String;I)I

    move-result v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "isNeedPltHook:{?}"

    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_15

    .line 96
    invoke-static {}, Lq7;->a()I

    :cond_15
    :goto_3
    const/16 v0, 0x191

    if-lt p0, v0, :cond_16

    if-gt p0, v5, :cond_16

    return-void

    :cond_16
    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/16 v0, 0x32

    if-eq p0, v0, :cond_18

    const/16 v0, 0x33

    if-eq p0, v0, :cond_18

    if-eq p0, v1, :cond_18

    if-nez p0, :cond_17

    goto :goto_4

    .line 97
    :cond_17
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(II)V

    :cond_18
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x138
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sendBindUserResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p1, v0, v1

    .line 10
    const/4 v1, 0x2

    .line 11
    aput-object p2, v0, v1

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 20
    const-string v1, "AndroidProtocolExe"

    .line 22
    const-string v2, "sendBindUserResult uid:{?} uname:{?} uavater:{?} isSuccess:{?}"

    .line 24
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lfe;

    .line 29
    invoke-direct {v0, p0, p1, p2}, Lfe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Lfe;->g(Ljava/lang/Boolean;)V

    .line 39
    invoke-static {}, Ll30;->g()Ll30;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 46
    return-void
.end method

.method public static sendCarBindSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "AndroidProtocolExe"

    .line 9
    const-string v2, "sendCarBindSuccess uname:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Lfe;

    .line 16
    invoke-direct {v0, p0, p1, p2}, Lfe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v0, p0}, Lfe;->g(Ljava/lang/Boolean;)V

    .line 24
    invoke-static {}, Ll30;->g()Ll30;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 31
    return-void
.end method

.method public static sendCarLocationInfo(Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Ly70;->c(Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lhe;

    .line 10
    invoke-direct {v0, p0}, Lhe;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ll30;->g()Ll30;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 20
    return-void
.end method

.method public static sendCrossMapState(IZ)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 9
    aput-object p0, v0, v1

    .line 11
    const/4 p0, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v1

    .line 16
    aput-object v1, v0, p0

    .line 18
    const-string p0, "AndroidProtocolExe"

    .line 20
    const-string v1, "sendCrossMapState type={?}, isShow={?}"

    .line 22
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lib;->l()Z

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 31
    if-eqz p1, :cond_0

    .line 33
    const/16 p0, 0xca

    .line 35
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 p0, 0xcb

    .line 41
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public static sendDriveRestrictionStatus()V
    .locals 2

    .line 1
    new-instance v0, Lfk0;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lfk0;-><init>(I)V

    .line 7
    invoke-static {}, Ll30;->g()Ll30;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 14
    return-void
.end method

.method public static sendDriveWayInfo(Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "sendDriveWayInfo "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lmk;

    .line 13
    invoke-direct {v0, p0}, Lmk;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;)V

    .line 16
    invoke-static {}, Ll30;->g()Ll30;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static sendExScreenStatus(III)V
    .locals 6

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x272c

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v2, v1, v3

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v5

    .line 33
    aput-object v5, v1, v2

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v5

    .line 40
    aput-object v5, v1, v2

    .line 42
    const-string v2, "AndroidProtocolExe"

    .line 44
    const-string v5, "sendExScreenStatus status:{?},window:{?},mode:{?},adjust:{?}"

    .line 46
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    if-eqz v0, :cond_0

    .line 51
    add-int/lit16 p1, p1, -0x3e8

    .line 53
    :cond_0
    new-instance v0, Lel;

    .line 55
    invoke-direct {v0, p1, p2, p0}, Lel;-><init>(III)V

    .line 58
    invoke-static {}, Ll30;->g()Ll30;

    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, v0}, Ll30;->a(Lec;)V

    .line 65
    invoke-static {}, La20;->l()La20;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2, p1}, La20;->k(I)Lhl;

    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_9

    .line 75
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 78
    move-result-object p2

    .line 79
    sget-object v0, Ld20;->g:Ld20;

    .line 81
    const-string v1, "sendExScreenStatus dispatchAutoStatus status:{?}"

    .line 83
    if-eq p2, v0, :cond_6

    .line 85
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 88
    move-result-object p2

    .line 89
    sget-object v0, Ld20;->f:Ld20;

    .line 91
    if-ne p2, v0, :cond_1

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 97
    move-result-object p2

    .line 98
    sget-object v0, Ld20;->d:Ld20;

    .line 100
    if-eq p2, v0, :cond_2

    .line 102
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 105
    move-result-object p2

    .line 106
    sget-object v0, Ld20;->e:Ld20;

    .line 108
    if-eq p2, v0, :cond_2

    .line 110
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 113
    move-result-object p2

    .line 114
    sget-object v0, Ld20;->h:Ld20;

    .line 116
    if-ne p2, v0, :cond_9

    .line 118
    :cond_2
    if-eqz p0, :cond_3

    .line 120
    if-ne p0, v4, :cond_9

    .line 122
    :cond_3
    if-nez p0, :cond_4

    .line 124
    invoke-virtual {p1}, Lhl;->k()V

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {p1}, Lhl;->m()V

    .line 131
    :goto_0
    if-nez p0, :cond_5

    .line 133
    const/16 p2, 0xc8

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    const/16 p2, 0xbd4

    .line 138
    :goto_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v5

    .line 144
    aput-object v5, v0, v3

    .line 146
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v0, Lab;

    .line 151
    invoke-direct {v0, p2}, Lab;-><init>(I)V

    .line 154
    invoke-static {}, Ll30;->g()Ll30;

    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2, v0}, Ll30;->a(Lec;)V

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    .line 164
    if-ne p0, v4, :cond_9

    .line 166
    :cond_7
    if-nez p0, :cond_8

    .line 168
    const/16 p2, 0xbd2

    .line 170
    goto :goto_3

    .line 171
    :cond_8
    const/16 p2, 0xbd5

    .line 173
    :goto_3
    new-array v0, v4, [Ljava/lang/Object;

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v5

    .line 179
    aput-object v5, v0, v3

    .line 181
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v0, Lab;

    .line 186
    invoke-direct {v0, p2}, Lab;-><init>(I)V

    .line 189
    invoke-static {}, Ll30;->g()Ll30;

    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p2, v0}, Ll30;->a(Lec;)V

    .line 196
    :cond_9
    :goto_4
    new-array p2, v4, [Ljava/lang/Object;

    .line 198
    if-nez p1, :cond_a

    .line 200
    const-string v0, "null"

    .line 202
    goto :goto_5

    .line 203
    :cond_a
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 206
    move-result-object v0

    .line 207
    :goto_5
    aput-object v0, p2, v3

    .line 209
    const-string v0, "sendExScreenStatus extScreen:{?}"

    .line 211
    invoke-static {v2, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    if-eqz p1, :cond_e

    .line 216
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 219
    move-result-object p2

    .line 220
    sget-object v0, Ld20;->g:Ld20;

    .line 222
    if-eq p2, v0, :cond_b

    .line 224
    invoke-virtual {p1}, Lhl;->f()Ld20;

    .line 227
    move-result-object p1

    .line 228
    sget-object p2, Ld20;->f:Ld20;

    .line 230
    if-ne p1, p2, :cond_e

    .line 232
    :cond_b
    sget-object p1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    if-nez p0, :cond_c

    .line 236
    const/4 v3, 0x1

    .line 237
    :cond_c
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    if-nez p0, :cond_d

    .line 242
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->y()Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;

    .line 245
    move-result-object p0

    .line 246
    invoke-interface {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;->l()V

    .line 249
    goto :goto_6

    .line 250
    :cond_d
    if-ne p0, v4, :cond_e

    .line 252
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->y()Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;

    .line 255
    move-result-object p0

    .line 256
    invoke-interface {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;->u()V

    .line 259
    :cond_e
    :goto_6
    return-void
.end method

.method public static sendGetHeadLampStatus()V
    .locals 2

    .line 1
    new-instance v0, Lfk0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lfk0;-><init>(I)V

    .line 7
    invoke-static {}, Ll30;->g()Ll30;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 14
    return-void
.end method

.method public static sendJsonAsync(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V
    .locals 1

    .line 1
    invoke-static {}, Lv70;->f()Lv70;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lv70;->b(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V

    .line 8
    return-void
.end method

.method public static sendJsonSync(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;
    .locals 1

    .line 1
    invoke-static {}, Lv70;->f()Lv70;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lv70;->c(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static sendLastMile(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    aput-object p4, v0, v1

    .line 21
    const/4 v1, 0x3

    .line 22
    aput-object p5, v0, v1

    .line 24
    const-string v1, "AndroidProtocolExe"

    .line 26
    const-string v2, "sendLastMile lat={?},lon={?},name={?},addr={?}"

    .line 28
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lvw;

    .line 33
    invoke-direct {v0}, Lvw;-><init>()V

    .line 36
    invoke-virtual {v0, p0, p1}, Lvw;->h(D)V

    .line 39
    invoke-virtual {v0, p2, p3}, Lvw;->i(D)V

    .line 42
    invoke-virtual {v0, p4}, Lvw;->j(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p5}, Lvw;->g(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ll30;->g()Ll30;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 55
    return-void
.end method

.method public static sendLocationInfo(Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Ly70;->d(Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lzo;

    .line 10
    invoke-direct {v0, p0}, Lzo;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ll30;->g()Ll30;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 20
    return-void
.end method

.method public static sendLogoutResult(Z)V
    .locals 1

    .line 1
    new-instance v0, Lhz;

    .line 3
    invoke-direct {v0, p0}, Lhz;-><init>(Z)V

    .line 6
    invoke-static {}, Ll30;->g()Ll30;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 13
    return-void
.end method

.method public static sendMessageComponent(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Li10;

    .line 3
    invoke-direct {v0}, Li10;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Li10;->m(I)V

    .line 9
    invoke-virtual {v0, p1}, Li10;->j(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ll30;->g()Ll30;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 19
    return-void
.end method

.method public static sendNaviFacility(ZI)V
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
    const/4 v1, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "sendNaviFacility isShow={?},type={?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lk20;

    .line 27
    invoke-direct {v0}, Lk20;-><init>()V

    .line 30
    invoke-virtual {v0, p0}, Lk20;->g(Z)V

    .line 33
    invoke-virtual {v0, p1}, Lk20;->h(I)V

    .line 36
    invoke-static {}, Ll30;->g()Ll30;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 43
    return-void
.end method

.method public static sendRequestPowerInfo()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "sendRequestPowerInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lla0;

    .line 13
    invoke-direct {v0}, Lla0;-><init>()V

    .line 16
    invoke-static {}, Ll30;->g()Ll30;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 23
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe$c;

    .line 25
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe$c;-><init>()V

    .line 28
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public static sendRequestVehicleInfo()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "sendRequestVehicleInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lqa0;

    .line 13
    invoke-direct {v0}, Lqa0;-><init>()V

    .line 16
    invoke-static {}, Ll30;->g()Ll30;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static sendTestNumResponse(ILjava/lang/String;)V
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
    aput-object p1, v0, v1

    .line 14
    const-string v1, "AndroidProtocolExe"

    .line 16
    const-string v2, "sendTestNumResponse testNum={?}, result={?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 23
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "KEY_TYPE"

    .line 33
    const/16 v2, 0x4eea

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string v1, "EXTRA_TEST_ID"

    .line 40
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string p0, "EXTRA_TEST_RESULT"

    .line 45
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lrv;->H()Lrv;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public static sendTmcSegment(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V
    .locals 3

    .line 1
    invoke-static {}, Lqf;->b()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Llh0;

    .line 9
    invoke-direct {v0, p0}, Llh0;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V

    .line 12
    invoke-static {}, Ll30;->g()Ll30;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 19
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lnb;->I(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V

    .line 26
    const/4 v0, 0x1

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    if-nez p0, :cond_1

    .line 31
    const-string v1, "is null"

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    :goto_0
    const/4 v2, 0x0

    .line 39
    aput-object v1, v0, v2

    .line 41
    const-string v1, "AndroidProtocolExe"

    .line 43
    const-string v2, "\u60ac\u6d6e\u7a97\u5b9e\u65f6\u4ea4\u901a\u5149\u67f1\u56fe\u900f\u51fa segmentData\uff1a{?}"

    .line 45
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lnm;->e()Lnm;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Lnm;->u(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V

    .line 55
    return-void
.end method

.method public static sendVersionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "sendVersionInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->w()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lmk0;

    .line 21
    invoke-direct {v1}, Lmk0;-><init>()V

    .line 24
    invoke-virtual {v1, p0}, Lmk0;->g(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v0}, Lmk0;->i(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p1}, Lmk0;->h(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ll30;->g()Ll30;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v1}, Ll30;->a(Lec;)V

    .line 40
    return-void
.end method

.method public static sendVoiceControl()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidProtocolExe"

    .line 6
    const-string v2, "sendVoiceControl"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lml0;

    .line 13
    invoke-direct {v0}, Lml0;-><init>()V

    .line 16
    invoke-static {}, Ll30;->g()Ll30;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 23
    return-void
.end method

.method public static sendWidgetScreenShowPath(Ljava/lang/String;)V
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
    const-string v1, "AndroidProtocolExe"

    .line 9
    const-string v2, "sendWidgetScreenShowPath path={?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Llm0;

    .line 16
    invoke-direct {v0}, Llm0;-><init>()V

    .line 19
    invoke-virtual {v0, p0}, Llm0;->h(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Ll30;->g()Ll30;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 29
    return-void
.end method

.method public static native setCoordinateInfo(Lcom/autonavi/amapauto/jni/protocol/data/CoordinateInfoData;)V
.end method

.method public static native setExtScreenMapStatus(Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;)V
.end method

.method public static native setExternalScreenCrossControl(IZ)V
.end method

.method public static native setExternalScreenCrossType(IIZ)V
.end method

.method public static native setExternalScreenDynamicLevelLock(IZ)V
.end method

.method public static native setExternalScreenMapStatus(IIII)V
.end method

.method public static setHeadLampStatus(II)V
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
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "setHeadLampStatus requestId:{?} status:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetHeadLampStatus(II)V

    .line 28
    return-void
.end method

.method public static native setNaviMuteModel(IIZ)V
.end method

.method public static native setPowerInfo(Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;)V
.end method

.method public static native setVehicleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDII)V
.end method

.method public static native startPage(II)V
.end method

.method public static native testRequest(I)V
.end method

.method public static wirteChargingStationInfo(II)V
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
    const-string v1, "AndroidProtocolExe"

    .line 20
    const-string v2, "writeChargingStationInfo() energy:{?}, power:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lse;->c()Lse;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0, p1}, Lse;->writeChargingStationInfo(II)V

    .line 32
    return-void
.end method

.method public static wirteEnergyAtDistance(IIIZ)V
    .locals 3

    .line 1
    const/4 v0, 0x4

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
    const/4 v1, 0x2

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 32
    const-string v1, "AndroidProtocolExe"

    .line 34
    const-string v2, "writeEnergyAtDistance() energy:{?}, distance:{?}, seconds:{?}, inStationInfo:{?}"

    .line 36
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lse;->c()Lse;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0, p1, p2, p3}, Lse;->writeEnergyAtDistance(IIIZ)V

    .line 46
    return-void
.end method
