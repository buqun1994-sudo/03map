.class public Lx10;
.super Lnc;
.source "SourceFile"


# static fields
.field public static o:I


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;-><init>()V

    iput-object v0, p0, Lx10;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;-><init>()V

    iput-object v0, p0, Lx10;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    .line 5
    iput p2, p0, Lx10;->m:I

    const-string p2, "EXTRA_OFFSET_X"

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lx10;->k:I

    const-string p2, "EXTRA_OFFSET_Y"

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lx10;->l:I

    .line 8
    iget-object p1, p0, Lx10;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    iget p2, p0, Lx10;->k:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;->setOffsetX(I)V

    .line 9
    iget-object p1, p0, Lx10;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    iget p2, p0, Lx10;->l:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;->setOffsetY(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;-><init>()V

    iput-object v0, p0, Lx10;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 13
    iput-object p1, p0, Lx10;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lx10;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lx10;->m:I

    .line 15
    iget v1, p0, Lx10;->k:I

    .line 17
    iget v2, p0, Lx10;->l:I

    .line 19
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeMoveMap(III)V

    .line 22
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
