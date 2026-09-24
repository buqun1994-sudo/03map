.class public final Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;)Lorg/json/JSONObject;
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
    const-string v1, "gpgga"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->u()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "gprmc"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->y()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "gpgsv"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->x()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "gpgsa"

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->w()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "gpvtg"

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->z()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "gpgll"

    .line 102
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->v()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "timestamp"

    .line 111
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->E()J

    .line 114
    move-result-wide v2

    .line 115
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    const-string v1, "lat"

    .line 120
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->getLat()D

    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 127
    const-string v1, "ns"

    .line 129
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->C()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "lon"

    .line 138
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->getLon()D

    .line 141
    move-result-wide v2

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    const-string v1, "ew"

    .line 147
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->t()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->r()F

    .line 157
    move-result v1

    .line 158
    float-to-double v1, v1

    .line 159
    const-string v3, "course"

    .line 161
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->D()F

    .line 167
    move-result v1

    .line 168
    float-to-double v1, v1

    .line 169
    const-string v3, "posAcc"

    .line 171
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 174
    const-string v1, "drStatus"

    .line 176
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->s()I

    .line 179
    move-result v2

    .line 180
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v1, "matchLon"

    .line 185
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->B()D

    .line 188
    move-result-wide v2

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 192
    const-string v1, "matchLat"

    .line 194
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;->A()D

    .line 197
    move-result-wide v2

    .line 198
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 201
    return-object v0
.end method
