.class public Lsy;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Z


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
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_AUTO_IS_OPEN_NETWORK_LOCATION"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lsy;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;->getAutoIsOpenNetworkLocation()Z

    move-result p1

    iput-boolean p1, p0, Lsy;->k:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsy;->k:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-interface {v0, v1}, Lxy;->f(I)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lrv;->H()Lrv;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lrv;->H()Lrv;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-interface {v0, v1}, Lxy;->f(I)Z

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
