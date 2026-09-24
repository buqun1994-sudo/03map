.class public Lsh;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lsh;->d:Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;

    .line 6
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
    const-string v1, "DataConsumptionInfoDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lsh;->d:Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DataConsumptionInfoDisAction"

    .line 6
    const-string v2, "pareseToIntent"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lsh;->d:Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-string v1, "KEY_TYPE"

    .line 24
    const v2, 0xea70

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lsh;->d:Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;

    .line 32
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;->getEstiDataConsump()D

    .line 35
    move-result-wide v1

    .line 36
    const-string v3, "estiDataConsump"

    .line 38
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 41
    return-object v0
.end method
