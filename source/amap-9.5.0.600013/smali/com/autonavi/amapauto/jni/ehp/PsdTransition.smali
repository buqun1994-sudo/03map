.class public Lcom/autonavi/amapauto/jni/ehp/PsdTransition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private conditionalProhibition:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

.field private curve:I

.field private flags:I

.field nextLink:Lcom/autonavi/amapauto/jni/ehp/TopologyReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConditionalProhibition()Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->conditionalProhibition:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 3
    return-object v0
.end method

.method public getCurve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->curve:I

    .line 3
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->flags:I

    .line 3
    return v0
.end method

.method public getNextLink()Lcom/autonavi/amapauto/jni/ehp/TopologyReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->nextLink:Lcom/autonavi/amapauto/jni/ehp/TopologyReference;

    .line 3
    return-object v0
.end method

.method public setConditionalProhibition(Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->conditionalProhibition:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 3
    return-void
.end method

.method public setCurve(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->curve:I

    .line 3
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->flags:I

    .line 3
    return-void
.end method

.method public setNextLink(Lcom/autonavi/amapauto/jni/ehp/TopologyReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->nextLink:Lcom/autonavi/amapauto/jni/ehp/TopologyReference;

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
    const-string v1, "PsdTransition{nextLink="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->nextLink:Lcom/autonavi/amapauto/jni/ehp/TopologyReference;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", flags="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->flags:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", curve="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->curve:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", conditionalProhibition="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdTransition;->conditionalProhibition:Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
