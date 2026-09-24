.class public final Lcom/autonavi/amapauto/protocol/data/PoiResult_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/PoiResult;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/data/PoiResult;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2}, Lcom/autonavi/amapauto/protocol/data/PoiResult;-><init>(Ljava/util/List;I)V

    .line 11
    const-string v0, "Count"

    .line 13
    iget v3, v1, Lcom/autonavi/amapauto/protocol/data/PoiResult;->b:I

    .line 15
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 18
    move-result v0

    .line 19
    iput v0, v1, Lcom/autonavi/amapauto/protocol/data/PoiResult;->b:I

    .line 21
    const-string v0, "poi_info"

    .line 23
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_2

    .line 29
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 32
    move-result v0

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    :goto_0
    if-ge v2, v0, :cond_1

    .line 40
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Lcom/autonavi/amapauto/protocol/data/PoiInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/PoiInfo;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/data/PoiResult;->s(Ljava/util/List;)V

    .line 57
    :cond_2
    return-object v1
.end method
