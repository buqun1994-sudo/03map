.class public Lwe;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;-><init>()V

    .line 9
    iput-object v0, p0, Lwe;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 15
    iput-object p1, p0, Lwe;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 17
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwe;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwe;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;->getIsCancel()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
