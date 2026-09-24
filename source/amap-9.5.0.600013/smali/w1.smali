.class public Lw1;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public final k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "AddCurPoiInFavoriteAction"

    .line 2
    iput-object v0, p0, Lw1;->k:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const-string p1, "AddCurPoiInFavoriteAction"

    .line 5
    iput-object p1, p0, Lw1;->k:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lnc;->q(Z)V

    .line 7
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-boolean v0, p0, Lnc;->c:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lw1;->x()Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 23
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 26
    :goto_0
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 37
    if-eqz v0, :cond_2

    .line 39
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 41
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;-><init>()V

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->setIsFavoriteSuccess(I)V

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 51
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 54
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    new-array v0, v2, [Ljava/lang/Object;

    .line 6
    const-string v3, "AddCurPoiInFavoriteAction"

    .line 8
    const-string v4, "pareseToIntent"

    .line 10
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 16
    move-result-object v0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 20
    return-object v4

    .line 21
    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 23
    const-string v5, "phone"

    .line 25
    const-string v6, "longitude"

    .line 27
    const-string v7, "latitude"

    .line 29
    const-string v8, "addr"

    .line 31
    const-string v9, "name"

    .line 33
    const-string v10, "poiId"

    .line 35
    const-string v11, "EXTRA_FAVORITE_MY_LOCATION"

    .line 37
    const-string v12, "isFavoriteSuccess"

    .line 39
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 41
    if-eqz v0, :cond_3

    .line 43
    invoke-virtual/range {p0 .. p0}, Lw1;->x()Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 49
    new-instance v4, Landroid/content/Intent;

    .line 51
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 54
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    .line 56
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    move-object/from16 v16, v3

    .line 61
    :try_start_1
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lat:D

    .line 63
    cmpl-double v17, v2, v13

    .line 65
    if-lez v17, :cond_1

    .line 67
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lon:D

    .line 69
    cmpl-double v17, v2, v13

    .line 71
    if-lez v17, :cond_1

    .line 73
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->poiId:Ljava/lang/String;

    .line 75
    invoke-virtual {v15, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->poiName:Ljava/lang/String;

    .line 80
    invoke-virtual {v15, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->addr:Ljava/lang/String;

    .line 85
    invoke-virtual {v15, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lat:D

    .line 90
    invoke-virtual {v15, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 93
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lon:D

    .line 95
    invoke-virtual {v15, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 98
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->phone:Ljava/lang/String;

    .line 100
    invoke-virtual {v15, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->getIsFavoriteSuccess()I

    .line 106
    move-result v0

    .line 107
    invoke-virtual {v15, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    iput-object v0, v1, Lw1;->l:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    move-object/from16 v16, v3

    .line 122
    :goto_0
    const-string v2, "[NewJsonResult]JSONException"

    .line 124
    const/4 v3, 0x0

    .line 125
    new-array v3, v3, [Ljava/lang/Object;

    .line 127
    move-object/from16 v15, v16

    .line 129
    invoke-static {v15, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 132
    :goto_1
    iget-object v0, v1, Lw1;->l:Ljava/lang/String;

    .line 134
    invoke-virtual {v4, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    move-object v15, v3

    .line 139
    const/4 v3, 0x0

    .line 140
    const-string v0, "favoriteCurrentPoiModel == null, please check!"

    .line 142
    new-array v2, v3, [Ljava/lang/Object;

    .line 144
    invoke-static {v15, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :goto_2
    return-object v4

    .line 148
    :cond_3
    move-object v15, v3

    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;

    .line 156
    if-eqz v0, :cond_5

    .line 158
    const/4 v2, 0x2

    .line 159
    new-array v4, v2, [Ljava/lang/Object;

    .line 161
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 163
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    move-result-object v2

    .line 167
    aput-object v2, v4, v3

    .line 169
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->toString()Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 173
    const/4 v3, 0x1

    .line 174
    aput-object v2, v4, v3

    .line 176
    const-string v2, "isSuccessed:{?};curFavPoiInfoData:{?}"

    .line 178
    invoke-static {v15, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v4, Landroid/content/Intent;

    .line 183
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 186
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    .line 188
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 191
    iget-boolean v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 193
    if-eqz v3, :cond_4

    .line 195
    iget-wide v13, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->lat:D

    .line 197
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 199
    cmpl-double v3, v13, v18

    .line 201
    if-lez v3, :cond_4

    .line 203
    iget-wide v13, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->lon:D

    .line 205
    cmpl-double v3, v13, v18

    .line 207
    if-lez v3, :cond_4

    .line 209
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->poiId:Ljava/lang/String;

    .line 211
    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->poiName:Ljava/lang/String;

    .line 216
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->addr:Ljava/lang/String;

    .line 221
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    iget-wide v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->lat:D

    .line 226
    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 229
    iget-wide v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->lon:D

    .line 231
    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 234
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/CurFavPoiInfoData;->phone:Ljava/lang/String;

    .line 236
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const/4 v0, 0x1

    .line 240
    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    goto :goto_3

    .line 244
    :cond_4
    const/4 v0, 0x2

    .line 245
    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    iput-object v0, v1, Lw1;->l:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 254
    goto :goto_4

    .line 255
    :catch_2
    move-exception v0

    .line 256
    const-string v2, "JSONException"

    .line 258
    const/4 v3, 0x0

    .line 259
    new-array v3, v3, [Ljava/lang/Object;

    .line 261
    invoke-static {v15, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 264
    :goto_4
    iget-object v0, v1, Lw1;->l:Ljava/lang/String;

    .line 266
    invoke-virtual {v4, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    goto :goto_5

    .line 270
    :cond_5
    const-string v0, "curFavPoiInfoData == null, please check!"

    .line 272
    new-array v2, v3, [Ljava/lang/Object;

    .line 274
    invoke-static {v15, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :goto_5
    return-object v4
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;-><init>()V

    .line 12
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAddFavoriteCurPoi(I)V

    .line 23
    :goto_0
    return-void
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-class v2, Lw1;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x0

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 44
    invoke-static {v2, v3, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-object v1
.end method
