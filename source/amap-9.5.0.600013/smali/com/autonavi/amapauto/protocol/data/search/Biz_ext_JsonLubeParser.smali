.class public final Lcom/autonavi/amapauto/protocol/data/search/Biz_ext_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;-><init>()V

    .line 10
    const-string v1, "taginfo"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->a:Ljava/lang/String;

    .line 20
    const-string v1, "category"

    .line 22
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->b:I

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->b:I

    .line 30
    const-string v1, "tag"

    .line 32
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    iput-object p0, v0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->c:Ljava/lang/String;

    .line 40
    return-object v0
.end method
