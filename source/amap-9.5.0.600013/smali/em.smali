.class public Lem;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnc;-><init>()V

    .line 12
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;-><init>()V

    iput-object v0, p0, Lem;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;-><init>()V

    iput-object v0, p0, Lem;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v0, "operationType"

    const/4 v1, -0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;-><init>()V

    iput-object v0, p0, Lem;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    .line 10
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;->setOperationType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;-><init>()V

    iput-object v0, p0, Lem;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lem;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lem;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

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
