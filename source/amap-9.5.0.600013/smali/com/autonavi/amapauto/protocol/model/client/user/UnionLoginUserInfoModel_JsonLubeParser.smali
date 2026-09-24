.class public final Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v7, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;

    .line 7
    const-string v1, ""

    .line 9
    const-string v2, ""

    .line 11
    const/4 v3, 0x0

    .line 12
    const-string v4, ""

    .line 14
    const-string v5, ""

    .line 16
    const-string v6, ""

    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "carLoginEnvironment"

    .line 24
    iget-object v1, v7, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, v7, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    .line 32
    const-string v0, "clientPackageName"

    .line 34
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 45
    const-string v0, "packageName"

    .line 47
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 58
    const-string v0, "callbackId"

    .line 60
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 67
    move-result v0

    .line 68
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 71
    const-string v0, "timeStamp"

    .line 73
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 76
    move-result-wide v1

    .line 77
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 80
    move-result-wide v0

    .line 81
    invoke-virtual {v7, v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 84
    const-string v0, "var1"

    .line 86
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 97
    const-string v0, "sourceApp"

    .line 99
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceApp()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceApp(Ljava/lang/String;)V

    .line 110
    const-string v0, "sourceAppName"

    .line 112
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAppName()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAppName(Ljava/lang/String;)V

    .line 123
    const-string v0, "accoundLoginStatus"

    .line 125
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getAccoundLoginStatus()I

    .line 128
    move-result v1

    .line 129
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 132
    move-result v0

    .line 133
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setAccoundLoginStatus(I)V

    .line 136
    const-string v0, "sourceAccountToken"

    .line 138
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountToken()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccountToken(Ljava/lang/String;)V

    .line 149
    const-string v0, "sourceAutoAccount"

    .line 151
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAutoAccount()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAutoAccount(Ljava/lang/String;)V

    .line 162
    const-string v0, "sourceAccount"

    .line 164
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccount()Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccount(Ljava/lang/String;)V

    .line 175
    const-string v0, "deviceId"

    .line 177
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getDeviceId()Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setDeviceId(Ljava/lang/String;)V

    .line 188
    const-string v0, "deviceNo"

    .line 190
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getDeviceNo()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setDeviceNo(Ljava/lang/String;)V

    .line 201
    const-string v0, "sourceAccountId"

    .line 203
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountId()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccountId(Ljava/lang/String;)V

    .line 214
    const-string v0, "sourceAccountName"

    .line 216
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountName()Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccountName(Ljava/lang/String;)V

    .line 227
    const-string v0, "sourceAccountAvatar"

    .line 229
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountAvatar()Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setSourceAccountAvatar(Ljava/lang/String;)V

    .line 240
    const-string v0, "userRequestTime"

    .line 242
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getUserRequestTime()Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setUserRequestTime(Ljava/lang/String;)V

    .line 253
    const-string v0, "bindingId"

    .line 255
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getBindingId()Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setBindingId(Ljava/lang/String;)V

    .line 266
    const-string v0, "bingingAck"

    .line 268
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getBingingAck()I

    .line 271
    move-result v1

    .line 272
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 275
    move-result p0

    .line 276
    invoke-virtual {v7, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->setBingingAck(I)V

    .line 279
    return-object v7
.end method
