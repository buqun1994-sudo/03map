.class public final Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, ""

    .line 10
    invoke-direct {v0, v2, v2, v2, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    const-string v1, "clientPackageName"

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 26
    const-string v1, "packageName"

    .line 28
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 39
    const-string v1, "callbackId"

    .line 41
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 44
    move-result v2

    .line 45
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 52
    const-string v1, "timeStamp"

    .line 54
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 57
    move-result-wide v2

    .line 58
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 65
    const-string v1, "var1"

    .line 67
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 78
    const-string v1, "sourceApp"

    .line 80
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getSourceApp()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setSourceApp(Ljava/lang/String;)V

    .line 91
    const-string v1, "sourceAppName"

    .line 93
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getSourceAppName()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setSourceAppName(Ljava/lang/String;)V

    .line 104
    const-string v1, "bindUserLoginId"

    .line 106
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserLoginId()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setBindUserLoginId(Ljava/lang/String;)V

    .line 117
    const-string v1, "bindUserLoginName"

    .line 119
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserLoginName()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setBindUserLoginName(Ljava/lang/String;)V

    .line 130
    const-string v1, "bindUserLoginAvata"

    .line 132
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserLoginAvata()Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setBindUserLoginAvata(Ljava/lang/String;)V

    .line 143
    const-string v1, "bindUserRequestTime"

    .line 145
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserRequestTime()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setBindUserRequestTime(Ljava/lang/String;)V

    .line 156
    const-string v1, "bindUserDeviceId"

    .line 158
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserDeviceId()Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setBindUserDeviceId(Ljava/lang/String;)V

    .line 169
    const-string v1, "hasBindAutoUserId"

    .line 171
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getHasBindAutoUserId()Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setHasBindAutoUserId(Ljava/lang/String;)V

    .line 182
    const-string v1, "isBindAck"

    .line 184
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getIsBindAck()I

    .line 187
    move-result v2

    .line 188
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 191
    move-result p0

    .line 192
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->setIsBindAck(I)V

    .line 195
    return-object v0
.end method
