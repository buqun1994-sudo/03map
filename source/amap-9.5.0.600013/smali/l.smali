.class public Ll;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;-><init>()V

    iput-object v0, p0, Ll;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;-><init>()V

    iput-object v0, p0, Ll;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Ll;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

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
