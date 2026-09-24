.class public Lcom/amap/location/support/util/NetTypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AOS_NETWORK_CLASS_2_G:I = 0x1

.field private static final AOS_NETWORK_CLASS_3_G:I = 0x2

.field private static final AOS_NETWORK_CLASS_4_G:I = 0x3

.field private static final AOS_NETWORK_CLASS_5_G:I = 0x5

.field private static final AOS_NETWORK_CLASS_UNKNOWN:I = 0x0

.field private static final AOS_NETWORK_CLASS_WIFI:I = 0x4

.field private static final SA_PHONE_NETS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetTypeUtil"

.field private static sLastCoarseNetStatus:I

.field private static sLastCoarseNetStatusUpdateTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    const-string v0, "UNKWN"

    .line 3
    const-string v1, "GPRS"

    .line 5
    const-string v2, "EDGE"

    .line 7
    const-string v3, "UMTS"

    .line 9
    const-string v4, "CDMA"

    .line 11
    const-string v5, "EVDO_0"

    .line 13
    const-string v6, "EVDO_A"

    .line 15
    const-string v7, "1xRTT"

    .line 17
    const-string v8, "HSDPA"

    .line 19
    const-string v9, "HSUPA"

    .line 21
    const-string v10, "HSPA"

    .line 23
    const-string v11, "IDEN"

    .line 25
    const-string v12, "EVDO_B"

    .line 27
    const-string v13, "LTE"

    .line 29
    const-string v14, "EHRPD"

    .line 31
    const-string v15, "HSPAP"

    .line 33
    const-string v16, "GSM"

    .line 35
    const-string v17, "TD_SCDMA"

    .line 37
    const-string v18, "IWLAN"

    .line 39
    const-string v19, "LTE_CA"

    .line 41
    const-string v20, "NR"

    .line 43
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/amap/location/support/util/NetTypeUtil;->SA_PHONE_NETS:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAosNetType()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/NetTypeUtil;->getCoarseType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    if-ne v0, v2, :cond_1

    .line 12
    const/4 v0, 0x4

    .line 13
    return v0

    .line 14
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkFineType()I

    .line 25
    move-result v0

    .line 26
    const/16 v3, 0xb

    .line 28
    if-eq v0, v3, :cond_6

    .line 30
    const/16 v3, 0xc

    .line 32
    if-ne v0, v3, :cond_2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/16 v3, 0xd

    .line 37
    if-ne v0, v3, :cond_3

    .line 39
    return v2

    .line 40
    :cond_3
    const/16 v2, 0xe

    .line 42
    if-ne v0, v2, :cond_4

    .line 44
    const/4 v0, 0x3

    .line 45
    return v0

    .line 46
    :cond_4
    const/16 v2, 0xf

    .line 48
    if-ne v0, v2, :cond_5

    .line 50
    const/4 v0, 0x5

    .line 51
    return v0

    .line 52
    :cond_5
    return v1

    .line 53
    :cond_6
    :goto_0
    const/4 v0, 0x1

    .line 54
    return v0
.end method

.method public static getApsNetType()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/NetTypeUtil;->getCoarseType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    sget-object v0, Lcom/amap/location/support/util/NetTypeUtil;->SA_PHONE_NETS:[Ljava/lang/String;

    .line 10
    aget-object v0, v0, v1

    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v2, 0x2

    .line 14
    if-ne v0, v2, :cond_1

    .line 16
    const-string v0, ""

    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkType()I

    .line 30
    move-result v0

    .line 31
    if-ltz v0, :cond_2

    .line 33
    sget-object v2, Lcom/amap/location/support/util/NetTypeUtil;->SA_PHONE_NETS:[Ljava/lang/String;

    .line 35
    array-length v3, v2

    .line 36
    if-ge v0, v3, :cond_2

    .line 38
    aget-object v0, v2, v0

    .line 40
    return-object v0

    .line 41
    :cond_2
    sget-object v0, Lcom/amap/location/support/util/NetTypeUtil;->SA_PHONE_NETS:[Ljava/lang/String;

    .line 43
    aget-object v0, v0, v1

    .line 45
    return-object v0
.end method

.method public static getCoarseType()I
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lcom/amap/location/support/util/NetTypeUtil;->sLastCoarseNetStatusUpdateTime:J

    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x7d0

    .line 14
    cmp-long v4, v0, v2

    .line 16
    if-lez v4, :cond_0

    .line 18
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/amap/location/support/util/NetTypeUtil;->sLastCoarseNetStatus:I

    .line 32
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 39
    move-result-wide v0

    .line 40
    sput-wide v0, Lcom/amap/location/support/util/NetTypeUtil;->sLastCoarseNetStatusUpdateTime:J

    .line 42
    :cond_0
    sget v0, Lcom/amap/location/support/util/NetTypeUtil;->sLastCoarseNetStatus:I

    .line 44
    return v0
.end method
