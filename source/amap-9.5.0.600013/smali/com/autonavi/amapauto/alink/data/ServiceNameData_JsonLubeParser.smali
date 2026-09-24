.class public final Lcom/autonavi/amapauto/alink/data/ServiceNameData_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/alink/data/ServiceNameData;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/alink/data/ServiceNameData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/alink/data/ServiceNameData;-><init>()V

    .line 10
    const-string v1, "servers"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_2

    .line 18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 21
    move-result v1

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_1

    .line 30
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Lcom/autonavi/amapauto/alink/data/ServerData_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/alink/data/ServerData;

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServiceNameData;->servers:Ljava/util/List;

    .line 46
    :cond_2
    return-object v0
.end method
