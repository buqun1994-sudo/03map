.class public Lgz;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "SOURCE_APP"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgz;->k:Ljava/lang/String;

    const-string v0, "SOURCE_APP_NAME"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgz;->l:Ljava/lang/String;

    const-string v0, "USER_LOGOUT_ID"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgz;->m:Ljava/lang/String;

    const-string v0, "USER_LOGOUT_PHONE"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgz;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getSourceApp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgz;->k:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getSourceAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgz;->l:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getLogoutUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgz;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->getLogoutUserPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgz;->n:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LoginOutAction"

    const-string v1, "[LoginOutAction]LoginOutAction protocolid:{?}"

    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseLogoutModel;

    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseLogoutModel;-><init>(Ljava/lang/Boolean;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseLogoutModel;

    .line 21
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseLogoutModel;-><init>(Ljava/lang/Boolean;)V

    .line 26
    :goto_0
    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object v2, v1, v3

    .line 40
    const-string v2, "LoginOutAction"

    .line 42
    const-string v3, "[LoginOutAction]parseToAidlModel protocolid:{?}"

    .line 44
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "LoginOutAction"

    .line 6
    const-string v2, "[LoginOutAction]doAction"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lib;->i()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    .line 19
    iget-object v1, p0, Lgz;->k:Ljava/lang/String;

    .line 21
    iget-object v2, p0, Lgz;->l:Ljava/lang/String;

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lgz;->m:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->setLogoutUserId(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lgz;->n:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;->setLogoutUserPhone(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lgz;->k:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lgz;->l:Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lgz;->m:Ljava/lang/String;

    .line 50
    iget-object v4, p0, Lgz;->n:Ljava/lang/String;

    .line 52
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->logoutAutoAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
