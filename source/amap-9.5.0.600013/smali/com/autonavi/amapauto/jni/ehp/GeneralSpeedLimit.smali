.class public Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field constraintSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private roadProperties_:I

.field private roadType_:I

.field private speedUnit:I

.field private value:I

.field private valueKmh_:I

.field private valueMph_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->roadType_:I

    .line 7
    return-void
.end method


# virtual methods
.method public getConstraintSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->constraintSet:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getRoadProperties_()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->roadProperties_:I

    .line 3
    return v0
.end method

.method public getRoadType_()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->roadType_:I

    .line 3
    return v0
.end method

.method public getSpeedUnit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->speedUnit:I

    .line 3
    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->value:I

    .line 3
    return v0
.end method

.method public getValueKmh_()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->valueKmh_:I

    .line 3
    return v0
.end method

.method public getValueMph_()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->valueMph_:I

    .line 3
    return v0
.end method

.method public setConstraintSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->constraintSet:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setRoadProperties_(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->roadProperties_:I

    .line 3
    return-void
.end method

.method public setRoadType_(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->roadType_:I

    .line 3
    return-void
.end method

.method public setSpeedUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->speedUnit:I

    .line 3
    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->value:I

    .line 3
    return-void
.end method

.method public setValueKmh_(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->valueKmh_:I

    .line 3
    return-void
.end method

.method public setValueMph_(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->valueMph_:I

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
    const-string v1, "GeneralSpeedLimit{valueKmh_="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->valueKmh_:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", valueMph_="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->valueMph_:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", roadType_="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->roadType_:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", roadProperties_="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->roadProperties_:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", value="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->value:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", speedUnit="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->speedUnit:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", constraintSet="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;->constraintSet:Ljava/util/List;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v1, 0x7d

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
