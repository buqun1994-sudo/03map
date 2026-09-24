.class public Ltl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;-><init>()V

    iput-object v0, p0, Ltl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;-><init>()V

    iput-object v0, p0, Ltl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    iput-object p1, p0, Ltl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "FactoryResetAction"

    .line 6
    const-string v2, "doAction"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lib;->j()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Ltl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    .line 19
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeFactoryReset()V

    .line 26
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
