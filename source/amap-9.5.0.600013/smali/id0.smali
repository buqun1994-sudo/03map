.class public Lid0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;-><init>()V

    iput-object v0, p0, Lid0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;-><init>()V

    iput-object v0, p0, Lid0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v0, "KEY_SPEEDOMETER_VALUE"

    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lid0;->l:F

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;-><init>()V

    iput-object v0, p0, Lid0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lid0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;->getSpeedoMeter()F

    move-result p1

    iput p1, p0, Lid0;->l:F

    :cond_0
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
    iget v1, p0, Lid0;->l:F

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "SetSpeedometerAction"

    .line 15
    const-string v2, "doAction value:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v0, p0, Lid0;->l:F

    .line 22
    const/4 v1, 0x0

    .line 23
    cmpl-float v0, v0, v1

    .line 25
    if-ltz v0, :cond_0

    .line 27
    invoke-static {}, Lse;->c()Lse;

    .line 30
    move-result-object v0

    .line 31
    iget v1, p0, Lid0;->l:F

    .line 33
    invoke-virtual {v0, v1}, Lse;->setSpeedoMeter(F)Z

    .line 36
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
