.class public Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;
.super Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;
.source "SourceFile"


# instance fields
.field public distance:I

.field public labelText:Ljava/lang/String;

.field public oddNum:I

.field private protocolCityInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/RouteViaCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public routePreference:I

.field private streetNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public time:J

.field private tmcinfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;",
            ">;"
        }
    .end annotation
.end field

.field public tolls:I

.field public totalDistanceDes:Ljava/lang/String;

.field public totalOddDistance:Ljava/lang/String;

.field public totalTimeDes:Ljava/lang/String;

.field public trafficLights:I

.field public viaPOIdistance:I

.field public viaPOItime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalTimeDes:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalDistanceDes:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getRouteViaCityInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/RouteViaCityInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->protocolCityInfos:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getStreetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->streetNames:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getTmcInfosJson()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 8
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->getTmcSize()I

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    new-instance v3, Lorg/json/JSONObject;

    .line 20
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 23
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->tmcinfos:Ljava/util/List;

    .line 25
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 31
    const-string v5, "status"

    .line 33
    iget v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 35
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v5, "segmentIndex"

    .line 40
    iget v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->number:I

    .line 42
    add-int/lit8 v6, v6, 0x1

    .line 44
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v5, "percent"

    .line 49
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->percent:F

    .line 51
    float-to-double v6, v4

    .line 52
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-object v0, v1

    .line 62
    :catch_1
    move-object v1, v0

    .line 63
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public getTmcSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->tmcinfos:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getTmcinfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->tmcinfos:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public setRouteViaCityInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/RouteViaCityInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->protocolCityInfos:Ljava/util/ArrayList;

    .line 3
    return-void
.end method
