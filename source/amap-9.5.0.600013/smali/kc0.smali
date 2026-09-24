.class public Lkc0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_CHOICE"

    const/4 v1, -0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkc0;->k:I

    const-string v0, "EXTRA_PAGE_TURNING"

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkc0;->l:I

    const-string v0, "EXTRA_SCREEN_TURNING"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkc0;->m:I

    const-string v0, "EXTRA_PAGE_OPERATETYPE"

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lkc0;->n:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->getPoiIndex()I

    move-result v0

    iput v0, p0, Lkc0;->k:I

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->getPageTurning()I

    move-result v0

    iput v0, p0, Lkc0;->l:I

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->getScreenTurning()I

    move-result v0

    iput v0, p0, Lkc0;->m:I

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;->getOperateType()I

    move-result p1

    iput p1, p0, Lkc0;->n:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Lib;->h()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;

    .line 9
    iget v1, p0, Lkc0;->m:I

    .line 11
    iget v2, p0, Lkc0;->n:I

    .line 13
    iget v3, p0, Lkc0;->k:I

    .line 15
    iget v4, p0, Lkc0;->l:I

    .line 17
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;-><init>(IIII)V

    .line 20
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 27
    move-result v0

    .line 28
    iget v1, p0, Lkc0;->k:I

    .line 30
    iget v2, p0, Lkc0;->l:I

    .line 32
    iget v3, p0, Lkc0;->m:I

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSearchResultOperate(IIII)V

    .line 37
    :goto_0
    return-void
.end method
