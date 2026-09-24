.class public Lcom/amap/location/fusion/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/amap/location/g/b$b;
    .locals 1

    .line 15
    new-instance v0, Lcom/amap/location/g/b$b;

    invoke-direct {v0}, Lcom/amap/location/g/b$b;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/amap/location/fusion/b/c;->b(Lorg/json/JSONObject;)Lcom/amap/location/protocol/e;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/location/g/b$b;->a:Lcom/amap/location/protocol/e;

    return-object v0
.end method

.method public static a()Lcom/amap/location/i/c;
    .locals 3

    .line 17
    new-instance v0, Lcom/amap/location/i/c;

    invoke-direct {v0}, Lcom/amap/location/i/c;-><init>()V

    .line 18
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/c;->f:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/c;->g:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getImsi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/c;->h:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/c;->i:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v1

    iput-byte v1, v0, Lcom/amap/location/i/c;->c:B

    .line 23
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/c;->e:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getLicense()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/c;->j:Ljava/lang/String;

    const-string v1, "com.amap.location.offline.flp.LocationProvider"

    const-string v2, "com.amap.location.offline.nlp.LocationProvider"

    .line 25
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/c;->m:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lcom/amap/location/i/c;->l:Z

    .line 27
    new-instance v1, Lcom/amap/location/fusion/b/c$2;

    invoke-direct {v1}, Lcom/amap/location/fusion/b/c$2;-><init>()V

    iput-object v1, v0, Lcom/amap/location/i/c;->n:Lcom/amap/location/i/c$b;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/location/g/b$a;Lcom/amap/location/fusion/b/d;)V
    .locals 8

    const-string v0, "wifiScanEnable"

    const-string v1, "wifiScanEnabledOnColdBootFirstRequest"

    const-string v2, "cacheEnable"

    const-string v3, "isoverseas"

    const-string v4, "reversegeo"

    const-string v5, "multi"

    .line 1
    :try_start_0
    invoke-static {p0, v5}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "1"

    if-eqz v6, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p1, Lcom/amap/location/g/b$a;->a:Z

    .line 3
    :cond_0
    invoke-static {p0, v4}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/amap/location/g/b$a;->b:Z

    .line 5
    :cond_1
    invoke-static {p0, v3}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 7
    sput-boolean v3, Lcom/amap/location/protocol/b/a;->a:Z

    .line 8
    :cond_2
    invoke-static {p0, v2}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amap/location/fusion/b/d;->d(Z)V

    .line 10
    :cond_3
    invoke-static {p0, v1}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amap/location/fusion/b/d;->e(Z)V

    .line 12
    :cond_4
    invoke-static {p0, v0}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/amap/location/fusion/b/d;->g(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/amap/location/protocol/e;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "diu2"

    .line 5
    const-string v2, "diu"

    .line 7
    const-string v3, "dic"

    .line 9
    const-string v4, "did"

    .line 11
    const-string v5, "die"

    .line 13
    const-string v6, "div"

    .line 15
    const-string v7, "dip"

    .line 17
    const-string v8, "aosextra"

    .line 19
    const-string v9, "loc_scene"

    .line 21
    const-string v10, "dibv"

    .line 23
    const-string v11, "stepid"

    .line 25
    const-string v12, "session"

    .line 27
    const-string v13, "from"

    .line 29
    const-string v14, "cifa"

    .line 31
    const-string v15, "channel"

    .line 33
    move-object/from16 v16, v9

    .line 35
    const-string v9, "tid"

    .line 37
    move-object/from16 v17, v10

    .line 39
    new-instance v10, Ljava/util/HashMap;

    .line 41
    move-object/from16 v18, v1

    .line 43
    const/16 v1, 0x64

    .line 45
    invoke-direct {v10, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 48
    move-object/from16 v19, v10

    .line 50
    new-instance v10, Ljava/util/HashMap;

    .line 52
    invoke-direct {v10, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 55
    :try_start_0
    const-string v1, "Unknown"

    .line 57
    move-object/from16 v20, v1

    .line 59
    const/16 v1, 0x8

    .line 61
    move-object/from16 v21, v2

    .line 63
    new-array v2, v1, [Ljava/lang/String;

    .line 65
    const-string v22, "p"

    .line 67
    const/16 v23, 0x0

    .line 69
    aput-object v22, v2, v23

    .line 71
    const-string v22, "v"

    .line 73
    const/16 v24, 0x1

    .line 75
    aput-object v22, v2, v24

    .line 77
    const-string v22, "e"

    .line 79
    const/16 v25, 0x2

    .line 81
    aput-object v22, v2, v25

    .line 83
    const-string v22, "d"

    .line 85
    const/4 v1, 0x3

    .line 86
    aput-object v22, v2, v1

    .line 88
    const-string v22, "c"

    .line 90
    const/16 v27, 0x4

    .line 92
    aput-object v22, v2, v27

    .line 94
    const-string v22, "u"

    .line 96
    const/16 v27, 0x5

    .line 98
    aput-object v22, v2, v27

    .line 100
    const-string v22, "u2"

    .line 102
    const/16 v27, 0x6

    .line 104
    aput-object v22, v2, v27

    .line 106
    const-string v22, "u3"

    .line 108
    const/16 v27, 0x7

    .line 110
    aput-object v22, v2, v27

    .line 112
    move-object/from16 v22, v3

    .line 114
    new-array v3, v1, [Ljava/lang/String;

    .line 116
    aput-object v15, v3, v23

    .line 118
    aput-object v14, v3, v24

    .line 120
    aput-object v13, v3, v25

    .line 122
    invoke-static {v0, v12}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 125
    move-result v24

    .line 126
    if-eqz v24, :cond_0

    .line 128
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v24

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/amap/location/fusion/b/a;->a()Ljava/lang/String;

    .line 136
    move-result-object v24

    .line 137
    :goto_0
    move-object/from16 v28, v24

    .line 139
    invoke-static {}, Lcom/amap/location/fusion/b/a;->b()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v11}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 146
    move-result v25

    .line 147
    if-eqz v25, :cond_1

    .line 149
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v20

    .line 153
    :cond_1
    move-object/from16 v29, v20

    .line 155
    invoke-static {v0, v9}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 158
    move-result v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    const-string v25, ""

    .line 161
    if-eqz v20, :cond_2

    .line 163
    :try_start_1
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v20

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    move-object/from16 v20, v25

    .line 170
    :goto_1
    invoke-static {v0, v8}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 173
    move-result v27

    .line 174
    if-eqz v27, :cond_9

    .line 176
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 179
    move-result-object v8

    .line 180
    move-object/from16 v26, v1

    .line 182
    move-object/from16 v27, v11

    .line 184
    const/16 v1, 0x8

    .line 186
    const/4 v11, 0x0

    .line 187
    :goto_2
    if-ge v11, v1, :cond_4

    .line 189
    aget-object v1, v2, v11

    .line 191
    move-object/from16 v31, v2

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    move-object/from16 v32, v12

    .line 200
    const-string v12, "di"

    .line 202
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    invoke-static {v8, v1}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_3

    .line 218
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 230
    move-object/from16 v2, v31

    .line 232
    move-object/from16 v12, v32

    .line 234
    const/16 v1, 0x8

    .line 236
    goto :goto_2

    .line 237
    :cond_4
    move-object/from16 v32, v12

    .line 239
    const/4 v1, 0x0

    .line 240
    const/4 v2, 0x3

    .line 241
    :goto_3
    if-ge v1, v2, :cond_6

    .line 243
    aget-object v11, v3, v1

    .line 245
    invoke-static {v8, v11}, Lcom/amap/location/fusion/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 248
    move-result v12

    .line 249
    if-eqz v12, :cond_5

    .line 251
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    move-result-object v12

    .line 255
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 263
    goto :goto_3

    .line 264
    :cond_6
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 267
    move-result-object v1

    .line 268
    :goto_4
    if-eqz v1, :cond_7

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_7

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Ljava/lang/String;

    .line 282
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object v3

    .line 286
    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    goto :goto_4

    .line 290
    :cond_7
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_8

    .line 296
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    move-result-object v20

    .line 300
    :cond_8
    const-string v1, "appkey"

    .line 302
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    move-result-object v1

    .line 306
    move-object/from16 v2, v20

    .line 308
    goto :goto_5

    .line 309
    :cond_9
    move-object/from16 v26, v1

    .line 311
    move-object/from16 v27, v11

    .line 313
    move-object/from16 v32, v12

    .line 315
    move-object/from16 v2, v20

    .line 317
    move-object/from16 v1, v25

    .line 319
    :goto_5
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v8

    .line 327
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    move-result-object v11

    .line 331
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 335
    move-object/from16 v20, v10

    .line 337
    move-object/from16 v10, v22

    .line 339
    move-object/from16 v22, v1

    .line 341
    :try_start_2
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    move-result-object v1

    .line 345
    move-object/from16 v23, v2

    .line 347
    move-object/from16 v2, v21

    .line 349
    move-object/from16 v21, v9

    .line 351
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    move-result-object v9

    .line 355
    move-object/from16 v24, v2

    .line 357
    move-object/from16 v2, v18

    .line 359
    move-object/from16 v18, v9

    .line 361
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    move-result-object v9

    .line 365
    move-object/from16 v30, v2

    .line 367
    const-string v2, "diu3"

    .line 369
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    move-result-object v2

    .line 373
    move-object/from16 v31, v2

    .line 375
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    move-result-object v2

    .line 379
    move-object/from16 v33, v2

    .line 381
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    move-result-object v2

    .line 385
    move-object/from16 v34, v2

    .line 387
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    move-result-object v2

    .line 391
    move-object/from16 v35, v2

    .line 393
    move-object/from16 v2, v17

    .line 395
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 398
    move-result v17

    .line 399
    if-eqz v17, :cond_a

    .line 401
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    move-result-object v25

    .line 405
    :cond_a
    move-object/from16 v17, v13

    .line 407
    move-object/from16 v13, v25

    .line 409
    move-object/from16 v25, v14

    .line 411
    move-object/from16 v14, v16

    .line 413
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 416
    move-result v16

    .line 417
    if-eqz v16, :cond_b

    .line 419
    move-object/from16 v16, v15

    .line 421
    const-string v15, "0"

    .line 423
    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    move-result-object v15

    .line 427
    sput-object v15, Lcom/amap/location/support/constants/AmapConstants;->AMAP_LOC_SCENE:Ljava/lang/String;

    .line 429
    goto :goto_6

    .line 430
    :cond_b
    move-object/from16 v16, v15

    .line 432
    :goto_6
    const-string v15, "drive_mode"

    .line 434
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 437
    move-result v15

    .line 438
    if-eqz v15, :cond_c

    .line 440
    const-string v15, "drive_mode"

    .line 442
    move-object/from16 v36, v14

    .line 444
    const-string v14, "-1"

    .line 446
    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    move-result-object v14

    .line 450
    sput-object v14, Lcom/amap/location/support/constants/AmapConstants;->AMAP_DRIVE_MODE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 452
    goto :goto_7

    .line 453
    :cond_c
    move-object/from16 v36, v14

    .line 455
    :goto_7
    move-object/from16 v14, v19

    .line 457
    move-object/from16 v15, v28

    .line 459
    move-object/from16 v0, v32

    .line 461
    :try_start_3
    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v0, "spm"

    .line 466
    move-object/from16 v15, v26

    .line 468
    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-interface {v14, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-interface {v14, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-interface {v14, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-interface {v14, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-interface {v14, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {v14, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    move-object/from16 v0, v18

    .line 491
    move-object/from16 v1, v24

    .line 493
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-object/from16 v0, v30

    .line 498
    invoke-interface {v14, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v0, "diu3"

    .line 503
    move-object/from16 v1, v31

    .line 505
    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    move-object/from16 v1, v16

    .line 510
    move-object/from16 v0, v33

    .line 512
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    move-object/from16 v1, v25

    .line 517
    move-object/from16 v0, v34

    .line 519
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    move-object/from16 v1, v17

    .line 524
    move-object/from16 v0, v35

    .line 526
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    move-object/from16 v1, v21

    .line 531
    move-object/from16 v0, v23

    .line 533
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    move-object/from16 v1, v27

    .line 538
    move-object/from16 v0, v29

    .line 540
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v0, "appkey"

    .line 545
    move-object/from16 v1, v22

    .line 547
    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/amap/location/support/constants/AmapConstants;->AMAP_LOC_SCENE:Ljava/lang/String;

    .line 552
    move-object/from16 v1, v36

    .line 554
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v0, "adiu"

    .line 559
    const-string v1, "adiu"

    .line 561
    move-object/from16 v2, p0

    .line 563
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 566
    move-result-object v1

    .line 567
    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v0, "autodiv"

    .line 572
    const-string v1, "autodiv"

    .line 574
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    move-result-object v1

    .line 578
    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 581
    goto :goto_a

    .line 582
    :catch_0
    move-exception v0

    .line 583
    goto :goto_9

    .line 584
    :catch_1
    move-exception v0

    .line 585
    goto :goto_8

    .line 586
    :catch_2
    move-exception v0

    .line 587
    move-object/from16 v20, v10

    .line 589
    :goto_8
    move-object/from16 v14, v19

    .line 591
    :goto_9
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 594
    :goto_a
    new-instance v0, Lcom/amap/location/fusion/b/c$1;

    .line 596
    move-object/from16 v1, v20

    .line 598
    invoke-direct {v0, v14, v1}, Lcom/amap/location/fusion/b/c$1;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 601
    return-object v0
.end method
