.class public final Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;-><init>()V

    .line 10
    const-string v1, "Count"

    .line 12
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->a:I

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->a:I

    .line 20
    const-string v1, "Pois"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 32
    move-result v3

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    if-ge v5, v3, :cond_1

    .line 41
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 44
    move-result-object v6

    .line 45
    invoke-static {v6}, Lcom/autonavi/amapauto/protocol/data/search/Poi_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Poi;

    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iput-object v4, v0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->b:Ljava/util/List;

    .line 57
    :cond_2
    const-string v1, "categories"

    .line 59
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 68
    move-result v3

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    :goto_1
    if-ge v2, v3, :cond_3

    .line 76
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 79
    move-result-object v5

    .line 80
    invoke-static {v5}, Lcom/autonavi/amapauto/protocol/data/search/Category_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Category;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iput-object v4, v0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->c:Ljava/util/List;

    .line 92
    :cond_4
    const-string v1, "Citysuggestion"

    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;

    .line 101
    move-result-object p0

    .line 102
    iput-object p0, v0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->d:Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;

    .line 104
    return-object v0
.end method
