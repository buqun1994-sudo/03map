.class public abstract Lmw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    aput-object p1, v0, v2

    .line 10
    const-string v2, ""

    .line 12
    const-string v3, " [VoiceRecognition] JsonUtil jsonToBean jsonStr = {?} cl = {?}"

    .line 14
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const-class v0, Lic0;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 41
    const-string p1, " [VoiceRecognition] JsonUtil jsonToBean equals SearchPoiBean class name"

    .line 43
    new-array v0, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {p0}, Lmw;->h(Ljava/lang/String;)Lic0;

    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p0, 0x0

    .line 54
    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "jsonToTel jsonStr"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    const-string v3, "JsonUtil"

    .line 23
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x1

    .line 27
    new-array v2, v0, [Ljava/lang/Object;

    .line 29
    aput-object p0, v2, v1

    .line 31
    const-string v4, ""

    .line 33
    const-string v5, " [VoiceRecognition] JsonUtil jsonToTel jsonStr = {?}"

    .line 35
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/4 v2, 0x0

    .line 39
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 41
    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v6, "jsonToTel JSONException"

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    new-array v6, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    aput-object p0, v0, v1

    .line 80
    const-string p0, " [VoiceRecognition] JsonUtil jsonToTel JSONException = {?}"

    .line 82
    invoke-static {v4, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    move-object v5, v2

    .line 86
    :goto_0
    if-nez v5, :cond_0

    .line 88
    const-string p0, "jsonToTel jobj == null"

    .line 90
    new-array v0, v1, [Ljava/lang/Object;

    .line 92
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string p0, " [VoiceRecognition] JsonUtil jsonToTel jobj == null"

    .line 97
    new-array v0, v1, [Ljava/lang/Object;

    .line 99
    invoke-static {v4, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-object v2

    .line 103
    :cond_0
    const-string p0, "number"

    .line 105
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method public static c(Lcom/autonavi/iflytek/bean/Poi;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "null"

    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 16
    const-string v1, ""

    .line 18
    const-string v3, " [VoiceRecognition] JsonUtil toJson poi = {?}"

    .line 20
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    if-nez p0, :cond_1

    .line 25
    const-string p0, " [VoiceRecognition] JsonUtil toJson poi == null"

    .line 27
    new-array v0, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_1
    new-instance v0, Lorg/json/JSONStringer;

    .line 36
    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 39
    invoke-static {v0, p0}, Lmw;->e(Lorg/json/JSONStringer;Lcom/autonavi/iflytek/bean/Poi;)V

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static d(Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v2, "null"

    .line 13
    :goto_0
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    const-string v2, ""

    .line 18
    const-string v4, " [VoiceRecognition] JsonUtil toJson pois = {?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_1

    .line 26
    const-string p0, " [VoiceRecognition] JsonUtil toJson pois == null"

    .line 28
    new-array v0, v3, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-object v1

    .line 34
    :cond_1
    new-instance v4, Lorg/json/JSONStringer;

    .line 36
    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 39
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p0

    .line 46
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/autonavi/iflytek/bean/Poi;

    .line 58
    invoke-static {v4, v5}, Lmw;->e(Lorg/json/JSONStringer;Lcom/autonavi/iflytek/bean/Poi;)V

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 65
    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object p0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    aput-object p0, v0, v3

    .line 79
    const-string p0, " [VoiceRecognition] JsonUtil toJson JSONException = {?}"

    .line 81
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-object v1
.end method

.method public static e(Lorg/json/JSONStringer;Lcom/autonavi/iflytek/bean/Poi;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "null"

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    const/4 v3, 0x0

    .line 15
    aput-object v2, v0, v3

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    const-string v1, ""

    .line 28
    const-string v4, " [VoiceRecognition] JsonUtil toJson js = {?} poi = {?}"

    .line 30
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    if-nez p1, :cond_2

    .line 35
    const-string p0, " [VoiceRecognition] JsonUtil toJson poi == null"

    .line 37
    new-array p1, v3, [Ljava/lang/Object;

    .line 39
    invoke-static {v1, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void

    .line 43
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 46
    const-string v0, "name"

    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 59
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->r()Ljava/lang/String;

    .line 62
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const-string v4, "address"

    .line 65
    if-eqz v0, :cond_4

    .line 67
    :try_start_1
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->r()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->r()Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_1
    invoke-virtual {p0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 97
    :goto_2
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->I()Ljava/lang/String;

    .line 100
    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    const-string v4, "telephone"

    .line 103
    if-eqz v0, :cond_6

    .line 105
    :try_start_2
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->I()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-virtual {p0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->I()Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    :goto_3
    invoke-virtual {p0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 135
    :goto_4
    const-string v0, "longitude"

    .line 137
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 148
    const-string v0, "latitude"

    .line 150
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 161
    const-string v0, "spCode"

    .line 163
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->H()Ljava/lang/String;

    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 174
    const-string v0, "phone"

    .line 176
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->C()Ljava/lang/String;

    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 187
    const-string v0, "area"

    .line 189
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->s()Ljava/lang/String;

    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 200
    const-string v0, "province"

    .line 202
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->G()Ljava/lang/String;

    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 213
    const-string v0, "city"

    .line 215
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->u()Ljava/lang/String;

    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 226
    const-string v0, "distance"

    .line 228
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->v()I

    .line 235
    move-result v4

    .line 236
    int-to-long v4, v4

    .line 237
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 240
    const-string v0, "matchLevel"

    .line 242
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->y()I

    .line 249
    move-result v4

    .line 250
    int-to-long v4, v4

    .line 251
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 254
    const-string v0, "category"

    .line 256
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->t()Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 267
    const-string v0, "poiid"

    .line 269
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->E()Ljava/lang/String;

    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 280
    const-string v0, "poitype"

    .line 282
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->F()Ljava/lang/String;

    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 293
    const-string v0, "navilat"

    .line 295
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->A()Ljava/lang/String;

    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 306
    const-string v0, "navilon"

    .line 308
    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->B()Ljava/lang/String;

    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {v0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 319
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    goto :goto_5

    .line 323
    :catch_0
    move-exception p0

    .line 324
    new-array p1, v2, [Ljava/lang/Object;

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 329
    move-result-object p0

    .line 330
    aput-object p0, p1, v3

    .line 332
    const-string p0, " [VoiceRecognition] JsonUtil toJson JSONException = {?}"

    .line 334
    invoke-static {v1, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :goto_5
    return-void
.end method

.method public static f(Ljava/lang/String;)Lcom/autonavi/iflytek/bean/Poi;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "toPoi jsonStr: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    const-string v3, "JsonUtil"

    .line 23
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x1

    .line 27
    new-array v2, v0, [Ljava/lang/Object;

    .line 29
    aput-object p0, v2, v1

    .line 31
    const-string v4, ""

    .line 33
    const-string v5, " [VoiceRecognition] JsonUtil toPoi jsonStr = {?}"

    .line 35
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/4 v2, 0x0

    .line 39
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 41
    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v6, "toPoi JSONException: "

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    new-array v6, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    aput-object p0, v0, v1

    .line 80
    const-string p0, " [VoiceRecognition] JsonUtil toPoi JSONException = {?}"

    .line 82
    invoke-static {v4, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    move-object v5, v2

    .line 86
    :goto_0
    if-nez v5, :cond_0

    .line 88
    const-string p0, "toPoi jobj == null"

    .line 90
    new-array v0, v1, [Ljava/lang/Object;

    .line 92
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string p0, " [VoiceRecognition] JsonUtil toPoi jobj == null"

    .line 97
    new-array v0, v1, [Ljava/lang/Object;

    .line 99
    invoke-static {v4, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-object v2

    .line 103
    :cond_0
    invoke-static {v5}, Lmw;->g(Lorg/json/JSONObject;)Lcom/autonavi/iflytek/bean/Poi;

    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public static g(Lorg/json/JSONObject;)Lcom/autonavi/iflytek/bean/Poi;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "null"

    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 16
    const-string v1, ""

    .line 18
    const-string v2, " [VoiceRecognition] JsonUtil toPoi jobj = {?}"

    .line 20
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/autonavi/iflytek/bean/Poi;

    .line 25
    invoke-direct {v0}, Lcom/autonavi/iflytek/bean/Poi;-><init>()V

    .line 28
    const-string v1, "name"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->R(Ljava/lang/String;)V

    .line 37
    const-string v1, "address"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->J(Ljava/lang/String;)V

    .line 46
    const-string v1, "latitude"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->O(Ljava/lang/String;)V

    .line 55
    const-string v1, "longitude"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->P(Ljava/lang/String;)V

    .line 64
    const-string v1, "telephone"

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->b0(Ljava/lang/String;)V

    .line 73
    const-string v1, "distance"

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->N(I)V

    .line 82
    const-string v1, "spCode"

    .line 84
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->Z(Ljava/lang/String;)V

    .line 91
    const-string v1, "phone"

    .line 93
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->U(Ljava/lang/String;)V

    .line 100
    const-string v1, "area"

    .line 102
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->K(Ljava/lang/String;)V

    .line 109
    const-string v1, "province"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->Y(Ljava/lang/String;)V

    .line 118
    const-string v1, "city"

    .line 120
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->M(Ljava/lang/String;)V

    .line 127
    const-string v1, "matchLevel"

    .line 129
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 132
    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->Q(I)V

    .line 136
    const-string v1, "category"

    .line 138
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->L(Ljava/lang/String;)V

    .line 145
    const-string v1, "poi"

    .line 147
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->V(Ljava/lang/String;)V

    .line 154
    const-string v1, "street"

    .line 156
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->a0(Ljava/lang/String;)V

    .line 163
    const-string v1, "poiid"

    .line 165
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->W(Ljava/lang/String;)V

    .line 172
    const-string v1, "poitype"

    .line 174
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->X(Ljava/lang/String;)V

    .line 181
    const-string v1, "navilat"

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/autonavi/iflytek/bean/Poi;->S(Ljava/lang/String;)V

    .line 190
    const-string v1, "navilon"

    .line 192
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {v0, p0}, Lcom/autonavi/iflytek/bean/Poi;->T(Ljava/lang/String;)V

    .line 199
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lic0;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v3, ""

    .line 9
    const-string v4, " [VoiceRecognition] JsonUtil toSearchPoiBean json = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 17
    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    aput-object p0, v0, v2

    .line 30
    const-string p0, " [VoiceRecognition] JsonUtil toSearchPoiBean JSONException = {?}"

    .line 32
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    move-object v4, v1

    .line 36
    :goto_0
    if-nez v4, :cond_0

    .line 38
    const-string p0, " [VoiceRecognition] JsonUtil toSearchPoiBean jobj == null"

    .line 40
    new-array v0, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-object v1

    .line 46
    :cond_0
    new-instance p0, Lic0;

    .line 48
    invoke-direct {p0}, Lic0;-><init>()V

    .line 51
    const-string v0, "name"

    .line 53
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lic0;->h:Ljava/lang/String;

    .line 59
    const-string v0, "country"

    .line 61
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lic0;->a:Ljava/lang/String;

    .line 67
    const-string v0, "province"

    .line 69
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lic0;->b:Ljava/lang/String;

    .line 75
    const-string v0, "city"

    .line 77
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lic0;->c:Ljava/lang/String;

    .line 83
    const-string v0, "area"

    .line 85
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lic0;->d:Ljava/lang/String;

    .line 91
    const-string v0, "landmark"

    .line 93
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lic0;->p:Ljava/lang/String;

    .line 99
    const-string v0, "distance"

    .line 101
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lic0;->j:I

    .line 107
    const-string v0, "matchLevel"

    .line 109
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 112
    move-result v0

    .line 113
    iput v0, p0, Lic0;->t:I

    .line 115
    const-string v0, "street"

    .line 117
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lic0;->e:Ljava/lang/String;

    .line 123
    const-string v0, "streets"

    .line 125
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lic0;->f:Ljava/lang/String;

    .line 131
    const-string v0, "poi"

    .line 133
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lic0;->i:Ljava/lang/String;

    .line 139
    const-string v0, "address"

    .line 141
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    iput-object v0, p0, Lic0;->k:Ljava/lang/String;

    .line 147
    const-string v0, "longitude"

    .line 149
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lic0;->l:Ljava/lang/String;

    .line 155
    const-string v0, "latitude"

    .line 157
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    iput-object v0, p0, Lic0;->m:Ljava/lang/String;

    .line 163
    const-string v0, "nearname"

    .line 165
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lic0;->n:Ljava/lang/String;

    .line 171
    const-string v0, "nearby"

    .line 173
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Lic0;->o:Ljava/lang/String;

    .line 179
    const-string v0, "spCode"

    .line 181
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    iput-object v0, p0, Lic0;->q:Ljava/lang/String;

    .line 187
    const-string v0, "category"

    .line 189
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    iput-object v0, p0, Lic0;->r:Ljava/lang/String;

    .line 195
    const-string v0, "phone"

    .line 197
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lic0;->s:Ljava/lang/String;

    .line 203
    const-string v0, "telephone"

    .line 205
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    iput-object v0, p0, Lic0;->u:Ljava/lang/String;

    .line 211
    const-string v0, "number"

    .line 213
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p0, Lic0;->g:Ljava/lang/String;

    .line 219
    return-object p0
.end method
