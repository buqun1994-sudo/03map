.class public Lgw0$c;
.super Lgw0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lgw0;


# direct methods
.method public constructor <init>(Lgw0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgw0$c;->d:Lgw0;

    .line 3
    invoke-direct {p0, p1, p2}, Lgw0$e;-><init>(Lgw0;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    new-array v2, v1, [I

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lcr0;

    .line 17
    iget-object v5, v4, Lcr0;->a:Ljava/lang/Object;

    .line 19
    check-cast v5, Ljava/util/List;

    .line 21
    invoke-virtual {p0, p1, v5}, Lgw0$c;->e(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I

    .line 24
    move-result v5

    .line 25
    iget-object v6, v4, Lcr0;->b:Ljava/lang/Object;

    .line 27
    check-cast v6, Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    .line 29
    invoke-virtual {p0, p1, v6}, Lgw0$c;->d(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I

    .line 32
    move-result v6

    .line 33
    invoke-static {p1}, Lix0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 36
    iget-wide v7, v4, Lcr0;->c:J

    .line 38
    invoke-static {p1, v7, v8}, Lix0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 41
    iget-wide v7, v4, Lcr0;->d:J

    .line 43
    invoke-static {p1, v7, v8}, Lix0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 46
    if-lez v6, :cond_0

    .line 48
    invoke-static {p1, v6}, Lix0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 51
    :cond_0
    if-lez v5, :cond_1

    .line 53
    invoke-static {p1, v5}, Lix0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 56
    :cond_1
    invoke-static {p1}, Lix0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 59
    move-result v4

    .line 60
    aput v4, v2, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p1, v2}, Lwp0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 68
    move-result v0

    .line 69
    invoke-interface {p2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 77
    :goto_1
    return v0
.end method

.method public final d(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I
    .locals 30

    .line 1
    move-object/from16 v0, p2

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_9

    .line 6
    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasNanos:D

    .line 8
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 13
    cmpl-double v8, v2, v4

    .line 15
    if-eqz v8, :cond_0

    .line 17
    move-wide v10, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide v10, -0x3f3c788000000000L    # -9999.0

    .line 24
    :goto_0
    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasUncertaintyNanos:D

    .line 26
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 28
    cmpl-double v12, v2, v8

    .line 30
    if-eqz v12, :cond_1

    .line 32
    move-wide v12, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-wide v12, -0x3f3c788000000000L    # -9999.0

    .line 39
    :goto_1
    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftNanosPerSecond:D

    .line 41
    cmpl-double v14, v2, v4

    .line 43
    if-eqz v14, :cond_2

    .line 45
    move-wide v14, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const-wide v14, -0x3f3c788000000000L    # -9999.0

    .line 52
    :goto_2
    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftUncertaintyNanosPerSecond:D

    .line 54
    cmpl-double v4, v2, v8

    .line 56
    if-eqz v4, :cond_3

    .line 58
    move-wide/from16 v16, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const-wide v16, -0x3f3c788000000000L    # -9999.0

    .line 66
    :goto_3
    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->fullBiasNanos:J

    .line 68
    const-wide v4, 0x7fffffffffffffffL

    .line 73
    const-wide/16 v18, -0x270f

    .line 75
    cmp-long v20, v2, v4

    .line 77
    if-eqz v20, :cond_4

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move-wide/from16 v2, v18

    .line 82
    :goto_4
    iget v4, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hardwareClockDiscontinuityCount:I

    .line 84
    iget v5, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->leapSecond:I

    .line 86
    if-eq v5, v1, :cond_5

    .line 88
    move/from16 v21, v5

    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/16 v1, -0x270f

    .line 93
    const/16 v21, -0x270f

    .line 95
    :goto_5
    iget-wide v6, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeNanos:J

    .line 97
    move-wide/from16 v24, v6

    .line 99
    iget-wide v5, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeUncertaintyNanos:D

    .line 101
    cmpl-double v1, v5, v8

    .line 103
    if-eqz v1, :cond_6

    .line 105
    goto :goto_6

    .line 106
    :cond_6
    const-wide v5, -0x3f3c788000000000L    # -9999.0

    .line 111
    :goto_6
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeNanos:J

    .line 113
    const-wide/16 v28, -0x1

    .line 115
    cmp-long v1, v8, v28

    .line 117
    if-eqz v1, :cond_7

    .line 119
    move-wide v7, v8

    .line 120
    goto :goto_7

    .line 121
    :cond_7
    move-wide/from16 v7, v18

    .line 123
    :goto_7
    iget-wide v0, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeUncertaintyNanos:D

    .line 125
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    .line 127
    cmpl-double v9, v0, v18

    .line 129
    if-eqz v9, :cond_8

    .line 131
    move-wide/from16 v28, v0

    .line 133
    goto :goto_8

    .line 134
    :cond_8
    const-wide v28, -0x3f3c788000000000L    # -9999.0

    .line 139
    :goto_8
    move-object/from16 v9, p1

    .line 141
    move-wide/from16 v18, v2

    .line 143
    move/from16 v20, v4

    .line 145
    move-wide/from16 v22, v24

    .line 147
    move-wide/from16 v24, v5

    .line 149
    move-wide/from16 v26, v7

    .line 151
    invoke-static/range {v9 .. v29}, Ldx0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;DDDDJIIJDJD)I

    .line 154
    move-result v1

    .line 155
    :cond_9
    return v1
.end method

.method public final e(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
    .locals 45

    .line 1
    move-object/from16 v15, p1

    .line 3
    move-object/from16 v13, p2

    .line 5
    if-eqz v13, :cond_8

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 10
    move-result v14

    .line 11
    new-array v11, v14, [I

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v12, 0x0

    .line 15
    :goto_0
    if-ge v12, v14, :cond_7

    .line 17
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 23
    iget-object v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    const-string v1, ""

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    .line 36
    :goto_1
    invoke-virtual {v15, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 39
    move-result v17

    .line 40
    iget v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeState:I

    .line 42
    iget-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeMeters:D

    .line 44
    iget-wide v4, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeUncertaintyMeters:D

    .line 46
    iget-wide v6, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->automaticGainControlLevelDb:D

    .line 48
    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 53
    cmpl-double v10, v6, v18

    .line 55
    if-eqz v10, :cond_1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const-wide v6, -0x3f3c788000000000L    # -9999.0

    .line 63
    :goto_2
    iget v10, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierFrequencyHz:F

    .line 65
    const/high16 v16, -0x40800000    # -1.0f

    .line 67
    cmpl-float v16, v10, v16

    .line 69
    if-eqz v16, :cond_2

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    const v10, -0x39e3c400    # -9999.0f

    .line 75
    :goto_3
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierCycles:J

    .line 77
    const-wide v22, 0x7fffffffffffffffL

    .line 82
    cmp-long v16, v8, v22

    .line 84
    if-eqz v16, :cond_3

    .line 86
    goto :goto_4

    .line 87
    :cond_3
    const-wide/16 v8, -0x270f

    .line 89
    :goto_4
    move-wide/from16 v22, v8

    .line 91
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhase:D

    .line 93
    cmpl-double v16, v8, v18

    .line 95
    if-eqz v16, :cond_4

    .line 97
    move-wide/from16 v24, v8

    .line 99
    goto :goto_5

    .line 100
    :cond_4
    const-wide v24, -0x3f3c788000000000L    # -9999.0

    .line 105
    :goto_5
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhaseUncertainty:D

    .line 107
    cmpl-double v16, v8, v18

    .line 109
    if-eqz v16, :cond_5

    .line 111
    move-wide/from16 v26, v8

    .line 113
    goto :goto_6

    .line 114
    :cond_5
    const-wide v26, -0x3f3c788000000000L    # -9999.0

    .line 119
    :goto_6
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->cn0DbHz:D

    .line 121
    iget v15, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->constellationType:I

    .line 123
    move/from16 v16, v15

    .line 125
    iget v15, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->multipathIndicator:I

    .line 127
    move/from16 v28, v14

    .line 129
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateMetersPerSecond:D

    .line 131
    move-wide/from16 v34, v13

    .line 133
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateUncertaintyMetersPerSecond:D

    .line 135
    move-wide/from16 v36, v13

    .line 137
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeNanos:J

    .line 139
    move-wide/from16 v38, v13

    .line 141
    iget-wide v13, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    .line 143
    move-wide/from16 v40, v8

    .line 145
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->snrInDb:D

    .line 147
    cmpl-double v29, v8, v18

    .line 149
    if-eqz v29, :cond_6

    .line 151
    move-wide/from16 v42, v8

    .line 153
    goto :goto_7

    .line 154
    :cond_6
    const-wide v42, -0x3f3c788000000000L    # -9999.0

    .line 159
    :goto_7
    iget v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->state:I

    .line 161
    move/from16 v30, v8

    .line 163
    iget v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->svid:I

    .line 165
    move/from16 v31, v8

    .line 167
    iget-wide v8, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->timeOffsetNanos:D

    .line 169
    move-wide/from16 v32, v8

    .line 171
    move-object/from16 v0, p1

    .line 173
    move-wide/from16 v18, v40

    .line 175
    move v8, v10

    .line 176
    move-wide/from16 v9, v22

    .line 178
    move-object/from16 v44, v11

    .line 180
    move/from16 v40, v12

    .line 182
    move-wide/from16 v11, v24

    .line 184
    move-wide/from16 v20, v34

    .line 186
    move-wide/from16 v22, v36

    .line 188
    move-wide/from16 v24, v38

    .line 190
    move/from16 v34, v28

    .line 192
    move-wide/from16 v28, v13

    .line 194
    move-wide/from16 v13, v26

    .line 196
    move/from16 v27, v15

    .line 198
    move/from16 v26, v16

    .line 200
    move-wide/from16 v15, v18

    .line 202
    move/from16 v18, v26

    .line 204
    move/from16 v19, v27

    .line 206
    move-wide/from16 v26, v28

    .line 208
    move-wide/from16 v28, v42

    .line 210
    invoke-static/range {v0 .. v33}, Lkx0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IDDDFJDDDIIIDDJJDIID)I

    .line 213
    move-result v0

    .line 214
    move-object/from16 v1, v44

    .line 216
    aput v0, v1, v40

    .line 218
    add-int/lit8 v12, v40, 0x1

    .line 220
    move-object/from16 v15, p1

    .line 222
    move-object/from16 v13, p2

    .line 224
    move-object v11, v1

    .line 225
    move/from16 v14, v34

    .line 227
    goto/16 :goto_0

    .line 229
    :cond_7
    move-object v1, v11

    .line 230
    move-object v0, v15

    .line 231
    invoke-static {v0, v1}, Lix0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 234
    move-result v0

    .line 235
    goto :goto_8

    .line 236
    :cond_8
    const/4 v0, -0x1

    .line 237
    :goto_8
    return v0
.end method
