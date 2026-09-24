.class public Ly10;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:I

.field public e:I

.field public f:Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ly10;->d:I

    .line 7
    iput v0, p0, Ly10;->e:I

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 11
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;-><init>()V

    .line 14
    iput-object v0, p0, Ly10;->f:Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 16
    iput p1, p0, Ly10;->d:I

    .line 18
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;->setFingerCounts(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Ly10;->f:Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p0}, Lec;->d()Z

    .line 9
    move-result v1

    .line 10
    const-string v2, "EXTRA_OPERA_TYPE"

    .line 12
    const-string v3, "EXTRA_FINGER_COUNTS"

    .line 14
    const/16 v4, 0x2789

    .line 16
    const-string v5, "KEY_TYPE"

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Ly10;->f:Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Ly10;->f:Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 29
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;->getFingerCounts()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Ly10;->f:Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 38
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;->getOperaType()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget v1, p0, Ly10;->d:I

    .line 51
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget v1, p0, Ly10;->e:I

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    :cond_1
    :goto_0
    return-object v0
.end method

.method public g(I)V
    .locals 1

    .line 1
    iput p1, p0, Ly10;->e:I

    .line 3
    iget-object v0, p0, Ly10;->f:Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 5
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;->setOperaType(I)V

    .line 8
    return-void
.end method
