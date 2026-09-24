.class public Lf50;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf50;->k:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf50;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lf50;->k:I

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lf50;->l:Z

    const-string v2, "EXTRA_VIEWTYPE"

    .line 12
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lf50;->k:I

    const/16 v0, 0x12

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 13
    iput-boolean v2, p0, Lf50;->l:Z

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "PageJumpAction"

    const-string v1, "[PageJumpAction]intent pageType:{?}"

    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lf50;->k:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lf50;->l:Z

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->getPageType()I

    move-result p1

    iput p1, p0, Lf50;->k:I

    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lf50;->l:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lf50;->k:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "PageJumpAction"

    .line 15
    const-string v2, "[doAction] pageType:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lib;->i()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    .line 28
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;-><init>()V

    .line 31
    iget v1, p0, Lf50;->k:I

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;->setPageType(I)V

    .line 36
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 43
    move-result v0

    .line 44
    iget v1, p0, Lf50;->k:I

    .line 46
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativePageJumpOperate(II)V

    .line 49
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf50;->l:Z

    .line 3
    return v0
.end method
