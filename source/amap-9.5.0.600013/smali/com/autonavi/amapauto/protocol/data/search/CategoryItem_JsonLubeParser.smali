.class public final Lcom/autonavi/amapauto/protocol/data/search/CategoryItem_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;-><init>()V

    .line 10
    const-string v1, "value"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;->a:Ljava/lang/String;

    .line 20
    const-string v1, "name"

    .line 22
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;->b:Ljava/lang/String;

    .line 30
    const-string v1, "categoryItems"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_2

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 41
    move-result v1

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    const/4 v3, 0x0

    .line 48
    :goto_0
    if-ge v3, v1, :cond_1

    .line 50
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iput-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItem;->c:Ljava/util/List;

    .line 66
    :cond_2
    return-object v0
.end method
