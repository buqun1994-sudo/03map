.class public abstract Lnw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;)Loj;
    .locals 4

    .line 1
    new-instance v0, Loj;

    .line 3
    invoke-direct {v0}, Loj;-><init>()V

    .line 6
    new-instance v1, Landroid/util/JsonReader;

    .line 8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 10
    const-string v3, "utf-8"

    .line 12
    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 15
    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 18
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 21
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_3

    .line 27
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string v2, "socketPort"

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v2, "deviceName"

    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    iput-object p0, v0, Loj;->a:Ljava/lang/String;

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string v2, "appId"

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_2

    .line 66
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    iput-object p0, v0, Loj;->b:Ljava/lang/String;

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 80
    return-object v0
.end method

.method public static declared-synchronized b(Ljava/io/InputStream;)Lgw;
    .locals 7

    .line 1
    const-class v0, Lnw;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/JsonReader;

    .line 6
    new-instance v2, Ljava/io/InputStreamReader;

    .line 8
    const-string v3, "UTF-8"

    .line 10
    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 13
    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 16
    new-instance p0, Lgw;

    .line 18
    invoke-direct {p0}, Lgw;-><init>()V

    .line 21
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 24
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_14

    .line 30
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, "isAndroid"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 42
    const-string v2, "isAndroid"

    .line 44
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 52
    iput-boolean v2, p0, Lgw;->a:Z

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v3, "SDKVersion"

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    iput-object v2, p0, Lgw;->b:Ljava/lang/String;

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v3, "httpPort"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    iput-object v2, p0, Lgw;->g:Ljava/lang/String;

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const-string v3, "httpIP"

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 93
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    iput-object v2, p0, Lgw;->f:Ljava/lang/String;

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const-string v3, "socketPort"

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 108
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    iput-object v2, p0, Lgw;->h:Ljava/lang/String;

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    const-string v3, "deviceName"

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_5

    .line 123
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    iput-object v2, p0, Lgw;->i:Ljava/lang/String;

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    const-string v3, "appId"

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 138
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    iput-object v2, p0, Lgw;->j:Ljava/lang/String;

    .line 144
    goto :goto_0

    .line 145
    :cond_6
    const-string v3, "appName"

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_7

    .line 153
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    iput-object v2, p0, Lgw;->k:Ljava/lang/String;

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_7
    const-string v3, "appVersion"

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_8

    .line 169
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 173
    iput-object v2, p0, Lgw;->l:Ljava/lang/String;

    .line 175
    goto/16 :goto_0

    .line 177
    :cond_8
    const-string v3, "connectionId"

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_9

    .line 185
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    iput-object v2, p0, Lgw;->m:Ljava/lang/String;

    .line 191
    goto/16 :goto_0

    .line 193
    :cond_9
    const-string v3, "Bluetooth"

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v3

    .line 199
    const/4 v4, 0x0

    .line 200
    if-eqz v3, :cond_c

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    .line 204
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 210
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_a

    .line 216
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 219
    move-result-object v3

    .line 220
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    goto :goto_1

    .line 224
    :cond_a
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    .line 227
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 230
    move-result v3

    .line 231
    new-array v5, v3, [Ljava/lang/String;

    .line 233
    :goto_2
    if-ge v4, v3, :cond_b

    .line 235
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v6

    .line 239
    check-cast v6, Ljava/lang/String;

    .line 241
    aput-object v6, v5, v4

    .line 243
    add-int/lit8 v4, v4, 0x1

    .line 245
    goto :goto_2

    .line 246
    :cond_b
    iput-object v5, p0, Lgw;->c:[Ljava/lang/String;

    .line 248
    goto/16 :goto_0

    .line 250
    :cond_c
    const-string v3, "WIFI"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_f

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    .line 260
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 266
    :goto_3
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_d

    .line 272
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 275
    move-result-object v3

    .line 276
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    goto :goto_3

    .line 280
    :cond_d
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    .line 283
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 286
    move-result v3

    .line 287
    new-array v5, v3, [Ljava/lang/String;

    .line 289
    :goto_4
    if-ge v4, v3, :cond_e

    .line 291
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 294
    move-result-object v6

    .line 295
    check-cast v6, Ljava/lang/String;

    .line 297
    aput-object v6, v5, v4

    .line 299
    add-int/lit8 v4, v4, 0x1

    .line 301
    goto :goto_4

    .line 302
    :cond_e
    iput-object v5, p0, Lgw;->d:[Ljava/lang/String;

    .line 304
    goto/16 :goto_0

    .line 306
    :cond_f
    const-string v3, "HTTP"

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_12

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    .line 316
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 322
    :goto_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    .line 325
    move-result v3

    .line 326
    if-eqz v3, :cond_10

    .line 328
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 331
    move-result-object v3

    .line 332
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    goto :goto_5

    .line 336
    :cond_10
    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V

    .line 339
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 342
    move-result v3

    .line 343
    new-array v5, v3, [Ljava/lang/String;

    .line 345
    :goto_6
    if-ge v4, v3, :cond_11

    .line 347
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 350
    move-result-object v6

    .line 351
    check-cast v6, Ljava/lang/String;

    .line 353
    aput-object v6, v5, v4

    .line 355
    add-int/lit8 v4, v4, 0x1

    .line 357
    goto :goto_6

    .line 358
    :cond_11
    iput-object v5, p0, Lgw;->e:[Ljava/lang/String;

    .line 360
    goto/16 :goto_0

    .line 362
    :cond_12
    const-string v3, "deviceInfo"

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_13

    .line 370
    invoke-static {v1}, Lnw;->c(Landroid/util/JsonReader;)Lti;

    .line 373
    move-result-object v2

    .line 374
    iput-object v2, p0, Lgw;->n:Lti;

    .line 376
    goto/16 :goto_0

    .line 378
    :cond_13
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 381
    goto/16 :goto_0

    .line 383
    :cond_14
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit v0

    .line 387
    return-object p0

    .line 388
    :catchall_0
    move-exception p0

    .line 389
    monitor-exit v0

    .line 390
    throw p0
.end method

.method public static c(Landroid/util/JsonReader;)Lti;
    .locals 3

    .line 1
    new-instance v0, Lti;

    .line 3
    invoke-direct {v0}, Lti;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "deviceId"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lti;->a:Ljava/lang/String;

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "deviceName"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lti;->b:Ljava/lang/String;

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v2, "factoryName"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lti;->c:Ljava/lang/String;

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string v2, "osVersion"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lti;->d:Ljava/lang/String;

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string v2, "isRoot"

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Lti;->e:Ljava/lang/String;

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 101
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    if-nez p0, :cond_0

    .line 8
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    :cond_0
    const-string v1, "deviceName"

    .line 12
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    if-nez p1, :cond_1

    .line 17
    const-string p1, ""

    .line 19
    :cond_1
    const-string p0, "appId"

    .line 21
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    if-nez p2, :cond_2

    .line 26
    const-string p2, "5656"

    .line 28
    :cond_2
    const-string p0, "socketPort"

    .line 30
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8

    .line 1
    const-class v0, Lnw;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v7, Lgw;

    .line 6
    invoke-direct {v7}, Lgw;-><init>()V

    .line 9
    invoke-static {}, Ldx;->c()Ldx;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ldx;->d()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v7, Lgw;->b:Ljava/lang/String;

    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    const-string v2, "1. point to point"

    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v2, v1, v3

    .line 27
    const-string v2, "2. transfer small file"

    .line 29
    const/4 v4, 0x1

    .line 30
    aput-object v2, v1, v4

    .line 32
    new-array v2, v4, [Ljava/lang/String;

    .line 34
    const-string v5, "1. point to point"

    .line 36
    aput-object v5, v2, v3

    .line 38
    new-array v4, v4, [Ljava/lang/String;

    .line 40
    const-string v5, "1.1"

    .line 42
    aput-object v5, v4, v3

    .line 44
    if-eqz p1, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p1, ""

    .line 49
    :goto_0
    iput-object p1, v7, Lgw;->g:Ljava/lang/String;

    .line 51
    if-eqz p0, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string p0, ""

    .line 56
    :goto_1
    iput-object p0, v7, Lgw;->f:Ljava/lang/String;

    .line 58
    if-eqz p2, :cond_2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const-string p2, ""

    .line 63
    :goto_2
    iput-object p2, v7, Lgw;->h:Ljava/lang/String;

    .line 65
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 67
    iput-object v3, v7, Lgw;->i:Ljava/lang/String;

    .line 69
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lpd0;->o()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    iput-object p0, v7, Lgw;->j:Ljava/lang/String;

    .line 79
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lpd0;->n()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    iput-object p0, v7, Lgw;->k:Ljava/lang/String;

    .line 89
    invoke-static {}, Lpd0;->s()Lpd0;

    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lpd0;->p()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    iput-object p0, v7, Lgw;->l:Ljava/lang/String;

    .line 99
    iput-object v1, v7, Lgw;->c:[Ljava/lang/String;

    .line 101
    iput-object v2, v7, Lgw;->d:[Ljava/lang/String;

    .line 103
    iput-object v4, v7, Lgw;->e:[Ljava/lang/String;

    .line 105
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 107
    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 109
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 111
    const/4 v6, 0x0

    .line 112
    move-object v1, v7

    .line 113
    invoke-virtual/range {v1 .. v6}, Lgw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    new-instance p0, Lorg/json/JSONObject;

    .line 118
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    const-string p1, "isAndroid"

    .line 123
    const-string p2, "isAndroid"

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string p1, "SDKVersion"

    .line 130
    iget-object p2, v7, Lgw;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string p1, "httpPort"

    .line 137
    iget-object p2, v7, Lgw;->g:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string p1, "httpIP"

    .line 144
    iget-object p2, v7, Lgw;->f:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string p1, "socketPort"

    .line 151
    iget-object p2, v7, Lgw;->h:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string p1, "deviceName"

    .line 158
    iget-object p2, v7, Lgw;->i:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string p1, "appId"

    .line 165
    iget-object p2, v7, Lgw;->j:Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string p1, "appName"

    .line 172
    iget-object p2, v7, Lgw;->k:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string p1, "appVersion"

    .line 179
    iget-object p2, v7, Lgw;->l:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string p1, "connectionId"

    .line 186
    invoke-static {}, Lpc0;->d()Lpc0;

    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p2}, Lpc0;->b()Ljava/lang/String;

    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    new-instance p1, Lorg/json/JSONArray;

    .line 199
    iget-object p2, v7, Lgw;->c:[Ljava/lang/String;

    .line 201
    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 204
    const-string p2, "Bluetooth"

    .line 206
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    new-instance p1, Lorg/json/JSONArray;

    .line 211
    iget-object p2, v7, Lgw;->d:[Ljava/lang/String;

    .line 213
    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 216
    const-string p2, "WIFI"

    .line 218
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    new-instance p1, Lorg/json/JSONArray;

    .line 223
    iget-object p2, v7, Lgw;->e:[Ljava/lang/String;

    .line 225
    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 228
    const-string p2, "HTTP"

    .line 230
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    new-instance p1, Ljava/util/HashMap;

    .line 235
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 238
    const-string p2, "deviceId"

    .line 240
    iget-object v1, v7, Lgw;->n:Lti;

    .line 242
    iget-object v1, v1, Lti;->a:Ljava/lang/String;

    .line 244
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string p2, "deviceName"

    .line 249
    iget-object v1, v7, Lgw;->n:Lti;

    .line 251
    iget-object v1, v1, Lti;->b:Ljava/lang/String;

    .line 253
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string p2, "factoryName"

    .line 258
    iget-object v1, v7, Lgw;->n:Lti;

    .line 260
    iget-object v1, v1, Lti;->c:Ljava/lang/String;

    .line 262
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string p2, "osVersion"

    .line 267
    iget-object v1, v7, Lgw;->n:Lti;

    .line 269
    iget-object v1, v1, Lti;->d:Ljava/lang/String;

    .line 271
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string p2, "isRoot"

    .line 276
    iget-object v1, v7, Lgw;->n:Lti;

    .line 278
    iget-object v1, v1, Lti;->e:Ljava/lang/String;

    .line 280
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance p2, Lorg/json/JSONObject;

    .line 285
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 288
    const-string p1, "deviceInfo"

    .line 290
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 300
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit v0

    .line 302
    return-object p0

    .line 303
    :catchall_0
    move-exception p0

    .line 304
    monitor-exit v0

    .line 305
    throw p0
.end method
