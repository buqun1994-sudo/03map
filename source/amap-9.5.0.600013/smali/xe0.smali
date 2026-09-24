.class public Lxe0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;-><init>()V

    iput-object v0, p0, Lxe0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;-><init>()V

    iput-object p1, p0, Lxe0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;-><init>()V

    iput-object v0, p0, Lxe0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lxe0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

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
    iget-object v0, p0, Lxe0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

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
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeStopGuide(I)V

    .line 20
    :goto_0
    return-void
.end method
