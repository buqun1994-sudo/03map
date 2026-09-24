.class public Lcom/amap/location/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:J

.field private g:[D

.field private h:[D

.field private i:[D

.field private j:[I

.field private k:Lcom/amap/location/e/a/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/e/a/c;->a:I

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/e/a/c;->d:Z

    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v1, v0, [D

    .line 12
    iput-object v1, p0, Lcom/amap/location/e/a/c;->h:[D

    .line 14
    const/4 v1, 0x6

    .line 15
    new-array v1, v1, [D

    .line 17
    iput-object v1, p0, Lcom/amap/location/e/a/c;->i:[D

    .line 19
    new-array v0, v0, [I

    .line 21
    iput-object v0, p0, Lcom/amap/location/e/a/c;->j:[I

    .line 23
    new-instance v0, Lcom/amap/location/e/a/a/g;

    .line 25
    invoke-direct {v0}, Lcom/amap/location/e/a/a/g;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/amap/location/e/a/c;->k:Lcom/amap/location/e/a/a/g;

    .line 30
    return-void
.end method

.method private a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I
    .locals 30

    move-object/from16 v0, p2

    .line 147
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v1

    const/16 v2, 0x1a

    const/4 v3, -0x1

    if-lt v1, v2, :cond_9

    if-eqz v0, :cond_9

    .line 148
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

    .line 149
    :goto_6
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v3

    const/16 v7, 0x1d

    if-lt v3, v7, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hasElapsedRealtimeNanos()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeNanos:J

    move-wide/from16 v26, v8

    goto :goto_7

    :cond_7
    move-wide/from16 v26, v18

    .line 150
    :goto_7
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v3

    if-lt v3, v7, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-wide v7, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeUncertaintyNanos:D

    move-wide/from16 v28, v7

    goto :goto_8

    :cond_8
    const-wide v28, -0x3f3c788000000000L    # -9999.0

    :goto_8
    move-object/from16 v9, p1

    move-wide/from16 v18, v1

    move/from16 v20, v4

    move-wide/from16 v22, v24

    move-wide/from16 v24, v5

    .line 151
    invoke-static/range {v9 .. v29}, Lcom/amap/location/e/b/h;->a(Lcom/google/flatbuffers/FlatBufferBuilder;DDDDJIIJDJD)I

    move-result v0

    return v0

    :cond_9
    return v3
.end method

.method private a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;)I
    .locals 12

    if-eqz p2, :cond_0

    const-string v0, ""

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/amap/location/e/a/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/amap/location/e/a/c;->b(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 123
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v2

    .line 124
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v4

    .line 125
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v6

    .line 126
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v8

    .line 127
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v9

    move-object v1, p1

    .line 128
    invoke-static/range {v1 .. v11}, Lcom/amap/location/e/b/g;->a(Lcom/google/flatbuffers/FlatBufferBuilder;JDDFFII)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I
    .locals 21

    if-eqz p2, :cond_1

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v6

    .line 133
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v9

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v11

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v13

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v15

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v16

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result v17

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLocationTickTime()J

    move-result-wide v18

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getSubType()I

    move-result v20

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    .line 141
    invoke-static/range {v1 .. v20}, Lcom/amap/location/e/b/l;->a(Lcom/google/flatbuffers/FlatBufferBuilder;JJJIDDDFFFJI)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private a(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/a/l;",
            ">;)I"
        }
    .end annotation

    .line 142
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 143
    :cond_0
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 144
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/location/e/a/a/l;

    iget-object v4, v4, Lcom/amap/location/e/a/a/l;->b:[F

    invoke-static {p1, v4}, Lcom/amap/location/e/b/m;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[F)I

    move-result v4

    .line 145
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/e/a/a/l;

    iget-wide v5, v5, Lcom/amap/location/e/a/a/l;->a:J

    invoke-static {p1, v2, v5, v6, v4}, Lcom/amap/location/e/b/m;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IJI)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {p1, v1}, Lcom/amap/location/e/b/e;->c(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p1

    return p1
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;
    .locals 1

    .line 129
    instance-of v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getCacheType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private a(IIILjava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;Lcom/amap/location/support/bean/location/AmapLocation;JJLcom/amap/location/support/bean/location/AmapLocation;ILjava/lang/String;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;",
            ">;",
            "Lcom/amap/location/support/bean/gnss/AmapGnssClock;",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            "JJ",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/a/l;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p4

    .line 71
    iget v1, v8, Lcom/amap/location/e/a/c;->a:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v8, Lcom/amap/location/e/a/c;->a:I

    .line 72
    sget v2, Lcom/amap/location/e/a/d;->h:I

    if-lt v1, v2, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    new-instance v10, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 74
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    .line 75
    invoke-direct/range {v1 .. v7}, Lcom/amap/location/e/a/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;JJ)I

    move-result v1

    .line 76
    invoke-direct {v8, v10, v0}, Lcom/amap/location/e/a/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I

    move-result v2

    move-object/from16 v3, p5

    .line 77
    invoke-direct {v8, v10, v3}, Lcom/amap/location/e/a/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I

    move-result v3

    move-object/from16 v4, p11

    .line 78
    invoke-direct {v8, v10, v4}, Lcom/amap/location/e/a/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/location/AmapLocation;)I

    move-result v4

    .line 79
    sget-object v5, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "null"

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v5, Lcom/amap/location/e/a/d;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v10, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 80
    iget-object v7, v8, Lcom/amap/location/e/a/c;->j:[I

    if-eqz v7, :cond_2

    .line 81
    invoke-static {v10, v7}, Lcom/amap/location/e/b/e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    .line 82
    :goto_1
    iget-object v13, v8, Lcom/amap/location/e/a/c;->i:[D

    if-eqz v13, :cond_3

    .line 83
    invoke-static {v10, v13}, Lcom/amap/location/e/b/e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[D)I

    move-result v13

    goto :goto_2

    :cond_3
    const/4 v13, -0x1

    .line 84
    :goto_2
    iget-object v14, v8, Lcom/amap/location/e/a/c;->g:[D

    if-eqz v14, :cond_4

    .line 85
    invoke-static {v10, v14}, Lcom/amap/location/e/b/e;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[D)I

    move-result v14

    goto :goto_3

    :cond_4
    const/4 v14, -0x1

    .line 86
    :goto_3
    sget-object v15, Lcom/amap/location/e/a/a/i;->b:Ljava/lang/String;

    invoke-static {v15}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v9, v6

    goto :goto_4

    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/amap/location/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/amap/location/e/a/d;->n:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v10, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 87
    invoke-static/range {p13 .. p13}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v6, p13

    :goto_5
    invoke-virtual {v10, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    move-object/from16 v15, p14

    .line 88
    invoke-direct {v8, v10, v15}, Lcom/amap/location/e/a/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I

    move-result v15

    .line 89
    invoke-static {v10}, Lcom/amap/location/e/b/e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 90
    iget v12, v8, Lcom/amap/location/e/a/c;->a:I

    invoke-static {v10, v12}, Lcom/amap/location/e/b/e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v16, v11

    .line 91
    iget-wide v11, v8, Lcom/amap/location/e/a/c;->f:J

    invoke-static {v10, v11, v12}, Lcom/amap/location/e/b/e;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v11, p1

    .line 92
    invoke-static {v10, v11}, Lcom/amap/location/e/b/e;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 93
    iget-boolean v11, v8, Lcom/amap/location/e/a/c;->d:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    invoke-static {v10, v11}, Lcom/amap/location/e/b/e;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 94
    sget v11, Lcom/amap/location/e/a/d;->o:I

    invoke-static {v10, v11}, Lcom/amap/location/e/b/e;->d(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 95
    invoke-static {v10, v9}, Lcom/amap/location/e/b/e;->e(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v9, p12

    .line 96
    invoke-static {v10, v9}, Lcom/amap/location/e/b/e;->f(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 97
    invoke-static {v10, v6}, Lcom/amap/location/e/b/e;->g(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 98
    sget v6, Lcom/amap/location/e/a/d;->f:I

    invoke-static {v10, v6}, Lcom/amap/location/e/b/e;->h(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 99
    sget v6, Lcom/amap/location/e/a/d;->g:I

    invoke-static {v10, v6}, Lcom/amap/location/e/b/e;->i(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eqz v0, :cond_8

    .line 100
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_7

    :cond_8
    const/4 v12, -0x1

    :goto_7
    invoke-static {v10, v12}, Lcom/amap/location/e/b/e;->j(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v0, p2

    .line 101
    invoke-static {v10, v0}, Lcom/amap/location/e/b/e;->k(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v0, p3

    .line 102
    invoke-static {v10, v0}, Lcom/amap/location/e/b/e;->l(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-lez v7, :cond_9

    .line 103
    invoke-static {v10, v7}, Lcom/amap/location/e/b/e;->m(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-lez v13, :cond_a

    .line 104
    invoke-static {v10, v13}, Lcom/amap/location/e/b/e;->n(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-lez v14, :cond_b

    .line 105
    invoke-static {v10, v14}, Lcom/amap/location/e/b/e;->o(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-lez v1, :cond_c

    .line 106
    invoke-static {v10, v1}, Lcom/amap/location/e/b/e;->p(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-lez v4, :cond_d

    .line 107
    invoke-static {v10, v4}, Lcom/amap/location/e/b/e;->q(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-lez v2, :cond_e

    .line 108
    invoke-static {v10, v2}, Lcom/amap/location/e/b/e;->r(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-lez v3, :cond_f

    .line 109
    invoke-static {v10, v3}, Lcom/amap/location/e/b/e;->s(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 110
    :cond_f
    invoke-static {v10, v5}, Lcom/amap/location/e/b/e;->t(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-lez v15, :cond_10

    .line 111
    invoke-static {v10, v15}, Lcom/amap/location/e/b/e;->u(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    move/from16 v0, v16

    .line 112
    invoke-static {v10, v0}, Lcom/amap/location/e/b/e;->v(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 113
    invoke-static {v10}, Lcom/amap/location/e/b/e;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 114
    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 115
    invoke-virtual {v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 117
    invoke-static {v0, v1}, Lcom/amap/location/support/security/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, 0x18774

    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v1, "gnssalgo"

    .line 120
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_8
    return-void
.end method

.method private b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
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

    move-object/from16 v15, p1

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, -0x1

    if-lt v0, v1, :cond_b

    if-eqz p2, :cond_b

    .line 4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2

    return v2

    .line 8
    :cond_2
    new-array v11, v14, [I

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_a

    .line 9
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 10
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v1

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    iget-object v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v1, "null"

    .line 11
    :goto_2
    invoke-virtual {v15, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    .line 12
    iget v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeState:I

    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeMeters:D

    iget-wide v4, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeUncertaintyMeters:D

    iget-wide v6, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->automaticGainControlLevelDb:D

    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v10, v6, v18

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    const-wide v6, -0x3f3c788000000000L    # -9999.0

    :goto_3
    iget v10, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierFrequencyHz:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v16, v10, v16

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    const v10, -0x39e3c400    # -9999.0f

    :goto_4
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierCycles:J

    const-wide v22, 0x7fffffffffffffffL

    cmp-long v16, v8, v22

    if-eqz v16, :cond_6

    goto :goto_5

    :cond_6
    const-wide/16 v8, -0x270f

    :goto_5
    move-wide/from16 v22, v8

    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhase:D

    cmpl-double v16, v8, v18

    if-eqz v16, :cond_7

    move-wide/from16 v24, v8

    goto :goto_6

    :cond_7
    const-wide v24, -0x3f3c788000000000L    # -9999.0

    :goto_6
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhaseUncertainty:D

    cmpl-double v16, v8, v18

    if-eqz v16, :cond_8

    move-wide/from16 v26, v8

    goto :goto_7

    :cond_8
    const-wide v26, -0x3f3c788000000000L    # -9999.0

    :goto_7
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->cn0DbHz:D

    iget v15, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->constellationType:I

    move/from16 v16, v15

    iget v15, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->multipathIndicator:I

    move-object/from16 v28, v13

    move/from16 p2, v14

    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateMetersPerSecond:D

    move-wide/from16 v34, v13

    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateUncertaintyMetersPerSecond:D

    move-wide/from16 v36, v13

    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeNanos:J

    move-wide/from16 v38, v13

    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    move-wide/from16 v40, v8

    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->snrInDb:D

    cmpl-double v29, v8, v18

    if-eqz v29, :cond_9

    move-wide/from16 v42, v8

    goto :goto_8

    :cond_9
    const-wide v42, -0x3f3c788000000000L    # -9999.0

    :goto_8
    iget v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->state:I

    move/from16 v30, v8

    iget v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->svid:I

    move/from16 v31, v8

    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->timeOffsetNanos:D

    move-wide/from16 v32, v8

    move-object/from16 v0, p1

    move-wide/from16 v18, v40

    move v8, v10

    move-wide/from16 v9, v22

    move-object/from16 v44, v11

    move/from16 v40, v12

    move-wide/from16 v11, v24

    move-wide/from16 v20, v34

    move-wide/from16 v22, v36

    move-wide/from16 v24, v38

    move/from16 v35, p2

    move-object/from16 v34, v28

    move-wide/from16 v28, v13

    move-wide/from16 v13, v26

    move/from16 v27, v15

    move/from16 v26, v16

    move-wide/from16 v15, v18

    move/from16 v18, v26

    move/from16 v19, v27

    move-wide/from16 v26, v28

    move-wide/from16 v28, v42

    invoke-static/range {v0 .. v33}, Lcom/amap/location/e/b/j;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IDDDFJDDDIIIDDJJDIID)I

    move-result v0

    move-object/from16 v1, v44

    aput v0, v1, v40

    add-int/lit8 v12, v40, 0x1

    move-object/from16 v15, p1

    move-object v11, v1

    move-object/from16 v13, v34

    move/from16 v14, v35

    goto/16 :goto_1

    :cond_a
    move-object v1, v11

    move-object v0, v15

    .line 13
    invoke-static {v0, v1}, Lcom/amap/location/e/b/e;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    return v0

    :cond_b
    return v2
.end method

.method private b(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a(Lcom/amap/location/e/a/a;)V
    .locals 26

    move-object/from16 v15, p0

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v5

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->l()Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v7

    sub-long v7, v5, v7

    const-wide/16 v9, 0x2710

    cmp-long v4, v7, v9

    if-lez v4, :cond_1

    goto/16 :goto_c

    .line 6
    :cond_1
    iget-wide v7, v15, Lcom/amap/location/e/a/c;->f:J

    sub-long v7, v5, v7

    long-to-double v7, v7

    sget-wide v9, Lcom/amap/location/e/a/d;->e:J

    long-to-double v9, v9

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    mul-double v9, v9, v11

    cmpg-double v4, v7, v9

    if-gez v4, :cond_2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    .line 8
    :cond_2
    iput-wide v5, v15, Lcom/amap/location/e/a/c;->f:J

    .line 9
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_3

    goto/16 :goto_a

    .line 11
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/amap/location/e/a/b/b;

    if-nez v7, :cond_4

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    .line 13
    :cond_4
    iget-object v14, v7, Lcom/amap/location/e/a/b/b;->b:Ljava/util/List;

    .line 14
    iget-object v12, v7, Lcom/amap/location/e/a/b/b;->a:Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    const/4 v11, 0x6

    new-array v4, v11, [D

    .line 15
    iput-object v4, v15, Lcom/amap/location/e/a/c;->i:[D

    const/4 v10, 0x2

    new-array v4, v10, [I

    .line 16
    iput-object v4, v15, Lcom/amap/location/e/a/c;->j:[I

    new-array v9, v13, [D

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    aput-wide v16, v9, v3

    .line 17
    new-instance v4, Lcom/amap/location/support/security/gnssrtk/RtkSolM;

    invoke-direct {v4}, Lcom/amap/location/support/security/gnssrtk/RtkSolM;-><init>()V

    .line 18
    iget-object v8, v7, Lcom/amap/location/e/a/b/b;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    .line 19
    sget v8, Lcom/amap/location/e/a/d;->o:I

    const/16 v19, -0x1

    const/4 v1, 0x3

    if-ne v8, v13, :cond_e

    const/16 v8, 0x20

    new-array v8, v8, [D

    .line 20
    iput-object v8, v15, Lcom/amap/location/e/a/c;->g:[D

    .line 21
    sget v11, Lcom/amap/location/e/a/a/i;->c:I

    array-length v8, v8

    sub-int/2addr v8, v13

    if-le v11, v8, :cond_5

    .line 22
    sput v10, Lcom/amap/location/e/a/d;->o:I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modle size error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/location/e/a/a/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, 0x18781

    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    .line 26
    :cond_5
    sget-object v8, Lcom/amap/location/e/a/d;->p:[I

    aget v8, v8, v3

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    if-ne v8, v13, :cond_a

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v9

    move-object v9, v11

    const/4 v11, 0x2

    move/from16 v10, v19

    const/16 v19, 0x6

    move/from16 v11, v23

    move-object/from16 v25, v12

    move-object/from16 v12, v24

    .line 27
    invoke-static/range {v4 .. v12}, Lcom/amap/location/e/a/b/c;->a(IJLcom/amap/location/e/a/b/b;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;ZI[D)Lcom/amap/location/e/a/b/a;

    move-result-object v4

    .line 28
    iget-object v5, v4, Lcom/amap/location/e/a/b/a;->b:[I

    aget v6, v5, v3

    .line 29
    sget-object v7, Lcom/amap/location/e/a/b/c;->a:[D

    iput-object v7, v15, Lcom/amap/location/e/a/c;->i:[D

    .line 30
    iput-object v5, v15, Lcom/amap/location/e/a/c;->j:[I

    .line 31
    sget-object v5, Lcom/amap/location/e/a/b/c;->b:Lcom/amap/location/support/security/gnssrtk/RtkSolM;

    const/4 v7, -0x2

    if-eq v6, v7, :cond_9

    const/4 v7, -0x3

    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    const/16 v7, -0x9

    if-ne v6, v7, :cond_7

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    :cond_7
    if-ne v6, v13, :cond_8

    .line 33
    iget-object v7, v15, Lcom/amap/location/e/a/c;->g:[D

    aput-wide v21, v7, v3

    goto :goto_0

    .line 34
    :cond_8
    iget-object v7, v15, Lcom/amap/location/e/a/c;->g:[D

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v3

    .line 35
    :goto_0
    iget-object v7, v15, Lcom/amap/location/e/a/c;->g:[D

    iget v4, v4, Lcom/amap/location/e/a/b/a;->g:I

    int-to-double v8, v4

    mul-double v8, v8, v21

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v10, v4

    div-double/2addr v8, v10

    aput-wide v8, v7, v13

    .line 36
    iget-object v4, v15, Lcom/amap/location/e/a/c;->i:[D

    iget-object v7, v15, Lcom/amap/location/e/a/c;->g:[D

    const/4 v8, 0x4

    const/4 v12, 0x2

    invoke-static {v4, v3, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    move/from16 v19, v6

    const/4 v11, 0x6

    goto :goto_2

    .line 37
    :cond_9
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    :cond_a
    move-object/from16 v25, v12

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 38
    :goto_2
    sget-object v5, Lcom/amap/location/e/a/d;->p:[I

    aget v5, v5, v13

    if-ne v5, v13, :cond_b

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->f()[D

    move-result-object v5

    invoke-static {v14, v5}, Lcom/amap/location/e/a/a/b;->a(Ljava/util/List;[D)[D

    move-result-object v5

    .line 40
    iget-object v6, v15, Lcom/amap/location/e/a/c;->g:[D

    const/4 v7, 0x7

    invoke-static {v5, v3, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x7

    .line 41
    :cond_b
    sget-object v5, Lcom/amap/location/e/a/d;->p:[I

    aget v5, v5, v12

    if-ne v5, v13, :cond_c

    .line 42
    iget v5, v15, Lcom/amap/location/e/a/c;->a:I

    iget-object v6, v15, Lcom/amap/location/e/a/c;->h:[D

    move-object/from16 v10, v25

    invoke-static {v14, v10, v5, v0, v6}, Lcom/amap/location/e/a/a/h;->a(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;ILcom/amap/location/support/bean/location/AmapLocation;[D)[D

    move-result-object v5

    .line 43
    iget-object v6, v15, Lcom/amap/location/e/a/c;->g:[D

    const/16 v7, 0x11

    invoke-static {v5, v3, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x11

    goto :goto_3

    :cond_c
    move-object/from16 v10, v25

    .line 44
    :goto_3
    sget-object v5, Lcom/amap/location/e/a/d;->p:[I

    aget v5, v5, v1

    if-ne v5, v13, :cond_d

    iget-object v5, v15, Lcom/amap/location/e/a/c;->g:[D

    aget-wide v6, v5, v3

    cmpl-double v5, v6, v21

    if-nez v5, :cond_d

    .line 45
    iget-object v5, v15, Lcom/amap/location/e/a/c;->k:Lcom/amap/location/e/a/a/g;

    iget-wide v6, v15, Lcom/amap/location/e/a/c;->f:J

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->i()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/amap/location/e/a/a/g;->a(Lcom/amap/location/support/security/gnssrtk/RtkSolM;JLjava/util/List;)[D

    move-result-object v4

    .line 46
    iget-object v5, v15, Lcom/amap/location/e/a/c;->g:[D

    invoke-static {v4, v3, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    :cond_d
    iget-object v4, v15, Lcom/amap/location/e/a/c;->g:[D

    invoke-static {v4}, Lcom/amap/location/e/a/a/i;->a([D)I

    move-result v4

    move-object/from16 v20, v10

    const/16 v17, 0x2

    goto :goto_5

    :cond_e
    move-object/from16 v24, v9

    move-object v10, v12

    const/4 v12, 0x2

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->g()I

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v20, v10

    move v10, v11

    move/from16 v11, v17

    const/16 v17, 0x2

    move-object/from16 v12, v24

    .line 49
    invoke-static/range {v4 .. v12}, Lcom/amap/location/e/a/b/c;->a(IJLcom/amap/location/e/a/b/b;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;ZI[D)Lcom/amap/location/e/a/b/a;

    move-result-object v4

    .line 50
    iget-object v4, v4, Lcom/amap/location/e/a/b/a;->b:[I

    aget v5, v4, v3

    .line 51
    sget-object v6, Lcom/amap/location/e/a/b/c;->a:[D

    iput-object v6, v15, Lcom/amap/location/e/a/c;->i:[D

    .line 52
    iput-object v4, v15, Lcom/amap/location/e/a/c;->j:[I

    const/4 v4, -0x2

    if-eq v5, v4, :cond_12

    const/4 v4, -0x3

    if-ne v5, v4, :cond_f

    goto :goto_4

    :cond_f
    const/16 v4, -0x9

    if-ne v5, v4, :cond_10

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    :cond_10
    if-ne v5, v13, :cond_11

    .line 54
    invoke-static {v6}, Lcom/amap/location/e/a/a/k;->a([D)I

    move-result v19

    :cond_11
    move/from16 v4, v19

    move/from16 v19, v5

    goto :goto_5

    .line 55
    :cond_12
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    :cond_13
    move-object/from16 v20, v10

    const/16 v17, 0x2

    .line 56
    invoke-static {v14}, Lcom/amap/location/e/a/a/b;->a(Ljava/util/List;)I

    move-result v4

    :goto_5
    if-eqz v4, :cond_15

    if-ne v4, v13, :cond_14

    goto :goto_6

    .line 57
    :cond_14
    iget v5, v15, Lcom/amap/location/e/a/c;->e:I

    add-int/2addr v5, v13

    iput v5, v15, Lcom/amap/location/e/a/c;->e:I

    .line 58
    sget v6, Lcom/amap/location/e/a/d;->i:I

    if-lt v5, v6, :cond_1b

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void

    .line 60
    :cond_15
    :goto_6
    iget v1, v15, Lcom/amap/location/e/a/c;->b:I

    if-eq v4, v1, :cond_16

    .line 61
    iput v3, v15, Lcom/amap/location/e/a/c;->c:I

    .line 62
    :cond_16
    iget v1, v15, Lcom/amap/location/e/a/c;->c:I

    add-int/2addr v1, v13

    iput v1, v15, Lcom/amap/location/e/a/c;->c:I

    .line 63
    iget-boolean v5, v15, Lcom/amap/location/e/a/c;->d:Z

    if-eqz v5, :cond_17

    sget v5, Lcom/amap/location/e/a/d;->g:I

    goto :goto_7

    :cond_17
    sget v5, Lcom/amap/location/e/a/d;->f:I

    :goto_7
    if-ne v1, v5, :cond_19

    if-eqz v4, :cond_18

    const/4 v1, 0x1

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    .line 64
    :goto_8
    iput-boolean v1, v15, Lcom/amap/location/e/a/c;->d:Z

    if-eqz v1, :cond_1a

    const/4 v13, 0x2

    goto :goto_9

    :cond_19
    const/4 v13, 0x0

    .line 65
    :cond_1a
    :goto_9
    iput v4, v15, Lcom/amap/location/e/a/c;->b:I

    .line 66
    iput v3, v15, Lcom/amap/location/e/a/c;->e:I

    move v3, v13

    .line 67
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->n()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->a()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->m()Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->g()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->h()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->i()Ljava/util/List;

    move-result-object v18

    move-object/from16 v1, p0

    move v2, v4

    move/from16 v3, v16

    move/from16 v4, v19

    move-object v5, v14

    move-object/from16 v6, v20

    move-object v7, v0

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-direct/range {v1 .. v15}, Lcom/amap/location/e/a/c;->a(IIILjava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;Lcom/amap/location/support/bean/location/AmapLocation;JJLcom/amap/location/support/bean/location/AmapLocation;ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :cond_1c
    :goto_a
    return-void

    :catch_0
    move-exception v0

    const-string v1, "gnssalgo"

    .line 69
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void

    .line 70
    :cond_1d
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    return-void
.end method
