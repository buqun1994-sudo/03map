.class public Lcom/autonavi/amapauto/jni/ehp/LaneRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lanesWithRanges:J

.field private lanesWithSpots:J

.field private lengthsCm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private lengthsCmCmData:[I

.field private offsetsCm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private offsetsCmData:[I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanesWithRanges()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lanesWithRanges:J

    .line 3
    return-wide v0
.end method

.method public getLanesWithSpots()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lanesWithSpots:J

    .line 3
    return-wide v0
.end method

.method public getLengthsCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lengthsCm:I

    .line 3
    return v0
.end method

.method public getLengthsCmCmData()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lengthsCmCmData:[I

    .line 3
    return-object v0
.end method

.method public getOffsetsCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->offsetsCm:I

    .line 3
    return v0
.end method

.method public getOffsetsCmData()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->offsetsCmData:[I

    .line 3
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->value:I

    .line 3
    return v0
.end method

.method public setLanesWithRanges(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lanesWithRanges:J

    .line 3
    return-void
.end method

.method public setLanesWithSpots(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lanesWithSpots:J

    .line 3
    return-void
.end method

.method public setLengthsCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lengthsCm:I

    .line 3
    return-void
.end method

.method public setLengthsCmCmData([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lengthsCmCmData:[I

    .line 3
    return-void
.end method

.method public setOffsetsCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->offsetsCm:I

    .line 3
    return-void
.end method

.method public setOffsetsCmData([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->offsetsCmData:[I

    .line 3
    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->value:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "LaneRange{value="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->value:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", lanesWithSpots="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lanesWithSpots:J

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", lanesWithRanges="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lanesWithRanges:J

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", offsetsCmData="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->offsetsCmData:[I

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", lengthsCmCmData="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneRange;->lengthsCmCmData:[I

    .line 57
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/16 v1, 0x7d

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method
