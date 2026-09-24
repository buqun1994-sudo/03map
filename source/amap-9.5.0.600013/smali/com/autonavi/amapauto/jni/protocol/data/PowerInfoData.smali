.class public Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAuxCost:D

.field private mCurveCostList:[D

.field private mDriveMode:I

.field private mEnergyUnit:I

.field private mFerryRateCost:D

.field private mHvBattEnergy:D

.field private mIsCharging:Z

.field private mLowEnergyAlert:I

.field private mMaxBatteryEnergy:D

.field private mPercentOfResidualEnergy:D

.field private mReachableDistance:I

.field private mSlopeCostList:[D

.field private mSpeedCostList:[D

.field private mTimestamp:J

.field private mTopSpeed:I

.field private mTransCostList:[D

.field private mWeight:I

.field private powerInfoExtensionData:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;

.field private powertrainLoss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DIIZIIII[D[D[D[DDDDD)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 3
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mHvBattEnergy:D

    move v1, p3

    .line 4
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mLowEnergyAlert:I

    move v1, p4

    .line 5
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mReachableDistance:I

    move v1, p5

    .line 6
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mIsCharging:Z

    move v1, p6

    .line 7
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mDriveMode:I

    move v1, p7

    .line 8
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mEnergyUnit:I

    move v1, p8

    .line 9
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTopSpeed:I

    move v1, p9

    .line 10
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mWeight:I

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSlopeCostList:[D

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSpeedCostList:[D

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTransCostList:[D

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mCurveCostList:[D

    move-wide/from16 v1, p14

    .line 15
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mAuxCost:D

    move-wide/from16 v1, p16

    .line 16
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mFerryRateCost:D

    move-wide/from16 v1, p18

    .line 17
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mMaxBatteryEnergy:D

    move-wide/from16 v1, p20

    .line 18
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mPercentOfResidualEnergy:D

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-wide v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mHvBattEnergy:D

    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mHvBattEnergy:D

    .line 22
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mLowEnergyAlert:I

    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mLowEnergyAlert:I

    .line 23
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mReachableDistance:I

    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mReachableDistance:I

    .line 24
    iget-boolean v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mIsCharging:Z

    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mIsCharging:Z

    .line 25
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mDriveMode:I

    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mDriveMode:I

    .line 26
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mEnergyUnit:I

    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mEnergyUnit:I

    .line 27
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTopSpeed:I

    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTopSpeed:I

    .line 28
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mWeight:I

    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mWeight:I

    .line 29
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSlopeCostList:[D

    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSlopeCostList:[D

    .line 30
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSpeedCostList:[D

    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSpeedCostList:[D

    .line 31
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTransCostList:[D

    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTransCostList:[D

    .line 32
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mCurveCostList:[D

    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mCurveCostList:[D

    .line 33
    iget-wide v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mAuxCost:D

    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mAuxCost:D

    .line 34
    iget-wide v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mFerryRateCost:D

    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mFerryRateCost:D

    .line 35
    iget-wide v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mMaxBatteryEnergy:D

    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mMaxBatteryEnergy:D

    .line 36
    iget-wide v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mPercentOfResidualEnergy:D

    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mPercentOfResidualEnergy:D

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getAuxCost()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mAuxCost:D

    .line 3
    return-wide v0
.end method

.method public getBatteryEnergy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mHvBattEnergy:D

    .line 3
    return-wide v0
.end method

.method public getBatteryPercentage()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mHvBattEnergy:D

    .line 3
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mMaxBatteryEnergy:D

    .line 5
    div-double/2addr v0, v2

    .line 6
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 8
    mul-double v0, v0, v2

    .line 10
    return-wide v0
.end method

.method public getChargeType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCurveCostList()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mCurveCostList:[D

    .line 3
    return-object v0
.end method

.method public getDriveMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mDriveMode:I

    .line 3
    return v0
.end method

.method public getEnergyUnit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mEnergyUnit:I

    .line 3
    return v0
.end method

.method public getFerryrateCost()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mFerryRateCost:D

    .line 3
    return-wide v0
.end method

.method public getLowEnergyAlert()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mLowEnergyAlert:I

    .line 3
    return v0
.end method

.method public getMaxBatteryEnergy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mMaxBatteryEnergy:D

    .line 3
    return-wide v0
.end method

.method public getPercentOfResidualEnergy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mPercentOfResidualEnergy:D

    .line 3
    return-wide v0
.end method

.method public getPowerInfoExtensionData()Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->powerInfoExtensionData:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;

    .line 3
    return-object v0
.end method

.method public getPowertrainLoss()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->powertrainLoss:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getReachableDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mReachableDistance:I

    .line 3
    return v0
.end method

.method public getSlopeCostList()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSlopeCostList:[D

    .line 3
    return-object v0
.end method

.method public getSpeedCostList()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSpeedCostList:[D

    .line 3
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTimestamp:J

    .line 3
    return-wide v0
.end method

.method public getTopSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTopSpeed:I

    .line 3
    return v0
.end method

.method public getTransCostList()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTransCostList:[D

    .line 3
    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mWeight:I

    .line 3
    return v0
.end method

.method public isCharging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mIsCharging:Z

    .line 3
    return v0
.end method

.method public setAuxCost(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mAuxCost:D

    .line 3
    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mIsCharging:Z

    .line 3
    return-void
.end method

.method public setCurveCostList([D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mCurveCostList:[D

    .line 3
    return-void
.end method

.method public setDriveMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mDriveMode:I

    .line 3
    return-void
.end method

.method public setEnergyUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mEnergyUnit:I

    .line 3
    return-void
.end method

.method public setFerryRateCost(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mFerryRateCost:D

    .line 3
    return-void
.end method

.method public setHvBattEnergy(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mHvBattEnergy:D

    .line 3
    return-void
.end method

.method public setIsCharging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mIsCharging:Z

    .line 3
    return-void
.end method

.method public setLowEnergyAlert(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mLowEnergyAlert:I

    .line 3
    return-void
.end method

.method public setMaxBatteryEnergy(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mMaxBatteryEnergy:D

    .line 3
    return-void
.end method

.method public setPercentOfResidualEnergy(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mPercentOfResidualEnergy:D

    .line 3
    return-void
.end method

.method public setPowerInfoExtensionData(Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->powerInfoExtensionData:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoExtensionData;

    .line 3
    return-void
.end method

.method public setPowertrainLoss(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->powertrainLoss:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setReachableDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mReachableDistance:I

    .line 3
    return-void
.end method

.method public setSlopeCostList([D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSlopeCostList:[D

    .line 3
    return-void
.end method

.method public setSpeedCostList([D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSpeedCostList:[D

    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTimestamp:J

    .line 3
    return-void
.end method

.method public setTopSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTopSpeed:I

    .line 3
    return-void
.end method

.method public setTransCostList([D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTransCostList:[D

    .line 3
    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mWeight:I

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
    const-string v1, "PowerInfoData{mTimestamp="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTimestamp:J

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", mHvBattEnergy="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mHvBattEnergy:D

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", mLowEnergyAlert="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mLowEnergyAlert:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", mReachableDistance="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mReachableDistance:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", mIsCharging="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mIsCharging:Z

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", mDriveMode="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mDriveMode:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", mEnergyUnit="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mEnergyUnit:I

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", mTopSpeed="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTopSpeed:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", mWeight="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mWeight:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", mSlopeCostList="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSlopeCostList:[D

    .line 103
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", mSpeedCostList="

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mSpeedCostList:[D

    .line 117
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", mTransCostList="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mTransCostList:[D

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", mCurveCostList="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mCurveCostList:[D

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", mAuxCost="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mAuxCost:D

    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", mFerryRateCost="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mFerryRateCost:D

    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", mMaxBatteryEnergy="

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mMaxBatteryEnergy:D

    .line 179
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", mPercentOfResidualEnergy="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->mPercentOfResidualEnergy:D

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ", powertrainLoss="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->powertrainLoss:Ljava/util/List;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    const/16 v1, 0x7d

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    return-object v0
.end method
