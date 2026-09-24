.class public Lhl0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:I

.field public e:Z

.field public f:Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;-><init>()V

    iput-object v0, p0, Lhl0;->f:Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    .line 3
    iput p1, p0, Lhl0;->d:I

    .line 4
    iput-boolean p2, p0, Lhl0;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lec;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;-><init>()V

    .line 7
    iput-object p1, p0, Lhl0;->f:Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;->getOperateType()I

    move-result v0

    iput v0, p0, Lhl0;->d:I

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;->getIsSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lhl0;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lhl0;->f:Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2ee5

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget v1, p0, Lhl0;->d:I

    .line 15
    const-string v2, "EXTRA_REQUEST_IS_WHAT"

    .line 17
    const-string v3, "EXTRA_REQUEST_ID"

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v1, v4, :cond_3

    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x0

    .line 24
    if-eq v1, v5, :cond_2

    .line 26
    const/4 v5, 0x3

    .line 27
    if-eq v1, v5, :cond_1

    .line 29
    const/4 v4, 0x4

    .line 30
    if-eq v1, v4, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    :goto_0
    const-string v1, "EXTRA_REQUEST_RESULT"

    .line 62
    iget-boolean v2, p0, Lhl0;->e:Z

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    return-object v0
.end method
