.class public final Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;-><init>()V

    .line 10
    const-string v1, "clientPackageName"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 23
    const-string v1, "packageName"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 36
    const-string v1, "callbackId"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 49
    const-string v1, "timeStamp"

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 54
    move-result-wide v2

    .line 55
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 62
    const-string v1, "var1"

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 75
    const-string v1, "tmcEnabled"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->u()I

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->B(I)V

    .line 88
    const-string v1, "size"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->t()I

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->A(I)V

    .line 101
    const-string v1, "totalDistance"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->w()I

    .line 106
    move-result v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->D(I)V

    .line 114
    const-string v1, "remainDistance"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->s()I

    .line 119
    move-result v2

    .line 120
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->z(I)V

    .line 127
    const-string v1, "totalTime"

    .line 129
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->x()I

    .line 132
    move-result v2

    .line 133
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->E(I)V

    .line 140
    const-string v1, "remainTime"

    .line 142
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->getRemainTime()I

    .line 145
    move-result v2

    .line 146
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->setRemainTime(I)V

    .line 153
    const-string v1, "finishDistance"

    .line 155
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->r()I

    .line 158
    move-result v2

    .line 159
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 162
    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->y(I)V

    .line 166
    const-string v1, "tmcInfoList"

    .line 168
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 171
    move-result-object p0

    .line 172
    if-eqz p0, :cond_2

    .line 174
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 177
    move-result v1

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    .line 180
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    const/4 v3, 0x0

    .line 184
    :goto_0
    if-ge v3, v1, :cond_1

    .line 186
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 189
    move-result-object v4

    .line 190
    invoke-static {v4}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 199
    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->C(Ljava/util/List;)V

    .line 203
    :cond_2
    return-object v0
.end method
