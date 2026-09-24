.class public Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastEventBasedRecalculationTimeStamp:J

.field private rangeWithComfortConsumptionInKm:F

.field private rangeWithoutComfortConsumptionInKm:F

.field private residualEnergyWithComfortConsumptionNormalized:F

.field private residualEnergyWithoutComfortConsumptionNormalized:F

.field private routeBasedConsumptionTrigger:I

.field private routeGuidanceState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastEventBasedRecalculationTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->lastEventBasedRecalculationTimeStamp:J

    .line 3
    return-wide v0
.end method

.method public getRangeWithComfortConsumptionInKm()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->rangeWithComfortConsumptionInKm:F

    .line 3
    return v0
.end method

.method public getRangeWithoutComfortConsumptionInKm()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->rangeWithoutComfortConsumptionInKm:F

    .line 3
    return v0
.end method

.method public getResidualEnergyWithComfortConsumptionNormalized()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->residualEnergyWithComfortConsumptionNormalized:F

    .line 3
    return v0
.end method

.method public getResidualEnergyWithoutComfortConsumptionNormalized()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->residualEnergyWithoutComfortConsumptionNormalized:F

    .line 3
    return v0
.end method

.method public getRouteBasedConsumptionTrigger()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->routeBasedConsumptionTrigger:I

    .line 3
    return v0
.end method

.method public getRouteGuidanceState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->routeGuidanceState:I

    .line 3
    return v0
.end method

.method public setLastEventBasedRecalculationTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->lastEventBasedRecalculationTimeStamp:J

    .line 3
    return-void
.end method

.method public setRangeWithComfortConsumptionInKm(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->rangeWithComfortConsumptionInKm:F

    .line 3
    return-void
.end method

.method public setRangeWithoutComfortConsumptionInKm(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->rangeWithoutComfortConsumptionInKm:F

    .line 3
    return-void
.end method

.method public setResidualEnergyWithComfortConsumptionNormalized(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->residualEnergyWithComfortConsumptionNormalized:F

    .line 3
    return-void
.end method

.method public setResidualEnergyWithoutComfortConsumptionNormalized(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->residualEnergyWithoutComfortConsumptionNormalized:F

    .line 3
    return-void
.end method

.method public setRouteBasedConsumptionTrigger(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->routeBasedConsumptionTrigger:I

    .line 3
    return-void
.end method

.method public setRouteGuidanceState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->routeGuidanceState:I

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
    const-string v1, "ConsumptionResult{routeBasedConsumptionTrigger="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->routeBasedConsumptionTrigger:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", routeGuidanceState="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->routeGuidanceState:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", lastEventBasedRecalculationTimeStamp="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->lastEventBasedRecalculationTimeStamp:J

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", rangeWithComfortConsumptionInKm="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->rangeWithComfortConsumptionInKm:F

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", rangeWithoutComfortConsumptionInKm="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->rangeWithoutComfortConsumptionInKm:F

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", residualEnergyWithComfortConsumptionNormalized="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->residualEnergyWithComfortConsumptionNormalized:F

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", residualEnergyWithoutComfortConsumptionNormalized="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConsumptionResult;->residualEnergyWithoutComfortConsumptionNormalized:F

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
