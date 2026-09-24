.class public Lcom/amap/location/signal/impl/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "65535"

    .line 3
    filled-new-array {v0, v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amap/location/signal/impl/util/d;->a:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(I)I
    .locals 0

    .line 1
    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x71

    return p0
.end method

.method private static a(Landroid/telephony/CellIdentityNr;)I
    .locals 2

    .line 2
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getHwTac"

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p0, v0, v1}, Lcom/amap/location/support/util/ReflectUtils;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method private static a(J)J
    .locals 24

    move-wide/from16 v0, p0

    .line 117
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_a

    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v0, v8

    if-eqz v10, :cond_a

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v0, v8

    if-nez v10, :cond_0

    goto/16 :goto_4

    .line 119
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    const-wide/16 v10, 0x1

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    if-lt v8, v9, :cond_1

    div-long v14, v2, v0

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-double v14, v14

    cmpg-double v16, v14, v12

    if-gez v16, :cond_1

    sub-long v0, v2, v0

    move-wide v4, v6

    goto/16 :goto_6

    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v6, 0x1d

    const-wide v17, 0x412e848000000000L    # 1000000.0

    if-ne v8, v6, :cond_2

    .line 120
    div-long v9, v2, v0

    long-to-double v9, v9

    mul-double v9, v9, v17

    sub-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v11, v9, v12

    if-gez v11, :cond_2

    :goto_0
    long-to-double v4, v2

    long-to-double v0, v0

    div-double v0, v0, v17

    :goto_1
    sub-double/2addr v4, v0

    double-to-long v0, v4

    goto/16 :goto_5

    :cond_2
    if-ge v8, v6, :cond_3

    .line 121
    div-long v9, v4, v0

    const-wide/16 v19, 0x1

    sub-long v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    long-to-double v9, v9

    cmpg-double v11, v9, v12

    if-gez v11, :cond_3

    :goto_2
    sub-long/2addr v4, v0

    long-to-double v0, v4

    div-double v0, v0, v17

    double-to-long v0, v0

    goto :goto_5

    .line 122
    :cond_3
    div-long v9, v2, v0

    long-to-double v6, v9

    mul-double v21, v6, v17

    sub-double v21, v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    cmpg-double v23, v21, v12

    if-gez v23, :cond_4

    goto :goto_0

    :cond_4
    const-wide v21, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v21

    sub-double/2addr v6, v14

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v14, v6, v12

    if-gez v14, :cond_5

    long-to-double v4, v2

    long-to-double v0, v0

    div-double v0, v0, v21

    goto :goto_1

    :cond_5
    const-wide/16 v6, 0x1

    sub-long/2addr v9, v6

    .line 124
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    long-to-double v9, v9

    cmpg-double v14, v9, v12

    if-gez v14, :cond_6

    :goto_3
    sub-long v0, v2, v0

    goto :goto_5

    .line 125
    :cond_6
    div-long v9, v4, v0

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-double v6, v6

    cmpg-double v9, v6, v12

    if-gez v9, :cond_7

    goto :goto_2

    :cond_7
    const/16 v6, 0x1e

    if-lt v8, v6, :cond_8

    goto :goto_3

    :cond_8
    const/16 v6, 0x1d

    if-ne v8, v6, :cond_9

    goto :goto_0

    :cond_9
    if-ge v8, v6, :cond_a

    goto :goto_2

    :cond_a
    :goto_4
    const-wide/16 v0, 0x0

    :goto_5
    const-wide/16 v4, 0x0

    :goto_6
    cmp-long v6, v0, v4

    if-gez v6, :cond_b

    move-wide v6, v4

    goto :goto_7

    :cond_b
    move-wide v6, v0

    :goto_7
    sub-long/2addr v2, v6

    return-wide v2
.end method

