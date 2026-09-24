.class public abstract Lpc;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

.field public l:Ljava/util/List;

.field public m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

.field public n:Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lnc;->i()I

    .line 8
    move-result v1

    .line 9
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->requestId:I

    .line 11
    iget v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    .line 13
    invoke-virtual {p0, v1}, Lpc;->z(I)I

    .line 16
    move-result v1

    .line 17
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    .line 19
    invoke-static {}, Lib;->h()Z

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x6

    .line 24
    const/4 v4, 0x5

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x1

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x3

    .line 30
    if-eqz v2, :cond_9

    .line 32
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    .line 34
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;-><init>()V

    .line 37
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    .line 39
    packed-switch v2, :pswitch_data_0

    .line 42
    :pswitch_0
    const/4 v3, 0x3

    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v3, 0x5

    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    const/4 v3, 0x4

    .line 47
    goto :goto_0

    .line 48
    :pswitch_3
    const/4 v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :pswitch_4
    const/4 v3, 0x0

    .line 51
    goto :goto_0

    .line 52
    :pswitch_5
    const/4 v3, 0x2

    .line 53
    :goto_0
    :pswitch_6
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setActionType(I)V

    .line 56
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    .line 58
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setDev(I)V

    .line 61
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    .line 63
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setStrategy(I)V

    .line 66
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->newStrategy:I

    .line 68
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setNewStrategy(I)V

    .line 71
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sname:Ljava/lang/String;

    .line 73
    iget-object v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sPoiId:Ljava/lang/String;

    .line 75
    const-string v6, ""

    .line 77
    iget-wide v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slat:D

    .line 79
    iget-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slon:D

    .line 81
    move-object v3, p0

    .line 82
    invoke-virtual/range {v3 .. v10}, Lpc;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 85
    move-result-object v2

    .line 86
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    .line 88
    iget-object v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    .line 90
    iget-object v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->poiType:Ljava/lang/String;

    .line 92
    iget-wide v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 94
    iget-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    .line 96
    invoke-virtual/range {v3 .. v10}, Lpc;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 99
    move-result-object v3

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    .line 102
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidname:Ljava/lang/String;

    .line 107
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_0

    .line 113
    iget v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidtype:I

    .line 115
    if-lez v5, :cond_1

    .line 117
    :cond_0
    iget-object v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidname:Ljava/lang/String;

    .line 119
    iget-object v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fMidPoiId:Ljava/lang/String;

    .line 121
    const-string v9, ""

    .line 123
    iget-wide v10, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlat:D

    .line 125
    iget-wide v12, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlon:D

    .line 127
    move-object v6, p0

    .line 128
    invoke-virtual/range {v6 .. v13}, Lpc;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 131
    move-result-object v5

    .line 132
    iget v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidtype:I

    .line 134
    invoke-virtual {v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->y(I)V

    .line 137
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    iget-object v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidname:Ljava/lang/String;

    .line 142
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_2

    .line 148
    iget v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidtype:I

    .line 150
    if-lez v5, :cond_3

    .line 152
    :cond_2
    iget-object v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidname:Ljava/lang/String;

    .line 154
    iget-object v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sMidPoiId:Ljava/lang/String;

    .line 156
    const-string v9, ""

    .line 158
    iget-wide v10, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlat:D

    .line 160
    iget-wide v12, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlon:D

    .line 162
    move-object v6, p0

    .line 163
    invoke-virtual/range {v6 .. v13}, Lpc;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 166
    move-result-object v5

    .line 167
    iget v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidtype:I

    .line 169
    invoke-virtual {v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->y(I)V

    .line 172
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3
    iget-object v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidname:Ljava/lang/String;

    .line 177
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_4

    .line 183
    iget v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidtype:I

    .line 185
    if-lez v5, :cond_5

    .line 187
    :cond_4
    iget-object v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidname:Ljava/lang/String;

    .line 189
    iget-object v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tMidPoiId:Ljava/lang/String;

    .line 191
    const-string v9, ""

    .line 193
    iget-wide v10, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlat:D

    .line 195
    iget-wide v12, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlon:D

    .line 197
    move-object v6, p0

    .line 198
    invoke-virtual/range {v6 .. v13}, Lpc;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 201
    move-result-object v5

    .line 202
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidtype:I

    .line 204
    invoke-virtual {v5, v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->y(I)V

    .line 207
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_5
    iget-object v0, p0, Lpc;->k:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 212
    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setStartProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V

    .line 217
    goto :goto_1

    .line 218
    :cond_6
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setStartProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V

    .line 221
    :goto_1
    iget-object v0, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 223
    if-eqz v0, :cond_7

    .line 225
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setEndProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V

    .line 228
    goto :goto_2

    .line 229
    :cond_7
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setEndProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V

    .line 232
    :goto_2
    iget-object v0, p0, Lpc;->l:Ljava/util/List;

    .line 234
    if-eqz v0, :cond_8

    .line 236
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setMidProtocolPois(Ljava/util/List;)V

    .line 239
    goto :goto_3

    .line 240
    :cond_8
    invoke-virtual {v1, v4}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setMidProtocolPois(Ljava/util/List;)V

    .line 243
    :goto_3
    invoke-virtual {p0, v1}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 246
    goto/16 :goto_4

    .line 248
    :cond_9
    const/16 v2, 0x18

    .line 250
    new-array v2, v2, [Ljava/lang/Object;

    .line 252
    iget v10, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    .line 254
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    move-result-object v10

    .line 258
    aput-object v10, v2, v8

    .line 260
    iget-wide v10, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slat:D

    .line 262
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 265
    move-result-object v8

    .line 266
    aput-object v8, v2, v7

    .line 268
    iget-wide v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slon:D

    .line 270
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 273
    move-result-object v7

    .line 274
    aput-object v7, v2, v6

    .line 276
    iget-object v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sname:Ljava/lang/String;

    .line 278
    aput-object v6, v2, v9

    .line 280
    iget-wide v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlat:D

    .line 282
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 285
    move-result-object v6

    .line 286
    aput-object v6, v2, v5

    .line 288
    iget-wide v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlon:D

    .line 290
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 293
    move-result-object v5

    .line 294
    aput-object v5, v2, v4

    .line 296
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidname:Ljava/lang/String;

    .line 298
    aput-object v4, v2, v3

    .line 300
    iget v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidtype:I

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    move-result-object v3

    .line 306
    const/4 v4, 0x7

    .line 307
    aput-object v3, v2, v4

    .line 309
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlat:D

    .line 311
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 314
    move-result-object v3

    .line 315
    const/16 v4, 0x8

    .line 317
    aput-object v3, v2, v4

    .line 319
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlon:D

    .line 321
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 324
    move-result-object v3

    .line 325
    const/16 v4, 0x9

    .line 327
    aput-object v3, v2, v4

    .line 329
    const/16 v3, 0xa

    .line 331
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidname:Ljava/lang/String;

    .line 333
    aput-object v4, v2, v3

    .line 335
    iget v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidtype:I

    .line 337
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    move-result-object v3

    .line 341
    const/16 v4, 0xb

    .line 343
    aput-object v3, v2, v4

    .line 345
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlat:D

    .line 347
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 350
    move-result-object v3

    .line 351
    const/16 v4, 0xc

    .line 353
    aput-object v3, v2, v4

    .line 355
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlon:D

    .line 357
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 360
    move-result-object v3

    .line 361
    const/16 v4, 0xd

    .line 363
    aput-object v3, v2, v4

    .line 365
    const/16 v3, 0xe

    .line 367
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidname:Ljava/lang/String;

    .line 369
    aput-object v4, v2, v3

    .line 371
    iget v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidtype:I

    .line 373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    move-result-object v3

    .line 377
    const/16 v4, 0xf

    .line 379
    aput-object v3, v2, v4

    .line 381
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 383
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 386
    move-result-object v3

    .line 387
    const/16 v4, 0x10

    .line 389
    aput-object v3, v2, v4

    .line 391
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    .line 393
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 396
    move-result-object v3

    .line 397
    const/16 v4, 0x11

    .line 399
    aput-object v3, v2, v4

    .line 401
    const/16 v3, 0x12

    .line 403
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    .line 405
    aput-object v4, v2, v3

    .line 407
    iget v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    .line 409
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    move-result-object v3

    .line 413
    const/16 v4, 0x13

    .line 415
    aput-object v3, v2, v4

    .line 417
    const/16 v3, 0x14

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    move-result-object v1

    .line 423
    aput-object v1, v2, v3

    .line 425
    const/16 v1, 0x15

    .line 427
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->poiType:Ljava/lang/String;

    .line 429
    aput-object v3, v2, v1

    .line 431
    const/16 v1, 0x16

    .line 433
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sPoiId:Ljava/lang/String;

    .line 435
    aput-object v3, v2, v1

    .line 437
    const/16 v1, 0x17

    .line 439
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    .line 441
    aput-object v3, v2, v1

    .line 443
    const-string v1, "[NewProtocol] BaseRoutePlanAction"

    .line 445
    const-string v3, "actionType={?} slat={?} slon={?}  sname={?} fmidlat={?} fmidlon={?}  fmidname={?} fmidtype={?} smidlat={?} smidlon={?}  smidname={?} smidtype={?} tmidlat={?} tmidlon={?}  tmidname={?} tmidtype={?} dlat={?}  dlon={?}  dname={?} dev={?}  m={?}  poiType={?}  spoiid:{?}  dpoiid:{?}"

    .line 447
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->requestRoute(Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;)V

    .line 453
    :goto_4
    return-void

    .line 454
    nop

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setPoiName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setPoiId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->z(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p4, p5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setLatitude(D)V

    .line 18
    invoke-virtual {v0, p6, p7}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setLongitude(D)V

    .line 21
    return-object v0
.end method

.method public y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc;->n:Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;-><init>()V

    .line 10
    iput-object v0, p0, Lpc;->n:Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    .line 12
    :cond_0
    iget-object v0, p0, Lpc;->n:Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    .line 14
    return-object v0
.end method

.method public final z(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/protocol/constant/StandardProtocolKey;->STYLE_TYPE_ARRAY:[I

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method
