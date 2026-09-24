.class public final Lcom/autonavi/amapauto/protocol/model/item/FavoriteData_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;)Lorg/json/JSONObject;
    .locals 4
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
    const-string v1, "addr"

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->r()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "distance"

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->s()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string v1, "latitude"

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->t()D

    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 37
    const-string v1, "longitude"

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->u()D

    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 46
    const-string v1, "name"

    .line 48
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->v()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "phone"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->w()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "poiId"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->x()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "poitype"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->y()I

    .line 78
    move-result p0

    .line 79
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    return-object v0
.end method
