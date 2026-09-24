.class public final Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;)Lorg/json/JSONObject;
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
    const-string v1, "packageName"

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "clientPackageName"

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "callbackId"

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "timeStamp"

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "var1"

    .line 48
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getBiz_ext()Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;)Lorg/json/JSONObject;

    .line 62
    move-result-object v1

    .line 63
    const-string v2, "biz_ext"

    .line 65
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v1, "cpId"

    .line 70
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getCpId()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "distanceToSearchLocation"

    .line 79
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getDistanceToSearchLocation()I

    .line 82
    move-result v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string v1, "operatorId"

    .line 88
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getOperatorId()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v1, "poiid"

    .line 97
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getPoiid()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "poiname"

    .line 106
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getPoiname()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "remainTime"

    .line 115
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getRemainTime()I

    .line 118
    move-result v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "serviceId"

    .line 124
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getServiceId()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v1, "sourceAccountToken"

    .line 133
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;->getSourceAccountToken()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    return-object v0
.end method
