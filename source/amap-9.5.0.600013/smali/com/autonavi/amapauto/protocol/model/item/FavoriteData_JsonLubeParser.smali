.class public final Lcom/autonavi/amapauto/protocol/model/item/FavoriteData_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;-><init>()V

    .line 10
    const-string v1, "addr"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->r()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->z(Ljava/lang/String;)V

    .line 23
    const-string v1, "distance"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->s()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->A(I)V

    .line 36
    const-string v1, "latitude"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->t()D

    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->B(D)V

    .line 49
    const-string v1, "longitude"

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->u()D

    .line 54
    move-result-wide v2

    .line 55
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->C(D)V

    .line 62
    const-string v1, "name"

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->v()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->D(Ljava/lang/String;)V

    .line 75
    const-string v1, "phone"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->w()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->E(Ljava/lang/String;)V

    .line 88
    const-string v1, "poiId"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->x()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->F(Ljava/lang/String;)V

    .line 101
    const-string v1, "poitype"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->y()I

    .line 106
    move-result v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 110
    move-result p0

    .line 111
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/item/FavoriteData;->G(I)V

    .line 114
    return-object v0
.end method
