.class public Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lanes:I

.field private lanesList:[I

.field private lengthsCm:I

.field private lengthsCmList:[I

.field private offsetsCm:I

.field private offsetsCmList:[I

.field private valueList:[I

.field private values:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lanes:I

    .line 3
    return v0
.end method

.method public getLanesList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lanesList:[I

    .line 3
    return-object v0
.end method

.method public getLengthsCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lengthsCm:I

    .line 3
    return v0
.end method

.method public getLengthsCmList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lengthsCmList:[I

    .line 3
    return-object v0
.end method

.method public getOffsetsCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->offsetsCm:I

    .line 3
    return v0
.end method

.method public getOffsetsCmList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->offsetsCmList:[I

    .line 3
    return-object v0
.end method

.method public getValueList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->valueList:[I

    .line 3
    return-object v0
.end method

.method public getValues()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->values:I

    .line 3
    return v0
.end method

.method public setLanes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lanes:I

    .line 3
    return-void
.end method

.method public setLanesList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lanesList:[I

    .line 3
    return-void
.end method

.method public setLengthsCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lengthsCm:I

    .line 3
    return-void
.end method

.method public setLengthsCmList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lengthsCmList:[I

    .line 3
    return-void
.end method

.method public setOffsetsCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->offsetsCm:I

    .line 3
    return-void
.end method

.method public setOffsetsCmList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->offsetsCmList:[I

    .line 3
    return-void
.end method

.method public setValueList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->valueList:[I

    .line 3
    return-void
.end method

.method public setValues(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->values:I

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
    const-string v1, "PsdUint32Sequence{values="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->values:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", offsetsCm="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->offsetsCm:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", lanes="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lanes:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", lengthsCm="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;->lengthsCm:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x7d

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
