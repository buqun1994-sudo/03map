.class public Lcom/amap/location/support/header/HeaderConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OTHER_ID_MAP_LOCK:Ljava/lang/Object;

.field public static final PRODUCT_AMS:B = 0x9t

.field public static final PRODUCT_CLOUD_SDK:B = 0x8t

.field public static final PRODUCT_FLP:B = 0x1t

.field public static final PRODUCT_GXD_SDK:B = 0xat

.field public static final PRODUCT_NLP:B = 0x2t

.field public static final PRODUCT_NLP_SDK:B = 0x7t

.field public static final PRODUCT_OPEN_SDK:B = 0x4t

.field public static final PRODUCT_OPEN_SDK_BASEON:B = 0x6t

.field public static final PRODUCT_PAPAGO_SDK:B = 0xft

.field public static final PRODUCT_RAVELLER_SDK:B = 0xbt

.field public static final PRODUCT_SDK_AMAP:B = 0x0t

.field public static final PRODUCT_SDK_AUTO:B = 0x3t

.field public static final PRODUCT_SDK_MANU:B = 0x5t

.field public static final PRODUCT_UNKNOWN:B = -0x1t

.field public static final TAG:Ljava/lang/String; = "HeaderConfig"

.field private static volatile sAdCode:Ljava/lang/String; = null

.field private static volatile sAdiu:Ljava/lang/String; = ""

.field private static volatile sAndroidId:Ljava/lang/String; = ""

.field private static volatile sAppKey:Ljava/lang/String; = null

.field private static volatile sAppstartid:Ljava/lang/String; = null

.field private static volatile sAutoDiv:Ljava/lang/String; = null

.field private static volatile sBrand:Ljava/lang/String; = ""

.field private static volatile sChannel:Ljava/lang/String; = null

.field private static volatile sCifa:Ljava/lang/String; = null

.field private static volatile sCollVersion:Ljava/lang/String; = ""

.field private static sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo; = null

.field private static volatile sDeviceMacLong:J = 0x0L

.field private static volatile sDeviceMacString:Ljava/lang/String; = ""

.field private static volatile sDeviceMode:Ljava/lang/String; = ""

.field private static volatile sDibv:Ljava/lang/String; = null

.field private static volatile sDic:Ljava/lang/String; = null

.field private static volatile sDid:Ljava/lang/String; = null

.field private static volatile sDie:Ljava/lang/String; = null

.field private static volatile sDip:Ljava/lang/String; = null

.field private static volatile sDiu:Ljava/lang/String; = ""

.field private static volatile sDiu2:Ljava/lang/String; = null

.field private static volatile sDiu3:Ljava/lang/String; = null

.field private static volatile sDiv:Ljava/lang/String; = null

.field private static volatile sExtra:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sFrom:Ljava/lang/String; = null

.field private static volatile sImsi:Ljava/lang/String; = ""

