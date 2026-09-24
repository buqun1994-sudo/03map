.class public Lla0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/ReqCarEnergyInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ReqCarEnergyInfoModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqCarEnergyInfoModel;-><init>()V

    .line 9
    iput-object v0, p0, Lla0;->d:Lcom/autonavi/amapauto/protocol/model/service/ReqCarEnergyInfoModel;

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
    const-string v1, "RequestPowerInfoDispatchAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lla0;->d:Lcom/autonavi/amapauto/protocol/model/service/ReqCarEnergyInfoModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x32de

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    return-object v0
.end method
