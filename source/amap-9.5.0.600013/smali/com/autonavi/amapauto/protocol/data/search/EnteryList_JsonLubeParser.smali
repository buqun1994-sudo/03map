.class public final Lcom/autonavi/amapauto/protocol/data/search/EnteryList_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/EnteryList;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;-><init>()V

    .line 10
    const-string v1, "entry_longitude"

    .line 12
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;->a:D

    .line 14
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;->a:D

    .line 20
    const-string v1, "entry_latitude"

    .line 22
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;->b:D

    .line 24
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;->b:D

    .line 30
    return-object v0
.end method
