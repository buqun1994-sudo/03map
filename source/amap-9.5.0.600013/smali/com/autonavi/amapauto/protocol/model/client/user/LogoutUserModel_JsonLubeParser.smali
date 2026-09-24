.class public final Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    .line 7
    const-string v1, ""

    .line 9
    invoke-direct {v0, v1, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v1, "clientPackageName"

    .line 14
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 25
    const-string v1, "packageName"

    .line 27
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 38
    const-string v1, "callbackId"

    .line 40
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 51
    const-string v1, "timeStamp"

    .line 53
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 60
    move-result-wide v1

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 64
    const-string v1, "var1"

    .line 66
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 77
    const-string v1, "logoutUserPhone"

    .line 79
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getLogoutUserPhone()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->setLogoutUserPhone(Ljava/lang/String;)V

    .line 90
    const-string v1, "sourceApp"

    .line 92
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getSourceApp()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->setSourceApp(Ljava/lang/String;)V

    .line 103
    const-string v1, "sourceAppName"

    .line 105
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getSourceAppName()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->setSourceAppName(Ljava/lang/String;)V

    .line 116
    const-string v1, "logoutUserId"

    .line 118
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getLogoutUserId()Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->setLogoutUserId(Ljava/lang/String;)V

    .line 129
    return-object v0
.end method
