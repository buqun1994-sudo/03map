.class public final Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;)Lorg/json/JSONObject;
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
    const-string v1, "tmcEnabled"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->u()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "size"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->t()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "totalDistance"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->w()I

    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v1, "remainDistance"

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->s()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "finishDistance"

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->r()I

    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->v()Ljava/util/List;

    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    .line 106
    new-instance v1, Lorg/json/JSONArray;

    .line 108
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 111
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->v()Ljava/util/List;

    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v2

    .line 119
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_2

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;

    .line 131
    if-eqz v3, :cond_1

    .line 133
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;)Lorg/json/JSONObject;

    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const-string v2, "tmcInfoList"

    .line 143
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_3
    const-string v1, "totalTime"

    .line 148
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->x()I

    .line 151
    move-result v2

    .line 152
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string v1, "remainTime"

    .line 157
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->getRemainTime()I

    .line 160
    move-result p0

    .line 161
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    return-object v0
.end method
