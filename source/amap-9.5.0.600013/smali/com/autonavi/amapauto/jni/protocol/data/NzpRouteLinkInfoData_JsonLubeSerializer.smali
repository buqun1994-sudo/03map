.class public final Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;)Lorg/json/JSONObject;
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
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;->getRouteLinkInfos()Ljava/util/ArrayList;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_3

    .line 16
    new-instance v1, Lorg/json/JSONArray;

    .line 18
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;->getRouteLinkInfos()Ljava/util/ArrayList;

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
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;

    .line 41
    if-eqz v3, :cond_1

    .line 43
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;)Lorg/json/JSONObject;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v2, "routeLinkInfos"

    .line 53
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_3
    const-string v1, "pathid"

    .line 58
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;->getPathid()J

    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    return-object v0
.end method
