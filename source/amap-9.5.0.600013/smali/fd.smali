.class public Lfd;
.super Loc;
.source "SourceFile"


# instance fields
.field public c:Lhd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loc;-><init>()V

    .line 4
    new-instance v0, Lhd;

    .line 6
    invoke-direct {v0}, Lhd;-><init>()V

    .line 9
    iput-object v0, p0, Lfd;->c:Lhd;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Lec;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 3
    instance-of v0, p1, Lld;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    move-object v0, p1

    .line 9
    check-cast v0, Lld;

    .line 11
    invoke-interface {v0}, Lld;->c()Landroid/content/Intent;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 17
    invoke-static {}, Li;->b()Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 23
    sget-boolean v1, Li;->a:Z

    .line 25
    if-eqz v1, :cond_2

    .line 27
    :cond_1
    const-string v1, "EXTRA_REQUESTCODE"

    .line 29
    iget p1, p1, Lec;->c:I

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_3

    .line 40
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lew;->e(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 47
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    const/4 p1, 0x0

    .line 54
    :goto_0
    if-eqz p1, :cond_3

    .line 56
    const/4 v1, 0x1

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    aput-object p1, v1, v2

    .line 66
    const-string p1, "[NewProtocol] BroadcastConnection"

    .line 68
    const-string v2, "galtest doDispatchMessageAsynchronous protocol_res:{?}:{?}"

    .line 70
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_3
    invoke-virtual {p0, v0}, Lfd;->m(Landroid/content/Intent;)V

    .line 76
    :cond_4
    :goto_1
    return-void
.end method

.method public e(Lnc;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfd;->c:Lhd;

    .line 3
    invoke-virtual {v0, p1}, Lhd;->b(Lnc;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "[NewProtocol] BroadcastConnection"

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string p1, "doSendDataToClientAsynchronous convertDataToClient intent == null"

    .line 14
    new-array v0, v1, [Ljava/lang/Object;

    .line 16
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Li;->b()Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 26
    sget-boolean v3, Li;->a:Z

    .line 28
    if-eqz v3, :cond_2

    .line 30
    :cond_1
    const-string v3, "EXTRA_REQUESTCODE"

    .line 32
    invoke-virtual {p1}, Lnc;->i()I

    .line 35
    move-result p1

    .line 36
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 45
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lew;->e(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 52
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    const/4 p1, 0x0

    .line 59
    :goto_0
    if-eqz p1, :cond_3

    .line 61
    const/4 v3, 0x1

    .line 62
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    aput-object p1, v3, v1

    .line 70
    const-string p1, "galtest doSendDataToClientAsynchronous protocol_res:{?}:{?}"

    .line 72
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_3
    invoke-virtual {p0, v0}, Lfd;->m(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public f()Lrq;
    .locals 1

    .line 1
    iget-object v0, p0, Lfd;->c:Lhd;

    .line 3
    return-object v0
.end method

.method public i(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string p2, "[NewProtocol] BroadcastConnection"

    .line 6
    const-string v0, "[getSystemData] getCarEnterpriseUserInfo"

    .line 8
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "[NewProtocol] BroadcastConnection"

    .line 5
    if-nez p1, :cond_0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "Error sendBroadcast intent={?}"

    .line 13
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_0
    const-string v3, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 19
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 28
    const-string v3, "BroadcastConnection sendBroadcast intent = {?}"

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    aput-object v4, v0, v1

    .line 42
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "BroadcastConnection sendBroadcast null extras"

    .line 48
    new-array v3, v1, [Ljava/lang/Object;

    .line 50
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lse;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    invoke-static {v2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 71
    :goto_1
    return-void
.end method
