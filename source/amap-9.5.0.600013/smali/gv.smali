.class public Lgv;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 3
    iput-object p1, p0, Lgv;->k:Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgv;->k:Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;->getArNaviEnable()I

    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 19
    const-string v0, "IsARNaviEnableNotifyAction"

    .line 21
    const-string v2, "doAction mRspIsARNaviEnableNotifyModel.getArNaviEnable() = {?}"

    .line 23
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lgv;->k:Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;

    .line 28
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 31
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
