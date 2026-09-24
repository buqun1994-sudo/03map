.class public Lcom/autonavi/amapauto/protocol/service/ProtocolService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static b:Lcom/autonavi/amapauto/protocol/service/ProtocolService;


# instance fields
.field public a:Lk2;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lcom/autonavi/amapauto/protocol/service/ProtocolService;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->b:Lcom/autonavi/amapauto/protocol/service/ProtocolService;

    .line 3
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "[NewProtocol] ProtocolService"

    .line 6
    const-string v1, "onBind"

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->a:Lk2;

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lk2;->y(Z)V

    .line 17
    const-string p1, "ProtocolService"

    .line 19
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->a:Lk2;

    .line 24
    iget-object p1, p1, Lk2;->h:Lvs$a;

    .line 26
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    const-string v0, "ProtocolService"

    .line 6
    const-string v1, "onCreate"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const-string v2, "[NewProtocol] ProtocolService"

    .line 16
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sput-object p0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->b:Lcom/autonavi/amapauto/protocol/service/ProtocolService;

    .line 21
    invoke-static {}, Ll30;->g()Ll30;

    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x6f

    .line 27
    invoke-virtual {v0, v1}, Ll30;->b(I)Loc;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lk2;

    .line 33
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->a:Lk2;

    .line 35
    invoke-static {}, Ll30;->g()Ll30;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->a:Lk2;

    .line 41
    invoke-virtual {v0, v1}, Ll30;->k(Loc;)V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[NewProtocol] ProtocolService"

    .line 6
    const-string v2, "onDestroy"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->a:Lk2;

    .line 17
    invoke-virtual {v0, v1}, Ll30;->d(Loc;)V

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 23
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->b:Lcom/autonavi/amapauto/protocol/service/ProtocolService;

    .line 26
    const-string v0, "ProtocolService"

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[NewProtocol] ProtocolService"

    .line 6
    const-string v2, " onRebind"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v0, "ProtocolService"

    .line 13
    const-string v1, "onRebind"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[NewProtocol] ProtocolService"

    .line 6
    const-string v3, " onUnbind"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->a:Lk2;

    .line 13
    invoke-virtual {v1, v0}, Lk2;->y(Z)V

    .line 16
    const-string v0, "ProtocolService"

    .line 18
    const-string v1, "onUnbind"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method
