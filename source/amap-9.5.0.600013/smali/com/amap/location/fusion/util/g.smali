.class public Lcom/amap/location/fusion/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/fusion/util/g$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/amap/location/fusion/util/g;

.field private static d:Ljava/lang/Object;


# instance fields
.field private a:Lcom/amap/location/support/bean/location/AmapLocation;

.field private b:Lcom/amap/location/support/bean/location/AmapLocation;

.field private e:Lcom/amap/location/fusion/util/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/fusion/util/g;->d:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/fusion/util/g$a;

    .line 6
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/util/g$a;-><init>(Lcom/amap/location/fusion/util/g;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/fusion/util/g;->e:Lcom/amap/location/fusion/util/g$a;

    .line 11
    return-void
.end method

.method public static a()Lcom/amap/location/fusion/util/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/fusion/util/g;->c:Lcom/amap/location/fusion/util/g;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/amap/location/fusion/util/g;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/location/fusion/util/g;->c:Lcom/amap/location/fusion/util/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/location/fusion/util/g;

    invoke-direct {v1}, Lcom/amap/location/fusion/util/g;-><init>()V

    sput-object v1, Lcom/amap/location/fusion/util/g;->c:Lcom/amap/location/fusion/util/g;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/fusion/util/g;->c:Lcom/amap/location/fusion/util/g;

    return-object v0
.end method

.method private a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x1876d

    .line 37
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x1876c

    .line 38
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x1876b

    .line 39
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_0

    :pswitch_3
    const p1, 0x1876a

    .line 40
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_0

    :pswitch_4
    const p1, 0x18769

    .line 41
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_0

    :pswitch_5
    const p1, 0x18768

    .line 42
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 16

    const-string v0, "jumpTime"

    const-wide/16 v1, -0x1

    move-object/from16 v3, p1

    .line 30
    invoke-virtual {v3, v0, v1, v2}, Lcom/amap/location/type/location/Location;->getOptAttrLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v6, p2

    .line 31
    invoke-virtual {v6, v0, v1, v2}, Lcom/amap/location/type/location/Location;->getOptAttrLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    .line 32
    div-long/2addr v0, v4

    const-wide/16 v4, 0xf

    const/4 v2, 0x0

    cmp-long v7, v0, v4

    if-gtz v7, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v7, v0, v4

    if-gtz v7, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static/range {v8 .. v15}, Lcom/amap/location/fusion/util/b;->a(DDDD)D

    move-result-wide v3

    const-wide v5, 0x400ccccccccccccdL    # 3.6

    mul-double v3, v3, v5

    long-to-double v0, v0

    div-double/2addr v3, v0

    const-wide v0, 0x4092c00000000000L    # 1200.0

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 14

    .line 34
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/amap/location/fusion/util/b;->a(DDDD)D

    move-result-wide v0

    const/4 v2, 0x0

    const-wide v3, 0x408f400000000000L    # 1000.0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    return v2

    .line 35
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static/range {v6 .. v13}, Lcom/amap/location/fusion/util/b;->a(DDDD)D

    move-result-wide v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    return v2

    .line 36
    :cond_1
    invoke-static/range {p1 .. p3}, Lcom/amap/location/fusion/util/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private b(Lcom/amap/location/support/bean/location/AmapLocation;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "indoor"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const-string v2, "gps"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const-string v2, "network"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    check-cast p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 6
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "new"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "mem"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v1, "file"

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "wifioff"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    const/4 p1, 0x4

    const/4 v0, 0x4

    goto :goto_0

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow type "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "locJumpStatisticsUtil"

    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return v0
.end method

.method private b(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 9

    .line 12
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/util/g;->b(Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v0

    .line 13
    invoke-direct {p0, p2}, Lcom/amap/location/fusion/util/g;->b(Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    const v1, 0x18718

    add-int/2addr v0, v1

    .line 14
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 15
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/amap/location/fusion/util/b;->a(DDDD)D

    move-result-wide p1

    const-wide v0, 0x40e86a0000000000L    # 50000.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const p1, 0x1895d

    .line 16
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 17
    invoke-static {}, Lcom/amap/location/support/uptunnel/UpTunnel;->uploadLogCmd()V

    goto :goto_0

    :cond_1
    const-wide v0, 0x40b3880000000000L    # 5000.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    const p1, 0x1895c

    .line 18
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 19
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/location/fusion/util/g;->e:Lcom/amap/location/fusion/util/g$a;

    invoke-virtual {p1}, Lcom/amap/location/fusion/util/g$a;->a()V

    :cond_3
    :goto_1
    return-void
.end method

.method private c(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 9
    move-result-wide v1

    .line 10
    const-wide v3, 0x416312d000000000L    # 1.0E7

    .line 15
    mul-double v1, v1, v3

    .line 17
    double-to-int v1, v1

    .line 18
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 21
    move-result-wide v5

    .line 22
    mul-double v5, v5, v3

    .line 24
    double-to-int p1, v5

    .line 25
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 28
    move-result-wide v5

    .line 29
    mul-double v5, v5, v3

    .line 31
    double-to-int v2, v5

    .line 32
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 35
    move-result-wide v5

    .line 36
    mul-double v5, v5, v3

    .line 38
    double-to-int p2, v5

    .line 39
    if-ne v1, v2, :cond_0

    .line 41
    if-ne p1, p2, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 44
    :cond_0
    return v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "jumpTime"

    .line 7
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    if-nez v0, :cond_1

    .line 9
    iput-object p1, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    if-eqz v1, :cond_2

    move-object v0, v1

    .line 12
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/amap/location/fusion/util/g;->c(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "jumpTime"

    .line 13
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    if-eqz v0, :cond_5

    .line 16
    iget-object v1, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-direct {p0, v1, v0, p1}, Lcom/amap/location/fusion/util/g;->a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-direct {p0, v0}, Lcom/amap/location/fusion/util/g;->b(Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/location/fusion/util/g;->a(I)V

    .line 18
    iget-object v0, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-direct {p0, v0, p1}, Lcom/amap/location/fusion/util/g;->b(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 19
    iput-object p1, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 20
    iput-object v1, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    iput-object v0, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 23
    iput-object v1, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-direct {p0, v0, p1}, Lcom/amap/location/fusion/util/g;->a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iput-object p1, p0, Lcom/amap/location/fusion/util/g;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 26
    iget-object v0, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-direct {p0, v0, p1}, Lcom/amap/location/fusion/util/g;->b(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)V

    goto :goto_0

    .line 27
    :cond_6
    iput-object p1, p0, Lcom/amap/location/fusion/util/g;->a:Lcom/amap/location/support/bean/location/AmapLocation;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    :try_start_4
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
