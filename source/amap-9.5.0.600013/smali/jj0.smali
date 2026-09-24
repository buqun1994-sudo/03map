.class public Ljj0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnc;-><init>()V

    .line 12
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;-><init>()V

    iput-object v0, p0, Ljj0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;-><init>()V

    iput-object v0, p0, Ljj0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v1, "authorizationStatus"

    const/4 v2, -0x1

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object v1, p0, Ljj0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    invoke-virtual {v1, p1}, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;->setAuthorizationStatus(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "UserPersonalInformationAuthorizedAction"

    const-string v0, "[onReceive] receiveClientRequest UserPersonalInformationAuthorizedAction Intent authorizationStatus = {?}"

    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;-><init>()V

    iput-object v0, p0, Ljj0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 10
    iput-object p1, p0, Ljj0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljj0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

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
