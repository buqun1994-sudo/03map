.class public Ly0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public final d:Ljava/lang/String;

.field public e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

.field public f:Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    const-string v0, "AccountSyncLoginStateDisAction"

    .line 2
    iput-object v0, p0, Ly0;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[AccountSyncLoginStateDisAction]"

    .line 3
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Ly0;->e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lec;-><init>()V

    const-string v0, "AccountSyncLoginStateDisAction"

    .line 6
    iput-object v0, p0, Ly0;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[AccountSyncLoginStateDisAction]"

    .line 7
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Ly0;->f:Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 7

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ly0;->f:Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Ly0;->e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "AccountSyncLoginStateDisAction"

    .line 15
    if-eqz v0, :cond_4

    .line 17
    iget-boolean v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 19
    const/4 v4, 0x3

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x1

    .line 22
    if-eqz v3, :cond_1

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isPassiveLogout:Z

    .line 28
    if-eqz v0, :cond_2

    .line 30
    const/4 v0, 0x3

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x2

    .line 33
    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v3, v1

    .line 41
    iget-object v1, p0, Ly0;->e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 43
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v1

    .line 49
    aput-object v1, v3, v6

    .line 51
    iget-object v1, p0, Ly0;->e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 53
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isPassiveLogout:Z

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object v1

    .line 59
    aput-object v1, v3, v5

    .line 61
    const-string v1, "[parseToAidlModel]isLogin:{?};isBingingSuccess:{?};isPassiveLogout:{?}"

    .line 63
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;

    .line 68
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;-><init>(I)V

    .line 71
    iget-object v0, p0, Ly0;->e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 73
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 75
    if-eqz v2, :cond_3

    .line 77
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserId:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;->setAccountID(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Ly0;->e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 84
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserName:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;->v(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Ly0;->e:Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 91
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserAvatar:Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;->u(Ljava/lang/String;)V

    .line 96
    :cond_3
    move-object v0, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const-string v0, "[parseToAidlModel] userInfoData == null"

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v0, 0x0

    .line 106
    :goto_1
    return-object v0
.end method
