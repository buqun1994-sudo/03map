.class public Loo;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 6
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, La80;->k(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    iget-object v0, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Loo;->g()Landroid/content/Intent;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "KEY_TYPE"

    .line 20
    const/16 v2, 0x2711

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    :goto_0
    return-object v0
.end method

.method public final g()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-object v0

    .line 11
    :cond_0
    const-string v2, "TYPE"

    .line 13
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 22
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurRoadName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "CUR_ROAD_NAME"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 33
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextRoadName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "NEXT_ROAD_NAME"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 44
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaDist()I

    .line 47
    move-result v1

    .line 48
    const-string v2, "SAPA_DIST"

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 55
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaType()I

    .line 58
    move-result v1

    .line 59
    const-string v2, "SAPA_TYPE"

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 66
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraDist()I

    .line 69
    move-result v1

    .line 70
    const-string v2, "CAMERA_DIST"

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 77
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraType()I

    .line 80
    move-result v1

    .line 81
    const-string v2, "CAMERA_TYPE"

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 88
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraSpeed()I

    .line 91
    move-result v1

    .line 92
    const-string v2, "CAMERA_SPEED"

    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 99
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraIndex()I

    .line 102
    move-result v1

    .line 103
    const-string v2, "CAMERA_INDEX"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 110
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->convertIcon()I

    .line 113
    move-result v1

    .line 114
    iget-object v2, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 116
    invoke-virtual {v2, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->switchIcon(I)I

    .line 119
    move-result v1

    .line 120
    const-string v2, "ICON"

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 127
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getIcon()I

    .line 130
    move-result v1

    .line 131
    const-string v2, "NEW_ICON"

    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 138
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainDis()I

    .line 141
    move-result v1

    .line 142
    const-string v2, "ROUTE_REMAIN_DIS"

    .line 144
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 149
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainTime()I

    .line 152
    move-result v1

    .line 153
    const-string v2, "ROUTE_REMAIN_TIME"

    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 160
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 163
    move-result v1

    .line 164
    const-string v2, "SEG_REMAIN_DIS"

    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 171
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainTime()I

    .line 174
    move-result v1

    .line 175
    const-string v2, "SEG_REMAIN_TIME"

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 182
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCarDirection()I

    .line 185
    move-result v1

    .line 186
    const-string v2, "CAR_DIRECTION"

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 193
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getLimitedSpeed()I

    .line 196
    move-result v1

    .line 197
    const-string v2, "LIMITED_SPEED"

    .line 199
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 204
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSegNum()I

    .line 207
    move-result v1

    .line 208
    const-string v2, "CUR_SEG_NUM"

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 215
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurPointNum()I

    .line 218
    move-result v1

    .line 219
    const-string v2, "CUR_POINT_NUM"

    .line 221
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 226
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoundAboutNum()I

    .line 229
    move-result v1

    .line 230
    const-string v2, "ROUNG_ABOUT_NUM"

    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 237
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteAllDis()I

    .line 240
    move-result v1

    .line 241
    const-string v2, "ROUTE_ALL_DIS"

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 248
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteAllTime()I

    .line 251
    move-result v1

    .line 252
    const-string v2, "ROUTE_ALL_TIME"

    .line 254
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 259
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 262
    move-result v1

    .line 263
    const-string v2, "CUR_SPEED"

    .line 265
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 270
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getTrafficLightNum()I

    .line 273
    move-result v1

    .line 274
    const-string v2, "TRAFFIC_LIGHT_NUM"

    .line 276
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 281
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaNum()I

    .line 284
    move-result v1

    .line 285
    const-string v2, "SAPA_NUM"

    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 292
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaName()Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 296
    const-string v2, "SAPA_NAME"

    .line 298
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 303
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoadType()I

    .line 306
    move-result v1

    .line 307
    const-string v2, "ROAD_TYPE"

    .line 309
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 314
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCarLatitude()D

    .line 317
    move-result-wide v1

    .line 318
    const-string v3, "CAR_LATITUDE"

    .line 320
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 325
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCarLongitude()D

    .line 328
    move-result-wide v1

    .line 329
    const-string v3, "CAR_LONGITUDE"

    .line 331
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 336
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoundAllNum()I

    .line 339
    move-result v1

    .line 340
    const-string v2, "ROUND_ALL_NUM"

    .line 342
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 347
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainDistanceAuto()Ljava/lang/String;

    .line 350
    move-result-object v1

    .line 351
    const-string v2, "ROUTE_REMAIN_DIS_AUTO"

    .line 353
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 358
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainTimeAuto()Ljava/lang/String;

    .line 361
    move-result-object v1

    .line 362
    const-string v2, "ROUTE_REMAIN_TIME_AUTO"

    .line 364
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 369
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaDistAuto()Ljava/lang/String;

    .line 372
    move-result-object v1

    .line 373
    const-string v2, "SAPA_DIST_AUTO"

    .line 375
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 380
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDisAuto()Ljava/lang/String;

    .line 383
    move-result-object v1

    .line 384
    const-string v2, "SEG_REMAIN_DIS_AUTO"

    .line 386
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 391
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextNextRoadName()Ljava/lang/String;

    .line 394
    move-result-object v1

    .line 395
    const-string v2, "NEXT_NEXT_ROAD_NAME"

    .line 397
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 402
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextNextTurnIcon()I

    .line 405
    move-result v1

    .line 406
    const-string v2, "NEXT_NEXT_TURN_ICON"

    .line 408
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 413
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSegRemainDis()I

    .line 416
    move-result v1

    .line 417
    const-string v2, "NEXT_SEG_REMAIN_DIS"

    .line 419
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 424
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSegRemainTime()I

    .line 427
    move-result v1

    .line 428
    const-string v2, "NEXT_SEG_REMAIN_TIME"

    .line 430
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 435
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegAssistantAction()I

    .line 438
    move-result v1

    .line 439
    const-string v2, "SEG_ASSISTANT_ACTION"

    .line 441
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 446
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getExitNameInfo()Ljava/lang/String;

    .line 449
    move-result-object v1

    .line 450
    const-string v2, "EXIT_NAME_INFO"

    .line 452
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 457
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getExitDirectionInfo()Ljava/lang/String;

    .line 460
    move-result-object v1

    .line 461
    const-string v2, "EXIT_DIRECTION_INFO"

    .line 463
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 468
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaDist()I

    .line 471
    move-result v1

    .line 472
    const-string v2, "NEXT_SAPA_DIST"

    .line 474
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 479
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaType()I

    .line 482
    move-result v1

    .line 483
    const-string v2, "NEXT_SAPA_TYPE"

    .line 485
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 490
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaName()Ljava/lang/String;

    .line 493
    move-result-object v1

    .line 494
    const-string v2, "NEXT_SAPA_NAME"

    .line 496
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 501
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaDistAuto()Ljava/lang/String;

    .line 504
    move-result-object v1

    .line 505
    const-string v2, "NEXT_SAPA_DIST_AUTO"

    .line 507
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 512
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEtaText()Ljava/lang/String;

    .line 515
    move-result-object v1

    .line 516
    const-string v2, "ETA_TEXT"

    .line 518
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 523
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextRoadProgressPrecent()I

    .line 526
    move-result v1

    .line 527
    const-string v2, "NEXT_ROAD_PROGRESS_PERCENT"

    .line 529
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 534
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraPenalty()Z

    .line 537
    move-result v1

    .line 538
    const-string v2, "cameraPenalty"

    .line 540
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 545
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNextRoadNOAOrNot()Z

    .line 548
    move-result v1

    .line 549
    const-string v2, "nextRoadNOAOrNot"

    .line 551
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 556
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNewCamera()Z

    .line 559
    move-result v1

    .line 560
    const-string v2, "newCamera"

    .line 562
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 565
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 567
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraID()I

    .line 570
    move-result v1

    .line 571
    const-string v2, "cameraID"

    .line 573
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 578
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOIName()Ljava/lang/String;

    .line 581
    move-result-object v1

    .line 582
    const-string v2, "endPOIName"

    .line 584
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 589
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOIAddr()Ljava/lang/String;

    .line 592
    move-result-object v1

    .line 593
    const-string v2, "endPOIAddr"

    .line 595
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 600
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOIType()Ljava/lang/String;

    .line 603
    move-result-object v1

    .line 604
    const-string v2, "endPOIType"

    .line 606
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 611
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOILatitude()D

    .line 614
    move-result-wide v1

    .line 615
    const-string v3, "endPOILatitude"

    .line 617
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 620
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 622
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOILongitude()D

    .line 625
    move-result-wide v1

    .line 626
    const-string v3, "endPOILongitude"

    .line 628
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 631
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 633
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getArrivePOIType()Ljava/lang/String;

    .line 636
    move-result-object v1

    .line 637
    const-string v2, "arrivePOIType"

    .line 639
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 644
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getArrivePOILatitude()D

    .line 647
    move-result-wide v1

    .line 648
    const-string v3, "arrivePOILatitude"

    .line 650
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 653
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 655
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getArrivePOILongitude()D

    .line 658
    move-result-wide v1

    .line 659
    const-string v3, "arrivePOILongitude"

    .line 661
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 664
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 666
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getViaPOItime()I

    .line 669
    move-result v1

    .line 670
    const-string v2, "viaPOItime"

    .line 672
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 677
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getViaPOIdistance()I

    .line 680
    move-result v1

    .line 681
    const-string v2, "viaPOIdistance"

    .line 683
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 688
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextNextAddIcon()Ljava/lang/String;

    .line 691
    move-result-object v1

    .line 692
    const-string v2, "nextNextAddIcon"

    .line 694
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 699
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getAddIcon()Ljava/lang/String;

    .line 702
    move-result-object v1

    .line 703
    const-string v2, "addIcon"

    .line 705
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 710
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSegRemainDisAuto()Ljava/lang/String;

    .line 713
    move-result-object v1

    .line 714
    const-string v2, "NEXT_SEG_REMAIN_DIS_AUTO"

    .line 716
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v1, p0, Loo;->d:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 721
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainTrafficLightNum()I

    .line 724
    move-result v1

    .line 725
    const-string v2, "routeRemainTrafficLightNum"

    .line 727
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    return-object v0
.end method
