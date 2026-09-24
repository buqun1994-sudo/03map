.class public Lin;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lnc;-><init>()V

    .line 14
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;-><init>()V

    iput-object v0, p0, Lin;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;-><init>()V

    iput-object v0, p0, Lin;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v1, "accountID"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accountRole"

    const/4 v3, -0x1

    .line 5
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6
    iget-object v2, p0, Lin;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    invoke-virtual {v2, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;->setAccountID(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lin;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    invoke-virtual {v2, p1}, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;->setAccountRole(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "GetAccountInfoAction"

    const-string v0, "[onReceive] receiveClientRequest GetAccountInfoAction Intent accountID = {?},accountRole = {?}"

    invoke-static {p1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lnc;-><init>()V

    .line 10
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;-><init>()V

    iput-object v0, p0, Lin;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 12
    iput-object p1, p0, Lin;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lin;->k:Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
