.class public Lnl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Z

.field public m:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;-><init>()V

    iput-object v0, p0, Lnl;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;-><init>()V

    iput-object v0, p0, Lnl;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    .line 9
    iput p1, p0, Lnl;->k:I

    .line 10
    iput-boolean p2, p0, Lnl;->l:Z

    .line 11
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;->setExternalEngineId(I)V

    .line 12
    iget-object p1, p0, Lnl;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    iget-boolean p2, p0, Lnl;->l:Z

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;->setExternalCrossControl(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;-><init>()V

    iput-object v0, p0, Lnl;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lnl;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lnl;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lnl;->k:I

    .line 15
    iget-boolean v1, p0, Lnl;->l:Z

    .line 17
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setExternalScreenCrossControl(IZ)V

    .line 20
    :goto_0
    return-void
.end method
