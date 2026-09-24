.class public Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private costValue:F

.field private powerdemand:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCostValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->costValue:F

    .line 3
    return v0
.end method

.method public getPowerdemand()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->powerdemand:F

    .line 3
    return v0
.end method

.method public setCostValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->costValue:F

    .line 3
    return-void
.end method

.method public setPowerdemand(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->powerdemand:F

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
    const-string v1, "PowertrainLoss{powerdemand="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->powerdemand:F

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", costValue="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->costValue:F

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
