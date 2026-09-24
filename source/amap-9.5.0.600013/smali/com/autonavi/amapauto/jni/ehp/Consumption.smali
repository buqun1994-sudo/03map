.class public Lcom/autonavi/amapauto/jni/ehp/Consumption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private altitudeGainConsumption:F

.field private altitudeLossConsumption:F

.field private comfortConsumersConsumption:F

.field private consumptionCurve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private consumptionFactorDrivingProfile:F

.field private currentEnergyContent:F

.field private currentEnergyOffsetToZeroSoC:F

.field private customerActionTrigger:I

.field private driveMode:I

.field private f32speedLimitation:I

.field private maximumEnergyContent:F

.field private rangeCalculationTrailerState:S

.field private residualConsumersConsumption:F

.field private state:I

.field private velocityAxis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private velocityOffset:S

.field private velocityOffsetFRC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private velocityOffsetUnlimitedHighway:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltitudeGainConsumption()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->altitudeGainConsumption:F

    .line 3
    return v0
.end method

.method public getAltitudeLossConsumption()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->altitudeLossConsumption:F

    .line 3
    return v0
.end method

.method public getComfortConsumersConsumption()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->comfortConsumersConsumption:F

    .line 3
    return v0
.end method

.method public getConsumptionCurve()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->consumptionCurve:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getConsumptionFactorDrivingProfile()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->consumptionFactorDrivingProfile:F

    .line 3
    return v0
.end method

.method public getCurrentEnergyContent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->currentEnergyContent:F

    .line 3
    return v0
.end method

.method public getCurrentEnergyOffsetToZeroSoC()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->currentEnergyOffsetToZeroSoC:F

    .line 3
    return v0
.end method

.method public getCustomerActionTrigger()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->customerActionTrigger:I

    .line 3
    return v0
.end method

.method public getDriveMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->driveMode:I

    .line 3
    return v0
.end method

.method public getF32speedLimitation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->f32speedLimitation:I

    .line 3
    return v0
.end method

.method public getMaximumEnergyContent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->maximumEnergyContent:F

    .line 3
    return v0
.end method

.method public getResidualConsumersConsumption()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->residualConsumersConsumption:F

    .line 3
    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->state:I

    .line 3
    return v0
.end method

.method public getVelocityAxis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->velocityAxis:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public setAltitudeGainConsumption(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->altitudeGainConsumption:F

    .line 3
    return-void
.end method

.method public setAltitudeLossConsumption(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->altitudeLossConsumption:F

    .line 3
    return-void
.end method

.method public setComfortConsumersConsumption(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->comfortConsumersConsumption:F

    .line 3
    return-void
.end method

.method public setConsumptionCurve(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->consumptionCurve:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setConsumptionFactorDrivingProfile(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->consumptionFactorDrivingProfile:F

    .line 3
    return-void
.end method

.method public setCurrentEnergyContent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->currentEnergyContent:F

    .line 3
    return-void
.end method

.method public setCurrentEnergyOffsetToZeroSoC(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->currentEnergyOffsetToZeroSoC:F

    .line 3
    return-void
.end method

.method public setCustomerActionTrigger(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->customerActionTrigger:I

    .line 3
    return-void
.end method

.method public setDriveMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->driveMode:I

    .line 3
    return-void
.end method

.method public setF32speedLimitation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->f32speedLimitation:I

    .line 3
    return-void
.end method

.method public setMaximumEnergyContent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->maximumEnergyContent:F

    .line 3
    return-void
.end method

.method public setRangeCalculationTrailerState(B)V
    .locals 0

    int-to-short p1, p1

    .line 2
    iput-short p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->rangeCalculationTrailerState:S

    return-void
.end method

.method public setRangeCalculationTrailerState(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->rangeCalculationTrailerState:S

    return-void
.end method

.method public setResidualConsumersConsumption(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->residualConsumersConsumption:F

    .line 3
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->state:I

    .line 3
    return-void
.end method

.method public setVelocityAxis(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->velocityAxis:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setVelocityOffset(B)V
    .locals 0

    int-to-short p1, p1

    .line 2
    iput-short p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->velocityOffset:S

    return-void
.end method

.method public setVelocityOffset(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->velocityOffset:S

    return-void
.end method

.method public setVelocityOffsetFRC(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->velocityOffsetFRC:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setVelocityOffsetUnlimitedHighway(B)V
    .locals 0

    int-to-short p1, p1

    .line 2
    iput-short p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->velocityOffsetUnlimitedHighway:S

    return-void
.end method

.method public setVelocityOffsetUnlimitedHighway(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/autonavi/amapauto/jni/ehp/Consumption;->velocityOffsetUnlimitedHighway:S

    return-void
.end method
