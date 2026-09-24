.class public Lp40;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;-><init>()V

    iput-object v0, p0, Lp40;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;-><init>()V

    iput-object v0, p0, Lp40;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lp40;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp40;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

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
