.class public final Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;-><init>()V

    .line 10
    const-string v1, "Cityname"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;->a:Ljava/lang/String;

    .line 20
    const-string v1, "Citynum"

    .line 22
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;->b:I

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 27
    move-result p0

    .line 28
    iput p0, v0, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;->b:I

    .line 30
    return-object v0
.end method
