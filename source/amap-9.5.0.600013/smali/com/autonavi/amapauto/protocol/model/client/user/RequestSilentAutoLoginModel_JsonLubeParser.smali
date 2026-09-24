.class public final Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;-><init>()V

    .line 10
    const-string v1, "carLoginEnvironment"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->carLoginEnvironment:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->carLoginEnvironment:Ljava/lang/String;

    .line 20
    const-string v1, "clientPackageName"

    .line 22
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 33
    const-string v1, "packageName"

    .line 35
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 46
    const-string v1, "callbackId"

    .line 48
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 59
    const-string v1, "timeStamp"

    .line 61
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 68
    move-result-wide v1

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 72
    const-string v1, "var1"

    .line 74
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 85
    const-string v1, "sourceApp"

    .line 87
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceApp()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceApp(Ljava/lang/String;)V

    .line 98
    const-string v1, "sourceAppName"

    .line 100
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAppName()Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceAppName(Ljava/lang/String;)V

    .line 111
    const-string v1, "accoundLoginStatus"

    .line 113
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getAccoundLoginStatus()I

    .line 116
    move-result v2

    .line 117
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setAccoundLoginStatus(I)V

    .line 124
    const-string v1, "sourceAccountToken"

    .line 126
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountToken()Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceAccountToken(Ljava/lang/String;)V

    .line 137
    const-string v1, "sourceAutoAccount"

    .line 139
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAutoAccount()Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceAutoAccount(Ljava/lang/String;)V

    .line 150
    const-string v1, "sourceAccount"

    .line 152
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccount()Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceAccount(Ljava/lang/String;)V

    .line 163
    const-string v1, "deviceId"

    .line 165
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getDeviceId()Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setDeviceId(Ljava/lang/String;)V

    .line 176
    const-string v1, "deviceNo"

    .line 178
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getDeviceNo()Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setDeviceNo(Ljava/lang/String;)V

    .line 189
    const-string v1, "sourceAccountId"

    .line 191
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountId()Ljava/lang/String;

    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceAccountId(Ljava/lang/String;)V

    .line 202
    const-string v1, "sourceAccountName"

    .line 204
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountName()Ljava/lang/String;

    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceAccountName(Ljava/lang/String;)V

    .line 215
    const-string v1, "sourceAccountAvatar"

    .line 217
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountAvatar()Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setSourceAccountAvatar(Ljava/lang/String;)V

    .line 228
    const-string v1, "userRequestTime"

    .line 230
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getUserRequestTime()Ljava/lang/String;

    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setUserRequestTime(Ljava/lang/String;)V

    .line 241
    const-string v1, "bindingId"

    .line 243
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getBindingId()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setBindingId(Ljava/lang/String;)V

    .line 254
    const-string v1, "bingingAck"

    .line 256
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getBingingAck()I

    .line 259
    move-result v2

    .line 260
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 263
    move-result p0

    .line 264
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->setBingingAck(I)V

    .line 267
    return-object v0
.end method
