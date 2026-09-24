.class public Lgk0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_TYPE"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lgk0;->k:I

    const-string v1, "EXTRA_STATE"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lgk0;->l:I

    if-ne v1, v0, :cond_1

    const-string v0, "EXTRA_HEADLIGHT_STATE"

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lgk0;->l:I

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lgk0;->l:I

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;->getType()I

    move-result v0

    iput v0, p0, Lgk0;->k:I

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;->getState()I

    move-result p1

    iput p1, p0, Lgk0;->l:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;-><init>()V

    .line 12
    iget v1, p0, Lgk0;->l:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;->setState(I)V

    .line 17
    iget v1, p0, Lgk0;->k:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;->setType(I)V

    .line 22
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Lgk0;->k:I

    .line 28
    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lnc;->i()I

    .line 33
    move-result v0

    .line 34
    iget v1, p0, Lgk0;->l:I

    .line 36
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    if-ne v0, v1, :cond_2

    .line 43
    iget v0, p0, Lgk0;->l:I

    .line 45
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/AndroidDriveNavigation;->nativeDriveRestrictionStateNotify(I)V

    .line 48
    :cond_2
    :goto_0
    return-void
.end method
