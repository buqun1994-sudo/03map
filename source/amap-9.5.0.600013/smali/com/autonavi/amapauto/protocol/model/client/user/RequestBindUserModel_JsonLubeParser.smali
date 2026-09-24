.class public final Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    .line 7
    const-string v1, ""

    .line 9
    invoke-direct {v0, v1, v1, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v1, "carLoginEnvironment"

    .line 14
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    .line 22
    const-string v1, "clientPackageName"

    .line 24
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 35
    const-string v1, "packageName"

    .line 37
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 48
    const-string v1, "callbackId"

    .line 50
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 53
    move-result v2

    .line 54
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 61
    const-string v1, "timeStamp"

    .line 63
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 66
    move-result-wide v2

    .line 67
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 74
    const-string v1, "var1"

    .line 76
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 87
    const-string v1, "sourceApp"

    .line 89
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getSourceApp()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setSourceApp(Ljava/lang/String;)V

    .line 100
    const-string v1, "sourceAppName"

    .line 102
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getSourceAppName()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setSourceAppName(Ljava/lang/String;)V

    .line 113
    const-string v1, "bindUserLoginId"

    .line 115
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserLoginId()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserLoginId(Ljava/lang/String;)V

    .line 126
    const-string v1, "bindUserLoginName"

    .line 128
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserLoginName()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserLoginName(Ljava/lang/String;)V

    .line 139
    const-string v1, "bindUserLoginAvata"

    .line 141
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserLoginAvata()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserLoginAvata(Ljava/lang/String;)V

    .line 152
    const-string v1, "bindUserRequestTime"

    .line 154
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserRequestTime()Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserRequestTime(Ljava/lang/String;)V

    .line 165
    const-string v1, "bindUserDeviceId"

    .line 167
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserDeviceId()Ljava/lang/String;

    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserDeviceId(Ljava/lang/String;)V

    .line 178
    return-object v0
.end method
