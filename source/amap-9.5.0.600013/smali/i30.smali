.class public Li30;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;-><init>()V

    .line 9
    iput-object v0, p0, Li30;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 15
    iput-object p1, p0, Li30;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 17
    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Li30;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;->getNetType()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Li30;->k:Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 9
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;->getStrength()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v4

    .line 21
    aput-object v4, v2, v3

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v2, v3

    .line 30
    const-string v3, "NetworkStatusInfoAction"

    .line 32
    const-string v4, "[doAction]netType:{?};strength:{?}"

    .line 34
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetNetWorkState(I)V

    .line 40
    if-lez v0, :cond_0

    .line 42
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetSignalLevel(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
