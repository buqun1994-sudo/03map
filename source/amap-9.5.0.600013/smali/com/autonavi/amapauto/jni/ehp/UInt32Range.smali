.class public Lcom/autonavi/amapauto/jni/ehp/UInt32Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

.field lengthsCm:[I

.field offsetsCm:[I

.field value:I


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
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 3
    return-object v0
.end method

.method public getLengthsCm()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->lengthsCm:[I

    .line 3
    return-object v0
.end method

.method public getOffsetsCm()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->offsetsCm:[I

    .line 3
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->value:I

    .line 3
    return v0
.end method

.method public setConstraintSet(Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 3
    return-void
.end method

.method public setLengthsCm([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->lengthsCm:[I

    .line 3
    return-void
.end method

.method public setOffsetsCm([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->offsetsCm:[I

    .line 3
    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->value:I

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
    const-string v1, "UInt32Range{value="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->value:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", offsetsCm="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->offsetsCm:[I

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", lengthsCm="

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->lengthsCm:[I

    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", constraintSet="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/UInt32Range;->constraintSet:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v1, 0x7d

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
