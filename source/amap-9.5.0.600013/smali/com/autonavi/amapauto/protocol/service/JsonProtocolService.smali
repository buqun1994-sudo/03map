.class public Lcom/autonavi/amapauto/protocol/service/JsonProtocolService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Lg2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "[NewProtocol] JsonProtocolService"

    .line 6
    const-string v1, "onBind"

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/autonavi/amapauto/protocol/service/JsonProtocolService;->a:Lg2;

    .line 13
    iget-object p1, p1, Lg2;->f:Lur$a;

    .line 15
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "[NewProtocol] JsonProtocolService"

    .line 9
    const-string v2, "JsonProtocolService onCreate"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Ll30;->g()Ll30;

    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0xde

    .line 20
    invoke-virtual {v0, v1}, Ll30;->b(I)Loc;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lg2;

    .line 26
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/service/JsonProtocolService;->a:Lg2;

    .line 28
    invoke-static {}, Ll30;->g()Ll30;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/service/JsonProtocolService;->a:Lg2;

    .line 34
    invoke-virtual {v0, v1}, Ll30;->k(Loc;)V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[NewProtocol] JsonProtocolService"

    .line 6
    const-string v2, "onDestroy"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/service/JsonProtocolService;->a:Lg2;

    .line 17
    invoke-virtual {v0, v1}, Ll30;->d(Loc;)V

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 23
    return-void
.end method
