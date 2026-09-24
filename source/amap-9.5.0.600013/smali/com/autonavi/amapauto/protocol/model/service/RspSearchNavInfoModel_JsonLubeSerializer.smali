.class public final Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;)Lorg/json/JSONObject;
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
    const-string v1, "cameraDist"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getCameraDist()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "cameraID"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getCameraID()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "cameraPenalty"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getCameraPenalty()Z

    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 82
    const-string v1, "cameraSpeed"

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getCameraSpeed()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "cameraType"

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getCameraType()I

    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v1, "isOverspeed"

    .line 102
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getIsOverspeed()Z

    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 109
    const-string v1, "sapaDist"

    .line 111
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getSapaDist()I

    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v1, "sapaETA"

    .line 120
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getSapaETA()I

    .line 123
    move-result v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v1, "sapaName"

    .line 129
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getSapaName()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "sapaNum"

    .line 138
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getSapaNum()I

    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string v1, "sapaType"

    .line 147
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getSapaType()I

    .line 150
    move-result v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v1, "tollDist"

    .line 156
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getTollDist()I

    .line 159
    move-result v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v1, "tollETA"

    .line 165
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getTollETA()I

    .line 168
    move-result v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v1, "tollName"

    .line 174
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->getTollName()Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    return-object v0
.end method
