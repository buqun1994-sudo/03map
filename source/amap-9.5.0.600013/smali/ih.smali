.class public Lih;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;-><init>()V

    .line 9
    iput-object p1, p0, Lih;->d:Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    .line 11
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
    const-string v1, "CurrentRoadNameDispatchDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lih;->d:Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

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
    const-string v1, "CurrentRoadNameDispatchDisAction"

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
    const v2, 0xea75

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lih;->d:Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    .line 26
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;->getCurRoadName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "curRoadName"

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-object v0
.end method
