.class public final Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;-><init>()V

    .line 10
    const-string v1, "viaPointType"

    .line 12
    iget v2, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    .line 20
    const-string v1, "viaPointX"

    .line 22
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 24
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 30
    const-string v1, "viaPointY"

    .line 32
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 34
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 40
    const-string v1, "viaPointZ"

    .line 42
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 44
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 47
    move-result-wide v1

    .line 48
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 50
    const-string v1, "endPointX"

    .line 52
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 54
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 60
    const-string v1, "endPointY"

    .line 62
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 64
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 70
    const-string v1, "endPointZ"

    .line 72
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    .line 74
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 77
    move-result-wide v1

    .line 78
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    .line 80
    const-string v1, "clientPackageName"

    .line 82
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 93
    const-string v1, "packageName"

    .line 95
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 106
    const-string v1, "callbackId"

    .line 108
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 111
    move-result v2

    .line 112
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 119
    const-string v1, "timeStamp"

    .line 121
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 124
    move-result-wide v2

    .line 125
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 128
    move-result-wide v1

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 132
    const-string v1, "var1"

    .line 134
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 145
    return-object v0
.end method
