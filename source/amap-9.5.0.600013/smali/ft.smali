.class public Lft;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;-><init>()V

    iput-object v0, p0, Lft;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;-><init>()V

    iput-object v0, p0, Lft;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    const-string v0, "EXTRA_ADAS_SPEEDLIMIT_STATE"

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 10
    iget-object v0, p0, Lft;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;->setAdasSpeedlimitState(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;-><init>()V

    iput-object v0, p0, Lft;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lft;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lft;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lft;->k:Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;->getAdasSpeedlimitState()Z

    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/AndroidDriveNavigation;->nativeSetISLState(Z)Z

    .line 22
    :goto_0
    return-void
.end method
