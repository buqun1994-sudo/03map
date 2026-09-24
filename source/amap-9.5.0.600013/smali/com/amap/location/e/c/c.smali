.class public Lcom/amap/location/e/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/e/a/b/b;)I
    .locals 4

    if-eqz p1, :cond_2

    .line 119
    iget-object v0, p1, Lcom/amap/location/e/a/b/b;->b:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/amap/location/e/c/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I

    move-result v0

    .line 120
    iget-object v1, p1, Lcom/amap/location/e/a/b/b;->a:Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    invoke-static {p0, v1}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I

    move-result v1

    .line 121
    invoke-static {p0}, Lcom/amap/location/e/b/i;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 122
    iget-wide v2, p1, Lcom/amap/location/e/a/b/b;->c:J

    invoke-static {p0, v2, v3}, Lcom/amap/location/e/b/i;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 123
    iget-wide v2, p1, Lcom/amap/location/e/a/b/b;->d:J

    invoke-static {p0, v2, v3}, Lcom/amap/location/e/b/i;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-lez v1, :cond_0

    .line 124
    invoke-static {p0, v1}, Lcom/amap/location/e/b/i;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_0
    if-lez v0, :cond_1

    .line 125
    invoke-static {p0, v0}, Lcom/amap/location/e/b/i;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 126
    :cond_1
    invoke-static {p0}, Lcom/amap/location/e/b/i;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I
    .locals 30

    move-object/from16 v0, p1

    .line 143
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v1

    const/16 v2, 0x1a

    const/4 v3, -0x1

    if-lt v1, v2, :cond_9

    if-eqz v0, :cond_9

    .line 144
    iget-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasNanos:D

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v8, v1, v4

    if-eqz v8, :cond_0

    move-wide v10, v1

    goto :goto_0

    :cond_0
    const-wide v10, -0x3f3c788000000000L    # -9999.0

    :goto_0
    iget-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasUncertaintyNanos:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v12, v1, v8

    if-eqz v12, :cond_1

    move-wide v12, v1

    goto :goto_1

    :cond_1
    const-wide v12, -0x3f3c788000000000L    # -9999.0

    :goto_1
    iget-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftNanosPerSecond:D

    cmpl-double v14, v1, v4

    if-eqz v14, :cond_2

    move-wide v14, v1

    goto :goto_2

    :cond_2
    const-wide v14, -0x3f3c788000000000L    # -9999.0

    :goto_2
    iget-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftUncertaintyNanosPerSecond:D

    cmpl-double v4, v1, v8

    if-eqz v4, :cond_3

    move-wide/from16 v16, v1

    goto :goto_3

    :cond_3
    const-wide v16, -0x3f3c788000000000L    # -9999.0

    :goto_3
    iget-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->fullBiasNanos:J

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v18, -0x270f

    cmp-long v20, v1, v4

    if-eqz v20, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v1, v18

    :goto_4
    iget v4, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hardwareClockDiscontinuityCount:I

    iget v5, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->leapSecond:I

    if-eq v5, v3, :cond_5

    move/from16 v21, v5

    goto :goto_5

    :cond_5
    const/16 v3, -0x270f

    const/16 v21, -0x270f

    :goto_5
    iget-wide v6, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeNanos:J

    move-wide/from16 v24, v6

    iget-wide v5, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeUncertaintyNanos:D

    cmpl-double v3, v5, v8

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    const-wide v5, -0x3f3c788000000000L    # -9999.0

    .line 145
    :goto_6
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v3

    const/16 v7, 0x1d

    if-lt v3, v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hasElapsedRealtimeNanos()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeNanos:J

    move-wide/from16 v26, v8

    goto :goto_7

    :cond_7
    move-wide/from16 v26, v18

    .line 146
    :goto_7
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v3

    if-lt v3, v7, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-wide v7, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeUncertaintyNanos:D

    move-wide/from16 v28, v7

    goto :goto_8

    :cond_8
    const-wide v28, -0x3f3c788000000000L    # -9999.0

    :goto_8
    move-object/from16 v9, p0

    move-wide/from16 v18, v1

    move/from16 v20, v4

    move-wide/from16 v22, v24

    move-wide/from16 v24, v5

    .line 147
    invoke-static/range {v9 .. v29}, Lcom/amap/location/e/b/h;->a(Lcom/google/flatbuffers/FlatBufferBuilder;DDDDJIIJDJD)I

    move-result v0

    return v0

    :cond_9
    return v3
