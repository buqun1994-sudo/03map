.class public final Lcom/autonavi/amapauto/protocol/model/item/ViaPoi_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;-><init>()V

    .line 10
    const-string v1, "midAddr"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->r()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->v(Ljava/lang/String;)V

    .line 23
    const-string v1, "midLat"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->s()D

    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->w(D)V

    .line 36
    const-string v1, "midLon"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->t()D

    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->x(D)V

    .line 49
    const-string v1, "midName"

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->u()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->y(Ljava/lang/String;)V

    .line 62
    return-object v0
.end method
