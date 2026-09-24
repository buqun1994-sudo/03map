.class public Lr5;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lnc;-><init>()V

    .line 18
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;-><init>()V

    iput-object v0, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;-><init>()V

    iput-object v0, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v1, "laneLineViolation"

    const/4 v2, -0x1

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "laneDistanceFusion"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 5
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    const-string v5, "lane"

    .line 6
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "laneMarkerType"

    .line 7
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 8
    iget-object v2, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-virtual {v2, v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;->setLaneLineViolation(I)V

    .line 9
    iget-object v2, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;->setLaneDistanceFusion(D)V

    .line 10
    iget-object v2, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-virtual {v2, v5}, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;->setLane(I)V

    .line 11
    iget-object v2, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-virtual {v2, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;->setLaneMarkerType(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "ArNavigationLDWInfoAction"

    const-string v0, "[onReceive] receiveClientRequest ArNavigationLDWInfoAction Intent laneLineViolation = {?},laneDistanceFusion = {?},lane = {?},laneMarkerType = {?}"

    invoke-static {p1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lnc;-><init>()V

    .line 14
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;-><init>()V

    iput-object v0, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 16
    iput-object p1, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr5;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

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
