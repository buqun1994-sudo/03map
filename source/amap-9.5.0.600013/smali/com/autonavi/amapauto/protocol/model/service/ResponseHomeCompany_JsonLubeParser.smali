.class public final Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;-><init>()V

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
    const-string v1, "strEta"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->v()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->E(Ljava/lang/String;)V

    .line 88
    const-string v1, "isTop"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->s()Z

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->A(Z)V

    .line 101
    const-string v1, "type"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 106
    move-result v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->setType(I)V

    .line 114
    const-string v1, "isPrediction"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->y()Z

    .line 119
    move-result v2

    .line 120
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->C(Z)V

    .line 127
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->r()F

    .line 130
    move-result v1

    .line 131
    float-to-double v1, v1

    .line 132
    const-string v3, "eta"

    .line 134
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 137
    move-result-wide v1

    .line 138
    double-to-float v1, v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->z(F)V

    .line 142
    const-string v1, "size"

    .line 144
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->u()I

    .line 147
    move-result v2

    .line 148
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->D(I)V

    .line 155
    const-string v1, "totaldistance"

    .line 157
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->x()I

    .line 160
    move-result v2

    .line 161
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 164
    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->G(I)V

    .line 168
    const-string v1, "mainroadinfo"

    .line 170
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->t()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->B(Ljava/lang/String;)V

    .line 181
    const-string v1, "tmcSegments"

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 186
    move-result-object p0

    .line 187
    if-eqz p0, :cond_2

    .line 189
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 192
    move-result v1

    .line 193
    new-array v2, v1, [Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 195
    const/4 v3, 0x0

    .line 196
    :goto_0
    if-ge v3, v1, :cond_1

    .line 198
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 201
    move-result-object v4

    .line 202
    invoke-static {v4}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 205
    move-result-object v4

    .line 206
    aput-object v4, v2, v3

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 210
    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->F([Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;)V

    .line 214
    :cond_2
    return-object v0
.end method
