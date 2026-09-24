.class public final Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;-><init>()V

    .line 10
    const-string v1, "roadName"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getRoadName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setRoadName(Ljava/lang/String;)V

    .line 23
    const-string v1, "geoPointList"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 35
    move-result v3

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    const/4 v5, 0x0

    .line 42
    :goto_0
    if-ge v5, v3, :cond_1

    .line 44
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 47
    move-result-object v6

    .line 48
    invoke-static {v6}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setGeoPointArrayList(Ljava/util/ArrayList;)V

    .line 61
    :cond_2
    const-string v1, "laneNum"

    .line 63
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLaneNum()I

    .line 66
    move-result v3

    .line 67
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setLaneNum(I)V

    .line 74
    const-string v1, "length"

    .line 76
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLength()I

    .line 79
    move-result v3

    .line 80
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setLength(I)V

    .line 87
    const-string v1, "level"

    .line 89
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLevel()I

    .line 92
    move-result v3

    .line 93
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setLevel(I)V

    .line 100
    const-string v1, "linkId"

    .line 102
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLinkId()J

    .line 105
    move-result-wide v3

    .line 106
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 109
    move-result-wide v3

    .line 110
    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setLinkId(J)V

    .line 113
    const-string v1, "mainRoadSeparated"

    .line 115
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getMainRoadSeparated()Z

    .line 118
    move-result v3

    .line 119
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setMainRoadSeparated(Z)V

    .line 126
    const-string v1, "passingPointList"

    .line 128
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 137
    move-result v3

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    .line 140
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    :goto_1
    if-ge v2, v3, :cond_3

    .line 145
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 148
    move-result-object v5

    .line 149
    invoke-static {v5}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setPassingPointArrayList(Ljava/util/ArrayList;)V

    .line 162
    :cond_4
    const-string v1, "sideRoad"

    .line 164
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getSideRoad()Z

    .line 167
    move-result v2

    .line 168
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 171
    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setSideRoad(Z)V

    .line 175
    const-string v1, "speedLimit"

    .line 177
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getSpeedLimit()I

    .line 180
    move-result v2

    .line 181
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 184
    move-result v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setSpeedLimit(I)V

    .line 188
    const-string v1, "turnKind"

    .line 190
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getTurnKind()I

    .line 193
    move-result v2

    .line 194
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 197
    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setTurnKind(I)V

    .line 201
    const-string v1, "viaduct"

    .line 203
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getViaduct()Z

    .line 206
    move-result v2

    .line 207
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 210
    move-result v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setViaduct(Z)V

    .line 214
    const-string v1, "wayPoint"

    .line 216
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getWayPoint()Z

    .line 219
    move-result v2

    .line 220
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 223
    move-result v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setWayPoint(Z)V

    .line 227
    const-string v1, "formWay"

    .line 229
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getFormWay()I

    .line 232
    move-result v2

    .line 233
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 236
    move-result p0

    .line 237
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->setFormWay(I)V

    .line 240
    return-object v0
.end method
