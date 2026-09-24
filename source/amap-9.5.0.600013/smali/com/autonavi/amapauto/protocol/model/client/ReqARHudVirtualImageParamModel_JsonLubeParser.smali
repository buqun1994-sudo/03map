.class public final Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;-><init>()V

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
    const-string v1, "eyeX"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getEyeX()D

    .line 80
    move-result-wide v2

    .line 81
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setEyeX(D)V

    .line 88
    const-string v1, "eyeY"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getEyeY()D

    .line 93
    move-result-wide v2

    .line 94
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 97
    move-result-wide v1

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setEyeY(D)V

    .line 101
    const-string v1, "eyeZ"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getEyeZ()D

    .line 106
    move-result-wide v2

    .line 107
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 110
    move-result-wide v1

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setEyeZ(D)V

    .line 114
    const-string v1, "fovH"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getFovH()D

    .line 119
    move-result-wide v2

    .line 120
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 123
    move-result-wide v1

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setFovH(D)V

    .line 127
    const-string v1, "fovW"

    .line 129
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getFovW()D

    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 136
    move-result-wide v1

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setFovW(D)V

    .line 140
    const-string v1, "heading"

    .line 142
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getHeading()D

    .line 145
    move-result-wide v2

    .line 146
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 149
    move-result-wide v1

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setHeading(D)V

    .line 153
    const-string v1, "pitch"

    .line 155
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getPitch()D

    .line 158
    move-result-wide v2

    .line 159
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 162
    move-result-wide v1

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setPitch(D)V

    .line 166
    const-string v1, "pixelH"

    .line 168
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getPixelH()I

    .line 171
    move-result v2

    .line 172
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 175
    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setPixelH(I)V

    .line 179
    const-string v1, "pixelW"

    .line 181
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getPixelW()I

    .line 184
    move-result v2

    .line 185
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setPixelW(I)V

    .line 192
    const-string v1, "roll"

    .line 194
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getRoll()D

    .line 197
    move-result-wide v2

    .line 198
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 201
    move-result-wide v1

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setRoll(D)V

    .line 205
    const-string v1, "vid"

    .line 207
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->getVid()D

    .line 210
    move-result-wide v2

    .line 211
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 214
    move-result-wide v1

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;->setVid(D)V

    .line 218
    return-object v0
.end method
