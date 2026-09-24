.class public final Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v1, "packageName"

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "clientPackageName"

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "callbackId"

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "timeStamp"

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "var1"

    .line 48
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "type"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getType()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "curRoadName"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCurRoadName()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "nextRoadName"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "cameraDist"

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraDist()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "cameraType"

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraType()I

    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v1, "cameraSpeed"

    .line 102
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraSpeed()I

    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string v1, "cameraIndex"

    .line 111
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u()I

    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v1, "icon"

    .line 120
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M()I

    .line 123
    move-result v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v1, "newIcon"

    .line 129
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O()I

    .line 132
    move-result v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v1, "routeRemainDis"

    .line 138
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i0()I

    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string v1, "routeRemainTime"

    .line 147
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k0()I

    .line 150
    move-result v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v1, "segRemainDis"

    .line 156
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p0()I

    .line 159
    move-result v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v1, "segRemainTime"

    .line 165
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r0()I

    .line 168
    move-result v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v1, "carDirection"

    .line 174
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v()I

    .line 177
    move-result v2

    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string v1, "carLatitude"

    .line 183
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w()D

    .line 186
    move-result-wide v2

    .line 187
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 190
    const-string v1, "carLongitude"

    .line 192
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x()D

    .line 195
    move-result-wide v2

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 199
    const-string v1, "limitedSpeed"

    .line 201
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getLimitedSpeed()I

    .line 204
    move-result v2

    .line 205
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v1, "curSegNum"

    .line 210
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z()I

    .line 213
    move-result v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    const-string v1, "curPointNum"

    .line 219
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y()I

    .line 222
    move-result v2

    .line 223
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v1, "roundAboutNum"

    .line 228
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0()I

    .line 231
    move-result v2

    .line 232
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string v1, "roundAllNum"

    .line 237
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0()I

    .line 240
    move-result v2

    .line 241
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v1, "routeAllDis"

    .line 246
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0()I

    .line 249
    move-result v2

    .line 250
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    const-string v1, "routeAllTime"

    .line 255
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h0()I

    .line 258
    move-result v2

    .line 259
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string v1, "curSpeed"

    .line 264
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A()I

    .line 267
    move-result v2

    .line 268
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v1, "trafficLightNum"

    .line 273
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s0()I

    .line 276
    move-result v2

    .line 277
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 280
    const-string v1, "sapaDist"

    .line 282
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaDist()I

    .line 285
    move-result v2

    .line 286
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string v1, "nextSapaDist"

    .line 291
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V()I

    .line 294
    move-result v2

    .line 295
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    const-string v1, "sapaType"

    .line 300
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaType()I

    .line 303
    move-result v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    const-string v1, "nextSapaType"

    .line 309
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y()I

    .line 312
    move-result v2

    .line 313
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string v1, "sapaNum"

    .line 318
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaNum()I

    .line 321
    move-result v2

    .line 322
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v1, "sapaName"

    .line 327
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaName()Ljava/lang/String;

    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v1, "nextSapaName"

    .line 336
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X()Ljava/lang/String;

    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v1, "roadType"

    .line 345
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c0()I

    .line 348
    move-result v2

    .line 349
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v1, "currentRoadTotalDis"

    .line 354
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B()I

    .line 357
    move-result v2

    .line 358
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    const-string v1, "routeRemainDistanceAuto"

    .line 363
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j0()Ljava/lang/String;

    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v1, "routeRemainTimeAuto"

    .line 372
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l0()Ljava/lang/String;

    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v1, "sapaDistAuto"

    .line 381
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n0()Ljava/lang/String;

    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v1, "nextSapaDistAuto"

    .line 390
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W()Ljava/lang/String;

    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v1, "segRemainDisAuto"

    .line 399
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q0()Ljava/lang/String;

    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v1, "nextNextRoadName"

    .line 408
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q()Ljava/lang/String;

    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v1, "nextNextTurnIcon"

    .line 417
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R()I

    .line 420
    move-result v2

    .line 421
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 424
    const-string v1, "nextSegRemainDis"

    .line 426
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z()I

    .line 429
    move-result v2

    .line 430
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 433
    const-string v1, "nextSegRemainTime"

    .line 435
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b0()I

    .line 438
    move-result v2

    .line 439
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 442
    const-string v1, "exitNameInfo"

    .line 444
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L()Ljava/lang/String;

    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v1, "exitDirectionInfo"

    .line 453
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K()Ljava/lang/String;

    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v1, "segAssistantAction"

    .line 462
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o0()I

    .line 465
    move-result v2

    .line 466
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    const-string v1, "roundaboutOutAngle"

    .line 471
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0()I

    .line 474
    move-result v2

    .line 475
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string v1, "etaText"

    .line 480
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J()Ljava/lang/String;

    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const-string v1, "nextRoadProgressPrecent"

    .line 489
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U()I

    .line 492
    move-result v2

    .line 493
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    const-string v1, "json"

    .line 498
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getJson()Ljava/lang/String;

    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v1, "turnIconWeight"

    .line 507
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u0()I

    .line 510
    move-result v2

    .line 511
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    const-string v1, "turnIconHeight"

    .line 516
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t0()I

    .line 519
    move-result v2

    .line 520
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    const-string v1, "cameraPenalty"

    .line 525
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraPenalty()Z

    .line 528
    move-result v2

    .line 529
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 532
    const-string v1, "nextRoadNOAOrNot"

    .line 534
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S()Z

    .line 537
    move-result v2

    .line 538
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 541
    const-string v1, "newCamera"

    .line 543
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->N()Z

    .line 546
    move-result v2

    .line 547
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 550
    const-string v1, "cameraID"

    .line 552
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraID()I

    .line 555
    move-result v2

    .line 556
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 559
    const-string v1, "endPOIName"

    .line 561
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H()Ljava/lang/String;

    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    const-string v1, "endPOIAddr"

    .line 570
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C()Ljava/lang/String;

    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v1, "endPOIType"

    .line 579
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I()Ljava/lang/String;

    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string v1, "endPOILongitude"

    .line 588
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G()D

    .line 591
    move-result-wide v2

    .line 592
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 595
    const-string v1, "endPOILatitude"

    .line 597
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F()D

    .line 600
    move-result-wide v2

    .line 601
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 604
    const-string v1, "arrivePOIType"

    .line 606
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t()Ljava/lang/String;

    .line 609
    move-result-object v2

    .line 610
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v1, "arrivePOILongitude"

    .line 615
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getArrivePOILongitude()D

    .line 618
    move-result-wide v2

    .line 619
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 622
    const-string v1, "arrivePOILatitude"

    .line 624
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getArrivePOILatitude()D

    .line 627
    move-result-wide v2

    .line 628
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 631
    const-string v1, "viaPOItime"

    .line 633
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x0()I

    .line 636
    move-result v2

    .line 637
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 640
    const-string v1, "viaPOIdistance"

    .line 642
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w0()I

    .line 645
    move-result v2

    .line 646
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    const-string v1, "endPOICityName"

    .line 651
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D()Ljava/lang/String;

    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v1, "endPOIDistrictName"

    .line 660
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E()Ljava/lang/String;

    .line 663
    move-result-object v2

    .line 664
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string v1, "viaPOIArrivalTime"

    .line 669
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0()Ljava/lang/String;

    .line 672
    move-result-object v2

    .line 673
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string v1, "addIcon"

    .line 678
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s()Ljava/lang/String;

    .line 681
    move-result-object v2

    .line 682
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    const-string v1, "nextNextAddIcon"

    .line 687
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P()Ljava/lang/String;

    .line 690
    move-result-object v2

    .line 691
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string v1, "nextSegRemainDisAuto"

    .line 696
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a0()Ljava/lang/String;

    .line 699
    move-result-object v2

    .line 700
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    const-string v1, "routeRemainTrafficLightNum"

    .line 705
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m0()I

    .line 708
    move-result p0

    .line 709
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 712
    return-object v0
.end method
