.class public Lcom/amap/location/fusion/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/fusion/util/h$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static volatile e:Lcom/amap/location/fusion/util/h;

.field private static f:Ljava/lang/Object;


# instance fields
.field private b:Lcom/amap/location/fusion/util/h$a;

.field private c:Z

.field private d:Lcom/amap/location/support/handler/AmapLooper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/fusion/util/h;->f:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/fusion/util/h$a;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/amap/location/fusion/util/h$a;-><init>(Lcom/amap/location/fusion/util/h;Lcom/amap/location/fusion/util/h$1;)V

    .line 10
    iput-object v0, p0, Lcom/amap/location/fusion/util/h;->b:Lcom/amap/location/fusion/util/h$a;

    .line 12
    return-void
.end method

.method private a(DLjava/lang/String;)D
    .locals 5

    double-to-int v0, p1

    .line 39
    div-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    sub-double/2addr p1, v2

    const-string v2, "S"

    .line 40
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    if-nez v2, :cond_1

    const-string v2, "W"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr p1, v3

    add-double/2addr v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    div-double/2addr p1, v3

    add-double/2addr v0, p1

    neg-double v0, v0

    :goto_1
    return-wide v0
.end method

.method public static a()Lcom/amap/location/fusion/util/h;
    .locals 2

    .line 2
    sget-object v0, Lcom/amap/location/fusion/util/h;->e:Lcom/amap/location/fusion/util/h;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/amap/location/fusion/util/h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amap/location/fusion/util/h;->e:Lcom/amap/location/fusion/util/h;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/amap/location/fusion/util/h;

    invoke-direct {v1}, Lcom/amap/location/fusion/util/h;-><init>()V

    sput-object v1, Lcom/amap/location/fusion/util/h;->e:Lcom/amap/location/fusion/util/h;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/fusion/util/h;->e:Lcom/amap/location/fusion/util/h;

    return-object v0
.end method

.method public static synthetic a(Lcom/amap/location/fusion/util/h;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/util/h;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "enable"

    .line 41
    sget-boolean v1, Lcom/amap/location/fusion/util/h;->a:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/amap/location/fusion/util/h;->a:Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/util/h;->c:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/amap/location/fusion/util/h;->b:Lcom/amap/location/fusion/util/h$a;

    .line 15
    iget-object v2, p0, Lcom/amap/location/fusion/util/h;->d:Lcom/amap/location/support/handler/AmapLooper;

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->addNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/amap/location/fusion/util/h;->c:Z

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "satelliteCount"

    const-string v3, "#"

    .line 10
    sget-boolean v4, Lcom/amap/location/fusion/util/h;->a:Z

    if-eqz v4, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "gps"

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHonor()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    .line 13
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/h;->c()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/amap/location/fusion/util/h;->b()V

    .line 16
    :goto_0
    iget-boolean v4, v1, Lcom/amap/location/fusion/util/h;->c:Z

    if-nez v4, :cond_4

    return-void

    .line 17
    :cond_4
    :try_start_0
    iget-object v4, v1, Lcom/amap/location/fusion/util/h;->b:Lcom/amap/location/fusion/util/h$a;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/amap/location/fusion/util/h$a;->a(J)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 18
    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v6, 0x9

    if-ge v5, v6, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x6

    .line 19
    :try_start_1
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_6

    const/16 v5, 0x302

    .line 20
    invoke-virtual {v0, v5}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    goto :goto_1

    :cond_6
    if-nez v6, :cond_7

    const/16 v5, 0x301

    .line 21
    invoke-virtual {v0, v5}, Lcom/amap/location/type/location/Location;->setSubType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    :goto_1
    const/4 v5, 0x7

    const/4 v6, 0x0

    .line 22
    :try_start_2
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 23
    invoke-virtual {v0, v2, v6}, Lcom/amap/location/type/location/Location;->getOptAttrInt(Ljava/lang/String;I)I

    move-result v7

    if-gtz v7, :cond_8

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_8
    const/16 v2, 0x8

    .line 25
    :try_start_3
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v2, "hodp"

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 v2, 0x2

    .line 27
    :try_start_4
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const/4 v2, 0x3

    aget-object v2, v4, v2

    invoke-direct {v1, v7, v8, v2}, Lcom/amap/location/fusion/util/h;->a(DLjava/lang/String;)D

    move-result-wide v9

    const/4 v2, 0x4

    .line 28
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const/4 v2, 0x5

    aget-object v2, v4, v2

    invoke-direct {v1, v7, v8, v2}, Lcom/amap/location/fusion/util/h;->a(DLjava/lang/String;)D

    move-result-wide v11

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v15

    invoke-static/range {v9 .. v16}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    move-result-wide v4

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpl-double v2, v4, v7

    if-ltz v2, :cond_a

    .line 30
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    iget-object v0, v1, Lcom/amap/location/fusion/util/h;->b:Lcom/amap/location/fusion/util/h$a;

    iget-object v0, v0, Lcom/amap/location/fusion/util/h$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    iget-object v0, v1, Lcom/amap/location/fusion/util/h;->b:Lcom/amap/location/fusion/util/h$a;

    iget-object v0, v0, Lcom/amap/location/fusion/util/h$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v2, 0x189d0

    invoke-static {v2, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 36
    :try_start_5
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    :goto_2
    const/16 v2, 0x303

    .line 37
    invoke-virtual {v0, v2}, Lcom/amap/location/type/location/Location;->setSubType(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v2, "LocationInsDetector"

    .line 38
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public a(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 2

    .line 8
    iput-object p1, p0, Lcom/amap/location/fusion/util/h;->d:Lcom/amap/location/support/handler/AmapLooper;

    .line 9
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object p1

    new-instance v0, Lcom/amap/location/fusion/util/h$1;

    const-string v1, "nmea_gga"

    invoke-direct {v0, p0, v1}, Lcom/amap/location/fusion/util/h$1;-><init>(Lcom/amap/location/fusion/util/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/location/fusion/util/h;->d:Lcom/amap/location/support/handler/AmapLooper;

    invoke-virtual {p1, v0, v1}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/util/h;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/amap/location/fusion/util/h;->b:Lcom/amap/location/fusion/util/h$a;

    .line 15
    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removeNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;)Z

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/amap/location/fusion/util/h;->c:Z

    .line 21
    return-void
.end method
