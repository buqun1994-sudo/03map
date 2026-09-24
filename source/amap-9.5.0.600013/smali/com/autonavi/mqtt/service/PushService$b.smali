.class public Lcom/autonavi/mqtt/service/PushService$b;
.super Lct$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/mqtt/service/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/mqtt/service/PushService;


# direct methods
.method public constructor <init>(Lcom/autonavi/mqtt/service/PushService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    invoke-direct {p0}, Lct$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autonavi/mqtt/service/PushService;Lcom/autonavi/mqtt/service/PushService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/autonavi/mqtt/service/PushService$b;-><init>(Lcom/autonavi/mqtt/service/PushService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 4
    const-string v1, "MQTT PushService: mqttInit tid ={?},password ={?},address ={?},extraInfo ={?}"

    .line 6
    const/4 v2, 0x4

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object p1, v2, v3

    .line 12
    const/4 v4, 0x1

    .line 13
    aput-object p2, v2, v4

    .line 15
    const/4 v4, 0x2

    .line 16
    aput-object p3, v2, v4

    .line 18
    const/4 v4, 0x3

    .line 19
    aput-object p4, v2, v4

    .line 21
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 26
    invoke-static {v1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 34
    invoke-static {}, Lcom/autonavi/mqtt/PushServer;->b()Lcom/autonavi/mqtt/PushServer;

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/autonavi/mqtt/service/PushService;->g(Lcom/autonavi/mqtt/service/PushService;Lcom/autonavi/mqtt/PushServer;)Lcom/autonavi/mqtt/PushServer;

    .line 41
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 43
    invoke-static {v1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/autonavi/mqtt/PushServer;->h()V

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 52
    invoke-static {v1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 58
    const-string v1, "MQTT PushService: PushServer.getInstance()"

    .line 60
    new-array v2, v3, [Ljava/lang/Object;

    .line 62
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 67
    invoke-static {v1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 73
    invoke-static {v2}, Lcom/autonavi/mqtt/service/PushService;->h(Lcom/autonavi/mqtt/service/PushService;)Let;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/autonavi/mqtt/PushServer;->e(Let;)V

    .line 80
    const-string v1, "MQTT PushService: PushServer.getInstance() not setInjectFD"

    .line 82
    new-array v2, v3, [Ljava/lang/Object;

    .line 84
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 89
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 92
    move-result-object v1

    .line 93
    const/4 v5, 0x0

    .line 94
    move-object v2, p1

    .line 95
    move-object v3, p2

    .line 96
    move-object v4, p3

    .line 97
    move-object v6, p4

    .line 98
    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/mqtt/PushServer;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 101
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    monitor-exit p0

    .line 103
    return v3

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p0

    .line 106
    throw p1
.end method

.method public I0(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/mqtt/service/PushService;->e(Z)Z

    .line 4
    return-void
.end method

.method public L(Ljava/lang/String;IIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1
    sget-object p1, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 p2, 0x0

    .line 4
    new-array p2, p2, [Ljava/lang/Object;

    .line 6
    const-string p3, "MQTT PushService: testInit"

    .line 8
    invoke-static {p1, p3, p2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 13
    const-string v2, "aaaaa"

    .line 15
    const-string v3, "bbbbbbbb"

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v6, "www.baidu.com"

    .line 21
    move-object v0, v1

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/mqtt/service/PushService;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public R0(Lps;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v1

    .line 15
    aput-object v1, v2, v3

    .line 17
    const-string v1, "MQTT PushService: registerOnPushListener listener=null:{?}"

    .line 19
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 26
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 28
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 31
    :cond_1
    return-void
.end method

.method public declared-synchronized b(ILjava/lang/String;)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 4
    const-string v1, "MQTT PushService: setOptString key ={?},value ={?}"

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 16
    const/4 v3, 0x1

    .line 17
    aput-object p2, v2, v3

    .line 19
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/16 v0, 0x8

    .line 24
    if-ne p1, v0, :cond_1

    .line 26
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 28
    invoke-static {p1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 36
    invoke-static {}, Lcom/autonavi/mqtt/PushServer;->b()Lcom/autonavi/mqtt/PushServer;

    .line 39
    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Lcom/autonavi/mqtt/service/PushService;->g(Lcom/autonavi/mqtt/service/PushService;Lcom/autonavi/mqtt/PushServer;)Lcom/autonavi/mqtt/PushServer;

    .line 43
    iget-object p1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 45
    invoke-static {p1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/autonavi/mqtt/PushServer;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    .line 53
    return v3

    .line 54
    :cond_1
    const/4 v0, 0x7

    .line 55
    if-ne p1, v0, :cond_2

    .line 57
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/autonavi/mqtt/service/PushService$b;->u1(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    return v3

    .line 62
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 64
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 72
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/mqtt/PushServer;->g(ILjava/lang/String;)Z

    .line 79
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    monitor-exit p0

    .line 81
    return p1

    .line 82
    :cond_3
    monitor-exit p0

    .line 83
    return v4

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 4
    const-string v1, "MQTT PushService: mqttPublishMessage topicName ={?},message ={?}"

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object p1, v2, v3

    .line 12
    const/4 v4, 0x1

    .line 13
    aput-object p2, v2, v4

    .line 15
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 20
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 28
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/mqtt/PushServer;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    .line 37
    return v3

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public declared-synchronized mqttStart()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 4
    const-string v1, "MQTT PushService: mqttStart()"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 14
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 22
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/autonavi/mqtt/PushServer;->nativeStart()Z

    .line 29
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    return v2

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public declared-synchronized mqttUninit()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 4
    const-string v1, "MQTT PushService: mqtt process mqttUninit()"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 14
    invoke-static {v1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    const-string v1, "MQTT PushService: mqtt process CALL  mPushServer.unInit() begin"

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v0, v1, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 29
    invoke-static {v1}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/autonavi/mqtt/PushServer;->h()V

    .line 36
    const-string v1, "MQTT PushService: mqtt process CALL  mPushServer.unInit() end"

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public n0(Lps;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 5
    iget-object v0, v0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 10
    :cond_0
    return-void
.end method

.method public declared-synchronized setOptInt(II)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 4
    const-string v1, "MQTT PushService: setOptInt key ={?},value ={?}"

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 23
    invoke-static {v0, v1, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x6

    .line 27
    if-ne p1, v0, :cond_0

    .line 29
    invoke-virtual {p0, p2}, Lcom/autonavi/mqtt/service/PushService$b;->v1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return v5

    .line 34
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 36
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService$b;->a:Lcom/autonavi/mqtt/service/PushService;

    .line 44
    invoke-static {v0}, Lcom/autonavi/mqtt/service/PushService;->f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/mqtt/PushServer;->f(II)Z

    .line 51
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    .line 53
    return p1

    .line 54
    :cond_1
    monitor-exit p0

    .line 55
    return v4

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    .line 58
    throw p1
.end method

.method public u1(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const-string v2, "MQTT PushService: PushService activityPath={?} (not used)"

    .line 11
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p1}, Lcom/autonavi/mqtt/service/PushService;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    return-void
.end method

.method public v1(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 13
    const-string v2, "MQTT PushService: PushService setIcon={?} (not used)"

    .line 15
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/autonavi/mqtt/service/PushService;->c(I)I

    .line 21
    return-void
.end method

.method public w0(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/mqtt/service/PushService;->c(I)I

    .line 4
    return-void
.end method
