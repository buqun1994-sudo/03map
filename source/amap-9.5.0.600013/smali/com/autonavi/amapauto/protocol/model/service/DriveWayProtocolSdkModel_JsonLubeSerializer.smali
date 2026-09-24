.class public final Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;)Lorg/json/JSONObject;
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
    const-string v1, "trafficLaneEnabled"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->t()Z

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    const-string v1, "trafficLaneSize"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->s()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->r()Ljava/util/ArrayList;

    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 79
    new-instance v1, Lorg/json/JSONArray;

    .line 81
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->r()Ljava/util/ArrayList;

    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object p0

    .line 92
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_2

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;

    .line 104
    if-eqz v2, :cond_1

    .line 106
    invoke-static {v2}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;)Lorg/json/JSONObject;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const-string p0, "trafficLaneInfos"

    .line 116
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_3
    return-object v0
.end method
