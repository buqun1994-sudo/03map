.class public Lze;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Z

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;-><init>()V

    iput-object v0, p0, Lze;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;-><init>()V

    iput-object v0, p0, Lze;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    const-string v0, "EXTRA_GUIDEINFO_OUTPUT"

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iput-boolean v1, p0, Lze;->k:Z

    .line 11
    :cond_0
    iget-object v0, p0, Lze;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;->setGuideinfoOutput(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;-><init>()V

    iput-object v0, p0, Lze;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lze;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

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
    iget-object v0, p0, Lze;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

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
    iget-boolean v1, p0, Lze;->k:Z

    .line 19
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeCloseGuideInfo(IZ)V

    .line 22
    :goto_0
    return-void
.end method
