.class public Lhb0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lnc;-><init>()V

    .line 18
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;-><init>()V

    iput-object v0, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lnc;-><init>()V

    .line 13
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;-><init>()V

    iput-object v0, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    const-string v0, "EXTRA_IS_SHOW"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 15
    :cond_0
    iput-boolean v1, p0, Lhb0;->l:Z

    .line 16
    iget-object v0, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;->setIsShow(I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;-><init>()V

    iput-object v0, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    const-string v0, "isShowPreview"

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1, v1}, Lah;->k(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lhb0;->l:Z

    .line 7
    iget-object v0, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;->setIsShow(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;-><init>()V

    iput-object v0, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 11
    iput-object p1, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

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
    iget-object v0, p0, Lhb0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

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
    iget-boolean v1, p0, Lhb0;->l:Z

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
