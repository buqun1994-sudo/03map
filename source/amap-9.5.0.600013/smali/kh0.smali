.class public Lkh0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_TMC_DISPATCH_ENABLE"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lkh0;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;->getEnable()I

    move-result v0

    iput v0, p0, Lkh0;->k:I

    .line 6
    iput-object p1, p0, Lkh0;->l:Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolSuccessModel;

    .line 3
    iget-object v1, p0, Lkh0;->l:Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    .line 5
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolSuccessModel;-><init>(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 8
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lkh0;->k:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {v1}, Lqf;->c(Z)V

    .line 11
    invoke-virtual {p0}, Lnc;->f()V

    .line 14
    return-void
.end method
