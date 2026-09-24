.class public Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comfortConsumersConsumption:D

.field private consumptionFactorDrivingProfile:D

.field private currentEnergyOffsetToZeroSoC:D

.field private customerActionTrigger:S

.field private residualConsumersConsumption:D

.field private state:I

.field private velocityOffsetFRC:[B

.field private velocityOffsetUnlimitedHighway:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComfortConsumersConsumption()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->comfortConsumersConsumption:D

    .line 3
    return-wide v0
.end method

.method public getConsumptionFactorDrivingProfile()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->consumptionFactorDrivingProfile:D

    .line 3
    return-wide v0
.end method

.method public getCurrentEnergyOffsetToZeroSoC()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->currentEnergyOffsetToZeroSoC:D

    .line 3
    return-wide v0
.end method

.method public getCustomerActionTrigger()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->customerActionTrigger:S

    .line 3
    return v0
.end method

.method public getResidualConsumersConsumption()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->residualConsumersConsumption:D

    .line 3
    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->state:I

    .line 3
    return v0
.end method

.method public getVelocityOffsetFRC()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->velocityOffsetFRC:[B

    .line 3
    return-object v0
.end method

.method public getVelocityOffsetUnlimitedHighway()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->velocityOffsetUnlimitedHighway:B

    .line 3
    return v0
.end method

.method public setComfortConsumersConsumption(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->comfortConsumersConsumption:D

    .line 3
    return-void
.end method

.method public setConsumptionFactorDrivingProfile(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->consumptionFactorDrivingProfile:D

    .line 3
    return-void
.end method

.method public setCurrentEnergyOffsetToZeroSoC(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->currentEnergyOffsetToZeroSoC:D

    .line 3
    return-void
.end method

.method public setCustomerActionTrigger(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->customerActionTrigger:S

    .line 3
    return-void
.end method

.method public setResidualConsumersConsumption(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->residualConsumersConsumption:D

    .line 3
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->state:I

    .line 3
    return-void
.end method

.method public setVelocityOffsetFRC([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->velocityOffsetFRC:[B

    .line 3
    return-void
.end method

.method public setVelocityOffsetUnlimitedHighway(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->velocityOffsetUnlimitedHighway:B

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
    const-string v1, "PowerInfoExtensionData{residualConsumersConsumption="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->residualConsumersConsumption:D

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", customerActionTrigger="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-short v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->customerActionTrigger:S

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", state="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->state:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", velocityOffsetUnlimitedHighway="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-byte v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->velocityOffsetUnlimitedHighway:B

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", velocityOffsetFRC="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->velocityOffsetFRC:[B

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", consumptionFactorDrivingProfile="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->consumptionFactorDrivingProfile:D

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", currentEnergyOffsetToZeroSoC="

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->currentEnergyOffsetToZeroSoC:D

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", comfortConsumersConsumption="

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;->comfortConsumersConsumption:D

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x7d

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
