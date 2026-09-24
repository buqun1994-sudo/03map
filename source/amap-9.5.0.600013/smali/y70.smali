.class public abstract Ly70;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 4

    .line 1
    if-eqz p0, :cond_6

    .line 3
    const/16 v0, 0x68

    .line 5
    if-eq p0, v0, :cond_7

    .line 7
    const/16 v0, 0xc8

    .line 9
    const/16 v1, 0x74

    .line 11
    if-eq p0, v1, :cond_7

    .line 13
    if-eq p0, v0, :cond_5

    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_4

    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p0, v1, :cond_3

    .line 21
    const/16 v2, 0x65

    .line 23
    if-eq p0, v2, :cond_2

    .line 25
    const/16 v2, 0x66

    .line 27
    if-eq p0, v2, :cond_1

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    packed-switch p0, :pswitch_data_0

    .line 34
    packed-switch p0, :pswitch_data_1

    .line 37
    packed-switch p0, :pswitch_data_2

    .line 40
    packed-switch p0, :pswitch_data_3

    .line 43
    const/16 v1, 0x7d0

    .line 45
    if-ge p0, v1, :cond_0

    .line 47
    add-int/lit16 v1, p0, -0x3e8

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v1, p0

    .line 51
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p0

    .line 57
    aput-object p0, v0, v3

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p0

    .line 63
    aput-object p0, v0, v2

    .line 65
    const-string p0, "autoStatusAidl2Boast"

    .line 67
    const-string v2, "aidlStatus:{?}, boastStatus:{?}"

    .line 69
    invoke-static {p0, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    move v0, v1

    .line 73
    goto/16 :goto_1

    .line 75
    :pswitch_0
    const/16 v0, 0x6d

    .line 77
    goto/16 :goto_1

    .line 79
    :pswitch_1
    const/16 v0, 0x6c

    .line 81
    goto/16 :goto_1

    .line 83
    :pswitch_2
    const/16 v0, 0x6b

    .line 85
    goto/16 :goto_1

    .line 87
    :pswitch_3
    const/16 v0, 0xcb

    .line 89
    goto/16 :goto_1

    .line 91
    :pswitch_4
    const/16 v0, 0xca

    .line 93
    goto/16 :goto_1

    .line 95
    :pswitch_5
    const/16 v0, 0x48

    .line 97
    goto/16 :goto_1

    .line 99
    :pswitch_6
    const/16 v0, 0x47

    .line 101
    goto/16 :goto_1

    .line 103
    :pswitch_7
    const/16 v0, 0x46

    .line 105
    goto/16 :goto_1

    .line 107
    :pswitch_8
    const/16 v0, 0xc

    .line 109
    goto/16 :goto_1

    .line 111
    :pswitch_9
    const/16 v0, 0xb

    .line 113
    goto/16 :goto_1

    .line 115
    :pswitch_a
    const/16 v0, 0xa

    .line 117
    goto/16 :goto_1

    .line 119
    :pswitch_b
    const/16 v0, 0x26

    .line 121
    goto/16 :goto_1

    .line 123
    :pswitch_c
    const/16 v0, 0x25

    .line 125
    goto/16 :goto_1

    .line 127
    :pswitch_d
    const/16 v0, 0x19

    .line 129
    goto/16 :goto_1

    .line 131
    :pswitch_e
    const/16 v0, 0x18

    .line 133
    goto/16 :goto_1

    .line 135
    :pswitch_f
    const/16 v0, 0x11

    .line 137
    goto/16 :goto_1

    .line 139
    :pswitch_10
    const/16 v0, 0x12

    .line 141
    goto :goto_1

    .line 142
    :pswitch_11
    const/16 v0, 0x13

    .line 144
    goto :goto_1

    .line 145
    :pswitch_12
    const/16 v0, 0x15

    .line 147
    goto :goto_1

    .line 148
    :pswitch_13
    const/16 v0, 0x14

    .line 150
    goto :goto_1

    .line 151
    :pswitch_14
    const/16 v0, 0x17

    .line 153
    goto :goto_1

    .line 154
    :pswitch_15
    const/16 v0, 0x16

    .line 156
    goto :goto_1

    .line 157
    :pswitch_16
    const/16 v0, 0xf

    .line 159
    goto :goto_1

    .line 160
    :pswitch_17
    const/16 v0, 0x10

    .line 162
    goto :goto_1

    .line 163
    :pswitch_18
    const/16 v0, 0x27

    .line 165
    goto :goto_1

    .line 166
    :pswitch_19
    const/16 v0, 0x9

    .line 168
    goto :goto_1

    .line 169
    :pswitch_1a
    const/16 v0, 0x8

    .line 171
    goto :goto_1

    .line 172
    :pswitch_1b
    const/4 v0, 0x7

    .line 173
    goto :goto_1

    .line 174
    :pswitch_1c
    const/4 v0, 0x6

    .line 175
    goto :goto_1

    .line 176
    :pswitch_1d
    const/4 v0, 0x5

    .line 177
    goto :goto_1

    .line 178
    :pswitch_1e
    const/16 v0, 0x28

    .line 180
    goto :goto_1

    .line 181
    :pswitch_1f
    const/4 v0, 0x4

    .line 182
    goto :goto_1

    .line 183
    :pswitch_20
    const/4 v0, 0x3

    .line 184
    goto :goto_1

    .line 185
    :pswitch_21
    const/4 v0, 0x1

    .line 186
    goto :goto_1

    .line 187
    :pswitch_22
    const/4 v0, 0x0

    .line 188
    goto :goto_1

    .line 189
    :pswitch_23
    const/16 v0, 0x6f

    .line 191
    goto :goto_1

    .line 192
    :pswitch_24
    const/16 v0, 0x6e

    .line 194
    goto :goto_1

    .line 195
    :cond_1
    const/16 v0, 0x66

    .line 197
    goto :goto_1

    .line 198
    :cond_2
    const/16 v0, 0x65

    .line 200
    goto :goto_1

    .line 201
    :cond_3
    const/16 v0, 0x3e

    .line 203
    goto :goto_1

    .line 204
    :cond_4
    const/16 v0, 0x3d

    .line 206
    goto :goto_1

    .line 207
    :cond_5
    const/16 v0, 0x74

    .line 209
    goto :goto_1

    .line 210
    :cond_6
    const/16 v0, 0x67

    .line 212
    :cond_7
    :goto_1
    :pswitch_25
    return v0

    .line 213
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_25
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 269
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 281
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 295
    :pswitch_data_3
    .packed-switch 0x6b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "ProtocolJsonUtils"

    .line 6
    const-string v3, "[getUnionUserInfo]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lse;->getCarEnterpriseUserInfo()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->toString()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v3, v0

    .line 30
    const-string v0, "[getUnionUserInfo]carEnterpriseUserInfoData={?}"

    .line 32
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v3, "[getUnionUserInfo]carEnterpriseUserInfoData=null"

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method

.method public static c(Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;->slopeValue:F

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 14
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;->rollValue:F

    .line 16
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "slopeValid"

    .line 25
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;->slopeValid:Z

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    const-string v1, "slopeValue"

    .line 32
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;->slopeValue:F

    .line 34
    float-to-double v2, v2

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 38
    const-string v1, "rollValue"

    .line 40
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;->rollValue:F

    .line 42
    float-to-double v2, v2

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 46
    const-string v1, "rollValid"

    .line 48
    iget-boolean p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarLocationInfo;->rollValid:Z

    .line 50
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object p0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const/4 v1, 0x0

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    const-string v2, "ProtocolJsonUtils"

    .line 65
    const-string v3, "ocuur a exception !!"

    .line 67
    invoke-static {v2, v3, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 70
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static d(Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->lat:D

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    cmpl-double v5, v1, v3

    .line 12
    if-lez v5, :cond_0

    .line 14
    iget-wide v5, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->lon:D

    .line 16
    cmpl-double v7, v5, v3

    .line 18
    if-lez v7, :cond_0

    .line 20
    const-string v3, "latitude"

    .line 22
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 25
    const-string v1, "longitude"

    .line 27
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->lon:D

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    const-string v1, "altitude"

    .line 34
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->alt:D

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 39
    :cond_0
    const-string v1, "bearing"

    .line 41
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->bearing:F

    .line 43
    float-to-double v2, v2

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 47
    const-string v1, "accuracy"

    .line 49
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->accuracy:F

    .line 51
    float-to-double v2, v2

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    const-string v1, "speed"

    .line 57
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->speed:F

    .line 59
    float-to-double v2, v2

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 63
    const-string v1, "time"

    .line 65
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->time:J

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 70
    const-string v1, "provider"

    .line 72
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/LocationInfo;->provider:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public static e(Lorg/json/JSONObject;)Lke;
    .locals 2

    .line 1
    new-instance v0, Lke;

    .line 3
    invoke-direct {v0}, Lke;-><init>()V

    .line 6
    const-string v1, "latitude"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lke;->b:Ljava/lang/String;

    .line 14
    const-string v1, "longitude"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lke;->a:Ljava/lang/String;

    .line 22
    const-string v1, "headPortraitPath"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lke;->c:Ljava/lang/String;

    .line 30
    const-string v1, "carLogoPath"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lke;->d:Ljava/lang/String;

    .line 38
    const-string v1, "direction"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lke;->e:Ljava/lang/String;

    .line 46
    const-string v1, "account"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lke;->f:Ljava/lang/String;

    .line 54
    const-string v1, "name"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v0, Lke;->g:Ljava/lang/String;

    .line 62
    const-string v1, "telephone"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lke;->h:Ljava/lang/String;

    .line 70
    const-string v1, "number"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    iput-object p0, v0, Lke;->i:Ljava/lang/String;

    .line 78
    return-object v0
.end method

.method public static f(Ljava/lang/String;)[Lke;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 9
    move-result p0

    .line 10
    new-array v1, p0, [Lke;

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, p0, :cond_0

    .line 15
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ly70;->e(Lorg/json/JSONObject;)Lke;

    .line 22
    move-result-object v3

    .line 23
    aput-object v3, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v1

    .line 29
    :catch_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static g(Ljava/util/List;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "ProtocolJsonUtils"

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 7
    const-string p0, "[toJsonString]carTeamBeans == null"

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    .line 17
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    move-result v5

    .line 25
    if-ge v4, v5, :cond_1

    .line 27
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lke;

    .line 33
    new-instance v6, Lorg/json/JSONObject;

    .line 35
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string v7, "latitude"

    .line 40
    iget-object v8, v5, Lke;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v7, "longitude"

    .line 47
    iget-object v8, v5, Lke;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v7, "headPortraitPath"

    .line 54
    iget-object v8, v5, Lke;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v7, "carLogoPath"

    .line 61
    iget-object v8, v5, Lke;->d:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v7, "direction"

    .line 68
    iget-object v8, v5, Lke;->e:Ljava/lang/String;

    .line 70
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v7, "account"

    .line 75
    iget-object v8, v5, Lke;->f:Ljava/lang/String;

    .line 77
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v7, "name"

    .line 82
    iget-object v8, v5, Lke;->g:Ljava/lang/String;

    .line 84
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v7, "telephone"

    .line 89
    iget-object v8, v5, Lke;->h:Ljava/lang/String;

    .line 91
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v7, "number"

    .line 96
    iget-object v5, v5, Lke;->i:Ljava/lang/String;

    .line 98
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    const-string v3, "[toJsonString]json:{?}"

    .line 113
    const/4 v4, 0x1

    .line 114
    new-array v4, v4, [Ljava/lang/Object;

    .line 116
    aput-object p0, v4, v2

    .line 118
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-object p0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    const-string v3, "[toJsonString]JSONException"

    .line 125
    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    invoke-static {v1, v3, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 130
    return-object v0
.end method

.method public static h(Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;)Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;
    .locals 8

    .line 1
    if-eqz p0, :cond_0

    .line 3
    new-instance v7, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;

    .line 5
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceApp:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAppName:Ljava/lang/String;

    .line 9
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->isAccountLoginStatus:Z

    .line 11
    xor-int/lit8 v3, v0, 0x1

    .line 13
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountToken:Ljava/lang/String;

    .line 15
    iget-object v5, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAutoAccount:Ljava/lang/String;

    .line 17
    iget-object v6, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceTokenId:Ljava/lang/String;

    .line 19
    move-object v0, v7

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountId:Ljava/lang/String;

    .line 25
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccountId(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountName:Ljava/lang/String;

    .line 30
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccountName(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountAvatar:Ljava/lang/String;

    .line 35
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccountAvatar(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->deviceId:Ljava/lang/String;

    .line 40
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setDeviceId(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->deviceNo:Ljava/lang/String;

    .line 45
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setDeviceNo(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->userRequestTime:Ljava/lang/String;

    .line 50
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setUserRequestTime(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->bindingId:Ljava/lang/String;

    .line 55
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setBindingId(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->bingingAck:I

    .line 60
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setBingingAck(I)V

    .line 63
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->carLoginEnvironment:Ljava/lang/String;

    .line 65
    invoke-virtual {v7, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setCarLoginEnvironment(Ljava/lang/String;)V

    .line 68
    return-object v7

    .line 69
    :cond_0
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method
