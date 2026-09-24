.class public Lj50;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lj50;->d:Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;

    .line 6
    return-void
.end method

.method public static g(Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;)Lcom/autonavi/amapauto/protocol/model/service/ParkInfoModel;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->getParkingList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    goto/16 :goto_1

    .line 15
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ParkInfoModel;

    .line 17
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/ParkInfoModel;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->getDialogType()I

    .line 23
    move-result p0

    .line 24
    invoke-virtual {v1, p0}, Lcom/autonavi/amapauto/protocol/model/service/ParkInfoModel;->t(I)V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    move-result p0

    .line 31
    invoke-virtual {v1, p0}, Lcom/autonavi/amapauto/protocol/model/service/ParkInfoModel;->setCount(I)V

    .line 34
    new-instance p0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;

    .line 55
    new-instance v3, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;

    .line 57
    invoke-direct {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;-><init>()V

    .line 60
    iget v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->index:I

    .line 62
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->w(I)V

    .line 65
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->setName(Ljava/lang/String;)V

    .line 70
    iget v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->distance:I

    .line 72
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->setDistance(I)V

    .line 75
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->price:Ljava/lang/String;

    .line 77
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->x(Ljava/lang/String;)V

    .line 80
    new-instance v4, Ljava/math/BigDecimal;

    .line 82
    iget-wide v5, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->latitude:D

    .line 84
    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    .line 87
    const/4 v5, 0x6

    .line 88
    const/4 v6, 0x4

    .line 89
    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    .line 96
    move-result-wide v7

    .line 97
    new-instance v4, Ljava/math/BigDecimal;

    .line 99
    iget-wide v9, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->longitude:D

    .line 101
    invoke-direct {v4, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 104
    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    .line 111
    move-result-wide v9

    .line 112
    new-instance v4, Ljava/math/BigDecimal;

    .line 114
    iget-wide v11, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->entrylat:D

    .line 116
    invoke-direct {v4, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    .line 119
    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    .line 126
    move-result-wide v11

    .line 127
    new-instance v4, Ljava/math/BigDecimal;

    .line 129
    iget-wide v13, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->entrylon:D

    .line 131
    invoke-direct {v4, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    .line 134
    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    .line 141
    move-result-wide v4

    .line 142
    invoke-virtual {v3, v7, v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->setLatitude(D)V

    .line 145
    invoke-virtual {v3, v9, v10}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->setLongitude(D)V

    .line 148
    invoke-virtual {v3, v11, v12}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->setEntry_latitude(D)V

    .line 151
    invoke-virtual {v3, v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->setEntry_longitude(D)V

    .line 154
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->category:Ljava/lang/String;

    .line 156
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->v(Ljava/lang/String;)V

    .line 159
    iget v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->spaceNum:I

    .line 161
    invoke-virtual {v3, v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->y(I)V

    .line 164
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->poiid:Ljava/lang/String;

    .line 166
    invoke-virtual {v3, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->setPoiid(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    goto/16 :goto_0

    .line 174
    :cond_1
    invoke-virtual {v1, p0}, Lcom/autonavi/amapauto/protocol/model/service/ParkInfoModel;->u(Ljava/util/ArrayList;)V

    .line 177
    return-object v1

    .line 178
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 179
    return-object p0
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lj50;->d:Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lj50;->g(Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;)Lcom/autonavi/amapauto/protocol/model/service/ParkInfoModel;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2744

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_PARK_DATA"

    .line 15
    invoke-virtual {p0}, Lj50;->h()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "longitude"

    .line 5
    const-string v2, "latitude"

    .line 7
    new-instance v3, Lorg/json/JSONArray;

    .line 9
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 12
    :try_start_0
    iget-object v4, v1, Lj50;->d:Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;

    .line 14
    if-eqz v4, :cond_0

    .line 16
    invoke-virtual {v4}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->getParkingList()Ljava/util/List;

    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 22
    iget-object v4, v1, Lj50;->d:Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;

    .line 24
    invoke-virtual {v4}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->getParkingList()Ljava/util/List;

    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v4

    .line 32
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;

    .line 44
    new-instance v6, Lorg/json/JSONObject;

    .line 46
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 49
    const-string v7, "parkIndex"

    .line 51
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->index:I

    .line 53
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v7, "parkName"

    .line 58
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v7, "parkDistance"

    .line 65
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->distance:I

    .line 67
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v7, "parkPrice"

    .line 72
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->price:Ljava/lang/String;

    .line 74
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v7, Ljava/math/BigDecimal;

    .line 79
    iget-wide v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->latitude:D

    .line 81
    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 84
    const/4 v8, 0x4

    .line 85
    const/4 v9, 0x6

    .line 86
    invoke-virtual {v7, v9, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    .line 93
    move-result-wide v10

    .line 94
    new-instance v7, Ljava/math/BigDecimal;

    .line 96
    iget-wide v12, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->longitude:D

    .line 98
    invoke-direct {v7, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 101
    invoke-virtual {v7, v9, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    .line 108
    move-result-wide v12

    .line 109
    invoke-virtual {v6, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v6, v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 115
    const-string v7, "tag_category"

    .line 117
    iget-object v14, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->category:Ljava/lang/String;

    .line 119
    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v7, "num_space_f"

    .line 124
    iget v14, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->spaceNum:I

    .line 126
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 129
    move-result-object v14

    .line 130
    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    new-instance v7, Ljava/math/BigDecimal;

    .line 135
    iget-wide v14, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->entrylon:D

    .line 137
    invoke-direct {v7, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    .line 140
    invoke-virtual {v7, v9, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    .line 147
    move-result-wide v14

    .line 148
    new-instance v7, Ljava/math/BigDecimal;

    .line 150
    iget-wide v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->entrylat:D

    .line 152
    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 155
    const/4 v8, 0x4

    .line 156
    const/4 v9, 0x6

    .line 157
    invoke-virtual {v7, v9, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    .line 164
    move-result-wide v7

    .line 165
    invoke-virtual {v6, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {v6, v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 171
    const-string v9, "entry_longitude"

    .line 173
    invoke-virtual {v6, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 176
    const-string v9, "entry_latitude"

    .line 178
    invoke-virtual {v6, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 181
    const-string v7, "poiid"

    .line 183
    iget-object v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->poiid:Ljava/lang/String;

    .line 185
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    goto/16 :goto_0

    .line 193
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    :try_start_1
    const-string v2, "ParkingInfoDisAction"

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    move-result-object v4

    .line 205
    const/4 v5, 0x1

    .line 206
    new-array v5, v5, [Ljava/lang/Object;

    .line 208
    const/4 v6, 0x0

    .line 209
    aput-object v0, v5, v6

    .line 211
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    return-object v0

    .line 219
    :catchall_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    return-object v0
.end method
