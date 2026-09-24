.class public Lcom/amap/location/sdk/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;)V
    .locals 13

    .line 1
    const-string v0, "moni_wthread"

    .line 3
    const-string v1, "silent"

    .line 5
    const-string v2, "locsdk_plugin"

    .line 7
    const-string v3, "sub_retry"

    .line 9
    const-string v4, "sdkLocationMonitor"

    .line 11
    const-string v5, "aos_country"

    .line 13
    const-string v6, "opt"

    .line 15
    const-string v7, "VALoc"

    .line 17
    const-string v8, "fake_huawei"

    .line 19
    const-string v9, "dim"

    .line 21
    const-string v10, "l"

    .line 23
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/e;->b()Z

    .line 26
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const-string v12, "locsdk_basic"

    .line 29
    if-nez v11, :cond_2

    .line 31
    :try_start_1
    const-string v0, "amapcloudparser"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v3, "cloud sync\uff1a"

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, ",adCode:"

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDic()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    const-string v1, "C3090"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_0

    .line 97
    const-string v1, "list_"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    .line 107
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/amap/location/support/cloud/PluginCloudManager;->getInstance()Lcom/amap/location/support/cloud/PluginCloudManager;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Lcom/amap/location/support/cloud/BaseCloud;->updateCloud(Lorg/json/JSONObject;)V

    .line 117
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCart;->getInstance()Lcom/amap/location/icecream/IcecreamCart;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Lcom/amap/location/icecream/IcecreamCart;->init(Lorg/json/JSONObject;)V

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/amap/location/support/cloud/PluginCloudManager;->getInstance()Lcom/amap/location/support/cloud/PluginCloudManager;

    .line 128
    move-result-object v0

    .line 129
    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Lcom/amap/location/support/cloud/BaseCloud;->updateCloud(Lorg/json/JSONObject;)V

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_d

    .line 139
    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_d

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    .line 151
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0, v0}, Lcom/amap/location/support/cloud/AmapCloudManager;->updateCloud(Lorg/json/JSONObject;)V

    .line 161
    const p0, 0x18785

    .line 164
    invoke-static {p0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 167
    goto/16 :goto_3

    .line 169
    :cond_2
    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_d

    .line 175
    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 179
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_d

    .line 185
    new-instance v2, Lorg/json/JSONObject;

    .line 187
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance p0, Lorg/json/JSONObject;

    .line 192
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 198
    move-result v11

    .line 199
    if-eqz v11, :cond_3

    .line 201
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 204
    move-result-object v11

    .line 205
    invoke-virtual {p0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_3
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 211
    move-result v10

    .line 212
    if-eqz v10, :cond_4

    .line 214
    const/16 v10, 0xf

    .line 216
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 219
    move-result v10

    .line 220
    invoke-virtual {p0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    :cond_4
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_5

    .line 229
    const-string v9, ""

    .line 231
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    move-result-object v9

    .line 235
    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_5
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 241
    move-result v8

    .line 242
    if-eqz v8, :cond_6

    .line 244
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {p0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_6
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 254
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    const-string v8, "sp_silent_switch"

    .line 257
    const/4 v9, 0x0

    .line 258
    if-eqz v7, :cond_7

    .line 260
    :try_start_2
    invoke-virtual {v2, v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 263
    move-result v1

    .line 264
    invoke-static {v8, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    goto :goto_1

    .line 268
    :cond_7
    invoke-static {v8, v9}, Lcom/amap/location/support/app/GlobalStorageSync;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    :goto_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 274
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    const-string v7, "sp_rec_block_switch"

    .line 277
    if-eqz v1, :cond_8

    .line 279
    :try_start_3
    invoke-virtual {v2, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 282
    move-result v0

    .line 283
    invoke-static {v7, v0}, Lcom/amap/location/support/app/GlobalStorageSync;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    goto :goto_2

    .line 287
    :cond_8
    invoke-static {v7, v9}, Lcom/amap/location/support/app/GlobalStorageSync;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    :goto_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_9

    .line 296
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p0, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    :cond_9
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_a

    .line 309
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    :cond_a
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_b

    .line 322
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :cond_b
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_c

    .line 335
    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 338
    move-result v0

    .line 339
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    :cond_c
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, p0}, Lcom/amap/location/support/cloud/AmapCloudManager;->updateCloud(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 349
    goto :goto_3

    .line 350
    :catch_0
    move-exception p0

    .line 351
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 354
    :cond_d
    :goto_3
    return-void
.end method
