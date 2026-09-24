.class public final Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;-><init>()V

    .line 10
    const-string v1, "value"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;->a:Ljava/lang/String;

    .line 20
    const-string v1, "name"

    .line 22
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    iput-object p0, v0, Lcom/autonavi/amapauto/protocol/data/search/CategoryItemCategoryItem;->b:Ljava/lang/String;

    .line 30
    return-object v0
.end method
