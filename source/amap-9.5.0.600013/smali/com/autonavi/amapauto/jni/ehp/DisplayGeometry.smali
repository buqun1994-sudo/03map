.class public Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latDeltas:[I

.field private latitudeDeltas:I

.field private lngDeltas:[I

.field private longitudeDeltas:I

.field private polyFlags:[I

.field private polygonFlags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatDeltas()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->latDeltas:[I

    .line 3
    return-object v0
.end method

.method public getLatitudeDeltas()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->latitudeDeltas:I

    .line 3
    return v0
.end method

.method public getLngDeltas()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->lngDeltas:[I

    .line 3
    return-object v0
.end method

.method public getLongitudeDeltas()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->longitudeDeltas:I

    .line 3
    return v0
.end method

.method public getPolyFlags()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->polyFlags:[I

    .line 3
    return-object v0
.end method

.method public getPolygonFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->polygonFlags:I

    .line 3
    return v0
.end method

.method public setLatDeltas([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->latDeltas:[I

    .line 3
    return-void
.end method

.method public setLatitudeDeltas(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->latitudeDeltas:I

    .line 3
    return-void
.end method

.method public setLngDeltas([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->lngDeltas:[I

    .line 3
    return-void
.end method

.method public setLongitudeDeltas(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->longitudeDeltas:I

    .line 3
    return-void
.end method

.method public setPolyFlags([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->polyFlags:[I

    .line 3
    return-void
.end method

.method public setPolygonFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->polygonFlags:I

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
    const-string v1, "DisplayGeometry{ lngDeltas="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->lngDeltas:[I

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", latDeltas="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->latDeltas:[I

    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", polyFlags="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;->polyFlags:[I

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v1, 0x7d

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
