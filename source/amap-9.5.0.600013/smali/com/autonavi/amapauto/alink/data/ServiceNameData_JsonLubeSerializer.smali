.class public final Lcom/autonavi/amapauto/alink/data/ServiceNameData_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/alink/data/ServiceNameData;)Lorg/json/JSONObject;
    .locals 3
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
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/data/ServiceNameData;->servers:Ljava/util/List;

    .line 12
    if-eqz v1, :cond_3

    .line 14
    new-instance v1, Lorg/json/JSONArray;

    .line 16
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 19
    iget-object p0, p0, Lcom/autonavi/amapauto/alink/data/ServiceNameData;->servers:Ljava/util/List;

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/autonavi/amapauto/alink/data/ServerData;

    .line 37
    if-eqz v2, :cond_1

    .line 39
    invoke-static {v2}, Lcom/autonavi/amapauto/alink/data/ServerData_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/alink/data/ServerData;)Lorg/json/JSONObject;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string p0, "servers"

    .line 49
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_3
    return-object v0
.end method
