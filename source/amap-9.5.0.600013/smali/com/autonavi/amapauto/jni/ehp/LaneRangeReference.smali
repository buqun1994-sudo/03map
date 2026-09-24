.class public Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private laneGroupId:I

.field private lanes:Lcom/autonavi/amapauto/jni/ehp/Lane;

.field private lengthsCm:I

.field private lengthsCmCmData:[I

.field private offsetsCm:I

.field private offsetsCmData:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLaneGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->laneGroupId:I

    .line 3
    return v0
.end method

.method public getLanes()Lcom/autonavi/amapauto/jni/ehp/Lane;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lanes:Lcom/autonavi/amapauto/jni/ehp/Lane;

    .line 3
    return-object v0
.end method

.method public getLengthsCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lengthsCm:I

    .line 3
    return v0
.end method

.method public getLengthsCmCmData()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lengthsCmCmData:[I

    .line 3
    return-object v0
.end method

.method public getOffsetsCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->offsetsCm:I

    .line 3
    return v0
.end method

.method public getOffsetsCmData()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->offsetsCmData:[I

    .line 3
    return-object v0
.end method

.method public setLaneGroupId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->laneGroupId:I

    .line 3
    return-void
.end method

.method public setLanes(Lcom/autonavi/amapauto/jni/ehp/Lane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lanes:Lcom/autonavi/amapauto/jni/ehp/Lane;

    .line 3
    return-void
.end method

.method public setLengthsCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lengthsCm:I

    .line 3
    return-void
.end method

.method public setLengthsCmCmData([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lengthsCmCmData:[I

    .line 3
    return-void
.end method

.method public setOffsetsCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->offsetsCm:I

    .line 3
    return-void
.end method

.method public setOffsetsCmData([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->offsetsCmData:[I

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
    const-string v1, "LaneRangeReference{laneGroupId="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->laneGroupId:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", lanes="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lanes:Lcom/autonavi/amapauto/jni/ehp/Lane;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", offsetsCm="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->offsetsCm:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", lengthsCm="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lengthsCm:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", offsetsCmData="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->offsetsCmData:[I

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", lengthsCmCmData="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRangeReference;->lengthsCmCmData:[I

    .line 67
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v1, 0x7d

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
