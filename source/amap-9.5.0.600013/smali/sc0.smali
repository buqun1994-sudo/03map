.class public Lsc0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_CHANGE_ROAD"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lsc0;->k:I

    const-string v0, "EXTRA_START_NAVI"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lsc0;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    .line 7
    iget v0, p1, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;->selectType:I

    iput v0, p0, Lsc0;->k:I

    .line 8
    invoke-static {}, Lib;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 9
    iget-boolean p1, p1, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;->isStartNavi:Z

    iput-boolean p1, p0, Lsc0;->l:Z

    goto :goto_0

    .line 10
    :cond_0
    iput-boolean v1, p0, Lsc0;->l:Z

    .line 11
    :goto_0
    invoke-virtual {p0, v1}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    .line 13
    iget v1, p0, Lsc0;->k:I

    .line 15
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;-><init>(I)V

    .line 18
    iget-boolean v1, p0, Lsc0;->l:Z

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;->setIsStartNavi(Z)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 26
    iget v1, p0, Lnc;->d:I

    .line 28
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 31
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    .line 9
    iget v1, p0, Lsc0;->k:I

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;-><init>(I)V

    .line 14
    iget-boolean v1, p0, Lsc0;->l:Z

    .line 16
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;->setIsStartNavi(Z)V

    .line 19
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lsc0;->k:I

    .line 29
    iget-boolean v2, p0, Lsc0;->l:Z

    .line 31
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSelectRoute(IIZ)V

    .line 34
    :goto_0
    return-void
.end method