.field private static sInfo:[Ljava/lang/String; = null

.field private static volatile sLicense:Ljava/lang/String; = ""

.field private static volatile sLocScene:Ljava/lang/String; = null

.field private static volatile sManufacturer:Ljava/lang/String; = ""

.field private static volatile sMapkey:Ljava/lang/String; = ""

.field private static volatile sMixAppName:Ljava/lang/String; = null

.field private static volatile sOaid:Ljava/lang/String; = ""

.field private static volatile sOtherIdMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPackageName:Ljava/lang/String; = ""

.field private static volatile sPiv:Ljava/lang/String; = null

.field private static volatile sProcessName:Ljava/lang/String; = ""

.field private static volatile sProductId:B = -0x1t

.field private static volatile sProductVerion:Ljava/lang/String; = ""

.field private static volatile sProtocolVer:Ljava/lang/String; = null

.field private static volatile sSerialNum:Ljava/lang/String; = ""

.field private static volatile sSession:Ljava/lang/String; = null

.field private static volatile sSpm:Ljava/lang/String; = null

.field private static volatile sStepid:Ljava/lang/String; = null

.field private static volatile sSystemVersionInt:I = 0x0

.field private static volatile sSystemVersionString:Ljava/lang/String; = ""

.field private static volatile sTid:Ljava/lang/String; = ""

.field private static volatile sVersionCode:Ljava/lang/String; = ""

.field private static volatile sVersionName:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lcom/amap/location/support/header/HeaderConfig;->sInfo:[Ljava/lang/String;

    .line 9
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sMixAppName:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sChannel:Ljava/lang/String;

    .line 13
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAppKey:Ljava/lang/String;

    .line 15
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSession:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDip:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiv:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDibv:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDic:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu2:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu3:Ljava/lang/String;

    .line 29
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sStepid:Ljava/lang/String;

    .line 31
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSpm:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAppstartid:Ljava/lang/String;

    .line 35
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sCifa:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDie:Ljava/lang/String;

    .line 39
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAutoDiv:Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDid:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sFrom:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdCode:Ljava/lang/String;

    .line 47
    const-string v0, "5.3"

    .line 49
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sProtocolVer:Ljava/lang/String;

    .line 51
    const-string v0, "0"

    .line 53
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sLocScene:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sPiv:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->OTHER_ID_MAP_LOCK:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdCode()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdCode:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string v0, "g_adcode"

    .line 11
    sget-object v1, Lcom/amap/location/support/header/HeaderConfig;->sAdCode:Ljava/lang/String;

    .line 13
    invoke-static {v0, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdCode:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdCode:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getAdiu()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdiu:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getAdiu()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdiu:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdiu:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getAllIdentifiersKey()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->initOtherIdMap()V

    .line 4
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOtherIdMap:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAndroidId:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static declared-synchronized getAosGatewayParams(ZLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/amap/location/support/header/HeaderConfig;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v3, "dip="

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDip()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "&div="

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiv()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAutoDiv()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 48
    const-string v3, "&autodiv="

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAutoDiv()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    const-string v3, "&adiu="

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "&dibv="

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDibv()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v3, "&die="

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDie()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, "&did="

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDid()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, "&dic="

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDic()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v3, "&diu="

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "&diu2="

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu2()Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v3, "&diu3="

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu3()Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v3, "&channel="

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getChannel()Ljava/lang/String;

    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v3, "&cifa="

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getCifa()Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "&from="

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getFrom()Ljava/lang/String;

    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v3, "&session="

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSession()Ljava/lang/String;

    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v3, "&spm="

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSpm()Ljava/lang/String;

    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    .line 219
    move-result-object v3

    .line 220
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_1

    .line 226
    const-string v4, "&tid="

    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v4, "utf-8"

    .line 233
    invoke-static {v3, v4}, Lcom/amap/location/support/network/UriHelper;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1
    const-string v4, "&stepid="

    .line 242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getStepid()Ljava/lang/String;

    .line 248
    move-result-object v4

    .line 249
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v4, "&client_network_class="

    .line 254
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {}, Lcom/amap/location/support/util/NetTypeUtil;->getAosNetType()I

    .line 260
    move-result v4

    .line 261
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAppKey()Ljava/lang/String;

    .line 267
    move-result-object v4

    .line 268
    invoke-static {v4}, Lcom/amap/location/support/header/HeaderConfig;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object v4

    .line 272
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 275
    move-result-object v5

    .line 276
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getChannel()Ljava/lang/String;

    .line 279
    move-result-object v6

    .line 280
    invoke-interface {v5, v6, v3, v4}, Lcom/amap/location/support/security/INativeAbility;->saos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    move-result-object v3

    .line 284
    const-string v4, "&sign="

    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getExtra()Ljava/util/Map;

    .line 295
    move-result-object v3

    .line 296
    if-eqz v3, :cond_2

    .line 298
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 301
    move-result-object v3

    .line 302
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 305
    move-result-object v3

    .line 306
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_2

    .line 312
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    move-result-object v4

    .line 316
    check-cast v4, Ljava/util/Map$Entry;

    .line 318
    const-string v5, "&"

    .line 320
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 326
    move-result-object v5

    .line 327
    check-cast v5, Ljava/lang/String;

    .line 329
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v5, "="

    .line 334
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 340
    move-result-object v4

    .line 341
    check-cast v4, Ljava/lang/String;

    .line 343
    invoke-static {v4}, Lcom/amap/location/support/network/UriHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    move-result-object v4

    .line 347
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    goto :goto_0

    .line 351
    :cond_2
    if-eqz p2, :cond_3

    .line 353
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 356
    move-result-object p2

    .line 357
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 360
    move-result-object p2

    .line 361
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_3

    .line 367
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    move-result-object v3

    .line 371
    check-cast v3, Ljava/util/Map$Entry;

    .line 373
    const-string v4, "&"

    .line 375
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 381
    move-result-object v4

    .line 382
    check-cast v4, Ljava/lang/String;

    .line 384
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v4, "="

    .line 389
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Ljava/lang/String;

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    goto :goto_1

    .line 402
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object p2

    .line 406
    invoke-static {p2}, Lcom/amap/location/support/header/AosEncrypt;->aosEncrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    goto :goto_2

    .line 411
    :catch_0
    move-exception p2

    .line 412
    :try_start_2
    const-string v3, "HeaderConfig"

    .line 414
    const-string v4, "aos url error"

    .line 416
    invoke-static {v3, v4, p2}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    const/4 p2, 0x0

    .line 420
    :goto_2
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 423
    move-result v3

    .line 424
    if-eqz v3, :cond_4

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 429
    goto :goto_3

    .line 430
    :cond_4
    invoke-static {p2}, Lcom/amap/location/support/network/UriHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    move-result-object p2

    .line 434
    const-string v2, "in="

    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string p2, "&ent=2"

    .line 444
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string p2, "&is_bin=1"

    .line 449
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :goto_3
    const-string p2, "&csid="

    .line 454
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    if-eqz p0, :cond_5

    .line 462
    const-string p0, "&appstartid=test"

    .line 464
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 471
    monitor-exit v0

    .line 472
    return-object p0

    .line 473
    :catchall_0
    move-exception p0

    .line 474
    monitor-exit v0

    .line 475
    throw p0
.end method

.method public static getAppInfo()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getAppInfo()[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sInfo:[Ljava/lang/String;

    .line 12
    return-object v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAppKey:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getAppstartid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAppstartid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getAutoDiv()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAutoDiv:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sBrand:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getBrand()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sBrand:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sBrand:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sChannel:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getCifa()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sCifa:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getCollVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sCollVersion:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getDeviceInfoImpl()Lcom/amap/location/support/device/IDeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 3
    return-object v0
.end method

.method public static getDeviceMacLong()J
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getDeviceMacLong()J

    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMacLong:J

    .line 11
    :cond_0
    sget-wide v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMacLong:J

    .line 13
    return-wide v0
.end method

.method public static getDeviceMacString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMacString:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getDeviceMacString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMacString:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMacString:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMode:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getDeviceMode()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMode:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMode:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getDibv()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDibv:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDic()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDic:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string v0, "channel_dic"

    .line 11
    const-string v1, ""

    .line 13
    invoke-static {v0, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDic:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDic:Ljava/lang/String;

    .line 21
    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDie()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDie:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDip()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDip:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDiu()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getDiu()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getDiu2()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu2:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDiu3()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu3:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDiv()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiv:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sExtra:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public static getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sFrom:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->initOtherIdMap()V

    .line 4
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOtherIdMap:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    return-object p0
.end method

.method public static getImsi()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sImsi:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getImsi()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sImsi:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sImsi:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getLicense()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sLicense:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getLocScene()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sLocScene:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sManufacturer:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getManufacturer()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sManufacturer:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sManufacturer:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getMapkey()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sMapkey:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getMixAppName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sMixAppName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAppInfo()[Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x3

    .line 17
    if-lt v1, v2, :cond_0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const/4 v2, 0x2

    .line 25
    aget-object v2, v0, v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const/4 v2, 0x0

    .line 31
    aget-object v0, v0, v2

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, ","

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sMixAppName:Ljava/lang/String;

    .line 54
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sMixAppName:Ljava/lang/String;

    .line 56
    return-object v0
.end method

.method public static getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOaid:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getOaid()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOaid:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOaid:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sPackageName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sPackageName:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sPackageName:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getPiv()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sPiv:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sProcessName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getProductId()B
    .locals 1

    .line 1
    sget-byte v0, Lcom/amap/location/support/header/HeaderConfig;->sProductId:B

    .line 3
    return v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-byte v0, Lcom/amap/location/support/header/HeaderConfig;->sProductId:B

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "unknow"

    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    const-string v0, "ams"

    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    const-string v0, "amapsdkcloud"

    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    const-string v0, "nlp-sdk"

    .line 17
    goto :goto_0

    .line 18
    :pswitch_3
    const-string v0, "baseon"

    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    const-string v0, "manu"

    .line 23
    goto :goto_0

    .line 24
    :pswitch_5
    const-string v0, "opensdk"

    .line 26
    goto :goto_0

    .line 27
    :pswitch_6
    const-string v0, "autosdk"

    .line 29
    goto :goto_0

    .line 30
    :pswitch_7
    const-string v0, "nlp"

    .line 32
    goto :goto_0

    .line 33
    :pswitch_8
    const-string v0, "flp"

    .line 35
    goto :goto_0

    .line 36
    :pswitch_9
    const-string v0, "amapsdk"

    .line 38
    :goto_0
    return-object v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getProductVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sProductVerion:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getProtocolVer()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sProtocolVer:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getSerialNum()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSerialNum:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getSerialNum()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSerialNum:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSerialNum:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getSession()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSession:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getSpm()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSpm:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getStepid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sStepid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getSystemVersionInt()I
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getSystemVersionInt()I

    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/amap/location/support/header/HeaderConfig;->sSystemVersionInt:I

    .line 11
    :cond_0
    sget v0, Lcom/amap/location/support/header/HeaderConfig;->sSystemVersionInt:I

    .line 13
    return v0
.end method

.method public static getSystemVersionString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSystemVersionString:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getSystemVersionString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSystemVersionString:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sSystemVersionString:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getTid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sTid:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/device/IDeviceInfo;->getTid()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/support/header/HeaderConfig;->sTid:Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sTid:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static getVersionCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sVersionCode:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sVersionName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->nonNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static initOtherIdMap()V
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOtherIdMap:Ljava/util/Map;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->OTHER_ID_MAP_LOCK:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/support/header/HeaderConfig;->sOtherIdMap:Ljava/util/Map;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    const/16 v2, 0x64

    .line 16
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 19
    sput-object v1, Lcom/amap/location/support/header/HeaderConfig;->sOtherIdMap:Ljava/util/Map;

    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method private static nonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static putIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->initOtherIdMap()V

    .line 4
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOtherIdMap:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public static setAdCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdCode:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string v0, "g_adcode"

    .line 17
    invoke-static {v0, p0}, Lcom/amap/location/support/app/GlobalStorageSync;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sAdCode:Ljava/lang/String;

    .line 22
    :cond_0
    return-void
.end method

.method public static setAdiu(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sAdiu:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p0}, Lcom/amap/location/support/device/IDeviceInfo;->setAdiu(Ljava/lang/String;)V

    .line 22
    :cond_0
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sAdiu:Ljava/lang/String;

    .line 24
    :cond_1
    return-void
.end method

.method public static setAndroidId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sAndroidId:Ljava/lang/String;

    .line 9
    :cond_0
    return-void
.end method

.method public static setAppInfo([Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    .line 4
    sget-object v1, Lcom/amap/location/support/header/HeaderConfig;->sInfo:[Ljava/lang/String;

    .line 6
    array-length v1, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sInfo:[Ljava/lang/String;

    .line 11
    :cond_0
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sAppKey:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setAppstartid(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sAppstartid:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setAutoDiv(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sAutoDiv:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sBrand:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sChannel:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setCifa(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sCifa:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setCollVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sCollVersion:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setDeviceInfoImpl(Lcom/amap/location/support/device/IDeviceInfo;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 3
    return-void
.end method

.method public static setDeviceMacLong(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMacLong:J

    .line 3
    return-void
.end method

.method public static setDeviceMacString(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMacString:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setDeviceMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceMode:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setDibv(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDibv:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setDic(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDic:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setDid(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDid:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setDie(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDie:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setDip(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDip:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setDiu(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDiu:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p0}, Lcom/amap/location/support/device/IDeviceInfo;->setDiu(Ljava/lang/String;)V

    .line 22
    :cond_0
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDiu:Ljava/lang/String;

    .line 24
    :cond_1
    return-void
.end method

.method public static setDiu2(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDiu2:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setDiu3(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDiu3:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setDiv(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sDiv:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sExtra:Ljava/util/Map;

    .line 3
    return-void
.end method

.method public static setFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sFrom:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setImsi(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sImsi:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setLicense(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sLicense:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setLocScene(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sLocScene:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sManufacturer:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setMapkey(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sMapkey:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setOaid(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sOaid:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p0}, Lcom/amap/location/support/device/IDeviceInfo;->setOaid(Ljava/lang/String;)V

    .line 22
    :cond_0
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sOaid:Ljava/lang/String;

    .line 24
    :cond_1
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sPackageName:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setPiv(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sPiv:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setProcessName(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sProcessName:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setProductId(B)V
    .locals 0

    .line 1
    sput-byte p0, Lcom/amap/location/support/header/HeaderConfig;->sProductId:B

    .line 3
    return-void
.end method

.method public static setProductVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sProductVerion:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setProtocolVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sProtocolVer:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setSerialNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sSerialNum:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setSession(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sSession:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setSpm(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sSpm:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setStepid(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sStepid:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setSystemVersionInt(I)V
    .locals 0

    .line 1
    sput p0, Lcom/amap/location/support/header/HeaderConfig;->sSystemVersionInt:I

    .line 3
    return-void
.end method

.method public static setSystemVersionString(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sSystemVersionString:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setTid(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sTid:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/amap/location/support/header/HeaderConfig;->sDeviceInfoImpl:Lcom/amap/location/support/device/IDeviceInfo;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p0}, Lcom/amap/location/support/device/IDeviceInfo;->setTid(Ljava/lang/String;)V

    .line 22
    :cond_0
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sTid:Ljava/lang/String;

    .line 24
    :cond_1
    return-void
.end method

.method public static setVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sVersionCode:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/header/HeaderConfig;->sVersionName:Ljava/lang/String;

    .line 5
    :cond_0
    return-void
.end method
