.class public Lfe;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lfe;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lfe;->e:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lfe;->f:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "CarBindUserDispatchAction"

    .line 6
    const-string v2, "CarBindUserDispatchAction parseToAidlModel NotifyBindCarAutoUserModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;

    .line 13
    iget-object v1, p0, Lfe;->g:Ljava/lang/Boolean;

    .line 15
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;-><init>(Ljava/lang/Boolean;)V

    .line 18
    iget-object v1, p0, Lfe;->d:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->w(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lfe;->e:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->x(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lfe;->f:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->v(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2776

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "AUTO_USER_ID"

    .line 15
    iget-object v2, p0, Lfe;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "AUTO_USER_NAME"

    .line 22
    iget-object v2, p0, Lfe;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "AUTO_USER_AVATARD"

    .line 29
    iget-object v2, p0, Lfe;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "IS_BINDING_SUCCES"

    .line 36
    iget-object v2, p0, Lfe;->g:Ljava/lang/Boolean;

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfe;->g:Ljava/lang/Boolean;

    .line 3
    return-void
.end method
