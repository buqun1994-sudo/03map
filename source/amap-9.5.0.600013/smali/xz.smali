.class public Lxz;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v1, "minOffset"

    const/16 v2, 0x1f4

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "directionX"

    .line 9
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "directionY"

    .line 10
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "duration"

    .line 11
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 12
    new-instance v2, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    invoke-direct {v2}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;-><init>()V

    iput-object v2, p0, Lxz;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 13
    invoke-virtual {v2, v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;->setMinOffset(I)V

    .line 14
    iget-object v1, p0, Lxz;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;->setDirectionX(I)V

    .line 15
    iget-object v1, p0, Lxz;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;->setDirectionY(I)V

    .line 16
    iget-object v0, p0, Lxz;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;->setDuration(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 3
    iput-object p1, p0, Lxz;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lxz;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "null"

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 18
    const-string v1, "MapMoveofEightDirectionAction"

    .line 20
    const-string v2, "mReqMapMoveofEightDirectionModel = {?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lxz;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 27
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 30
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
