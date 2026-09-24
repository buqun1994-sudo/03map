.class public Lmn;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_TYPE"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmn;->k:I

    const/16 v0, 0x273d

    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1, p1}, Lwe0;->c(III)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;->getRequestFavoriteType()I

    move-result p1

    iput p1, p0, Lmn;->k:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 7

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 3
    const/16 v1, 0x2727

    .line 5
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 8
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 14
    iget-boolean v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 16
    if-eqz v2, :cond_1

    .line 18
    iget-boolean v0, p0, Lnc;->c:Z

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lmn;->z()Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 29
    iget v1, p0, Lnc;->d:I

    .line 31
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 34
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 41
    if-nez v2, :cond_2

    .line 43
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 45
    const/16 v1, 0x2730

    .line 47
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 50
    goto/16 :goto_4

    .line 52
    :cond_2
    iget v3, p0, Lmn;->k:I

    .line 54
    if-ltz v3, :cond_a

    .line 56
    const/4 v4, 0x3

    .line 57
    if-le v3, v4, :cond_3

    .line 59
    goto/16 :goto_3

    .line 61
    :cond_3
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 64
    move-result-object v3

    .line 65
    const/4 v5, 0x1

    .line 66
    if-eqz v3, :cond_6

    .line 68
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 75
    move-result v3

    .line 76
    if-gtz v3, :cond_4

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;

    .line 81
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;-><init>()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v2

    .line 97
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_5

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 109
    new-instance v4, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;

    .line 111
    invoke-direct {v4}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;-><init>()V

    .line 114
    iget v6, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 116
    invoke-virtual {v4, v6}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->setFavoriteType(I)V

    .line 119
    iget-object v6, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 121
    invoke-virtual {v4, v6}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->B(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v4, v6}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->setPoiId(Ljava/lang/String;)V

    .line 131
    iget-object v6, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 133
    invoke-virtual {v4, v6}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->setPoiAddress(Ljava/lang/String;)V

    .line 136
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 138
    invoke-virtual {v4, v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->C(I)V

    .line 141
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;->s(Ljava/util/ArrayList;)V

    .line 148
    new-array v2, v5, [Ljava/lang/Object;

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 153
    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v1

    .line 158
    const/4 v3, 0x0

    .line 159
    aput-object v1, v2, v3

    .line 161
    const-string v1, "GetHomeOrCopInfoAction"

    .line 163
    const-string v3, "parseToAidlModel FavPoiInfos size:"

    .line 165
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    goto :goto_4

    .line 169
    :cond_6
    :goto_2
    iget v2, p0, Lmn;->k:I

    .line 171
    if-eq v2, v5, :cond_9

    .line 173
    const/4 v3, 0x2

    .line 174
    if-eq v2, v3, :cond_8

    .line 176
    if-eq v2, v4, :cond_7

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 181
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 184
    goto :goto_4

    .line 185
    :cond_8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 187
    const/16 v1, 0x2716

    .line 189
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 192
    goto :goto_4

    .line 193
    :cond_9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 195
    const/16 v1, 0x2715

    .line 197
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 200
    goto :goto_4

    .line 201
    :cond_a
    :goto_3
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 203
    const/16 v1, 0x2711

    .line 205
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 208
    :goto_4
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/16 v1, 0x273e

    .line 5
    invoke-virtual {v0, v1}, Lnc;->t(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 15
    return-object v1

    .line 16
    :cond_0
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 18
    const-string v2, "EXTRA_POITYPE"

    .line 20
    const-string v3, "EXTRA_HOME_AND_COMPANY"

    .line 22
    const-string v5, "GetHomeOrCopInfoAction"

    .line 24
    const-string v6, "POIID"

    .line 26
    const-string v7, "ADDRESS"

    .line 28
    const-string v8, "DISTANCE"

    .line 30
    const-string v9, "ENTRY_LON"

    .line 32
    const-string v10, "ENTRY_LAT"

    .line 34
    const-string v11, "LAT"

    .line 36
    const-string v12, "LON"

    .line 38
    const-string v13, "POINAME"

    .line 40
    const-string v14, "CATEGORY"

    .line 42
    const-string v15, ""

    .line 44
    move-object/from16 v16, v5

    .line 46
    if-eqz v1, :cond_4

    .line 48
    new-instance v1, Landroid/content/Intent;

    .line 50
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lmn;->z()Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;

    .line 56
    move-result-object v5

    .line 57
    if-eqz v5, :cond_3

    .line 59
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;->r()Ljava/util/ArrayList;

    .line 62
    move-result-object v17

    .line 63
    if-eqz v17, :cond_3

    .line 65
    iget v4, v0, Lmn;->k:I

    .line 67
    invoke-virtual {v1, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const/4 v4, 0x1

    .line 71
    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    move-object/from16 v18, v15

    .line 75
    iget v15, v0, Lmn;->k:I

    .line 77
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v15

    .line 81
    const/16 v17, 0x0

    .line 83
    aput-object v15, v4, v17

    .line 85
    const-string v15, "[pareseToIntent]type:{?}"

    .line 87
    move-object/from16 v19, v2

    .line 89
    move-object/from16 v2, v16

    .line 91
    invoke-static {v2, v15, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget v4, v0, Lmn;->k:I

    .line 96
    const/4 v15, 0x3

    .line 97
    if-ne v15, v4, :cond_1

    .line 99
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;->r()Ljava/util/ArrayList;

    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0, v4}, Lmn;->x(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :goto_0
    const/4 v3, 0x0

    .line 111
    goto/16 :goto_1

    .line 113
    :cond_1
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;->r()Ljava/util/ArrayList;

    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;->r()Ljava/util/ArrayList;

    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v3

    .line 127
    if-lez v3, :cond_2

    .line 129
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;->r()Ljava/util/ArrayList;

    .line 132
    move-result-object v3

    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;

    .line 140
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->u()Ljava/lang/String;

    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v1, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getPoiId()Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getLon()D

    .line 157
    move-result-wide v4

    .line 158
    invoke-virtual {v1, v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 161
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getLat()D

    .line 164
    move-result-wide v4

    .line 165
    invoke-virtual {v1, v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 168
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->s()D

    .line 171
    move-result-wide v4

    .line 172
    invoke-virtual {v1, v10, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 175
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->t()D

    .line 178
    move-result-wide v4

    .line 179
    invoke-virtual {v1, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 182
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->r()I

    .line 185
    move-result v4

    .line 186
    invoke-virtual {v1, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->v()I

    .line 192
    move-result v4

    .line 193
    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getPoiAddress()Ljava/lang/String;

    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->w()I

    .line 206
    move-result v3

    .line 207
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    move-result-object v3

    .line 211
    move-object/from16 v4, v19

    .line 213
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    goto :goto_0

    .line 217
    :cond_2
    move-object/from16 v5, v18

    .line 219
    invoke-virtual {v1, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-wide/16 v3, 0x0

    .line 224
    invoke-virtual {v1, v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 227
    invoke-virtual {v1, v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 230
    invoke-virtual {v1, v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 233
    invoke-virtual {v1, v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 236
    const/4 v3, 0x0

    .line 237
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 249
    move-result-object v4

    .line 250
    if-eqz v4, :cond_3

    .line 252
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 259
    move-result-object v4

    .line 260
    new-array v3, v3, [Ljava/lang/Object;

    .line 262
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :cond_3
    return-object v1

    .line 266
    :cond_4
    move-object v4, v2

    .line 267
    move-object v5, v15

    .line 268
    move-object/from16 v2, v16

    .line 270
    new-instance v1, Landroid/content/Intent;

    .line 272
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 278
    move-result-object v15

    .line 279
    check-cast v15, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 281
    if-eqz v15, :cond_8

    .line 283
    move-object/from16 v16, v2

    .line 285
    iget v2, v15, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->type:I

    .line 287
    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    iget v2, v15, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->type:I

    .line 292
    move-object/from16 v18, v5

    .line 294
    const/4 v5, 0x3

    .line 295
    if-ne v5, v2, :cond_5

    .line 297
    invoke-virtual {v15}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v0, v2}, Lmn;->y(Ljava/util/List;)Ljava/lang/String;

    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :goto_2
    const/4 v3, 0x0

    .line 309
    goto/16 :goto_3

    .line 311
    :cond_5
    invoke-virtual {v15}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 314
    move-result-object v2

    .line 315
    if-eqz v2, :cond_7

    .line 317
    invoke-virtual {v15}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 320
    move-result-object v2

    .line 321
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 324
    move-result v2

    .line 325
    if-lez v2, :cond_7

    .line 327
    invoke-virtual {v15}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 330
    move-result-object v2

    .line 331
    const/4 v3, 0x0

    .line 332
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    move-result-object v2

    .line 336
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 338
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 340
    invoke-virtual {v1, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-wide v5, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 352
    invoke-virtual {v1, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 355
    iget-wide v5, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 357
    invoke-virtual {v1, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 360
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 363
    move-result-object v3

    .line 364
    if-eqz v3, :cond_6

    .line 366
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 369
    move-result-object v3

    .line 370
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 373
    move-result v3

    .line 374
    if-lez v3, :cond_6

    .line 376
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 379
    move-result-object v3

    .line 380
    const/4 v5, 0x0

    .line 381
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 387
    iget-wide v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 389
    invoke-virtual {v1, v10, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 392
    iget-wide v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 394
    invoke-virtual {v1, v9, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 397
    :cond_6
    iget v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 399
    invoke-virtual {v1, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    iget v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 404
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 409
    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    iget v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 414
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    goto :goto_2

    .line 422
    :cond_7
    move-object/from16 v2, v18

    .line 424
    invoke-virtual {v1, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-wide/16 v3, 0x0

    .line 429
    invoke-virtual {v1, v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 432
    invoke-virtual {v1, v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 435
    invoke-virtual {v1, v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 438
    invoke-virtual {v1, v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 441
    const/4 v3, 0x0

    .line 442
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    :goto_3
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 454
    move-result-object v2

    .line 455
    if-eqz v2, :cond_8

    .line 457
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 464
    move-result-object v2

    .line 465
    new-array v3, v3, [Ljava/lang/Object;

    .line 467
    move-object/from16 v4, v16

    .line 469
    invoke-static {v4, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_8
    return-object v1
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;

    .line 9
    iget v1, p0, Lmn;->k:I

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;-><init>(I)V

    .line 14
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lmn;->k:I

    .line 24
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getFavoriteInfo(II)V

    .line 27
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;

    .line 24
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 26
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 29
    const-string v3, "POINAME"

    .line 31
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->u()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v3, "LON"

    .line 40
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getLon()D

    .line 43
    move-result-wide v4

    .line 44
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 47
    const-string v3, "LAT"

    .line 49
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getLat()D

    .line 52
    move-result-wide v4

    .line 53
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 56
    const-string v3, "ENTRY_LAT"

    .line 58
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->s()D

    .line 61
    move-result-wide v4

    .line 62
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65
    const-string v3, "ENTRY_LON"

    .line 67
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->t()D

    .line 70
    move-result-wide v4

    .line 71
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 74
    const-string v3, "DISTANCE"

    .line 76
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->v()I

    .line 79
    move-result v4

    .line 80
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v3, "CATEGORY"

    .line 85
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->r()I

    .line 88
    move-result v4

    .line 89
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v3, "ADDRESS"

    .line 94
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getPoiAddress()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v3, "EXTRA_POITYPE"

    .line 103
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->w()I

    .line 106
    move-result v4

    .line 107
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string v3, "POIID"

    .line 112
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoritePoiInfo;->getPoiId()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    const/4 v2, 0x1

    .line 125
    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    const/4 v3, 0x0

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    aput-object v1, v2, v3

    .line 134
    const-string v1, "GetHomeOrCopInfoAction"

    .line 136
    const-string v3, "sendHomeAndCompanyBroadcast homeJson ex = {?}"

    .line 138
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    goto/16 :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    return-object p1
.end method

.method public final y(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    if-eqz p1, :cond_1

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
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 24
    const/4 v2, 0x0

    .line 25
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 27
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v4, "POINAME"

    .line 32
    iget-object v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v4, "LON"

    .line 39
    iget-wide v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 41
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 44
    const-string v4, "LAT"

    .line 46
    iget-wide v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 48
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 64
    move-result v4

    .line 65
    if-lez v4, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 77
    const-string v5, "ENTRY_LAT"

    .line 79
    iget-wide v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 81
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 84
    const-string v5, "ENTRY_LON"

    .line 86
    iget-wide v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 88
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 91
    :cond_0
    const-string v4, "DISTANCE"

    .line 93
    iget v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 95
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string v4, "CATEGORY"

    .line 100
    iget v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 102
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v4, "ADDRESS"

    .line 107
    iget-object v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v4, "EXTRA_POITYPE"

    .line 114
    iget v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 116
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v4, "POIID"

    .line 121
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    const/4 v3, 0x1

    .line 134
    new-array v3, v3, [Ljava/lang/Object;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    aput-object v1, v3, v2

    .line 142
    const-string v1, "GetHomeOrCopInfoAction"

    .line 144
    const-string v2, "sendHomeAndCompanyBroadcast homeJson ex = {?}"

    .line 146
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    goto/16 :goto_0

    .line 151
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    return-object p1
.end method

.method public final z()Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/user/FavoritePoiModel;
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
    const-class v2, Lmn;

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
