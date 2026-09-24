.class public final Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;

    .line 7
    const-string v2, ""

    .line 9
    invoke-direct {v1, v2, v0}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    const-string v0, "clientPackageName"

    .line 14
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 25
    const-string v0, "packageName"

    .line 27
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 38
    const-string v0, "callbackId"

    .line 40
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 51
    const-string v0, "timeStamp"

    .line 53
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 60
    move-result-wide v2

    .line 61
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 64
    const-string v0, "var1"

    .line 66
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 77
    const-string v0, "versionName"

    .line 79
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->getVersionName()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v1, p0}, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;->setVersionName(Ljava/lang/String;)V

    .line 90
    return-object v1
.end method
