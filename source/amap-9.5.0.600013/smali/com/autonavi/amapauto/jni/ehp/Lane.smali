.class public Lcom/autonavi/amapauto/jni/ehp/Lane;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private centerline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

.field private curbBoundarieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Boundary;",
            ">;"
        }
    .end annotation
.end field

.field curbBoundaries:Lcom/autonavi/amapauto/jni/ehp/Boundary;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private destinationLaneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;",
            ">;"
        }
    .end annotation
.end field

.field destinationLanes:Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private flags:I

.field private laneType:I

.field private lengthCm:I

.field private middleBoundarieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Boundary;",
            ">;"
        }
    .end annotation
.end field

.field middleBoundaries:Lcom/autonavi/amapauto/jni/ehp/Boundary;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sourceLaneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;",
            ">;"
        }
    .end annotation
.end field

.field sourceLanes:Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sourceQualityClass:I

.field private widthCm:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterline()Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->centerline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    .line 3
    return-object v0
.end method

.method public getCurbBoundarieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Boundary;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->curbBoundarieList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getCurbBoundaries()Lcom/autonavi/amapauto/jni/ehp/Boundary;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->curbBoundaries:Lcom/autonavi/amapauto/jni/ehp/Boundary;

    .line 3
    return-object v0
.end method

.method public getDestinationLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->destinationLaneList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getDestinationLanes()Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->destinationLanes:Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;

    .line 3
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->flags:I

    .line 3
    return v0
.end method

.method public getLaneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->laneType:I

    .line 3
    return v0
.end method

.method public getLengthCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->lengthCm:I

    .line 3
    return v0
.end method

.method public getMiddleBoundarieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Boundary;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->middleBoundarieList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getMiddleBoundaries()Lcom/autonavi/amapauto/jni/ehp/Boundary;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->middleBoundaries:Lcom/autonavi/amapauto/jni/ehp/Boundary;

    .line 3
    return-object v0
.end method

.method public getSourceLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceLaneList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSourceLanes()Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceLanes:Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;

    .line 3
    return-object v0
.end method

.method public getSourceQualityClass()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceQualityClass:I

    .line 3
    return v0
.end method

.method public getWidthCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->widthCm:I

    .line 3
    return v0
.end method

.method public setCenterline(Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->centerline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    .line 3
    return-void
.end method

.method public setCurbBoundarieList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Boundary;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->curbBoundarieList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setCurbBoundaries(Lcom/autonavi/amapauto/jni/ehp/Boundary;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->curbBoundaries:Lcom/autonavi/amapauto/jni/ehp/Boundary;

    .line 3
    return-void
.end method

.method public setDestinationLaneList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->destinationLaneList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setDestinationLanes(Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->destinationLanes:Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;

    .line 3
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->flags:I

    .line 3
    return-void
.end method

.method public setLaneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->laneType:I

    .line 3
    return-void
.end method

.method public setLengthCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->lengthCm:I

    .line 3
    return-void
.end method

.method public setMiddleBoundarieList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Boundary;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->middleBoundarieList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setMiddleBoundaries(Lcom/autonavi/amapauto/jni/ehp/Boundary;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->middleBoundaries:Lcom/autonavi/amapauto/jni/ehp/Boundary;

    .line 3
    return-void
.end method

.method public setSourceLaneList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceLaneList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setSourceLanes(Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceLanes:Lcom/autonavi/amapauto/jni/ehp/LaneTopologyReference;

    .line 3
    return-void
.end method

.method public setSourceQualityClass(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceQualityClass:I

    .line 3
    return-void
.end method

.method public setWidthCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->widthCm:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Lane{laneType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->laneType:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", curbBoundarieList="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->curbBoundarieList:Ljava/util/List;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", middleBoundarieList="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->middleBoundarieList:Ljava/util/List;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", sourceLaneList="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceLaneList:Ljava/util/List;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", destinationLaneList="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->destinationLaneList:Ljava/util/List;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", widthCm="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->widthCm:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", lengthCm="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->lengthCm:I

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", centerline="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->centerline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", flags="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->flags:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", sourceQualityClass="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/Lane;->sourceQualityClass:I

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const/16 v1, 0x7d

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method
