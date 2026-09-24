.class public final Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;-><init>()V

    .line 10
    const-string v1, "clientPackageName"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 23
    const-string v1, "packageName"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 36
    const-string v1, "callbackId"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 49
    const-string v1, "timeStamp"

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 54
    move-result-wide v2

    .line 55
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 62
    const-string v1, "var1"

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 75
    const-string v1, "gpgga"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->u()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->I(Ljava/lang/String;)V

    .line 88
    const-string v1, "gprmc"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->y()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->M(Ljava/lang/String;)V

    .line 101
    const-string v1, "gpgsv"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->x()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->L(Ljava/lang/String;)V

    .line 114
    const-string v1, "gpgsa"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->w()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->K(Ljava/lang/String;)V

    .line 127
    const-string v1, "gpvtg"

    .line 129
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->z()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->N(Ljava/lang/String;)V

    .line 140
    const-string v1, "gpgll"

    .line 142
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->v()Ljava/lang/String;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->J(Ljava/lang/String;)V

    .line 153
    const-string v1, "timestamp"

    .line 155
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->E()J

    .line 158
    move-result-wide v2

    .line 159
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 162
    move-result-wide v1

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->S(J)V

    .line 166
    const-string v1, "lat"

    .line 168
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->getLat()D

    .line 171
    move-result-wide v2

    .line 172
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 175
    move-result-wide v1

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->setLat(D)V

    .line 179
    const-string v1, "ns"

    .line 181
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->C()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->Q(Ljava/lang/String;)V

    .line 192
    const-string v1, "lon"

    .line 194
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->getLon()D

    .line 197
    move-result-wide v2

    .line 198
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 201
    move-result-wide v1

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->setLon(D)V

    .line 205
    const-string v1, "ew"

    .line 207
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->t()Ljava/lang/String;

    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->H(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->r()F

    .line 221
    move-result v1

    .line 222
    float-to-double v1, v1

    .line 223
    const-string v3, "course"

    .line 225
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 228
    move-result-wide v1

    .line 229
    double-to-float v1, v1

    .line 230
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->F(F)V

    .line 233
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->D()F

    .line 236
    move-result v1

    .line 237
    float-to-double v1, v1

    .line 238
    const-string v3, "posAcc"

    .line 240
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 243
    move-result-wide v1

    .line 244
    double-to-float v1, v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->R(F)V

    .line 248
    const-string v1, "drStatus"

    .line 250
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->s()I

    .line 253
    move-result v2

    .line 254
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 257
    move-result v1

    .line 258
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->G(I)V

    .line 261
    const-string v1, "matchLon"

    .line 263
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->B()D

    .line 266
    move-result-wide v2

    .line 267
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 270
    move-result-wide v1

    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->P(D)V

    .line 274
    const-string v1, "matchLat"

    .line 276
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->A()D

    .line 279
    move-result-wide v2

    .line 280
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 283
    move-result-wide v1

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->O(D)V

    .line 287
    return-object v0
.end method
