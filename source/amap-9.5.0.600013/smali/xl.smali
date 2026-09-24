.class public Lxl;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;-><init>()V

    iput-object v0, p0, Lxl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;-><init>()V

    iput-object v0, p0, Lxl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lxl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "FavoriteInfoAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lnc;->c:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lxl;->z()Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    if-nez v0, :cond_1

    .line 30
    const/16 v0, 0x2730

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 35
    :goto_0
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 38
    move-object v0, v1

    .line 39
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "FavoriteInfoAction"

    .line 6
    const-string v3, "pareseToIntent"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 13
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 16
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_3

    .line 22
    iget-boolean v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 24
    const-string v4, "EXTRA_FAVORITE_DATA"

    .line 26
    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {p0}, Lxl;->z()Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;

    .line 31
    move-result-object v0

    .line 32
    iget-boolean v2, p0, Lnc;->c:Z

    .line 34
    if-eqz v2, :cond_0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;->getFavoriteData()Ljava/util/ArrayList;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lxl;->y(Ljava/util/List;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "[]"

    .line 52
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 62
    if-eqz v3, :cond_3

    .line 64
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->type:I

    .line 66
    if-nez v5, :cond_2

    .line 68
    invoke-virtual {v3}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p0, v3}, Lxl;->x(Ljava/util/List;)Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_3
    :goto_0
    return-object v1
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lxl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getFavoriteInfo(II)V

    .line 21
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x(Ljava/util/List;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const-string v4, "FavoriteInfoAction"

    .line 20
    if-eqz v1, :cond_3

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 28
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 30
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v6, "poiId"

    .line 35
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v6, "name"

    .line 44
    iget-object v7, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 46
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const-string v8, ""

    .line 52
    if-eqz v7, :cond_0

    .line 54
    move-object v7, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :try_start_1
    iget-object v7, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 58
    :goto_1
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v6, "addr"

    .line 63
    iget-object v7, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 65
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_1

    .line 71
    move-object v7, v8

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    iget-object v7, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 75
    :goto_2
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v6, "longitude"

    .line 80
    iget-wide v9, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 82
    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 85
    const-string v6, "latitude"

    .line 87
    iget-wide v9, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 89
    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 92
    const-string v6, "distance"

    .line 94
    iget v7, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 96
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v6, "phone"

    .line 101
    iget-object v7, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    .line 103
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_2

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    iget-object v8, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    .line 112
    :goto_3
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v6, "extra_poitype"

    .line 117
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 119
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    aput-object v1, v3, v2

    .line 135
    const-string v1, "sendFavoriteBroadcast infoJson ex = {?}"

    .line 137
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    goto/16 :goto_0

    .line 142
    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    aput-object v1, p1, v2

    .line 150
    const-string v1, "sendFavoriteBroadcast FavoriteInfoJson = {?}"

    .line 152
    invoke-static {v4, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    return-object p1
.end method

.method public final y(Ljava/util/List;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const-string v4, "FavoriteInfoAction"

    .line 20
    if-eqz v1, :cond_3

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;

    .line 28
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 30
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v6, "poiId"

    .line 35
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->x()Ljava/lang/String;

    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v6, "name"

    .line 44
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->v()Ljava/lang/String;

    .line 47
    move-result-object v7

    .line 48
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const-string v8, ""

    .line 54
    if-eqz v7, :cond_0

    .line 56
    move-object v7, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->v()Ljava/lang/String;

    .line 61
    move-result-object v7

    .line 62
    :goto_1
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v6, "addr"

    .line 67
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->r()Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_1

    .line 77
    move-object v7, v8

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->r()Ljava/lang/String;

    .line 82
    move-result-object v7

    .line 83
    :goto_2
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v6, "longitude"

    .line 88
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->u()D

    .line 91
    move-result-wide v9

    .line 92
    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 95
    const-string v6, "latitude"

    .line 97
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->t()D

    .line 100
    move-result-wide v9

    .line 101
    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 104
    const-string v6, "distance"

    .line 106
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->s()I

    .line 109
    move-result v7

    .line 110
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v6, "phone"

    .line 115
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->w()Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_2

    .line 125
    goto :goto_3

    .line 126
    :cond_2
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->w()Ljava/lang/String;

    .line 129
    move-result-object v8

    .line 130
    :goto_3
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    new-array v3, v3, [Ljava/lang/Object;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    aput-object v1, v3, v2

    .line 146
    const-string v1, "sendFavoriteBroadcast infoJson ex = {?}"

    .line 148
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    goto/16 :goto_0

    .line 153
    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    aput-object v1, p1, v2

    .line 161
    const-string v1, "sendFavoriteBroadcast FavoriteInfoJson = {?}"

    .line 163
    invoke-static {v4, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    return-object p1
.end method

.method public final z()Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;
    .locals 6

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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesModel;->getFavoriteData()Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    move-object v5, v1

    .line 36
    move-object v1, v0

    .line 37
    move-object v0, v5

    .line 38
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    const-string v4, "FavoriteInfoAction"

    .line 47
    invoke-static {v4, v2, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 50
    :goto_1
    return-object v0
.end method
