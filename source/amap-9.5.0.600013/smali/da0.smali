.class public Lda0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lda0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lda0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    const-string v0, "EXTRA_REQUEST_AUTO_STATE"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lda0;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    .line 7
    iput-object p1, p0, Lda0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lda0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;->getStateType()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMapStateInfoQueryModel;

    .line 14
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMapStateInfoQueryModel;-><init>()V

    .line 17
    iget-object v1, p0, Lda0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 19
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;->getStateType()I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspMapStateInfoQueryModel;->setStateType(I)V

    .line 26
    invoke-static {}, Lk6;->g()Lk6;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lk6;->i()Z

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspMapStateInfoQueryModel;->setStateValue(I)V

    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 40
    const/16 v1, 0x272c

    .line 42
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 45
    return-object v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lda0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 3
    if-nez v0, :cond_5

    .line 5
    iget v0, p0, Lda0;->k:I

    .line 7
    if-eqz v0, :cond_3

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    const/4 v0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidDriveNavigation;->isInNavi()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const/16 v0, 0x8

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidDriveNavigation;->isInSimulateNavi()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 29
    const/16 v0, 0xa

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v0, 0x9

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-static {}, Lk6;->g()Lk6;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lk6;->i()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 45
    const/4 v0, 0x3

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    const/4 v0, 0x4

    .line 48
    :goto_0
    if-ltz v0, :cond_7

    .line 50
    new-instance v1, Lab;

    .line 52
    invoke-direct {v1, v0}, Lab;-><init>(I)V

    .line 55
    invoke-static {}, Ll30;->g()Ll30;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Ll30;->a(Lec;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;->getStateType()I

    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x2

    .line 68
    if-ne v0, v1, :cond_6

    .line 70
    invoke-virtual {p0}, Lnc;->f()V

    .line 73
    goto :goto_1

    .line 74
    :cond_6
    const/16 v0, 0x272c

    .line 76
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 79
    :cond_7
    :goto_1
    return-void
.end method
