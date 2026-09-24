.class public Lvl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lvl;->k:I

    .line 3
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;-><init>()V

    iput-object v0, p0, Lvl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lvl;->k:I

    .line 11
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;-><init>()V

    iput-object v1, p0, Lvl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    const-string v1, "EXTRA_ACTIONTYPE"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lvl;->k:I

    .line 13
    iget-object v0, p0, Lvl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;->setActionType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvl;->k:I

    .line 6
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;-><init>()V

    iput-object v1, p0, Lvl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 8
    iput-object p1, p0, Lvl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lvl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget v1, p0, Lvl;->k:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 25
    const-string v1, "FatigueDrivingAction"

    .line 27
    const-string v2, "BroadcastDataHandle FatigueDrivingAction actionType={?}"

    .line 29
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget v0, p0, Lvl;->k:I

    .line 34
    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lnc;->i()I

    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x6

    .line 41
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviOpera(II)V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x8

    .line 51
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviOpera(II)V

    .line 54
    :goto_0
    return-void
.end method
