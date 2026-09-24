.class public final Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;-><init>()V

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
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->w()F

    .line 78
    move-result v1

    .line 79
    float-to-double v1, v1

    .line 80
    const-string v3, "oilPct"

    .line 82
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 85
    move-result-wide v1

    .line 86
    double-to-float v1, v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->D(F)V

    .line 90
    const-string v1, "oilState"

    .line 92
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->x()I

    .line 95
    move-result v2

    .line 96
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->E(I)V

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->v()F

    .line 106
    move-result v1

    .line 107
    float-to-double v1, v1

    .line 108
    const-string v3, "oilMileage"

    .line 110
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 113
    move-result-wide v1

    .line 114
    double-to-float v1, v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->C(F)V

    .line 118
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->u()F

    .line 121
    move-result v1

    .line 122
    float-to-double v1, v1

    .line 123
    const-string v3, "oilFuelTankSize"

    .line 125
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 128
    move-result-wide v1

    .line 129
    double-to-float v1, v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->B(F)V

    .line 133
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->t()F

    .line 136
    move-result v1

    .line 137
    float-to-double v1, v1

    .line 138
    const-string v3, "oilAverageFuelConsumption"

    .line 140
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 143
    move-result-wide v1

    .line 144
    double-to-float v1, v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->A(F)V

    .line 148
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->r()F

    .line 151
    move-result v1

    .line 152
    float-to-double v1, v1

    .line 153
    const-string v3, "absRemainingOil"

    .line 155
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 158
    move-result-wide v1

    .line 159
    double-to-float v1, v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->y(F)V

    .line 163
    const-string v1, "customState"

    .line 165
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->s()I

    .line 168
    move-result v2

    .line 169
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 172
    move-result p0

    .line 173
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;->z(I)V

    .line 176
    return-object v0
.end method
