.class public final Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;)Lorg/json/JSONObject;
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
    const-string v1, "lbX"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getLbX()D

    .line 60
    move-result-wide v2

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 64
    const-string v1, "lbY"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getLbY()D

    .line 69
    move-result-wide v2

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 73
    const-string v1, "lbZ"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getLbZ()D

    .line 78
    move-result-wide v2

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 82
    const-string v1, "ltX"

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getLtX()D

    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 91
    const-string v1, "ltY"

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getLtY()D

    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 100
    const-string v1, "ltZ"

    .line 102
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getLtZ()D

    .line 105
    move-result-wide v2

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 109
    const-string v1, "rbX"

    .line 111
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getRbX()D

    .line 114
    move-result-wide v2

    .line 115
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    const-string v1, "rbY"

    .line 120
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getRbY()D

    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 127
    const-string v1, "rbZ"

    .line 129
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getRbZ()D

    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 136
    const-string v1, "rtX"

    .line 138
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getRtX()D

    .line 141
    move-result-wide v2

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    const-string v1, "rtY"

    .line 147
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getRtY()D

    .line 150
    move-result-wide v2

    .line 151
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 154
    const-string v1, "rtZ"

    .line 156
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;->getRtZ()D

    .line 159
    move-result-wide v2

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 163
    return-object v0
.end method
