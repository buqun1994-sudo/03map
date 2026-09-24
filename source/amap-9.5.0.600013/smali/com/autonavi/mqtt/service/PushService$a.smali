.class public Lcom/autonavi/mqtt/service/PushService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Let;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/mqtt/service/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/locks/Lock;

.field public b:Ljava/util/concurrent/locks/Lock;

.field public final synthetic c:Lcom/autonavi/mqtt/service/PushService;


# direct methods
.method public constructor <init>(Lcom/autonavi/mqtt/service/PushService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 13
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->b:Ljava/util/concurrent/locks/Lock;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;SI)I
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object v3, v1, v2

    .line 10
    const/4 v2, 0x1

    .line 11
    aput-object p1, v1, v2

    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 17
    move-result-object p2

    .line 18
    aput-object p2, v1, p1

    .line 20
    const/4 p1, 0x3

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v1, p1

    .line 27
    const/4 p1, 0x4

    .line 28
    const/4 p2, -0x1

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p3

    .line 33
    aput-object p3, v1, p1

    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 38
    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 43
    const/4 p3, 0x5

    .line 44
    aput-object p1, v1, p3

    .line 46
    const-string p1, "MQTT PushService: onGetConnectSocketFD ob={?} host={?} port={?} timeout={?} fd={?} pid={?}"

    .line 48
    invoke-static {v0, p1, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return p2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.autonavi.amapauto.controller.action.HANDLE_PUSH_MSG"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "topic"

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string p1, "message"

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method public connectionLost()V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "MQTT PushService: connectionLost(mqttProc)"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 18
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 20
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    iget-object v3, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 29
    iget-object v3, v3, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 31
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lps;

    .line 37
    if-eqz v3, :cond_0

    .line 39
    :try_start_0
    invoke-interface {v3}, Lps;->connectionLost()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 47
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 54
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    return-void
.end method

.method public connectionSuccess()V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "MQTT PushService: connectionSuccess(mqttProc) begin"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 18
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 20
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    iget-object v3, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 29
    iget-object v3, v3, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 31
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lps;

    .line 37
    if-eqz v3, :cond_0

    .line 39
    :try_start_0
    invoke-interface {v3}, Lps;->connectionSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 47
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 54
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 59
    const-string v2, "MQTT PushService: connectionSuccess(mqttProc) end"

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public onCloseSocketFD(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    aput-object v3, v1, v2

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    aput-object p1, v1, v2

    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    const/4 v2, 0x2

    .line 26
    aput-object p1, v1, v2

    .line 28
    const-string p1, "MQTT PushService: onCloseSocketFD ob={?} fd={?} pid={?}"

    .line 30
    invoke-static {v0, p1, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public y()I
    .locals 7

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "MQTT PushService: isRunningBackGround(mqttProc) begin"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 18
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 20
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_1

    .line 28
    iget-object v4, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 30
    iget-object v4, v4, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 32
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lps;

    .line 38
    if-eqz v4, :cond_0

    .line 40
    :try_start_0
    invoke-interface {v4}, Lps;->y()I

    .line 43
    move-result v3

    .line 44
    sget-object v4, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v6, "MQTT PushService: isRunningBackGround(mqttProc) return:"

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    new-array v6, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v4, v5, v6}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    if-lez v3, :cond_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 80
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 82
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 85
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 92
    const-string v2, "MQTT PushService: isRunningBackGround(mqttProc) end"

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return v3
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object p2, v2, v3

    .line 9
    const-string v4, "MQTT PushService: messageArrived(mqttProc), message = {?}"

    .line 11
    invoke-static {v0, v4, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    aput-object p1, v2, v3

    .line 18
    const-string v4, "MQTT PushService: messageArrived(mqttProc), topic = {?}"

    .line 20
    invoke-static {v0, v4, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 30
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 32
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 35
    move-result v0

    .line 36
    const/16 v2, 0xff

    .line 38
    const/4 v4, 0x0

    .line 39
    const/16 v5, 0xff

    .line 41
    :goto_0
    const/4 v6, -0x1

    .line 42
    if-ge v4, v0, :cond_1

    .line 44
    iget-object v7, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 46
    iget-object v7, v7, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 48
    invoke-virtual {v7, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lps;

    .line 54
    if-eqz v7, :cond_0

    .line 56
    :try_start_0
    invoke-interface {v7, p2, p1}, Lps;->z(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    const/4 v5, -0x1

    .line 62
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 67
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 69
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 72
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$a;->a:Ljava/util/concurrent/locks/Lock;

    .line 74
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 77
    if-ne v5, v2, :cond_2

    .line 79
    const/4 v5, -0x1

    .line 80
    :cond_2
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 82
    new-array v2, v1, [Ljava/lang/Object;

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v4

    .line 88
    aput-object v4, v2, v3

    .line 90
    const-string v4, "MQTT PushService: messageArrived(mqttProc), result = {?}"

    .line 92
    invoke-static {v0, v4, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 97
    invoke-static {v2}, Lcom/autonavi/mqtt/service/PushService;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    new-array v4, v1, [Ljava/lang/Object;

    .line 103
    aput-object v2, v4, v3

    .line 105
    const-string v2, "MQTT PushService: getTopActivityName = {?}"

    .line 107
    invoke-static {v0, v2, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 112
    invoke-virtual {v2, v2}, Lcom/autonavi/mqtt/service/PushService;->u(Landroid/content/Context;)Z

    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_3

    .line 118
    const-string p1, "MQTT PushService: isRunningBackground == False"

    .line 120
    new-array p2, v3, [Ljava/lang/Object;

    .line 122
    invoke-static {v0, p1, p2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return v5

    .line 126
    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 128
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    goto :goto_2

    .line 132
    :catch_1
    move-exception v0

    .line 133
    sget-object v2, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 135
    new-array v4, v1, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    aput-object v0, v4, v3

    .line 143
    const-string v0, "messageArrived JSONException message = {?}"

    .line 145
    invoke-static {v2, v0, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    const/4 v0, 0x0

    .line 149
    :goto_2
    if-nez v0, :cond_4

    .line 151
    return v6

    .line 152
    :cond_4
    const-string v2, "amapauto/send2car"

    .line 154
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_c

    .line 160
    const-string v2, "bizType"

    .line 162
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_d

    .line 172
    const-string v4, "aimline"

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v4

    .line 178
    const/4 v6, 0x4

    .line 179
    const-string v7, "sceneSendType"

    .line 181
    if-eqz v4, :cond_6

    .line 183
    invoke-static {}, Lcom/autonavi/mqtt/service/PushService;->d()Z

    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_6

    .line 189
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    sget-object p2, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string v4, "MQTT PushService: aimline sceneSendType ="

    .line 202
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v2

    .line 212
    new-array v4, v3, [Ljava/lang/Object;

    .line 214
    invoke-static {p2, v2, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_5

    .line 223
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 226
    move-result p1

    .line 227
    if-gt p1, v6, :cond_d

    .line 229
    if-ltz p1, :cond_d

    .line 231
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 233
    invoke-static {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->j(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 236
    goto/16 :goto_3

    .line 238
    :catch_2
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 240
    invoke-static {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->j(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V

    .line 243
    goto/16 :goto_3

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 247
    invoke-static {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->j(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V

    .line 250
    goto/16 :goto_3

    .line 252
    :cond_6
    const-string v4, "autopush"

    .line 254
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_7

    .line 260
    invoke-static {}, Lcom/autonavi/mqtt/service/PushService;->d()Z

    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_7

    .line 266
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 268
    invoke-static {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->k(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V

    .line 271
    goto/16 :goto_3

    .line 273
    :cond_7
    const-string v4, "aimpoi"

    .line 275
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    move-result v4

    .line 279
    if-eqz v4, :cond_9

    .line 281
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    move-result-object p1

    .line 285
    sget-object p2, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    const-string v4, "MQTT PushService: aimpoi sceneSendType ="

    .line 294
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v2

    .line 304
    new-array v4, v3, [Ljava/lang/Object;

    .line 306
    invoke-static {p2, v2, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 312
    move-result p2

    .line 313
    if-nez p2, :cond_8

    .line 315
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 318
    move-result p1

    .line 319
    if-gt p1, v6, :cond_d

    .line 321
    if-ltz p1, :cond_d

    .line 323
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 325
    invoke-virtual {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->x(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 328
    goto/16 :goto_3

    .line 330
    :catch_3
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 332
    invoke-virtual {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->x(Lorg/json/JSONObject;)V

    .line 335
    goto/16 :goto_3

    .line 337
    :cond_8
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 339
    invoke-virtual {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->x(Lorg/json/JSONObject;)V

    .line 342
    goto/16 :goto_3

    .line 344
    :cond_9
    const-string v4, "destination"

    .line 346
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_a

    .line 352
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    move-result-object p1

    .line 356
    sget-object p2, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    const-string v4, "MQTT PushService: destination sceneSendType ="

    .line 365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object v2

    .line 375
    new-array v4, v3, [Ljava/lang/Object;

    .line 377
    invoke-static {p2, v2, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    move-result p2

    .line 384
    if-nez p2, :cond_d

    .line 386
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 389
    move-result p1

    .line 390
    if-gt p1, v6, :cond_d

    .line 392
    if-ltz p1, :cond_d

    .line 394
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 396
    invoke-virtual {p1, v0}, Lcom/autonavi/mqtt/service/PushService;->a(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 399
    goto :goto_3

    .line 400
    :cond_a
    const-string v4, "park"

    .line 402
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v6

    .line 406
    if-eqz v6, :cond_b

    .line 408
    const-string v0, ""

    .line 410
    new-array v2, v3, [Ljava/lang/Object;

    .line 412
    invoke-static {v0, v4, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/mqtt/service/PushService$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    goto :goto_3

    .line 419
    :cond_b
    const-string v4, "team"

    .line 421
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_d

    .line 427
    iget-object v2, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 429
    invoke-static {v2, v0}, Lcom/autonavi/mqtt/service/PushService;->l(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/mqtt/service/PushService$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    goto :goto_3

    .line 436
    :cond_c
    const-string v0, "amapauto/location"

    .line 438
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_d

    .line 444
    new-instance v0, Landroid/content/Intent;

    .line 446
    const-string v2, "com.autonavi.amapauto.controller.action.HANDLE_PUSH_MSG"

    .line 448
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    const-string v2, "topic"

    .line 453
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string p1, "message"

    .line 458
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$a;->c:Lcom/autonavi/mqtt/service/PushService;

    .line 463
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    :catch_4
    :cond_d
    :goto_3
    sget-object p1, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 468
    new-array p2, v1, [Ljava/lang/Object;

    .line 470
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    move-result-object v0

    .line 474
    aput-object v0, p2, v3

    .line 476
    const-string v0, "MQTT PushService: messageArrived, result = {?}"

    .line 478
    invoke-static {p1, v0, p2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    return v5
.end method