.end method

.method private static a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;)I
    .locals 12

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 99
    invoke-static {p1}, Lcom/amap/location/e/c/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amap/location/e/c/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 100
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v2

    .line 101
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v4

    .line 102
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v6

    .line 103
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v8

    .line 104
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v9

    move-object v1, p0

    .line 105
    invoke-static/range {v1 .. v11}, Lcom/amap/location/e/b/g;->a(Lcom/google/flatbuffers/FlatBufferBuilder;JDDFFII)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I
    .locals 21

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v6

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v9

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v11

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v13

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v15

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v16

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result v17

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationTickTime()J

    move-result-wide v18

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    move-result v20

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 118
    invoke-static/range {v1 .. v20}, Lcom/amap/location/e/b/l;->a(Lcom/google/flatbuffers/FlatBufferBuilder;JJJIDDDFFFJI)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static a(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;JJ)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;JJ)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 148
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/location/e/c/c;->c(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I

    move-result p1

    .line 149
    invoke-static {p0}, Lcom/amap/location/e/b/f;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 150
    invoke-static {p0, p4, p5}, Lcom/amap/location/e/b/f;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 151
    invoke-static {p0, p2, p3}, Lcom/amap/location/e/b/f;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-lez p1, :cond_1

    .line 152
    invoke-static {p0, p1}, Lcom/amap/location/e/b/f;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 153
    :cond_1
    invoke-static {p0}, Lcom/amap/location/e/b/f;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "gnss_fb"

    .line 154
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static a(Ljava/util/List;)Lcom/amap/location/e/a/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;)",
            "Lcom/amap/location/e/a/b/b;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/location/e/a/b/b;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;
    .locals 1

    .line 106
    instance-of v0, p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-eqz v0, :cond_0

    .line 107
    check-cast p0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(JLcom/amap/location/e/a/b/a;Lcom/amap/location/e/a/a;Z)V
    .locals 15

    move-object/from16 v0, p2

    .line 66
    :try_start_0
    new-instance v7, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 67
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 68
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->l()Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->n()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->a()J

    move-result-wide v5

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I

    move-result v9

    .line 69
    sget-object v1, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "null"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 70
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->h()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v7, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 71
    iget-object v1, v0, Lcom/amap/location/e/a/b/a;->b:[I

    const/4 v12, -0x1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {v7, v1}, Lcom/amap/location/e/b/a;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    move v13, v1

    goto :goto_2

    :cond_2
    const/4 v13, -0x1

    .line 73
    :goto_2
    iget-object v2, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I

    move-result v14

    if-eqz p4, :cond_3

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->c()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->d()J

    move-result-wide v5

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;JJ)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, -0x1

    :goto_3
    if-eqz p4, :cond_4

    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/location/e/c/c;->a(Ljava/util/List;)Lcom/amap/location/e/a/b/b;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/e/a/b/b;)I

    move-result v12

    .line 76
    :cond_4
    invoke-static {v7}, Lcom/amap/location/e/b/a;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move-wide v2, p0

    .line 77
    invoke-static {v7, v2, v3}, Lcom/amap/location/e/b/a;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-lez v12, :cond_5

    .line 78
    invoke-static {v7, v12}, Lcom/amap/location/e/b/a;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    if-lez v1, :cond_6

    .line 79
    invoke-static {v7, v1}, Lcom/amap/location/e/b/a;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 80
    :cond_6
    sget v1, Lcom/amap/location/e/a/d;->s:I

    int-to-byte v1, v1

    invoke-static {v7, v1}, Lcom/amap/location/e/b/a;->a(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    if-lez v9, :cond_7

    .line 81
    invoke-static {v7, v9}, Lcom/amap/location/e/b/a;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 82
    :cond_7
    iget v1, v0, Lcom/amap/location/e/a/b/a;->e:I

    int-to-short v1, v1

    invoke-static {v7, v1}, Lcom/amap/location/e/b/a;->a(Lcom/google/flatbuffers/FlatBufferBuilder;S)V

    .line 83
    iget v1, v0, Lcom/amap/location/e/a/b/a;->g:I

    int-to-short v1, v1

    invoke-static {v7, v1}, Lcom/amap/location/e/b/a;->b(Lcom/google/flatbuffers/FlatBufferBuilder;S)V

    .line 84
    invoke-static {v7, v10}, Lcom/amap/location/e/b/a;->f(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 85
    iget v0, v0, Lcom/amap/location/e/a/b/a;->c:I

    int-to-byte v0, v0

    invoke-static {v7, v0}, Lcom/amap/location/e/b/a;->b(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    if-lez v13, :cond_8

    .line 86
    invoke-static {v7, v13}, Lcom/amap/location/e/b/a;->d(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_8
    if-lez v14, :cond_9

    .line 87
    invoke-static {v7, v14}, Lcom/amap/location/e/b/a;->e(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 88
    :cond_9
    invoke-static {v7, v8}, Lcom/amap/location/e/b/a;->g(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 89
    invoke-static {v7, v11}, Lcom/amap/location/e/b/a;->h(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 90
    invoke-static {v7}, Lcom/amap/location/e/b/a;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 91
    invoke-virtual {v7, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 92
    invoke-virtual {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 94
    invoke-static {v0, v1}, Lcom/amap/location/support/security/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, 0x189e8

    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "gnss_fb"

    .line 97
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public static a(JLcom/amap/location/e/a/b/a;Ljava/util/List;Lcom/amap/location/support/bean/location/AmapLocation;JJD)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amap/location/e/a/b/a;",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            "JJD)V"
        }
    .end annotation

    move-object v0, p2

    .line 37
    :try_start_0
    new-instance v7, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 38
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    move-object v1, v7

    move-object/from16 v2, p4

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I

    move-result v1

    move-object/from16 v2, p3

    .line 40
    invoke-static {v7, v2}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)[I

    move-result-object v2

    .line 41
    invoke-static {v7, v2}, Lcom/amap/location/e/b/b;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 42
    sget-object v3, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 43
    iget-object v4, v0, Lcom/amap/location/e/a/b/a;->b:[I

    if-eqz v4, :cond_1

    .line 44
    invoke-static {v7, v4}, Lcom/amap/location/e/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 45
    :goto_1
    iget-object v5, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v11

    move-object/from16 p3, v7

    move-object/from16 p4, v5

    move-wide/from16 p5, v9

    move-wide/from16 p7, v11

    invoke-static/range {p3 .. p8}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I

    move-result v5

    .line 46
    invoke-static {v7}, Lcom/amap/location/e/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move-wide v9, p0

    .line 47
    invoke-static {v7, p0, p1}, Lcom/amap/location/e/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-lez v1, :cond_2

    .line 48
    invoke-static {v7, v1}, Lcom/amap/location/e/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-lez v2, :cond_3

    .line 49
    invoke-static {v7, v2}, Lcom/amap/location/e/b/b;->d(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 50
    :cond_3
    invoke-static {v7, v3}, Lcom/amap/location/e/b/b;->e(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 51
    iget v0, v0, Lcom/amap/location/e/a/b/a;->c:I

    int-to-byte v0, v0

    invoke-static {v7, v0}, Lcom/amap/location/e/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    if-lez v4, :cond_4

    .line 52
    invoke-static {v7, v4}, Lcom/amap/location/e/b/b;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    if-lez v5, :cond_5

    .line 53
    invoke-static {v7, v5}, Lcom/amap/location/e/b/b;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    move-wide/from16 v0, p9

    .line 54
    invoke-static {v7, v0, v1}, Lcom/amap/location/e/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;D)V

    .line 55
    invoke-static {v7, v8}, Lcom/amap/location/e/b/b;->f(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 56
    invoke-static {v7}, Lcom/amap/location/e/b/b;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 57
    invoke-virtual {v7, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 58
    invoke-virtual {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 60
    invoke-static {v0, v1}, Lcom/amap/location/support/security/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, 0x188be

    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "gnss_fb"

    .line 63
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static a(JLcom/amap/location/e/a/b/a;Ljava/util/List;ZLcom/amap/location/support/bean/location/AmapLocation;JJLcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amap/location/e/a/b/a;",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;Z",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            "JJ",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    :try_start_0
    new-instance v7, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 2
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    move-object v1, v7

    move-object/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I

    move-result v1

    move-object/from16 v2, p3

    .line 4
    invoke-static {v7, v2}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)[I

    move-result-object v2

    .line 5
    invoke-static {v7, v2}, Lcom/amap/location/e/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    move-object/from16 v3, p10

    .line 6
    invoke-static {v7, v3}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v3

    .line 7
    sget-object v4, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "null"

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 8
    sget v5, Lcom/amap/location/e/a/d;->t:I

    const/4 v6, -0x1

    const/4 v9, 0x2

    if-ne v5, v9, :cond_1

    iget-object v5, v0, Lcom/amap/location/e/a/b/a;->h:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 9
    :goto_1
    iget-object v10, v0, Lcom/amap/location/e/a/b/a;->b:[I

    if-eqz v10, :cond_2

    .line 10
    invoke-static {v7, v10}, Lcom/amap/location/e/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 11
    :cond_2
    iget-object v10, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v11

    invoke-interface {v11}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v13

    invoke-interface {v13}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v13

    move-object/from16 p5, v7

    move-object/from16 p6, v10

    move-wide/from16 p7, v11

    move-wide/from16 p9, v13

    invoke-static/range {p5 .. p10}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I

    move-result v10

    .line 12
    invoke-static {v7}, Lcom/amap/location/e/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move-wide v11, p0

    .line 13
    invoke-static {v7, v11, v12}, Lcom/amap/location/e/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 14
    sget v11, Lcom/amap/location/e/a/d;->s:I

    int-to-byte v11, v11

    invoke-static {v7, v11}, Lcom/amap/location/e/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    if-lez v1, :cond_3

    .line 15
    invoke-static {v7, v1}, Lcom/amap/location/e/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_3
    if-lez v3, :cond_4

    .line 16
    invoke-static {v7, v3}, Lcom/amap/location/e/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 17
    :cond_4
    iget v1, v0, Lcom/amap/location/e/a/b/a;->e:I

    int-to-short v1, v1

    invoke-static {v7, v1}, Lcom/amap/location/e/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;S)V

    .line 18
    iget v1, v0, Lcom/amap/location/e/a/b/a;->g:I

    int-to-short v1, v1

    invoke-static {v7, v1}, Lcom/amap/location/e/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;S)V

    .line 19
    iget v1, v0, Lcom/amap/location/e/a/b/a;->f:I

    int-to-short v1, v1

    invoke-static {v7, v1}, Lcom/amap/location/e/b/c;->c(Lcom/google/flatbuffers/FlatBufferBuilder;S)V

    if-lez v2, :cond_5

    .line 20
    invoke-static {v7, v2}, Lcom/amap/location/e/b/c;->e(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 21
    :cond_5
    invoke-static {v7, v4}, Lcom/amap/location/e/b/c;->f(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 22
    iget v0, v0, Lcom/amap/location/e/a/b/a;->c:I

    int-to-byte v0, v0

    invoke-static {v7, v0}, Lcom/amap/location/e/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    if-lez v6, :cond_6

    .line 23
    invoke-static {v7, v6}, Lcom/amap/location/e/b/c;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_6
    if-lez v10, :cond_7

    .line 24
    invoke-static {v7, v10}, Lcom/amap/location/e/b/c;->d(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    if-eqz p4, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    int-to-byte v0, v0

    .line 25
    invoke-static {v7, v0}, Lcom/amap/location/e/b/c;->c(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    if-lez v5, :cond_9

    .line 26
    invoke-static {v7, v5}, Lcom/amap/location/e/b/c;->g(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 27
    :cond_9
    invoke-static {}, Lcom/amap/location/e/a/b/d;->a()Lcom/amap/location/e/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/e/a/b/d;->d()J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lcom/amap/location/e/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 28
    invoke-static {v7, v8}, Lcom/amap/location/e/b/c;->h(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 29
    invoke-static {v7}, Lcom/amap/location/e/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 30
    invoke-virtual {v7, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 31
    invoke-virtual {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object v0

    .line 33
    invoke-static {v0, v9}, Lcom/amap/location/support/security/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, 0x188bd

    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "gnss_fb"

    .line 36
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private static a(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;)[I"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/e/a/b/b;

    .line 129
    iget-boolean v2, v1, Lcom/amap/location/e/a/b/b;->e:Z

    if-nez v2, :cond_0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 131
    iput-boolean v2, v1, Lcom/amap/location/e/a/b/b;->e:Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 133
    new-array v1, p1, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_4

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/location/e/a/b/b;

    .line 135
    iget-object v4, v3, Lcom/amap/location/e/a/b/b;->b:Ljava/util/List;

    invoke-static {p0, v4}, Lcom/amap/location/e/c/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I

    move-result v4

    .line 136
    iget-object v5, v3, Lcom/amap/location/e/a/b/b;->a:Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    invoke-static {p0, v5}, Lcom/amap/location/e/c/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I

    move-result v5

    .line 137
    invoke-static {p0}, Lcom/amap/location/e/b/i;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 138
    iget-wide v6, v3, Lcom/amap/location/e/a/b/b;->c:J

    invoke-static {p0, v6, v7}, Lcom/amap/location/e/b/i;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 139
    iget-wide v6, v3, Lcom/amap/location/e/a/b/b;->d:J

    invoke-static {p0, v6, v7}, Lcom/amap/location/e/b/i;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-lez v5, :cond_2

    .line 140
    invoke-static {p0, v5}, Lcom/amap/location/e/b/i;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-lez v4, :cond_3

    .line 141
    invoke-static {p0, v4}, Lcom/amap/location/e/b/i;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 142
    :cond_3
    invoke-static {p0}, Lcom/amap/location/e/b/i;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private static b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;",
            ">;)I"
        }
    .end annotation

    .line 1
    move-object/from16 v15, p0

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1a

    .line 9
    const/4 v2, -0x1

    .line 10
    if-lt v0, v1, :cond_b

    .line 12
    if-eqz p1, :cond_b

    .line 14
    new-instance v13, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 35
    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 44
    move-result v14

    .line 45
    if-nez v14, :cond_2

    .line 47
    return v2

    .line 48
    :cond_2
    new-array v11, v14, [I

    .line 50
    const/4 v0, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    :goto_1
    if-ge v12, v14, :cond_a

    .line 54
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 60
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 63
    move-result v1

    .line 64
    const/16 v2, 0x1d

    .line 66
    if-lt v1, v2, :cond_3

    .line 68
    iget-object v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    .line 70
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 76
    iget-object v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const-string v1, "null"

    .line 81
    :goto_2
    invoke-virtual {v15, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 84
    move-result v17

    .line 85
    iget v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeState:I

    .line 87
    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeMeters:D

    .line 89
    iget-wide v4, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeUncertaintyMeters:D

    .line 91
    iget-wide v6, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->automaticGainControlLevelDb:D

    .line 93
    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 98
    cmpl-double v10, v6, v18

    .line 100
    if-eqz v10, :cond_4

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    const-wide v6, -0x3f3c788000000000L    # -9999.0

    .line 108
    :goto_3
    iget v10, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierFrequencyHz:F

    .line 110
    const/high16 v16, -0x40800000    # -1.0f

    .line 112
    cmpl-float v16, v10, v16

    .line 114
    if-eqz v16, :cond_5

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    const v10, -0x39e3c400    # -9999.0f

    .line 120
    :goto_4
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierCycles:J

    .line 122
    const-wide v22, 0x7fffffffffffffffL

    .line 127
    cmp-long v16, v8, v22

    .line 129
    if-eqz v16, :cond_6

    .line 131
    goto :goto_5

    .line 132
    :cond_6
    const-wide/16 v8, -0x270f

    .line 134
    :goto_5
    move-wide/from16 v22, v8

    .line 136
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhase:D

    .line 138
    cmpl-double v16, v8, v18

    .line 140
    if-eqz v16, :cond_7

    .line 142
    move-wide/from16 v24, v8

    .line 144
    goto :goto_6

    .line 145
    :cond_7
    const-wide v24, -0x3f3c788000000000L    # -9999.0

    .line 150
    :goto_6
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhaseUncertainty:D

    .line 152
    cmpl-double v16, v8, v18

    .line 154
    if-eqz v16, :cond_8

    .line 156
    move-wide/from16 v26, v8

    .line 158
    goto :goto_7

    .line 159
    :cond_8
    const-wide v26, -0x3f3c788000000000L    # -9999.0

    .line 164
    :goto_7
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->cn0DbHz:D

    .line 166
    iget v15, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->constellationType:I

    .line 168
    move/from16 v16, v15

    .line 170
    iget v15, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->multipathIndicator:I

    .line 172
    move-object/from16 v28, v13

    .line 174
    move/from16 p1, v14

    .line 176
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateMetersPerSecond:D

    .line 178
    move-wide/from16 v34, v13

    .line 180
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateUncertaintyMetersPerSecond:D

    .line 182
    move-wide/from16 v36, v13

    .line 184
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeNanos:J

    .line 186
    move-wide/from16 v38, v13

    .line 188
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    .line 190
    move-wide/from16 v40, v8

    .line 192
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->snrInDb:D

    .line 194
    cmpl-double v29, v8, v18

    .line 196
    if-eqz v29, :cond_9

    .line 198
    move-wide/from16 v42, v8

    .line 200
    goto :goto_8

    .line 201
    :cond_9
    const-wide v42, -0x3f3c788000000000L    # -9999.0

    .line 206
    :goto_8
    iget v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->state:I

    .line 208
    move/from16 v30, v8

    .line 210
    iget v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->svid:I

    .line 212
    move/from16 v31, v8

    .line 214
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->timeOffsetNanos:D

    .line 216
    move-wide/from16 v32, v8

    .line 218
    move-object/from16 v0, p0

    .line 220
    move-wide/from16 v18, v40

    .line 222
    move v8, v10

    .line 223
    move-wide/from16 v9, v22

    .line 225
    move-object/from16 v44, v11

    .line 227
    move/from16 v40, v12

    .line 229
    move-wide/from16 v11, v24

    .line 231
    move-wide/from16 v20, v34

    .line 233
    move-wide/from16 v22, v36

    .line 235
    move-wide/from16 v24, v38

    .line 237
    move/from16 v35, p1

    .line 239
    move-object/from16 v34, v28

    .line 241
    move-wide/from16 v28, v13

    .line 243
    move-wide/from16 v13, v26

    .line 245
    move/from16 v27, v15

    .line 247
    move/from16 v26, v16

    .line 249
    move-wide/from16 v15, v18

    .line 251
    move/from16 v18, v26

    .line 253
    move/from16 v19, v27

    .line 255
    move-wide/from16 v26, v28

    .line 257
    move-wide/from16 v28, v42

    .line 259
    invoke-static/range {v0 .. v33}, Lcom/amap/location/e/b/j;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IDDDFJDDDIIIDDJJDIID)I

    .line 262
    move-result v0

    .line 263
    move-object/from16 v1, v44

    .line 265
    aput v0, v1, v40

    .line 267
    add-int/lit8 v12, v40, 0x1

    .line 269
    move-object/from16 v15, p0

    .line 271
    move-object v11, v1

    .line 272
    move-object/from16 v13, v34

    .line 274
    move/from16 v14, v35

    .line 276
    goto/16 :goto_1

    .line 278
    :cond_a
    move-object v1, v11

    .line 279
    move-object v0, v15

    .line 280
    invoke-static {v0, v1}, Lcom/amap/location/e/b/i;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 283
    move-result v0

    .line 284
    return v0

    .line 285
    :cond_b
    return v2
.end method

.method private static c(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v1, -0x1

    .line 2
    if-eqz p1, :cond_7

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/amap/location/support/bean/gnss/AmapSatellite;

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 37
    return v1

    .line 38
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v2

    .line 42
    new-array v2, v2, [I

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    move-result v5

    .line 50
    if-ge v4, v5, :cond_6

    .line 52
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/amap/location/support/bean/gnss/AmapSatellite;

    .line 58
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->isUsedInFix()Z

    .line 61
    move-result v6

    .line 62
    const/4 v7, 0x1

    .line 63
    if-eqz v6, :cond_3

    .line 65
    const/4 v6, 0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const/4 v6, 0x0

    .line 68
    :goto_2
    int-to-byte v9, v6

    .line 69
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getSvid()I

    .line 72
    move-result v10

    .line 73
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getCn0()F

    .line 76
    move-result v11

    .line 77
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getElevation()F

    .line 80
    move-result v12

    .line 81
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getAzimuth()F

    .line 84
    move-result v13

    .line 85
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getSystemType()I

    .line 88
    move-result v14

    .line 89
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->isHasEphemeris()Z

    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_4

    .line 95
    const/4 v6, 0x1

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/4 v6, 0x0

    .line 98
    :goto_3
    int-to-byte v15, v6

    .line 99
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->isHasAlmanac()Z

    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_5

    .line 105
    goto :goto_4

    .line 106
    :cond_5
    const/4 v7, 0x0

    .line 107
    :goto_4
    int-to-byte v6, v7

    .line 108
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getCarrierFrequencyHz()F

    .line 111
    move-result v17

    .line 112
    move-object/from16 v8, p0

    .line 114
    move/from16 v16, v6

    .line 116
    invoke-static/range {v8 .. v17}, Lcom/amap/location/e/b/k;->a(Lcom/google/flatbuffers/FlatBufferBuilder;BIFFFIBBF)I

    .line 119
    move-result v5

    .line 120
    aput v5, v2, v4

    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    move-object/from16 v0, p0

    .line 127
    invoke-static {v0, v2}, Lcom/amap/location/e/b/f;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 130
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v2, "gnss_fb"

    .line 135
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_7
    return v1
.end method
