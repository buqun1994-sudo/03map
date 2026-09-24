.class public Lbd;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lnc;-><init>()V

    .line 13
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;-><init>()V

    iput-object v0, p0, Lbd;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lbd;->l:Z

    .line 15
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;-><init>()V

    iput-object p1, p0, Lbd;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lbd;->l:Z

    .line 4
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;-><init>()V

    iput-object v0, p0, Lbd;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lbd;->l:Z

    .line 8
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;->getRequestType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lbd;->l:Z

    .line 11
    :cond_0
    iput-object p1, p0, Lbd;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbd;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbd;->l:Z

    .line 3
    return v0
.end method
