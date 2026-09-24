.class public final Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v1, "carLoginEnvironment"

    .line 12
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "packageName"

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v1, "clientPackageName"

    .line 28
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "callbackId"

    .line 37
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string v1, "timeStamp"

    .line 46
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 49
    move-result-wide v2

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    const-string v1, "var1"

    .line 55
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "sourceApp"

    .line 64
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceApp()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "sourceAppName"

    .line 73
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAppName()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "accoundLoginStatus"

    .line 82
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getAccoundLoginStatus()I

    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v1, "sourceAccountToken"

    .line 91
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountToken()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "sourceAutoAccount"

    .line 100
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAutoAccount()Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "sourceAccount"

    .line 109
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccount()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "deviceId"

    .line 118
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getDeviceId()Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "deviceNo"

    .line 127
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getDeviceNo()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "sourceAccountId"

    .line 136
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountId()Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "sourceAccountName"

    .line 145
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountName()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v1, "sourceAccountAvatar"

    .line 154
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getSourceAccountAvatar()Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "userRequestTime"

    .line 163
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getUserRequestTime()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v1, "bindingId"

    .line 172
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getBindingId()Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v1, "bingingAck"

    .line 181
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->getBingingAck()I

    .line 184
    move-result p0

    .line 185
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    return-object v0
.end method
