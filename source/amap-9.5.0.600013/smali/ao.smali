.class public Lao;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;-><init>()V

    iput-object v0, p0, Lao;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;-><init>()V

    iput-object p1, p0, Lao;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;-><init>()V

    iput-object v0, p0, Lao;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 7
    iput-object p1, p0, Lao;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lao;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    new-instance v0, Lqa0;

    .line 8
    invoke-direct {v0}, Lqa0;-><init>()V

    .line 11
    invoke-virtual {p0}, Lnc;->i()I

    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lec;->c:I

    .line 17
    invoke-static {}, Ll30;->g()Ll30;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Ll30;->a(Lec;)V

    .line 24
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
