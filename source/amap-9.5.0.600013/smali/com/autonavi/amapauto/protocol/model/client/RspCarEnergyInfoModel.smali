.class public Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private auxCost:D

.field private curDriveMode:I
    .annotation runtime Lz70;
        intValues = {
            0x0,
            0x1,
            0x2,
            0x3,
            0x4,
            0x5,
            0x6,
            0x7,
            0x8
        }
    .end annotation
.end field

.field private curveCostlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private energyUnit:I

.field private ferryrateCost:D

.field private initialHvBattenergy:D

.field private isCharge:Z

.field private lowEnergyAlert:I

.field private lowEnergyWarn:I

.field private maxBattEnergy:D

.field private percentOfResidualEnergy:D

.field private powertrainLoss:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rangeDist:I

.field private slopeCostlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private speedCostlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private topSpeed:I

.field private transCostlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private vehicleWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138a6

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(DILjava/util/ArrayList;IDDZIIDDLjava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;IDDZIIDD",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v1, 0x138a6

    .line 4
    invoke-virtual {p0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    move-wide v1, p1

    .line 5
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->auxCost:D

    move v1, p3

    .line 6
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curDriveMode:I

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curveCostlist:Ljava/util/ArrayList;

    move v1, p5

    .line 8
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->energyUnit:I

    move-wide v1, p6

    .line 9
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->ferryrateCost:D

    move-wide v1, p8

    .line 10
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->initialHvBattenergy:D

    move v1, p10

    .line 11
    iput-boolean v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->isCharge:Z

    move v1, p11

    .line 12
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyAlert:I

    move v1, p12

    .line 13
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyWarn:I

    move-wide/from16 v1, p13

    .line 14
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->maxBattEnergy:D

    move-wide/from16 v1, p15

    .line 15
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->percentOfResidualEnergy:D

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->powertrainLoss:Ljava/util/ArrayList;

    move/from16 v1, p18

    .line 17
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->rangeDist:I

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->slopeCostlist:Ljava/util/ArrayList;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->speedCostlist:Ljava/util/ArrayList;

    move/from16 v1, p21

    .line 20
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->topSpeed:I

    move-object/from16 v1, p22

    .line 21
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->transCostlist:Ljava/util/ArrayList;

    move/from16 v1, p23

    .line 22
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->vehicleWeight:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 23
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->auxCost:D

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curDriveMode:I

    .line 26
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curveCostlist:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->energyUnit:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->ferryrateCost:D

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->initialHvBattenergy:D

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->isCharge:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyAlert:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyWarn:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->maxBattEnergy:D

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->percentOfResidualEnergy:D

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->rangeDist:I

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->slopeCostlist:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->speedCostlist:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->topSpeed:I

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->transCostlist:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->vehicleWeight:I

    .line 41
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 42
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->powertrainLoss:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuxCost()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->auxCost:D

    .line 3
    return-wide v0
.end method

.method public getCurDriveMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curDriveMode:I

    .line 3
    return v0
.end method

.method public getCurveCostlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curveCostlist:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getEnergyUnit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->energyUnit:I

    .line 3
    return v0
.end method

.method public getFerryrateCost()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->ferryrateCost:D

    .line 3
    return-wide v0
.end method

.method public getInitialHvBattenergy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->initialHvBattenergy:D

    .line 3
    return-wide v0
.end method

.method public getIsCharge()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->isCharge:Z

    .line 3
    return v0
.end method

.method public getLowEnergyAlert()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyAlert:I

    .line 3
    return v0
.end method

.method public getLowEnergyWarn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyWarn:I

    .line 3
    return v0
.end method

.method public getMaxBattEnergy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->maxBattEnergy:D

    .line 3
    return-wide v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPercentOfResidualEnergy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->percentOfResidualEnergy:D

    .line 3
    return-wide v0
.end method

.method public getPowertrainLoss()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->powertrainLoss:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getRangeDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->rangeDist:I

    .line 3
    return v0
.end method

.method public getSlopeCostlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->slopeCostlist:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getSpeedCostlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->speedCostlist:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getTopSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->topSpeed:I

    .line 3
    return v0
.end method

.method public getTransCostlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->transCostlist:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getVehicleWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->vehicleWeight:I

    .line 3
    return v0
.end method

.method public setAuxCost(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->auxCost:D

    .line 3
    return-void
.end method

.method public setCurDriveMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curDriveMode:I

    .line 3
    return-void
.end method

.method public setCurveCostlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curveCostlist:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setEnergyUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->energyUnit:I

    .line 3
    return-void
.end method

.method public setFerryrateCost(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->ferryrateCost:D

    .line 3
    return-void
.end method

.method public setInitialHvBattenergy(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->initialHvBattenergy:D

    .line 3
    return-void
.end method

.method public setIsCharge(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->isCharge:Z

    .line 3
    return-void
.end method

.method public setLowEnergyAlert(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyAlert:I

    .line 3
    return-void
.end method

.method public setLowEnergyWarn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyWarn:I

    .line 3
    return-void
.end method

.method public setMaxBattEnergy(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->maxBattEnergy:D

    .line 3
    return-void
.end method

.method public setPercentOfResidualEnergy(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->percentOfResidualEnergy:D

    .line 3
    return-void
.end method

.method public setPowertrainLoss(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->powertrainLoss:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setRangeDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->rangeDist:I

    .line 3
    return-void
.end method

.method public setSlopeCostlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->slopeCostlist:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setSpeedCostlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->speedCostlist:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setTopSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->topSpeed:I

    .line 3
    return-void
.end method

.method public setTransCostlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->transCostlist:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setVehicleWeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->vehicleWeight:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "auxCost"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->auxCost:D

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "curDriveMode"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curDriveMode:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "curveCostlist"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curveCostlist:Ljava/util/ArrayList;

    .line 52
    const-string v4, "null"

    .line 54
    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v3, v4

    .line 62
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v3, "energyUnit"

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->energyUnit:I

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v3, "ferryrateCost"

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-wide v5, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->ferryrateCost:D

    .line 94
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "initialHvBattenergy"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v5, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->initialHvBattenergy:D

    .line 110
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, "isCharge"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->isCharge:Z

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "lowEnergyAlert"

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyAlert:I

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v3, "lowEnergyWarn"

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyWarn:I

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v3, "maxBattEnergy"

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-wide v5, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->maxBattEnergy:D

    .line 174
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v3, "percentOfResidualEnergy"

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-wide v5, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->percentOfResidualEnergy:D

    .line 190
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v3, "powertrainLoss"

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->powertrainLoss:Ljava/util/ArrayList;

    .line 206
    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 211
    move-result-object v3

    .line 212
    goto :goto_1

    .line 213
    :cond_1
    move-object v3, v4

    .line 214
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v3, "rangeDist"

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->rangeDist:I

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v3, "slopeCostlist"

    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->slopeCostlist:Ljava/util/ArrayList;

    .line 246
    if-eqz v3, :cond_2

    .line 248
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    move-result-object v3

    .line 252
    goto :goto_2

    .line 253
    :cond_2
    move-object v3, v4

    .line 254
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v3, "speedCostlist"

    .line 262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->speedCostlist:Ljava/util/ArrayList;

    .line 270
    if-eqz v3, :cond_3

    .line 272
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 275
    move-result-object v3

    .line 276
    goto :goto_3

    .line 277
    :cond_3
    move-object v3, v4

    .line 278
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v3, "topSpeed"

    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->topSpeed:I

    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v3, "transCostlist"

    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->transCostlist:Ljava/util/ArrayList;

    .line 310
    if-eqz v3, :cond_4

    .line 312
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 315
    move-result-object v4

    .line 316
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v3, "vehicleWeight"

    .line 324
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->vehicleWeight:I

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v0

    .line 342
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->auxCost:D

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curDriveMode:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->curveCostlist:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->energyUnit:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->ferryrateCost:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->initialHvBattenergy:D

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->isCharge:Z

    .line 36
    int-to-byte p2, p2

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyAlert:I

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->lowEnergyWarn:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->maxBattEnergy:D

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 55
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->percentOfResidualEnergy:D

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->rangeDist:I

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->slopeCostlist:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 70
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->speedCostlist:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 75
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->topSpeed:I

    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->transCostlist:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 85
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->vehicleWeight:I

    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 93
    move-result p2

    .line 94
    const/4 v0, 0x1

    .line 95
    if-lt p2, v0, :cond_0

    .line 97
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->powertrainLoss:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 102
    :cond_0
    return-void
.end method
