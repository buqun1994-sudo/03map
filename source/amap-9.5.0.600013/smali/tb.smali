.class public Ltb;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;-><init>()V

    .line 6
    iput-object p1, p0, Ltb;->d:Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;->getAvoidTrafficJamControl()Z

    move-result p1

    iput-boolean p1, p0, Ltb;->e:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;-><init>()V

    iput-object v0, p0, Ltb;->d:Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    .line 3
    iput-boolean p1, p0, Ltb;->e:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AvoidJamOperateStatusDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ltb;->d:Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AvoidJamOperateStatusDisAction"

    .line 6
    const-string v2, "pareseToIntent"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    const-string v1, "KEY_TYPE"

    .line 18
    const/16 v2, 0x2f4a

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    const-string v1, "EXTRA_AVOID_TRAFFIC_JAM_CONTROL"

    .line 25
    iget-boolean v2, p0, Ltb;->e:Z

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    return-object v0
.end method
