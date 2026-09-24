.class public final Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel_JsonLubeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;-><init>()V

    .line 10
    const-string v1, "clientPackageName"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 23
    const-string v1, "packageName"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 36
    const-string v1, "callbackId"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 49
    const-string v1, "timeStamp"

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 54
    move-result-wide v2

    .line 55
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 62
    const-string v1, "var1"

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 75
    const-string v1, "type"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getType()I

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setType(I)V

    .line 88
    const-string v1, "curRoadName"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCurRoadName()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCurRoadName(Ljava/lang/String;)V

    .line 101
    const-string v1, "nextRoadName"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z0(Ljava/lang/String;)V

    .line 114
    const-string v1, "cameraDist"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraDist()I

    .line 119
    move-result v2

    .line 120
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraDist(I)V

    .line 127
    const-string v1, "cameraType"

    .line 129
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraType()I

    .line 132
    move-result v2

    .line 133
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraType(I)V

    .line 140
    const-string v1, "cameraSpeed"

    .line 142
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraSpeed()I

    .line 145
    move-result v2

    .line 146
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraSpeed(I)V

    .line 153
    const-string v1, "cameraIndex"

    .line 155
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u()I

    .line 158
    move-result v2

    .line 159
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 162
    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A0(I)V

    .line 166
    const-string v1, "icon"

    .line 168
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M()I

    .line 171
    move-result v2

    .line 172
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 175
    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S0(I)V

    .line 179
    const-string v1, "newIcon"

    .line 181
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O()I

    .line 184
    move-result v2

    .line 185
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U0(I)V

    .line 192
    const-string v1, "routeRemainDis"

    .line 194
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i0()I

    .line 197
    move-result v2

    .line 198
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 201
    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o1(I)V

    .line 205
    const-string v1, "routeRemainTime"

    .line 207
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k0()I

    .line 210
    move-result v2

    .line 211
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 214
    move-result v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q1(I)V

    .line 218
    const-string v1, "segRemainDis"

    .line 220
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p0()I

    .line 223
    move-result v2

    .line 224
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 227
    move-result v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v1(I)V

    .line 231
    const-string v1, "segRemainTime"

    .line 233
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r0()I

    .line 236
    move-result v2

    .line 237
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 240
    move-result v1

    .line 241
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x1(I)V

    .line 244
    const-string v1, "carDirection"

    .line 246
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v()I

    .line 249
    move-result v2

    .line 250
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 253
    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B0(I)V

    .line 257
    const-string v1, "carLatitude"

    .line 259
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w()D

    .line 262
    move-result-wide v2

    .line 263
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 266
    move-result-wide v1

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C0(D)V

    .line 270
    const-string v1, "carLongitude"

    .line 272
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x()D

    .line 275
    move-result-wide v2

    .line 276
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 279
    move-result-wide v1

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D0(D)V

    .line 283
    const-string v1, "limitedSpeed"

    .line 285
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getLimitedSpeed()I

    .line 288
    move-result v2

    .line 289
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 292
    move-result v1

    .line 293
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setLimitedSpeed(I)V

    .line 296
    const-string v1, "curSegNum"

    .line 298
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z()I

    .line 301
    move-result v2

    .line 302
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 305
    move-result v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F0(I)V

    .line 309
    const-string v1, "curPointNum"

    .line 311
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y()I

    .line 314
    move-result v2

    .line 315
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 318
    move-result v1

    .line 319
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E0(I)V

    .line 322
    const-string v1, "roundAboutNum"

    .line 324
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0()I

    .line 327
    move-result v2

    .line 328
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 331
    move-result v1

    .line 332
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j1(I)V

    .line 335
    const-string v1, "roundAllNum"

    .line 337
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0()I

    .line 340
    move-result v2

    .line 341
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 344
    move-result v1

    .line 345
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k1(I)V

    .line 348
    const-string v1, "routeAllDis"

    .line 350
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0()I

    .line 353
    move-result v2

    .line 354
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 357
    move-result v1

    .line 358
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m1(I)V

    .line 361
    const-string v1, "routeAllTime"

    .line 363
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h0()I

    .line 366
    move-result v2

    .line 367
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 370
    move-result v1

    .line 371
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n1(I)V

    .line 374
    const-string v1, "curSpeed"

    .line 376
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A()I

    .line 379
    move-result v2

    .line 380
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 383
    move-result v1

    .line 384
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G0(I)V

    .line 387
    const-string v1, "trafficLightNum"

    .line 389
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s0()I

    .line 392
    move-result v2

    .line 393
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 396
    move-result v1

    .line 397
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y1(I)V

    .line 400
    const-string v1, "sapaDist"

    .line 402
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaDist()I

    .line 405
    move-result v2

    .line 406
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 409
    move-result v1

    .line 410
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaDist(I)V

    .line 413
    const-string v1, "nextSapaDist"

    .line 415
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V()I

    .line 418
    move-result v2

    .line 419
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 422
    move-result v1

    .line 423
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b1(I)V

    .line 426
    const-string v1, "sapaType"

    .line 428
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaType()I

    .line 431
    move-result v2

    .line 432
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 435
    move-result v1

    .line 436
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaType(I)V

    .line 439
    const-string v1, "nextSapaType"

    .line 441
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y()I

    .line 444
    move-result v2

    .line 445
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 448
    move-result v1

    .line 449
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e1(I)V

    .line 452
    const-string v1, "sapaNum"

    .line 454
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaNum()I

    .line 457
    move-result v2

    .line 458
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 461
    move-result v1

    .line 462
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaNum(I)V

    .line 465
    const-string v1, "sapaName"

    .line 467
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaName()Ljava/lang/String;

    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaName(Ljava/lang/String;)V

    .line 478
    const-string v1, "nextSapaName"

    .line 480
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X()Ljava/lang/String;

    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d1(Ljava/lang/String;)V

    .line 491
    const-string v1, "roadType"

    .line 493
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c0()I

    .line 496
    move-result v2

    .line 497
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 500
    move-result v1

    .line 501
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i1(I)V

    .line 504
    const-string v1, "currentRoadTotalDis"

    .line 506
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B()I

    .line 509
    move-result v2

    .line 510
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 513
    move-result v1

    .line 514
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H0(I)V

    .line 517
    const-string v1, "routeRemainDistanceAuto"

    .line 519
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j0()Ljava/lang/String;

    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    move-result-object v1

    .line 527
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p1(Ljava/lang/String;)V

    .line 530
    const-string v1, "routeRemainTimeAuto"

    .line 532
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l0()Ljava/lang/String;

    .line 535
    move-result-object v2

    .line 536
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r1(Ljava/lang/String;)V

    .line 543
    const-string v1, "sapaDistAuto"

    .line 545
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n0()Ljava/lang/String;

    .line 548
    move-result-object v2

    .line 549
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    move-result-object v1

    .line 553
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t1(Ljava/lang/String;)V

    .line 556
    const-string v1, "nextSapaDistAuto"

    .line 558
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W()Ljava/lang/String;

    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    move-result-object v1

    .line 566
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c1(Ljava/lang/String;)V

    .line 569
    const-string v1, "segRemainDisAuto"

    .line 571
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q0()Ljava/lang/String;

    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w1(Ljava/lang/String;)V

    .line 582
    const-string v1, "nextNextRoadName"

    .line 584
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q()Ljava/lang/String;

    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W0(Ljava/lang/String;)V

    .line 595
    const-string v1, "nextNextTurnIcon"

    .line 597
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R()I

    .line 600
    move-result v2

    .line 601
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 604
    move-result v1

    .line 605
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X0(I)V

    .line 608
    const-string v1, "nextSegRemainDis"

    .line 610
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z()I

    .line 613
    move-result v2

    .line 614
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 617
    move-result v1

    .line 618
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f1(I)V

    .line 621
    const-string v1, "nextSegRemainTime"

    .line 623
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b0()I

    .line 626
    move-result v2

    .line 627
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 630
    move-result v1

    .line 631
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h1(I)V

    .line 634
    const-string v1, "exitNameInfo"

    .line 636
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L()Ljava/lang/String;

    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 643
    move-result-object v1

    .line 644
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R0(Ljava/lang/String;)V

    .line 647
    const-string v1, "exitDirectionInfo"

    .line 649
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K()Ljava/lang/String;

    .line 652
    move-result-object v2

    .line 653
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 656
    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q0(Ljava/lang/String;)V

    .line 660
    const-string v1, "segAssistantAction"

    .line 662
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o0()I

    .line 665
    move-result v2

    .line 666
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 669
    move-result v1

    .line 670
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u1(I)V

    .line 673
    const-string v1, "roundaboutOutAngle"

    .line 675
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0()I

    .line 678
    move-result v2

    .line 679
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 682
    move-result v1

    .line 683
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l1(I)V

    .line 686
    const-string v1, "etaText"

    .line 688
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J()Ljava/lang/String;

    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P0(Ljava/lang/String;)V

    .line 699
    const-string v1, "nextRoadProgressPrecent"

    .line 701
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U()I

    .line 704
    move-result v2

    .line 705
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 708
    move-result v1

    .line 709
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a1(I)V

    .line 712
    const-string v1, "json"

    .line 714
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getJson()Ljava/lang/String;

    .line 717
    move-result-object v2

    .line 718
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setJson(Ljava/lang/String;)V

    .line 725
    const-string v1, "turnIconWeight"

    .line 727
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u0()I

    .line 730
    move-result v2

    .line 731
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 734
    move-result v1

    .line 735
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B1(I)V

    .line 738
    const-string v1, "turnIconHeight"

    .line 740
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t0()I

    .line 743
    move-result v2

    .line 744
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 747
    move-result v1

    .line 748
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A1(I)V

    .line 751
    const-string v1, "cameraPenalty"

    .line 753
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraPenalty()Z

    .line 756
    move-result v2

    .line 757
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 760
    move-result v1

    .line 761
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraPenalty(Z)V

    .line 764
    const-string v1, "nextRoadNOAOrNot"

    .line 766
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S()Z

    .line 769
    move-result v2

    .line 770
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 773
    move-result v1

    .line 774
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y0(Z)V

    .line 777
    const-string v1, "newCamera"

    .line 779
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->N()Z

    .line 782
    move-result v2

    .line 783
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 786
    move-result v1

    .line 787
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T0(Z)V

    .line 790
    const-string v1, "cameraID"

    .line 792
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraID()I

    .line 795
    move-result v2

    .line 796
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 799
    move-result v1

    .line 800
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraID(I)V

    .line 803
    const-string v1, "endPOIName"

    .line 805
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H()Ljava/lang/String;

    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 812
    move-result-object v1

    .line 813
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->N0(Ljava/lang/String;)V

    .line 816
    const-string v1, "endPOIAddr"

    .line 818
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C()Ljava/lang/String;

    .line 821
    move-result-object v2

    .line 822
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    move-result-object v1

    .line 826
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I0(Ljava/lang/String;)V

    .line 829
    const-string v1, "endPOIType"

    .line 831
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I()Ljava/lang/String;

    .line 834
    move-result-object v2

    .line 835
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 838
    move-result-object v1

    .line 839
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O0(Ljava/lang/String;)V

    .line 842
    const-string v1, "endPOILongitude"

    .line 844
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G()D

    .line 847
    move-result-wide v2

    .line 848
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 851
    move-result-wide v1

    .line 852
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M0(D)V

    .line 855
    const-string v1, "endPOILatitude"

    .line 857
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F()D

    .line 860
    move-result-wide v2

    .line 861
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 864
    move-result-wide v1

    .line 865
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L0(D)V

    .line 868
    const-string v1, "arrivePOIType"

    .line 870
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t()Ljava/lang/String;

    .line 873
    move-result-object v2

    .line 874
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 877
    move-result-object v1

    .line 878
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z0(Ljava/lang/String;)V

    .line 881
    const-string v1, "arrivePOILongitude"

    .line 883
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getArrivePOILongitude()D

    .line 886
    move-result-wide v2

    .line 887
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 890
    move-result-wide v1

    .line 891
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setArrivePOILongitude(D)V

    .line 894
    const-string v1, "arrivePOILatitude"

    .line 896
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getArrivePOILatitude()D

    .line 899
    move-result-wide v2

    .line 900
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 903
    move-result-wide v1

    .line 904
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setArrivePOILatitude(D)V

    .line 907
    const-string v1, "viaPOItime"

    .line 909
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x0()I

    .line 912
    move-result v2

    .line 913
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 916
    move-result v1

    .line 917
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E1(I)V

    .line 920
    const-string v1, "viaPOIdistance"

    .line 922
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w0()I

    .line 925
    move-result v2

    .line 926
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 929
    move-result v1

    .line 930
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D1(I)V

    .line 933
    const-string v1, "endPOICityName"

    .line 935
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D()Ljava/lang/String;

    .line 938
    move-result-object v2

    .line 939
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    move-result-object v1

    .line 943
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J0(Ljava/lang/String;)V

    .line 946
    const-string v1, "endPOIDistrictName"

    .line 948
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E()Ljava/lang/String;

    .line 951
    move-result-object v2

    .line 952
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 955
    move-result-object v1

    .line 956
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K0(Ljava/lang/String;)V

    .line 959
    const-string v1, "viaPOIArrivalTime"

    .line 961
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0()Ljava/lang/String;

    .line 964
    move-result-object v2

    .line 965
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 968
    move-result-object v1

    .line 969
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C1(Ljava/lang/String;)V

    .line 972
    const-string v1, "addIcon"

    .line 974
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s()Ljava/lang/String;

    .line 977
    move-result-object v2

    .line 978
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 981
    move-result-object v1

    .line 982
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y0(Ljava/lang/String;)V

    .line 985
    const-string v1, "nextNextAddIcon"

    .line 987
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P()Ljava/lang/String;

    .line 990
    move-result-object v2

    .line 991
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    move-result-object v1

    .line 995
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V0(Ljava/lang/String;)V

    .line 998
    const-string v1, "nextSegRemainDisAuto"

    .line 1000
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a0()Ljava/lang/String;

    .line 1003
    move-result-object v2

    .line 1004
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    move-result-object v1

    .line 1008
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g1(Ljava/lang/String;)V

    .line 1011
    const-string v1, "routeRemainTrafficLightNum"

    .line 1013
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m0()I

    .line 1016
    move-result v2

    .line 1017
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1020
    move-result p0

    .line 1021
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s1(I)V

    .line 1024
    return-object v0
.end method
