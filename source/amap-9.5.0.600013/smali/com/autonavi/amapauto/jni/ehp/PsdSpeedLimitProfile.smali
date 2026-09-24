.class public Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

.field private flags:I

.field private lanes:I

.field lanesList:[I

.field private lengthsCm:I

.field lengthsCmList:[I

.field speedUnitsList:[I

.field valueList:[I

.field private valuesKmh:I

.field private valuesMph:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstraintSet()Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 3
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->flags:I

    .line 3
    return v0
.end method

.method public getLanes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lanes:I

    .line 3
    return v0
.end method

.method public getLanesList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lanesList:[I

    .line 3
    return-object v0
.end method

.method public getLengthsCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lengthsCm:I

    .line 3
    return v0
.end method

.method public getLengthsCmList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lengthsCmList:[I

    .line 3
    return-object v0
.end method

.method public getSpeedUnitsList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->speedUnitsList:[I

    .line 3
    return-object v0
.end method

.method public getValueList()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valueList:[I

    .line 3
    return-object v0
.end method

.method public getValuesKmh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valuesKmh:I

    .line 3
    return v0
.end method

.method public getValuesMph()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valuesMph:I

    .line 3
    return v0
.end method

.method public setConstraintSet(Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 3
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->flags:I

    .line 3
    return-void
.end method

.method public setLanes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lanes:I

    .line 3
    return-void
.end method

.method public setLanesList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lanesList:[I

    .line 3
    return-void
.end method

.method public setLengthsCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lengthsCm:I

    .line 3
    return-void
.end method

.method public setLengthsCmList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lengthsCmList:[I

    .line 3
    return-void
.end method

.method public setSpeedUnitsList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->speedUnitsList:[I

    .line 3
    return-void
.end method

.method public setValueList([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valueList:[I

    .line 3
    return-void
.end method

.method public setValuesKmh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valuesKmh:I

    .line 3
    return-void
.end method

.method public setValuesMph(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valuesMph:I

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
    const-string v1, "PsdSpeedLimitProfile{valuesKmh="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valuesKmh:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", valuesMph="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valuesMph:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", lengthsCm="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lengthsCm:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", lanes="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lanes:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", valueList="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->valueList:[I

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", speedUnitsList="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->speedUnitsList:[I

    .line 67
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", lengthsCmList="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lengthsCmList:[I

    .line 81
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", lanesList="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->lanesList:[I

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", flags="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->flags:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", constraintSet="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;->constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const/16 v1, 0x7d

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method
