.class public Lu60;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

.field public l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p0}, Lnc;-><init>()V

    const-string v2, "INITIAL_HV_BATTENERGY"

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    move-wide v6, v8

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v5, v15

    const-string v13, "PowerInfoAction"

    const-string v8, "hvBattEnergy = {?}"

    invoke-static {v13, v8, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "IS_CHARGE"

    .line 7
    invoke-virtual {v1, v5, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move v10, v5

    new-array v8, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v15

    const-string v5, "isCharging = {?}"

    invoke-static {v13, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "CUR_DRIVE_MODE"

    .line 9
    invoke-virtual {v1, v5, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v11, v5

    new-array v8, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v15

    const-string v5, "driveMode = {?}"

    invoke-static {v13, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "MAX_BATT_ENERGY"

    .line 11
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    move-wide/from16 v23, v3

    new-array v5, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v15

    const-string v3, "maxBatteryEnergy = {?}"

    invoke-static {v13, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "VEHICLE_WEIGHT"

    .line 13
    invoke-virtual {v1, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v14, v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v15

    const-string v3, "weight = {?}"

    invoke-static {v13, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "LOW_ENERGY_ALERT"

    .line 15
    invoke-virtual {v1, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v15

    const-string v3, "lowEnerygyAlert = {?}"

    invoke-static {v13, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "RANGE_DIST"

    .line 17
    invoke-virtual {v1, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v9, v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v15

    const-string v3, "rangeDistance = {?}"

    invoke-static {v13, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "ENERGY_UNIT"

    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v12, v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v15

    const-string v3, "enerygyUnit = {?}"

    invoke-static {v13, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "TOP_SPEED"

    const/16 v4, 0x78

    .line 21
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object v4, v13

    move v13, v3

    new-array v5, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v15

    const-string v3, "maxSpeed = {?}"

    invoke-static {v4, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "SLOPE_COSTLIST"

    .line 23
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v3

    const/4 v5, 0x0

    move-object v15, v3

    new-array v0, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const-string v3, "slopeCostList = {?}"

    invoke-static {v4, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "SPEED_COSTLIST"

    .line 25
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    move-object/from16 v16, v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "speedCostList = {?}"

    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "TRANS_COSTLIST"

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    move-object/from16 v17, v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "transCostList = {?}"

    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "CURVE_COSTLIST"

    .line 29
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    move-object/from16 v18, v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "curveCostList = {?}"

    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "AUX_COST"

    move-wide/from16 v27, v6

    const-wide/16 v5, 0x0

    .line 31
    invoke-virtual {v1, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v21

    move-wide/from16 v19, v21

    new-array v0, v2, [Ljava/lang/Object;

    .line 32
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v3, 0x0

    aput-object v7, v0, v3

    const-string v7, "auxCost = {?}"

    invoke-static {v4, v7, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "FERRYRATE_COST"

    .line 33
    invoke-virtual {v1, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v25

    move-wide/from16 v21, v25

    new-array v0, v2, [Ljava/lang/Object;

    .line 34
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v0, v3

    const-string v7, "ferryrateCost = {?}"

    invoke-static {v4, v7, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "PERCENT_OF_RESIDUAL_ENERGY"

    .line 35
    invoke-virtual {v1, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    move-wide/from16 v25, v5

    new-array v0, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v5, "percentOfResidualEnergy = {?}"

    invoke-static {v4, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    move-object v5, v0

    move-wide/from16 v6, v27

    invoke-direct/range {v5 .. v26}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;-><init>(DIIZIIII[D[D[D[DDDDD)V

    move-object/from16 v5, p0

    iput-object v0, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    const-string v0, "POWER_INFO_TEST"

    .line 38
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v8}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "before powerInfoTest = {?}, powerInfoData = {?}"

    invoke-static {v4, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 40
    iget-object v7, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual/range {p0 .. p1}, Lu60;->y(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->setPowertrainLoss(Ljava/util/List;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    move-result-object v1

    invoke-virtual {v1}, Lse;->getPowertrainLoss()Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    iput-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    const-string v1, "override  "

    new-array v7, v3, [Ljava/lang/Object;

    .line 43
    invoke-static {v4, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "powerInfoReadData is null"

    new-array v7, v3, [Ljava/lang/Object;

    .line 44
    invoke-static {v4, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "after powerInfoTest = {?}, powerInfoData = {?}"

    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;-><init>()V

    iput-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 47
    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getBatteryEnergy()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setInitialHvBattenergy(D)V

    .line 48
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->isCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setIsCharge(Z)V

    .line 49
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getDriveMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setCurDriveMode(I)V

    .line 50
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getMaxBatteryEnergy()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setMaxBattEnergy(D)V

    .line 51
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getWeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setVehicleWeight(I)V

    .line 52
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getLowEnergyAlert()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setLowEnergyAlert(I)V

    .line 53
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getReachableDistance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setRangeDist(I)V

    .line 54
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getEnergyUnit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setEnergyUnit(I)V

    .line 55
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getTopSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setTopSpeed(I)V

    .line 56
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getCurveCostList()[D

    move-result-object v1

    invoke-virtual {v5, v1}, Lu60;->x([D)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setSlopeCostlist(Ljava/util/ArrayList;)V

    .line 57
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getSpeedCostList()[D

    move-result-object v1

    invoke-virtual {v5, v1}, Lu60;->x([D)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setSpeedCostlist(Ljava/util/ArrayList;)V

    .line 58
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getTransCostList()[D

    move-result-object v1

    invoke-virtual {v5, v1}, Lu60;->x([D)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setTransCostlist(Ljava/util/ArrayList;)V

    .line 59
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getCurveCostList()[D

    move-result-object v1

    invoke-virtual {v5, v1}, Lu60;->x([D)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setCurveCostlist(Ljava/util/ArrayList;)V

    .line 60
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getAuxCost()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setAuxCost(D)V

    .line 61
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getFerryrateCost()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setFerryrateCost(D)V

    .line 62
    iget-object v0, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getPercentOfResidualEnergy()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setPercentOfResidualEnergy(D)V

    .line 63
    iget-object v0, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getPowertrainLoss()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getPowertrainLoss()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;

    .line 66
    new-instance v7, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;

    invoke-virtual {v6}, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->getPowerdemand()F

    move-result v8

    invoke-virtual {v6}, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->getCostValue()F

    move-result v6

    invoke-direct {v7, v8, v6}, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;-><init>(FF)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, v5, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setPowertrainLoss(Ljava/util/ArrayList;)V

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    .line 68
    iget-object v1, v5, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getPowertrainLoss()Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "PowerInfoAction() powertrainLoss:{?}"

    invoke-static {v4, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    iput-object p1, p0, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 8

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0xea67

    .line 8
    invoke-virtual {v0, v1}, Lse;->getOptionalValue(I)Leq$a;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v0}, Leq$a;->a()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-static {}, Lib;->j()Z

    .line 34
    move-result v1

    .line 35
    const-wide/16 v3, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    const-string v6, "PowerInfoAction"

    .line 40
    if-eqz v1, :cond_3

    .line 42
    iget-object v1, p0, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 44
    if-nez v1, :cond_1

    .line 46
    const-string v1, "mRspCarEnergyInfoModel must not be null"

    .line 48
    new-array v2, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v6, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-array v5, v5, [Ljava/lang/Object;

    .line 56
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    aput-object v1, v5, v2

    .line 62
    const-string v1, "mRspCarEnergyInfoModel:{?}"

    .line 64
    invoke-static {v6, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_1
    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 71
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getInitialHvBattenergy()D

    .line 76
    move-result-wide v0

    .line 77
    cmpl-double v2, v0, v3

    .line 79
    if-ltz v2, :cond_6

    .line 81
    :cond_2
    iget-object v0, p0, Lu60;->l:Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 83
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object v1, p0, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    .line 89
    if-nez v1, :cond_4

    .line 91
    new-instance v0, Ljava/lang/Exception;

    .line 93
    const-string v1, "Received power info from system, but some key parameter is missing."

    .line 95
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    .line 100
    invoke-static {v6, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 103
    return-void

    .line 104
    :cond_4
    const/4 v7, 0x2

    .line 105
    new-array v7, v7, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->toString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    aput-object v1, v7, v2

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    move-result-object v1

    .line 117
    aput-object v1, v7, v5

    .line 119
    const-string v1, "setPowerInfo:{?} isFilterNegativeBatteryEnergy:{?}"

    .line 121
    invoke-static {v6, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    .line 128
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;->getBatteryEnergy()D

    .line 131
    move-result-wide v0

    .line 132
    cmpl-double v5, v0, v3

    .line 134
    if-ltz v5, :cond_6

    .line 136
    :cond_5
    const-string v0, "setPowerInfo to native"

    .line 138
    new-array v1, v2, [Ljava/lang/Object;

    .line 140
    invoke-static {v6, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lu60;->k:Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;

    .line 145
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setPowerInfo(Lcom/autonavi/amapauto/jni/protocol/data/PowerInfoData;)V

    .line 148
    :cond_6
    :goto_2
    return-void
.end method

.method public final x([D)Ljava/util/ArrayList;
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    array-length v1, p1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    aget-wide v3, p1, v2

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public final y(Landroid/content/Intent;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "POWERTRAIN_LOSS"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 13
    const-string v3, "PowerInfoAction"

    .line 15
    const-string v4, "decodePowertrainLossString() strList:{?}"

    .line 17
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const-string v4, ";"

    .line 35
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    array-length v4, p1

    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    if-ge v5, v4, :cond_3

    .line 43
    aget-object v6, p1, v5

    .line 45
    new-array v7, v0, [Ljava/lang/Object;

    .line 47
    aput-object v6, v7, v2

    .line 49
    const-string v8, "decodePowertrainLossString() strItem:{?}"

    .line 51
    invoke-static {v3, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string v7, ","

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 67
    array-length v7, v6

    .line 68
    const/4 v8, 0x2

    .line 69
    if-eq v7, v8, :cond_2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v7, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;

    .line 74
    invoke-direct {v7}, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;-><init>()V

    .line 77
    aget-object v8, v6, v2

    .line 79
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 86
    move-result v8

    .line 87
    invoke-virtual {v7, v8}, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->setPowerdemand(F)V

    .line 90
    aget-object v6, v6, v0

    .line 92
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 99
    move-result v6

    .line 100
    invoke-virtual {v7, v6}, Lcom/autonavi/amapauto/jni/protocol/data/PowertrainLoss;->setCostValue(F)V

    .line 103
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 114
    move-result v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v0

    .line 119
    aput-object v0, p1, v2

    .line 121
    const-string v0, "decodePowertrainLossString() list.size():{?}"

    .line 123
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-object v1
.end method
