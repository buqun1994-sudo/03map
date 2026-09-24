.class public Lv60;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lv60;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lv60;->k:I

    const-string v0, "ADDITION_COMSUP_TYPE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lv60;->k:I

    const-string v0, "ENERGY_UNIT"

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lv60;->l:I

    const-string v0, "Cost_LoadPwrConsump"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lv60;->m:I

    .line 12
    :cond_0
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;-><init>()V

    iput-object p1, p0, Lv60;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    .line 13
    iget v0, p0, Lv60;->m:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;->setCostLoadpwrconsump(I)V

    .line 14
    iget-object p1, p0, Lv60;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    iget v0, p0, Lv60;->l:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;->setEnergyUnit(I)V

    .line 15
    iget-object p1, p0, Lv60;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    iget v0, p0, Lv60;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;->setAdditioncomsupType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lv60;->k:I

    .line 5
    iput-object p1, p0, Lv60;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    invoke-static {}, Lib;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lv60;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lv60;->k:I

    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v1, v0, :cond_1

    .line 18
    new-instance v0, Ljava/lang/Exception;

    .line 20
    const-string v1, "Received additional power usage from system, but some key parameter is missing."

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    const-string v3, "PowerUsageAction"

    .line 30
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    return-void

    .line 34
    :cond_1
    iget v1, p0, Lv60;->l:I

    .line 36
    iget v2, p0, Lv60;->m:I

    .line 38
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onAdditionalPowerUsageNotified(III)V

    .line 41
    :goto_0
    return-void
.end method
