.class public Lcom/amap/location/fusion/util/AmapExtraUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static getDefaultExtra()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/fusion/util/AmapExtraUtil;->initHeaderConfig()V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-static {v0}, Lcom/amap/location/fusion/util/AmapExtraUtil;->validateExtra(Lorg/json/JSONObject;)V

    .line 12
    return-object v0
.end method

.method public static initHeaderConfig()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/amap/location/fusion/b/a;->l()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setAdiu(Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/amap/location/fusion/b/a;->k()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setTid(Ljava/lang/String;)V

    .line 35
    :cond_1
    return-void
.end method

.method public static updateHeaderConfig(Lorg/json/JSONObject;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "aosextra"

    .line 5
    const-string v2, "stepid"

    .line 7
    const-string v3, "session"

    .line 9
    const-string v4, "adcode"

    .line 11
    const-string v5, "tid"

    .line 13
    const-string v6, ""

    .line 15
    if-nez v1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    .line 20
    const/16 v8, 0x64

    .line 22
    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 25
    const-string v9, "p"

    .line 27
    const-string v10, "v"

    .line 29
    const-string v11, "e"

    .line 31
    const-string v12, "d"

    .line 33
    const-string v13, "c"

    .line 35
    const-string v14, "u"

    .line 37
    const-string v15, "u2"

    .line 39
    const-string v16, "u3"

    .line 41
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 44
    move-result-object v8

    .line 45
    const-string v9, "channel"

    .line 47
    const-string v10, "cifa"

    .line 49
    const-string v11, "from"

    .line 51
    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    .line 54
    move-result-object v12

    .line 55
    :try_start_0
    const-string v13, "adiu"

    .line 57
    invoke-virtual {v1, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v13

    .line 61
    invoke-static {v13}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 64
    move-result v14

    .line 65
    if-nez v14, :cond_1

    .line 67
    invoke-static {v13}, Lcom/amap/location/support/header/HeaderConfig;->setAdiu(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v13

    .line 74
    invoke-static {v13}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 77
    move-result v14

    .line 78
    const/4 v15, 0x0

    .line 79
    if-nez v14, :cond_2

    .line 81
    invoke-static {v13}, Lcom/amap/location/support/header/HeaderConfig;->setAdCode(Ljava/lang/String;)V

    .line 84
    invoke-static {v4, v15, v15, v6}, Lcom/amap/location/support/app/MessageCenter;->sendCommand(Ljava/lang/String;IILjava/lang/String;)V

    .line 87
    :cond_2
    const-string v4, "oaid"

    .line 89
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v4

    .line 93
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 96
    move-result v13

    .line 97
    if-nez v13, :cond_3

    .line 99
    invoke-static {v4}, Lcom/amap/location/support/header/HeaderConfig;->setOaid(Ljava/lang/String;)V

    .line 102
    :cond_3
    const-string v4, "piv"

    .line 104
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 111
    move-result v6

    .line 112
    if-nez v6, :cond_4

    .line 114
    invoke-static {v4}, Lcom/amap/location/support/header/HeaderConfig;->setPiv(Ljava/lang/String;)V

    .line 117
    :cond_4
    invoke-static {v1, v3}, Lcom/amap/location/fusion/util/AmapExtraUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_5

    .line 123
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    invoke-static {v3}, Lcom/amap/location/support/header/HeaderConfig;->setSession(Ljava/lang/String;)V

    .line 130
    goto :goto_0

    .line 131
    :cond_5
    invoke-static {}, Lcom/amap/location/fusion/b/a;->a()Ljava/lang/String;

    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/amap/location/support/header/HeaderConfig;->setSession(Ljava/lang/String;)V

    .line 138
    :goto_0
    invoke-static {}, Lcom/amap/location/fusion/b/a;->b()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    invoke-static {v3}, Lcom/amap/location/support/header/HeaderConfig;->setSpm(Ljava/lang/String;)V

    .line 145
    invoke-static {v1, v2}, Lcom/amap/location/fusion/util/AmapExtraUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_6

    .line 151
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Lcom/amap/location/support/header/HeaderConfig;->setStepid(Ljava/lang/String;)V

    .line 158
    :cond_6
    invoke-static {v1, v5}, Lcom/amap/location/fusion/util/AmapExtraUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_7

    .line 164
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    invoke-static {v2}, Lcom/amap/location/support/header/HeaderConfig;->setTid(Ljava/lang/String;)V

    .line 171
    :cond_7
    invoke-static {v1, v0}, Lcom/amap/location/fusion/util/AmapExtraUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_e

    .line 177
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 180
    move-result-object v0

    .line 181
    const/4 v2, 0x0

    .line 182
    :goto_1
    const/16 v3, 0x8

    .line 184
    if-ge v2, v3, :cond_9

    .line 186
    aget-object v3, v8, v2

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v6, "di"

    .line 195
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v3

    .line 205
    invoke-static {v0, v3}, Lcom/amap/location/fusion/util/AmapExtraUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_8

    .line 211
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 223
    goto :goto_1

    .line 224
    :cond_9
    :goto_2
    const/4 v2, 0x3

    .line 225
    if-ge v15, v2, :cond_b

    .line 227
    aget-object v2, v12, v15

    .line 229
    invoke-static {v0, v2}, Lcom/amap/location/fusion/util/AmapExtraUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_a

    .line 235
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 247
    goto :goto_2

    .line 248
    :cond_b
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 251
    move-result-object v2

    .line 252
    :goto_3
    if-eqz v2, :cond_c

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_c

    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    move-result-object v4

    .line 270
    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    goto :goto_3

    .line 274
    :cond_c
    invoke-static {v7}, Lcom/amap/location/support/header/HeaderConfig;->setExtra(Ljava/util/Map;)V

    .line 277
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_d

    .line 283
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    move-result-object v2

    .line 287
    invoke-static {v2}, Lcom/amap/location/support/header/HeaderConfig;->setTid(Ljava/lang/String;)V

    .line 290
    :cond_d
    const-string v2, "appkey"

    .line 292
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setAppKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_4

    .line 300
    :catch_0
    move-exception v0

    .line 301
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 304
    :cond_e
    :goto_4
    const-string v0, "dic"

    .line 306
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 310
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDic()Ljava/lang/String;

    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    move-result v2

    .line 318
    if-nez v2, :cond_f

    .line 320
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDic(Ljava/lang/String;)V

    .line 323
    const-string v2, "channel_dic"

    .line 325
    invoke-static {v2, v0}, Lcom/amap/location/support/app/GlobalStorageSync;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_f
    const-string v0, "dip"

    .line 330
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDip(Ljava/lang/String;)V

    .line 337
    const-string v0, "div"

    .line 339
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDiv(Ljava/lang/String;)V

    .line 346
    const-string v0, "die"

    .line 348
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDie(Ljava/lang/String;)V

    .line 355
    const-string v0, "did"

    .line 357
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 361
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDid(Ljava/lang/String;)V

    .line 364
    const-string v0, "diu"

    .line 366
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 370
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDiu(Ljava/lang/String;)V

    .line 373
    const-string v0, "diu2"

    .line 375
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    move-result-object v0

    .line 379
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDiu2(Ljava/lang/String;)V

    .line 382
    const-string v0, "diu3"

    .line 384
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDiu3(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setChannel(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 402
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setCifa(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setFrom(Ljava/lang/String;)V

    .line 412
    const-string v0, "dibv"

    .line 414
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 417
    move-result v2

    .line 418
    if-eqz v2, :cond_10

    .line 420
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    move-result-object v0

    .line 424
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderConfig;->setDibv(Ljava/lang/String;)V

    .line 427
    :cond_10
    const-string v0, "loc_scene"

    .line 429
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_11

    .line 435
    const-string v2, "0"

    .line 437
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    move-result-object v0

    .line 441
    sput-object v0, Lcom/amap/location/support/constants/AmapConstants;->AMAP_LOC_SCENE:Ljava/lang/String;

    .line 443
    :cond_11
    const-string v0, "drive_mode"

    .line 445
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 448
    move-result v2

    .line 449
    if-eqz v2, :cond_12

    .line 451
    const-string v2, "-1"

    .line 453
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    move-result-object v0

    .line 457
    sput-object v0, Lcom/amap/location/support/constants/AmapConstants;->AMAP_DRIVE_MODE:Ljava/lang/String;

    .line 459
    :cond_12
    return-void
.end method

.method public static validateExtra(Lorg/json/JSONObject;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "autoup"

    .line 5
    const-string v2, "wait1stwifi"

    .line 7
    const-string v3, "reversegeo"

    .line 9
    const-string v4, "from"

    .line 11
    const-string v5, "did"

    .line 13
    const-string v6, "die"

    .line 15
    const-string v7, "cifa"

    .line 17
    const-string v8, "diu3"

    .line 19
    const-string v9, "diu2"

    .line 21
    const-string v10, "dic"

    .line 23
    const-string v11, "dibv"

    .line 25
    const-string v12, "div"

    .line 27
    const-string v13, "dip"

    .line 29
    const-string v14, "channel"

    .line 31
    const-string v15, "tid"

    .line 33
    move-object/from16 v16, v1

    .line 35
    const-string v1, "diu"

    .line 37
    move-object/from16 v17, v2

    .line 39
    const-string v2, "adiu"

    .line 41
    move-object/from16 v18, v3

    .line 43
    const-string v3, "0"

    .line 45
    move-object/from16 v19, v3

    .line 47
    const-string v3, ""

    .line 49
    :try_start_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v20

    .line 53
    invoke-static/range {v20 .. v20}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 56
    move-result v20

    .line 57
    if-eqz v20, :cond_0

    .line 59
    move-object/from16 v20, v4

    .line 61
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object/from16 v20, v4

    .line 71
    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 81
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_1
    invoke-virtual {v0, v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 98
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_2
    invoke-virtual {v0, v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_3

    .line 115
    invoke-static {}, Lcom/amap/location/fusion/b/a;->c()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_3
    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 129
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const-string v2, "UTF-8"

    .line 132
    if-eqz v1, :cond_4

    .line 134
    :try_start_1
    invoke-static {}, Lcom/amap/location/fusion/b/a;->d()Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_4
    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_5

    .line 155
    invoke-static {}, Lcom/amap/location/fusion/b/a;->e()Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_5
    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_6

    .line 176
    invoke-static {}, Lcom/amap/location/fusion/b/a;->f()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_6
    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_7

    .line 197
    invoke-static {}, Lcom/amap/location/fusion/b/a;->g()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_7
    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_8

    .line 218
    invoke-static {}, Lcom/amap/location/fusion/b/a;->h()Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    :cond_8
    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 233
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_9

    .line 239
    invoke-static {}, Lcom/amap/location/fusion/b/a;->i()Ljava/lang/String;

    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_9
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_a

    .line 260
    invoke-static {}, Lcom/amap/location/fusion/b/a;->j()Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    :cond_a
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 270
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    const-string v2, "Unknown"

    .line 273
    if-nez v1, :cond_b

    .line 275
    :try_start_2
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    :cond_b
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_c

    .line 284
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_c
    move-object/from16 v1, v20

    .line 289
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_d

    .line 295
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    :cond_d
    const-string v1, "netloc"

    .line 300
    move-object/from16 v2, v19

    .line 302
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v1, "gpsstatus"

    .line 307
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v1, "nbssid"

    .line 312
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    move-object/from16 v1, v18

    .line 317
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 320
    move-result v3

    .line 321
    if-nez v3, :cond_e

    .line 323
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    :cond_e
    move-object/from16 v1, v17

    .line 328
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 331
    move-result v3

    .line 332
    if-nez v3, :cond_f

    .line 334
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_f
    move-object/from16 v1, v16

    .line 339
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 342
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    const-string v4, "1"

    .line 345
    if-nez v3, :cond_10

    .line 347
    :try_start_3
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    :cond_10
    const-string v1, "fetchoffdatamobile"

    .line 352
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 355
    move-result v1

    .line 356
    if-nez v1, :cond_11

    .line 358
    const-string v1, "fetchoffdatamobile"

    .line 360
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_11
    const-string v1, "enableofflineloc"

    .line 365
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_12

    .line 371
    const-string v1, "enableofflineloc"

    .line 373
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    :cond_12
    const-string v1, "upcolmobile"

    .line 378
    const/4 v3, 0x1

    .line 379
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string v1, "enablegetreq"

    .line 384
    const/4 v3, 0x1

    .line 385
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    const-string v1, "loc_scene"

    .line 390
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_13

    .line 396
    const-string v1, "loc_scene"

    .line 398
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 401
    :catch_0
    :cond_13
    return-void
.end method
