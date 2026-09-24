.class public Lcom/autonavi/amapauto/jni/ehp/DisplayArea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private areaType:I

.field private polygon:Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayArea;->areaType:I

    .line 3
    return v0
.end method

.method public getPolygon()Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayArea;->polygon:Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;

    .line 3
    return-object v0
.end method

.method public setAreaType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayArea;->areaType:I

    .line 3
    return-void
.end method

.method public setPolygon(Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayArea;->polygon:Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;

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
    const-string v1, "DisplayArea{polygon="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayArea;->polygon:Lcom/autonavi/amapauto/jni/ehp/DisplayGeometry;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", areaType="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/DisplayArea;->areaType:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const/16 v1, 0x7d

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
