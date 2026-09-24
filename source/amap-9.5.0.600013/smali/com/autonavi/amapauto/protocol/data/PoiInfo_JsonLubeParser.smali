.class public final Lcom/autonavi/amapauto/protocol/data/PoiInfo_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/PoiInfo;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/PoiInfo;-><init>()V

    .line 10
    const-string v1, "Poiname"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->a:Ljava/lang/String;

    .line 20
    const-string v1, "poi_addr"

    .line 22
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->b:Ljava/lang/String;

    .line 30
    const-string v1, "poi_distance"

    .line 32
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->c:I

    .line 34
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 37
    move-result v1

    .line 38
    iput v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->c:I

    .line 40
    const-string v1, "Poiid"

    .line 42
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->d:Ljava/lang/String;

    .line 50
    const-string v1, "entry_latitude"

    .line 52
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->e:D

    .line 54
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->e:D

    .line 60
    const-string v1, "entry_longitude"

    .line 62
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->f:D

    .line 64
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->f:D

    .line 70
    const-string v1, "Latitude"

    .line 72
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->g:D

    .line 74
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 77
    move-result-wide v1

    .line 78
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->g:D

    .line 80
    const-string v1, "Longitude"

    .line 82
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->h:D

    .line 84
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 87
    move-result-wide v1

    .line 88
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->h:D

    .line 90
    const-string v1, "poiType"

    .line 92
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->i:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    iput-object p0, v0, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->i:Ljava/lang/String;

    .line 100
    return-object v0
.end method
