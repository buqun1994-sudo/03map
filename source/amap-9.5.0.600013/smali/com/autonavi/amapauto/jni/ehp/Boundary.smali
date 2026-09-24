.class public Lcom/autonavi/amapauto/jni/ehp/Boundary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private boundarySegment:Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;

.field private boundarySegmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;",
            ">;"
        }
    .end annotation
.end field

.field private geometry:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundarySegment()Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->boundarySegment:Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;

    .line 3
    return-object v0
.end method

.method public getBoundarySegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->boundarySegmentList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getGeometry()Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->geometry:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    .line 3
    return-object v0
.end method

.method public setBoundarySegment(Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->boundarySegment:Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;

    .line 3
    return-void
.end method

.method public setBoundarySegmentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->boundarySegmentList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setGeometry(Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->geometry:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

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
    const-string v1, "Boundary{boundarySegment="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->boundarySegment:Lcom/autonavi/amapauto/jni/ehp/BoundarySegment;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", boundarySegmentList="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->boundarySegmentList:Ljava/util/List;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", geometry="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/Boundary;->geometry:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x7d

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
