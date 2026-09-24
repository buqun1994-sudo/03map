.class public final Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;)Lorg/json/JSONObject;
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
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->a:Ljava/util/List;

    .line 12
    if-eqz v1, :cond_3

    .line 14
    new-instance v1, Lorg/json/JSONArray;

    .line 16
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 19
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->a:Ljava/util/List;

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;

    .line 37
    if-eqz v3, :cond_1

    .line 39
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/data/search/EnteryList_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/data/search/EnteryList;)Lorg/json/JSONObject;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string v2, "enteryList"

    .line 49
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->b:Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 54
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;)Lorg/json/JSONObject;

    .line 57
    move-result-object v1

    .line 58
    const-string v2, "biz_ext"

    .line 60
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "Name"

    .line 65
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "distance"

    .line 72
    iget v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->d:I

    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v1, "Typecode"

    .line 79
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->e:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "longitude"

    .line 86
    iget-wide v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->f:D

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 91
    const-string v1, "Latitude"

    .line 93
    iget-wide v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->g:D

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 98
    const-string v1, "Address"

    .line 100
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->h:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "Tel"

    .line 107
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->i:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "Poiid"

    .line 114
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->j:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "homecopType"

    .line 121
    iget p0, p0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->k:I

    .line 123
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    return-object v0
.end method
