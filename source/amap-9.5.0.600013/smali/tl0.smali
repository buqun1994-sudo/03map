.class public Ltl0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;-><init>()V

    iput-object v0, p0, Ltl0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;-><init>()V

    iput-object v0, p0, Ltl0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    const-string v0, "EXTRA_AUTO_BACK_NAVI_DATA"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ltl0;->l:Z

    .line 11
    iget-object v0, p0, Ltl0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;->setAutoBackNaviData(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;-><init>()V

    iput-object v0, p0, Ltl0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Ltl0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ltl0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 16
    move-result v0

    .line 17
    iget-boolean v1, p0, Ltl0;->l:Z

    .line 19
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviPreview(IZ)V

    .line 22
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