.method private static a(Landroid/net/wifi/ScanResult;)Lcom/amap/location/support/bean/wifi/AmapWifi;
    .locals 8

    if-eqz p0, :cond_1

    .line 134
    new-instance v0, Lcom/amap/location/support/bean/wifi/AmapWifi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/location/support/bean/wifi/AmapWifi;-><init>(Z)V

    .line 135
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/amap/location/support/bean/wifi/AmapWifi;->macToLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    .line 136
    iget v2, p0, Landroid/net/wifi/ScanResult;->level:I

    int-to-short v2, v2

    iput v2, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    .line 137
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v2, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->ssid:Ljava/lang/String;

    .line 138
    iget v2, p0, Landroid/net/wifi/ScanResult;->frequency:I

    iput v2, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->frequency:I

    .line 139
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->timestamp:J

    .line 140
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->timestamp:J

    sub-long/2addr v2, v6

    div-long/2addr v2, v4

    long-to-int p0, v2

    int-to-short p0, p0

    iput-short p0, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->freshness:S

    if-gez p0, :cond_0

    .line 141
    iput-short v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->freshness:S

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)Lcom/amap/location/support/bean/wifi/AmapWifi;
    .locals 5

    if-eqz p0, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/support/bean/wifi/AmapWifi;->macToLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 143
    new-instance v0, Lcom/amap/location/support/bean/wifi/AmapWifi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amap/location/support/bean/wifi/AmapWifi;-><init>(Z)V

    .line 144
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->frequency:I

    .line 145
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/bean/wifi/AmapWifi;->macToLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    .line 146
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->ssid:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->timestamp:J

    .line 149
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->timestamp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    int-to-short p0, p0

    iput-short p0, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->freshness:S

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 150
    iput-short p0, v0, Lcom/amap/location/support/bean/wifi/AmapWifi;->freshness:S

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellLocation;",
            "Landroid/telephony/SignalStrength;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_0
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/d;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 7
    instance-of v1, p0, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 8
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 9
    new-instance v1, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    invoke-direct {v1, v3, v2}, Lcom/amap/location/support/bean/cell/AmapCellGsm;-><init>(ZZ)V

    .line 10
    aget-object v2, p2, v2

    iput-object v2, v1, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 11
    aget-object p2, p2, v3

    iput-object p2, v1, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p2

    iput p2, v1, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 13
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p2

    iput p2, v1, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 14
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result p0

    iput p0, v1, Lcom/amap/location/support/bean/cell/AmapCellGsm;->psc:I

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    const/16 p1, 0x63

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/amap/location/signal/impl/util/d;->a(I)I

    move-result p0

    :goto_0
    iput p0, v1, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 17
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide p0

    iput-wide p0, v1, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_2
    instance-of v1, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_4

    .line 20
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 21
    new-instance v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    invoke-direct {v1, v3, v2}, Lcom/amap/location/support/bean/cell/AmapCellCdma;-><init>(ZZ)V

    .line 22
    aget-object v2, p2, v2

    iput-object v2, v1, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 23
    aget-object p2, p2, v3

    iput-object p2, v1, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result p2

    iput p2, v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;->latitude:I

    .line 25
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p2

    iput p2, v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;->longitude:I

    .line 26
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result p2

    iput p2, v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 27
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p2

    iput p2, v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 28
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    iput p0, v1, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p0

    iput p0, v1, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 30
    :cond_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide p0

    iput-wide p0, v1, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "FPSUtils"

    const-string p2, ""

    .line 32
    invoke-static {p1, p2, p0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/wifi/AmapWifi;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 132
    invoke-static {v1}, Lcom/amap/location/signal/impl/util/d;->a(Landroid/net/wifi/ScanResult;)Lcom/amap/location/support/bean/wifi/AmapWifi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_11

    .line 34
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_6

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/amap/location/signal/impl/util/d;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 37
    instance-of v3, v2, Landroid/telephony/CellInfoCdma;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 38
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellInfoCdma;

    .line 39
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v5

    .line 40
    new-instance v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v7

    invoke-direct {v6, v7, v4}, Lcom/amap/location/support/bean/cell/AmapCellCdma;-><init>(ZZ)V

    const/4 v7, 0x0

    .line 41
    aget-object v7, p1, v7

    iput-object v7, v6, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 42
    aget-object v4, p1, v4

    iput-object v4, v6, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 43
    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v4

    iput v4, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->latitude:I

    .line 44
    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v4

    iput v4, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->longitude:I

    .line 45
    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v4

    iput v4, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 46
    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v4

    iput v4, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 47
    invoke-virtual {v5}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v4

    iput v4, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 48
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v4

    iput v4, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 49
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 50
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 51
    :cond_2
    instance-of v3, v2, Landroid/telephony/CellInfoGsm;

    const/16 v5, 0x1a

    const/16 v6, 0x18

    if-eqz v3, :cond_5

    .line 52
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 53
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    .line 54
    new-instance v8, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    invoke-direct {v8, v9, v4}, Lcom/amap/location/support/bean/cell/AmapCellGsm;-><init>(ZZ)V

    .line 55
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 56
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 57
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 58
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 59
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 60
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 61
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_3

    .line 62
    invoke-static {v7}, Lvu0;->a(Landroid/telephony/CellIdentityGsm;)I

    move-result v6

    iput v6, v8, Lcom/amap/location/support/bean/cell/AmapCellGsm;->arfcn:I

    .line 63
    invoke-static {v7}, Lvv0;->a(Landroid/telephony/CellIdentityGsm;)I

    move-result v6

    iput v6, v8, Lcom/amap/location/support/bean/cell/AmapCellGsm;->bsic:I

    :cond_3
    if-lt v4, v5, :cond_4

    .line 64
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v3

    invoke-static {v3}, Lfv0;->a(Landroid/telephony/CellSignalStrengthGsm;)I

    move-result v3

    iput v3, v8, Lcom/amap/location/support/bean/cell/AmapCellGsm;->timingAdvance:I

    .line 65
    :cond_4
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v6, v8

    goto/16 :goto_4

    .line 66
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    instance-of v7, v2, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_7

    .line 67
    move-object v5, v2

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 68
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    .line 69
    new-instance v8, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    invoke-direct {v8, v9, v4}, Lcom/amap/location/support/bean/cell/AmapCellWcdma;-><init>(ZZ)V

    .line 70
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 71
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 72
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->lac:I

    .line 73
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->cid:I

    .line 74
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->psc:I

    .line 75
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 76
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v4

    iput v4, v8, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    if-lt v3, v6, :cond_6

    .line 77
    invoke-static {v7}, Lgv0;->a(Landroid/telephony/CellIdentityWcdma;)I

    move-result v3

    iput v3, v8, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->uarfcn:I

    .line 78
    :cond_6
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_7
    instance-of v4, v2, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_a

    .line 80
    move-object v4, v2

    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 81
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    .line 82
    new-instance v8, Lcom/amap/location/support/bean/cell/AmapCellLte;

    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    invoke-direct {v8, v9}, Lcom/amap/location/support/bean/cell/AmapCellLte;-><init>(Z)V

    .line 83
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 84
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 85
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v9

    iput v9, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 86
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v9

    iput v9, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 87
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v9

    iput v9, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->pci:I

    .line 88
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v9

    iput v9, v8, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 89
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v9

    iput v9, v8, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    if-lt v3, v6, :cond_8

    .line 90
    invoke-static {v7}, Liv0;->a(Landroid/telephony/CellIdentityLte;)I

    move-result v6

    iput v6, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->earfcn:I

    .line 91
    :cond_8
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v6

    iput v6, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->timingAdvance:I

    if-lt v3, v5, :cond_9

    .line 92
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-static {v3}, Ljv0;->a(Landroid/telephony/CellSignalStrengthLte;)I

    move-result v3

    iput v3, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrp:I

    .line 93
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-static {v3}, Lkv0;->a(Landroid/telephony/CellSignalStrengthLte;)I

    move-result v3

    iput v3, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrq:I

    .line 94
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v3

    invoke-static {v3}, Llv0;->a(Landroid/telephony/CellSignalStrengthLte;)I

    move-result v3

    iput v3, v8, Lcom/amap/location/support/bean/cell/AmapCellLte;->rssnr:I

    .line 95
    :cond_9
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_e

    .line 96
    invoke-static {v2}, Lmv0;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 97
    invoke-static {v2}, Lnv0;->a(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object v3

    .line 98
    invoke-static {v3}, Lhv0;->a(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellIdentity;

    move-result-object v4

    invoke-static {v4}, Lov0;->a(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 99
    invoke-static {v3}, Lpv0;->a(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object v5

    invoke-static {v5}, Lqv0;->a(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v5

    .line 100
    new-instance v6, Lcom/amap/location/support/bean/cell/AmapCellNr;

    invoke-static {v3}, Lrv0;->a(Landroid/telephony/CellInfoNr;)Z

    move-result v3

    invoke-direct {v6, v3}, Lcom/amap/location/support/bean/cell/AmapCellNr;-><init>(Z)V

    .line 101
    invoke-static {v4}, Lsv0;->a(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "0"

    if-eqz v3, :cond_b

    move-object v3, v7

    goto :goto_2

    :cond_b
    :try_start_1
    invoke-static {v4}, Lsv0;->a(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v6, Lcom/amap/location/support/bean/cell/AmapCell;->mcc:Ljava/lang/String;

    .line 102
    invoke-static {v4}, Ltv0;->a(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {v4}, Ltv0;->a(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    iput-object v7, v6, Lcom/amap/location/support/bean/cell/AmapCell;->mnc:Ljava/lang/String;

    .line 103
    invoke-static {v4}, Luv0;->a(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    const v7, 0x7fffffff

    if-ne v3, v7, :cond_d

    .line 104
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 105
    invoke-static {v4}, Lcom/amap/location/signal/impl/util/d;->a(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 106
    :cond_d
    invoke-static {v4}, Lxu0;->a(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->pci:I

    .line 107
    invoke-static {v4}, Lyu0;->a(Landroid/telephony/CellIdentityNr;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 108
    invoke-static {v5}, Lzu0;->a(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 109
    invoke-static {v5}, Lav0;->a(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 110
    invoke-static {v4}, Lbv0;->a(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->nrarfcn:I

    .line 111
    invoke-static {v5}, Lcv0;->a(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssRsrq:I

    .line 112
    invoke-static {v5}, Ldv0;->a(Landroid/telephony/CellSignalStrengthNr;)I

    move-result v3

    iput v3, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssSinr:I

    .line 113
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    move-object v6, v1

    :goto_4
    if-eqz v6, :cond_1

    .line 114
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v3

    const-wide/32 v7, 0xf4240

    div-long/2addr v3, v7

    iput-wide v3, v6, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 115
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_f

    invoke-static {v2}, Lev0;->a(Landroid/telephony/CellInfo;)J

    move-result-wide v2

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v2

    :goto_5
    invoke-static {v2, v3}, Lcom/amap/location/signal/impl/util/d;->a(J)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/amap/location/support/bean/cell/AmapCell;->timeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "FPSUtils"

    const-string v1, ""

    .line 116
    invoke-static {p1, v1, p0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-object v0

    :cond_11
    :goto_6
    return-object v1
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 126
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 127
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/location/signal/impl/util/d;->a:[Ljava/lang/String;

    return-object p0
.end method
