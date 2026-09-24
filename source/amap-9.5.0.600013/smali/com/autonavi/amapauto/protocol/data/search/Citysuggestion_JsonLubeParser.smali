.class public final Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;-><init>()V

    .line 10
    const-string v1, "Citycount"

    .line 12
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;->a:I

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;->a:I

    .line 20
    const-string v1, "SuggestionCityDetail"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 28
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 31
    move-result v1

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_0
    if-ge v3, v1, :cond_1

    .line 40
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iput-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;->b:Ljava/util/List;

    .line 56
    :cond_2
    return-object v0
.end method
