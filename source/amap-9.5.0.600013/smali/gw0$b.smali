.class public Lgw0$b;
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
    iput-object p1, p0, Lgw0$b;->d:Lgw0;

    .line 3
    invoke-direct {p0, p1, p2}, Lgw0$e;-><init>(Lgw0;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
    .locals 41

    .line 1
    move-object/from16 v0, p1

    .line 3
    const/4 v15, -0x1

    .line 4
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    new-array v14, v1, [I

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v12, 0x0

    .line 12
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    if-ge v12, v1, :cond_2

    .line 18
    move-object/from16 v13, p2

    .line 20
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Llp0;

    .line 26
    iget-object v2, v1, Llp0;->a:Ljava/lang/Object;

    .line 28
    move-object v10, v2

    .line 29
    check-cast v10, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 31
    iget-wide v8, v1, Llp0;->b:J

    .line 33
    iget-wide v6, v1, Llp0;->c:J

    .line 35
    if-nez v10, :cond_0

    .line 37
    move/from16 v39, v12

    .line 39
    move-object v2, v14

    .line 40
    :goto_1
    const/4 v8, -0x1

    .line 41
    goto/16 :goto_2

    .line 43
    :cond_0
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getLocationTickTime()J

    .line 50
    move-result-wide v16

    .line 51
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 54
    move-result-wide v18

    .line 55
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 58
    move-result-wide v20

    .line 59
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 62
    move-result-wide v22

    .line 63
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 66
    move-result v24

    .line 67
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getBearing()F

    .line 70
    move-result v25

    .line 71
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 74
    move-result v26

    .line 75
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getVerticalAccuracyMeters()F

    .line 78
    move-result v27

    .line 79
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getSpeedAccuracyMetersPerSecond()F

    .line 82
    move-result v28

    .line 83
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getBearingAccuracyDegrees()F

    .line 86
    move-result v29

    .line 87
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getType()I

    .line 90
    move-result v30

    .line 91
    const-string v1, "satelliteCount"

    .line 93
    invoke-virtual {v10, v1, v15}, Lcom/amap/location/type/location/Location;->getOptAttrInt(Ljava/lang/String;I)I

    .line 96
    move-result v31

    .line 97
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getDiagnosisType()I

    .line 100
    move-result v1

    .line 101
    int-to-byte v11, v1

    .line 102
    invoke-virtual {v10}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 105
    move-result v32

    .line 106
    move-object/from16 v1, p1

    .line 108
    move-wide v4, v8

    .line 109
    move-wide/from16 v33, v6

    .line 111
    move-wide/from16 v6, v16

    .line 113
    move-wide/from16 v35, v8

    .line 115
    move-wide/from16 v8, v18

    .line 117
    move-object/from16 v37, v10

    .line 119
    move/from16 v38, v11

    .line 121
    move-wide/from16 v10, v20

    .line 123
    move/from16 v39, v12

    .line 125
    move-wide/from16 v12, v22

    .line 127
    move-object/from16 v40, v14

    .line 129
    move/from16 v14, v24

    .line 131
    move/from16 v15, v25

    .line 133
    move/from16 v16, v26

    .line 135
    move/from16 v17, v27

    .line 137
    move/from16 v18, v28

    .line 139
    move/from16 v19, v29

    .line 141
    move/from16 v20, v30

    .line 143
    move/from16 v21, v31

    .line 145
    move/from16 v22, v38

    .line 147
    move/from16 v23, v32

    .line 149
    invoke-static/range {v1 .. v23}, Llu0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;JJJDDDFFFFFFIIBI)I

    .line 152
    move-result v1

    .line 153
    if-lez v1, :cond_1

    .line 155
    const/4 v2, 0x1

    .line 156
    invoke-static {v0, v2, v1}, Lmx0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I

    .line 159
    move-result v6

    .line 160
    const-string v1, "scence"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    move-object/from16 v2, v37

    .line 164
    const/4 v8, -0x1

    .line 165
    :try_start_1
    invoke-virtual {v2, v1, v8}, Lcom/amap/location/type/location/Location;->getOptAttrInt(Ljava/lang/String;I)I

    .line 168
    move-result v1

    .line 169
    const-string v3, "confidence"

    .line 171
    invoke-virtual {v2, v3, v8}, Lcom/amap/location/type/location/Location;->getOptAttrInt(Ljava/lang/String;I)I

    .line 174
    move-result v3

    .line 175
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getIod()I

    .line 178
    move-result v4

    .line 179
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getIodConfidence()I

    .line 182
    move-result v2

    .line 183
    invoke-static {v0, v1, v3, v4, v2}, Lpw0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IIII)I

    .line 186
    move-result v7

    .line 187
    move-object/from16 v1, p1

    .line 189
    move-wide/from16 v2, v33

    .line 191
    move-wide/from16 v4, v35

    .line 193
    invoke-static/range {v1 .. v7}, Lrq0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;JJII)I

    .line 196
    move-result v1

    .line 197
    move-object/from16 v2, v40

    .line 199
    aput v1, v2, v39

    .line 201
    goto :goto_2

    .line 202
    :cond_1
    move-object/from16 v2, v40

    .line 204
    goto/16 :goto_1

    .line 206
    :goto_2
    add-int/lit8 v12, v39, 0x1

    .line 208
    move-object v14, v2

    .line 209
    const/4 v15, -0x1

    .line 210
    goto/16 :goto_0

    .line 212
    :cond_2
    move-object v2, v14

    .line 213
    const/4 v8, -0x1

    .line 214
    invoke-static {v0, v2}, Lwp0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 217
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    goto :goto_5

    .line 222
    :catch_0
    move-exception v0

    .line 223
    goto :goto_4

    .line 224
    :catch_1
    move-exception v0

    .line 225
    goto :goto_3

    .line 226
    :catch_2
    move-exception v0

    .line 227
    const/4 v8, -0x1

    .line 228
    :goto_3
    const/4 v15, -0x1

    .line 229
    :goto_4
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 232
    :goto_5
    return v15
.end method
