.class public Lyn;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lnc;-><init>()V

    .line 28
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;-><init>()V

    iput-object v0, p0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lnc;-><init>()V

    .line 2
    new-instance v2, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-direct {v2}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;-><init>()V

    iput-object v2, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lnc;->r(Z)V

    const-string v3, "carRatedLoading"

    const-wide/16 v4, 0x0

    .line 4
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v3, "carLength"

    .line 5
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v3, "carPlateNumber"

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "carWidth"

    .line 7
    invoke-virtual {v1, v10, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v12, "carType"

    const/4 v13, -0x1

    .line 8
    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v14, "carHeight"

    .line 9
    invoke-virtual {v1, v14, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v14

    const-string v2, "powerType"

    .line 10
    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "carAxes"

    .line 11
    invoke-virtual {v1, v4, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "carLoading"

    move-wide/from16 v18, v14

    const-wide/16 v13, 0x0

    .line 12
    invoke-virtual {v1, v5, v13, v14}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v13

    .line 13
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v6, v7}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarRatedLoading(D)V

    .line 14
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v8, v9}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarLength(D)V

    .line 15
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarPlateNumber(Ljava/lang/String;)V

    .line 16
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v10, v11}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarWidth(D)V

    .line 17
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v12}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarType(I)V

    .line 18
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    move-wide/from16 v16, v10

    move-wide/from16 v10, v18

    invoke-virtual {v1, v10, v11}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarHeight(D)V

    .line 19
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setPowerType(I)V

    .line 20
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarAxes(I)V

    .line 21
    iget-object v1, v0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-virtual {v1, v13, v14}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->setCarLoading(D)V

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v3, 0x3

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "GetTruckParmAction"

    const-string v3, "[onReceive] receiveClientRequest GetTruckParmAction Intent carRatedLoading = {?},carLength = {?},carPlateNumber = {?},carWidth = {?},carType = {?},carHeight = {?},powerType = {?},carAxes = {?},carLoading = {?}"

    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lnc;-><init>()V

    .line 24
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;-><init>()V

    iput-object v0, p0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 26
    iput-object p1, p0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyn;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
