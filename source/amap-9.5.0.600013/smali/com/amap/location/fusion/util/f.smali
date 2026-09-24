.class public Lcom/amap/location/fusion/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

.field private c:J

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/fusion/util/f;->a:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/amap/location/fusion/util/f;->c:J

    .line 14
    iput-wide v0, p0, Lcom/amap/location/fusion/util/f;->d:J

    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/amap/location/fusion/util/f;->f:I

    .line 19
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "filter"

    .line 25
    iget-boolean v2, p0, Lcom/amap/location/fusion/util/f;->a:Z

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/amap/location/fusion/util/f;->a:Z

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/amap/location/fusion/util/f;->c:J

    .line 3
    iput-wide v0, p0, Lcom/amap/location/fusion/util/f;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/location/fusion/util/f;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v2, v1, Lcom/amap/location/fusion/util/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v2, -0x1

    .line 4
    :try_start_1
    iput v2, v1, Lcom/amap/location/fusion/util/f;->f:I

    .line 5
    iget-wide v2, v1, Lcom/amap/location/fusion/util/f;->e:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/location/fusion/util/f;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_1
    :try_start_2
    iget-object v2, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/amap/location/fusion/util/f;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x2710

    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    .line 9
    monitor-exit p0

    return-object v0

    .line 10
    :cond_2
    :try_start_3
    iget-object v2, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v0, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v2

    iget-object v6, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v6

    const/high16 v8, 0x43960000    # 300.0f

    cmp-long v9, v2, v6

    if-nez v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmpg-float v2, v2, v8

    if-gez v2, :cond_4

    .line 12
    monitor-exit p0

    return-object v0

    .line 13
    :cond_4
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 15
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    monitor-exit p0

    return-object v0

    .line 17
    :cond_5
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCoord()I

    move-result v2

    iget-object v3, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {v3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCoord()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 18
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 19
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 20
    monitor-exit p0

    return-object v0

    .line 21
    :cond_6
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getPoiid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getPoiid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getPoiid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 23
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 24
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 25
    monitor-exit p0

    return-object v0

    .line 26
    :cond_7
    :try_start_7
    iget-object v2, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {v2, v0}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v2

    .line 27
    iget-object v6, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v6

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v7

    sub-float v9, v7, v6

    .line 29
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v10

    invoke-interface {v10}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v10

    .line 30
    iget-wide v12, v1, Lcom/amap/location/fusion/util/f;->c:J

    sub-long v14, v10, v12

    const/high16 v16, 0x42c80000    # 100.0f

    const-wide/16 v17, 0x7530

    cmpg-float v16, v6, v16

    if-gtz v16, :cond_8

    cmpl-float v16, v7, v8

    if-gez v16, :cond_9

    :cond_8
    cmpl-float v16, v6, v8

    if-ltz v16, :cond_d

    cmpl-float v19, v7, v8

    if-ltz v19, :cond_d

    .line 31
    :cond_9
    iget-wide v2, v1, Lcom/amap/location/fusion/util/f;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    const-string v2, "locfilter"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acc become low or continue low"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 33
    invoke-virtual {v6}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",new:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-wide v10, v1, Lcom/amap/location/fusion/util/f;->d:J

    goto :goto_0

    :cond_a
    sub-long v2, v10, v2

    cmp-long v6, v2, v17

    if-lez v6, :cond_b

    const-string v2, "locfilter"

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay report new loc"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-wide v10, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 40
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 41
    iput-wide v4, v1, Lcom/amap/location/fusion/util/f;->d:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 42
    monitor-exit p0

    return-object v0

    :cond_b
    :goto_0
    cmp-long v2, v14, v17

    if-ltz v2, :cond_c

    .line 43
    :try_start_8
    iput-wide v10, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 44
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 45
    iput-wide v4, v1, Lcom/amap/location/fusion/util/f;->d:J

    goto :goto_1

    :cond_c
    const-string v0, "locfilter"

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time invaild:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 47
    iput v0, v1, Lcom/amap/location/fusion/util/f;->f:I

    .line 48
    :goto_1
    iget-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_d
    const/high16 v19, 0x43160000    # 150.0f

    cmpg-float v19, v7, v19

    if-gez v19, :cond_e

    if-ltz v16, :cond_e

    .line 49
    :try_start_9
    iput-wide v10, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 50
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 51
    iput-wide v4, v1, Lcom/amap/location/fusion/util/f;->d:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 52
    monitor-exit p0

    return-object v0

    :cond_e
    cmpg-float v8, v7, v8

    if-gez v8, :cond_f

    .line 53
    :try_start_a
    iput-wide v4, v1, Lcom/amap/location/fusion/util/f;->d:J

    :cond_f
    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    cmpg-double v8, v2, v19

    if-gez v8, :cond_12

    const-wide v19, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v2, v19

    if-lez v8, :cond_12

    const-string v4, "locfilter"

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "little shake:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "m"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpl-float v2, v9, v2

    if-ltz v2, :cond_10

    const/4 v0, 0x2

    .line 55
    iput v0, v1, Lcom/amap/location/fusion/util/f;->f:I

    .line 56
    iget-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_10
    const/4 v2, 0x0

    cmpl-float v2, v7, v2

    if-eqz v2, :cond_11

    div-float/2addr v6, v7

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_11

    .line 57
    :try_start_b
    iput-wide v10, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 58
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 59
    monitor-exit p0

    return-object v0

    :cond_11
    const/4 v0, 0x3

    .line 60
    :try_start_c
    iput v0, v1, Lcom/amap/location/fusion/util/f;->f:I

    .line 61
    iget-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_12
    const-wide v6, 0x4072c00000000000L    # 300.0

    cmpl-double v8, v2, v6

    if-ltz v8, :cond_14

    cmp-long v4, v14, v17

    if-ltz v4, :cond_13

    .line 62
    :try_start_d
    iput-wide v10, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 63
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 64
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_e
    const-string v4, "locfilter"

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "big shake in short time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",old:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",new:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 66
    iput v0, v1, Lcom/amap/location/fusion/util/f;->f:I

    .line 67
    iget-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_14
    sub-long v6, v10, v12

    cmp-long v8, v6, v4

    if-lez v8, :cond_15

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double v2, v2, v4

    const-wide/16 v4, 0x3e8

    .line 68
    :try_start_f
    div-long v4, v6, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_2

    :cond_15
    const v2, 0x7fffffff

    :goto_2
    const/16 v3, 0x82

    if-lt v2, v3, :cond_16

    const-string v3, "locfilter"

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fast move speed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dt:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",old:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 70
    invoke-virtual {v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",new:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONSimpleObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v3, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 72
    iput v0, v1, Lcom/amap/location/fusion/util/f;->f:I

    .line 73
    iget-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return-object v0

    .line 74
    :cond_16
    :try_start_10
    iput-wide v10, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 75
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 76
    monitor-exit p0

    return-object v0

    .line 77
    :cond_17
    :goto_3
    :try_start_11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/location/fusion/util/f;->c:J

    .line 78
    iput-object v0, v1, Lcom/amap/location/fusion/util/f;->b:Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 79
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
