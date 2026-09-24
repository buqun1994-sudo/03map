.class public Lrf0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnc;-><init>()V

    .line 12
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;-><init>()V

    iput-object v0, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;-><init>()V

    iput-object v0, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v1, "actionType"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object v1, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    invoke-virtual {v1, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;->setActionType(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "SystemKeyboardStatusInformAction"

    const-string v0, "[onReceive] receiveClientRequest SystemKeyboardStatusInformAction Intent actionType = {?}"

    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;-><init>()V

    iput-object v0, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 10
    iput-object p1, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Li;->b()Z

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    sget-boolean v1, Li;->a:Z

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v1, v0, v3

    .line 24
    const-string v1, "SystemKeyboardStatusInformAction"

    .line 26
    const-string v4, "doAction isRunProtocolCheck:{?} IS_RUN_AL_CI:{?}"

    .line 28
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Li;->b()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 37
    sget-boolean v0, Li;->a:Z

    .line 39
    if-eqz v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 43
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 48
    if-eqz v0, :cond_3

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;->getActionType()I

    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v0

    .line 60
    aput-object v0, v3, v2

    .line 62
    const-string v0, "doAction getActionType {?}"

    .line 64
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lrf0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 69
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;->getActionType()I

    .line 72
    move-result v0

    .line 73
    const/4 v3, -0x1

    .line 74
    if-ne v0, v3, :cond_2

    .line 76
    invoke-static {v2, v2}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->setSoftInputVisiable(IZ)I

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "doAction getActionType unspport"

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const-string v0, "Error doAction mReqSystemKeyboardStatusInformModel is null"

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
