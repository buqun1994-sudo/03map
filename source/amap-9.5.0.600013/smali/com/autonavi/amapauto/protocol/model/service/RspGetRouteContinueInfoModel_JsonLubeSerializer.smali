.class public final Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;)Lorg/json/JSONObject;
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
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->getEndPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)Lorg/json/JSONObject;

    .line 62
    move-result-object v1

    .line 63
    const-string v2, "endPoi"

    .line 65
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->getStartPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)Lorg/json/JSONObject;

    .line 75
    move-result-object v1

    .line 76
    const-string v2, "startPoi"

    .line 78
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->getViaPois()Ljava/util/ArrayList;

    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_3

    .line 87
    new-instance v1, Lorg/json/JSONArray;

    .line 89
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspGetRouteContinueInfoModel;->getViaPois()Ljava/util/ArrayList;

    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object p0

    .line 100
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_2

    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 112
    if-eqz v2, :cond_1

    .line 114
    invoke-static {v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)Lorg/json/JSONObject;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const-string p0, "viaPois"

    .line 124
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_3
    return-object v0
.end method
