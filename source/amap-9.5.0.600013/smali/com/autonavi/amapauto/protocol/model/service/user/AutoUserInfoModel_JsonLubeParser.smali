.class public final Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    const-string v2, ""

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 14
    const-string v1, "clientPackageName"

    .line 16
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 27
    const-string v1, "packageName"

    .line 29
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 40
    const-string v1, "callbackId"

    .line 42
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 53
    const-string v1, "timeStamp"

    .line 55
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 58
    move-result-wide v2

    .line 59
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 62
    move-result-wide v1

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 66
    const-string v1, "var1"

    .line 68
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 79
    const-string v1, "autoUserId"

    .line 81
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->s()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->w(Ljava/lang/String;)V

    .line 92
    const-string v1, "autoUserAvatar"

    .line 94
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->r()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->v(Ljava/lang/String;)V

    .line 105
    const-string v1, "autoUserName"

    .line 107
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->t()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->x(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->u()Ljava/lang/Boolean;

    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    move-result v1

    .line 126
    const-string v2, "isBingingSuccess"

    .line 128
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 131
    move-result p0

    .line 132
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->y(Ljava/lang/Boolean;)V

    .line 139
    return-object v0
.end method
