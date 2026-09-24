.class public Lcom/amap/location/e/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/e/a/a;)V
    .locals 25

    .line 1
    const-string v1, "gnssdrift"

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 6
    move-result v0

    .line 7
    const/16 v2, 0x1a

    .line 9
    if-ge v0, v2, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_11

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    if-gtz v2, :cond_1

    .line 24
    goto/16 :goto_4

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v2

    .line 30
    const/4 v10, 0x1

    .line 31
    sub-int/2addr v2, v10

    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/amap/location/e/a/b/b;

    .line 38
    if-eqz v2, :cond_11

    .line 40
    iget-object v3, v2, Lcom/amap/location/e/a/b/b;->b:Ljava/util/List;

    .line 42
    if-eqz v3, :cond_11

    .line 44
    iget-object v3, v2, Lcom/amap/location/e/a/b/b;->a:Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    .line 46
    if-nez v3, :cond_2

    .line 48
    goto/16 :goto_4

    .line 50
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->l()Lcom/amap/location/support/bean/location/AmapLocation;

    .line 53
    move-result-object v20

    .line 54
    if-nez v20, :cond_3

    .line 56
    const-string v0, "gnss drift no gps"

    .line 58
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 62
    :cond_3
    const-string v3, "request_agnss_drift_count"

    .line 64
    invoke-static {v3}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 74
    move-result-wide v21

    .line 75
    const-string v3, "spp"

    .line 77
    sget-object v4, Lcom/amap/location/e/a/d;->B:Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 83
    const-wide/high16 v23, -0x3fdc000000000000L    # -10.0

    .line 85
    if-eqz v3, :cond_7

    .line 87
    const/4 v11, 0x0

    .line 88
    const/16 v16, 0x0

    .line 90
    const/16 v17, 0x0

    .line 92
    const/16 v18, 0x1

    .line 94
    const/16 v19, 0x0

    .line 96
    move-wide/from16 v12, v21

    .line 98
    move-object v14, v2

    .line 99
    move-object/from16 v15, v20

    .line 101
    invoke-static/range {v11 .. v19}, Lcom/amap/location/e/a/b/c;->a(IJLcom/amap/location/e/a/b/b;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;ZI[D)Lcom/amap/location/e/a/b/a;

    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_4

    .line 107
    return-void

    .line 108
    :cond_4
    const/4 v11, 0x0

    .line 109
    const/16 v16, 0x0

    .line 111
    const/16 v17, 0x0

    .line 113
    const/16 v18, 0x2

    .line 115
    const/16 v19, 0x0

    .line 117
    move-wide/from16 v12, v21

    .line 119
    move-object v14, v2

    .line 120
    move-object/from16 v15, v20

    .line 122
    invoke-static/range {v11 .. v19}, Lcom/amap/location/e/a/b/c;->a(IJLcom/amap/location/e/a/b/b;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;ZI[D)Lcom/amap/location/e/a/b/a;

    .line 125
    move-result-object v2

    .line 126
    if-nez v2, :cond_5

    .line 128
    return-void

    .line 129
    :cond_5
    iget-object v2, v2, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 131
    if-eqz v2, :cond_6

    .line 133
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getSpeedAccuracyMetersPerSecond()F

    .line 136
    move-result v2

    .line 137
    float-to-double v4, v2

    .line 138
    move-object v13, v3

    .line 139
    move-wide/from16 v23, v4

    .line 141
    goto :goto_0

    .line 142
    :cond_6
    move-object v13, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_7
    const/4 v7, 0x0

    .line 145
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x1

    .line 147
    move-wide/from16 v3, v21

    .line 149
    move-object v5, v0

    .line 150
    move-object/from16 v6, v20

    .line 152
    invoke-static/range {v3 .. v9}, Lcom/amap/location/e/a/b/c;->a(JLjava/util/List;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;ZZ)Lcom/amap/location/e/a/b/a;

    .line 155
    move-result-object v2

    .line 156
    if-nez v2, :cond_8

    .line 158
    return-void

    .line 159
    :cond_8
    iget-object v3, v2, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 161
    if-eqz v3, :cond_9

    .line 163
    iget-wide v3, v2, Lcom/amap/location/e/a/b/a;->i:D

    .line 165
    move-object v13, v2

    .line 166
    move-wide/from16 v23, v3

    .line 168
    goto :goto_0

    .line 169
    :cond_9
    move-object v13, v2

    .line 170
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    .line 173
    move-result-object v2

    .line 174
    const/4 v3, 0x2

    .line 175
    const/4 v4, 0x0

    .line 176
    if-eqz v2, :cond_c

    .line 178
    iget-object v5, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 180
    if-eqz v5, :cond_c

    .line 182
    iget-object v6, v13, Lcom/amap/location/e/a/b/a;->b:[I

    .line 184
    aget v7, v6, v4

    .line 186
    if-ne v7, v10, :cond_c

    .line 188
    aget v6, v6, v10

    .line 190
    if-ne v6, v10, :cond_c

    .line 192
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getSpeedAccuracyMetersPerSecond()F

    .line 195
    move-result v5

    .line 196
    float-to-double v5, v5

    .line 197
    const-wide/16 v7, 0x0

    .line 199
    cmpl-double v9, v5, v7

    .line 201
    if-lez v9, :cond_c

    .line 203
    cmpl-double v5, v23, v7

    .line 205
    if-lez v5, :cond_c

    .line 207
    const-string v5, "tkf"

    .line 209
    sget-object v6, Lcom/amap/location/e/a/d;->B:Ljava/lang/String;

    .line 211
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_b

    .line 217
    iget v5, v13, Lcom/amap/location/e/a/b/a;->c:I

    .line 219
    if-nez v5, :cond_b

    .line 221
    iget-object v5, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 223
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getSpeedAccuracyMetersPerSecond()F

    .line 226
    move-result v5

    .line 227
    float-to-double v5, v5

    .line 228
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 230
    cmpl-double v9, v5, v7

    .line 232
    if-gtz v9, :cond_a

    .line 234
    iget v5, v13, Lcom/amap/location/e/a/b/a;->g:I

    .line 236
    const/16 v6, 0xa

    .line 238
    if-lt v5, v6, :cond_a

    .line 240
    iget-object v5, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 242
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 245
    move-result v5

    .line 246
    float-to-double v5, v5

    .line 247
    const-wide v7, 0x400ccccccccccccdL    # 3.6

    .line 252
    mul-double v5, v5, v7

    .line 254
    const-wide/high16 v7, 0x405e000000000000L    # 120.0

    .line 256
    cmpl-double v9, v5, v7

    .line 258
    if-lez v9, :cond_b

    .line 260
    :cond_a
    const v2, 0x18984

    .line 263
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 266
    goto :goto_1

    .line 267
    :cond_b
    iget-object v5, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 269
    const-string v6, "chipSpeedConfidence"

    .line 271
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v5, v6, v7}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    iget-object v5, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 280
    const-string v6, "softGnssType"

    .line 282
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    move-result-object v7

    .line 286
    invoke-virtual {v5, v6, v7}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    const-string v5, "agnss_drift_count"

    .line 291
    invoke-static {v5}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 294
    iget-object v5, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 296
    const/4 v6, -0x1

    .line 297
    invoke-interface {v2, v6, v5}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    .line 300
    const v2, 0x18982

    .line 303
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 306
    goto :goto_1

    .line 307
    :cond_c
    const v2, 0x18983

    .line 310
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 313
    :goto_1
    iget-object v2, v13, Lcom/amap/location/e/a/b/a;->b:[I

    .line 315
    invoke-static {v2}, Lcom/amap/location/e/a/b/c;->b([I)Z

    .line 318
    move-result v2

    .line 319
    sget v5, Lcom/amap/location/e/a/d;->E:I

    .line 321
    if-nez v5, :cond_d

    .line 323
    if-eqz v2, :cond_12

    .line 325
    :cond_d
    if-eq v5, v3, :cond_f

    .line 327
    if-eqz v2, :cond_e

    .line 329
    goto :goto_2

    .line 330
    :cond_e
    const/4 v10, 0x0

    .line 331
    :cond_f
    :goto_2
    if-eqz v10, :cond_10

    .line 333
    goto :goto_3

    .line 334
    :cond_10
    const/4 v0, 0x0

    .line 335
    :goto_3
    move-object v14, v0

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->n()J

    .line 339
    move-result-wide v16

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->a()J

    .line 343
    move-result-wide v18

    .line 344
    move-wide/from16 v11, v21

    .line 346
    move-object/from16 v15, v20

    .line 348
    move-wide/from16 v20, v23

    .line 350
    invoke-static/range {v11 .. v21}, Lcom/amap/location/e/c/c;->a(JLcom/amap/location/e/a/b/a;Ljava/util/List;Lcom/amap/location/support/bean/location/AmapLocation;JJD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_5

    .line 354
    :cond_11
    :goto_4
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    :cond_12
    :goto_5
    return-void
.end method
