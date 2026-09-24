.class public Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;
.super Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;
.source "SourceFile"


# instance fields
.field private endPoi:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

.field private midPois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PoiData;",
            ">;"
        }
    .end annotation
.end field

.field private routeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private routePreference:I

.field private startPoi:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getEndPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->endPoi:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 3
    return-object v0
.end method

.method public getMidPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PoiData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->midPois:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getRouteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->routeList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getRoutePreference()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->routePreference:I

    .line 3
    return v0
.end method

.method public getStartPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->startPoi:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 3
    return-object v0
.end method

.method public setEndPoi(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->endPoi:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 3
    return-void
.end method

.method public setMidPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PoiData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->midPois:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setRouteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->routeList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setRoutePreference(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->routePreference:I

    .line 3
    return-void
.end method

.method public setStartPoi(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->startPoi:Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 3
    return-void
.end method
