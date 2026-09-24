.class public final Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;)Lorg/json/JSONObject;
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
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getGeoPointArrayList()Ljava/util/ArrayList;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_3

    .line 16
    new-instance v1, Lorg/json/JSONArray;

    .line 18
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getGeoPointArrayList()Ljava/util/ArrayList;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 41
    if-eqz v3, :cond_1

    .line 43
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;)Lorg/json/JSONObject;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v2, "geoPointList"

    .line 53
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_3
    const-string v1, "laneNum"

    .line 58
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLaneNum()I

    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v1, "length"

    .line 67
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLength()I

    .line 70
    move-result v2

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v1, "level"

    .line 76
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLevel()I

    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v1, "linkId"

    .line 85
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getLinkId()J

    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    const-string v1, "mainRoadSeparated"

    .line 94
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getMainRoadSeparated()Z

    .line 97
    move-result v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getPassingPointArrayList()Ljava/util/ArrayList;

    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_6

    .line 107
    new-instance v1, Lorg/json/JSONArray;

    .line 109
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getPassingPointArrayList()Ljava/util/ArrayList;

    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v2

    .line 120
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_5

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;

    .line 132
    if-eqz v3, :cond_4

    .line 134
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;)Lorg/json/JSONObject;

    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    const-string v2, "passingPointList"

    .line 144
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_6
    const-string v1, "roadName"

    .line 149
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getRoadName()Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v1, "sideRoad"

    .line 158
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getSideRoad()Z

    .line 161
    move-result v2

    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 165
    const-string v1, "speedLimit"

    .line 167
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getSpeedLimit()I

    .line 170
    move-result v2

    .line 171
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v1, "turnKind"

    .line 176
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getTurnKind()I

    .line 179
    move-result v2

    .line 180
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v1, "viaduct"

    .line 185
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getViaduct()Z

    .line 188
    move-result v2

    .line 189
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 192
    const-string v1, "wayPoint"

    .line 194
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getWayPoint()Z

    .line 197
    move-result v2

    .line 198
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 201
    const-string v1, "formWay"

    .line 203
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->getFormWay()I

    .line 206
    move-result p0

    .line 207
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    return-object v0
.end method
