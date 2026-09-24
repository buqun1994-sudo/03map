.class public Lh30;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh30$b;
    }
.end annotation


# static fields
.field public static d:Ljava/lang/String; = "h30"

.field public static e:Z

.field public static f:Z

.field public static volatile g:Lh30;


# instance fields
.field public a:Ljava/util/Timer;

.field public b:I

.field public c:Lh30$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh30;->a:Ljava/util/Timer;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lh30;->b:I

    .line 10
    return-void
.end method

.method public static synthetic a(Lh30;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh30;->c(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lh30;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh30;->d(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static e()Lh30;
    .locals 2

    .line 1
    sget-object v0, Lh30;->g:Lh30;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lh30;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lh30;->g:Lh30;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lh30;

    .line 14
    invoke-direct {v1}, Lh30;-><init>()V

    .line 17
    sput-object v1, Lh30;->g:Lh30;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lh30;->g:Lh30;

    .line 26
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lh30;->d:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "timer runnable"

    .line 8
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrm0;->y()Z

    .line 14
    move-result v0

    .line 15
    sget-object v2, Lh30;->d:Ljava/lang/String;

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v4, v3, [Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v5

    .line 24
    aput-object v5, v4, v1

    .line 26
    const-string v1, "timer runnable pingNet = {?}"

    .line 28
    invoke-static {v2, v1, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1, v3}, Lh30;->l(Landroid/content/Context;Z)V

    .line 36
    return-void

    .line 37
    :cond_0
    iget p1, p0, Lh30;->b:I

    .line 39
    add-int/2addr p1, v3

    .line 40
    iput p1, p0, Lh30;->b:I

    .line 42
    const/4 v0, 0x4

    .line 43
    if-lt p1, v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lh30;->k()V

    .line 48
    :cond_1
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lrm0;->t(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lrm0;->q(Landroid/content/Context;)I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-static {p1}, Lrm0;->u(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p0, p1}, Lh30;->j(Landroid/content/Context;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lh30;->j(Landroid/content/Context;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "WIFI_DIRECT_DEVICE_NET_STATE"

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p1, v0, v1}, Lvm0;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized f(Landroid/content/Context;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lh30;->f:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lh30;->i(Landroid/content/Context;)V

    .line 10
    sput-boolean v1, Lh30;->f:Z

    .line 12
    :cond_0
    sget-object p1, Lh30;->d:Ljava/lang/String;

    .line 14
    const-string v0, "is_net_device = {?}"

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    sget-boolean v2, Lh30;->e:Z

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v2, v1, v3

    .line 27
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    sget-boolean p1, Lh30;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final g(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh30;->c:Lh30$b;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lh30$b;

    .line 7
    invoke-direct {v0, p0}, Lh30$b;-><init>(Lh30;)V

    .line 10
    iput-object v0, p0, Lh30;->c:Lh30$b;

    .line 12
    invoke-virtual {v0}, Lh30$b;->a()Landroid/content/IntentFilter;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    :cond_0
    return-void
.end method

.method public declared-synchronized h(Landroid/content/Context;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lh30;->d:Ljava/lang/String;

    .line 4
    const-string v1, "resetNetDevice"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    sput-boolean v2, Lh30;->f:Z

    .line 14
    invoke-virtual {p0}, Lh30;->k()V

    .line 17
    invoke-virtual {p0, p1}, Lh30;->m(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final i(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "WIFI_DIRECT_DEVICE_HAS_CHECK_NET_STATE"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lvm0;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-static {p1, v0, v3}, Lvm0;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 12
    const-string v0, "WIFI_DIRECT_DEVICE_NET_STATE"

    .line 14
    if-nez v2, :cond_0

    .line 16
    invoke-static {p1}, Lrm0;->t(Landroid/content/Context;)Z

    .line 19
    move-result v2

    .line 20
    sput-boolean v2, Lh30;->e:Z

    .line 22
    invoke-static {p1, v0, v2}, Lvm0;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 25
    invoke-virtual {p0, p1}, Lh30;->g(Landroid/content/Context;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1, v0, v3}, Lvm0;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 32
    move-result v0

    .line 33
    sput-boolean v0, Lh30;->e:Z

    .line 35
    invoke-virtual {p0, p1}, Lh30;->d(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p1}, Lh30;->g(Landroid/content/Context;)V

    .line 41
    :goto_0
    sget-object p1, Lh30;->d:Ljava/lang/String;

    .line 43
    new-array v0, v3, [Ljava/lang/Object;

    .line 45
    sget-boolean v2, Lh30;->e:Z

    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v2

    .line 51
    aput-object v2, v0, v1

    .line 53
    const-string v1, "is_net_device = {?}"

    .line 55
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public final declared-synchronized j(Landroid/content/Context;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh30;->k()V

    .line 5
    iget-object v0, p0, Lh30;->a:Ljava/util/Timer;

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/Timer;

    .line 11
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 14
    iput-object v0, p0, Lh30;->a:Ljava/util/Timer;

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lh30;->b:I

    .line 19
    new-instance v2, Lh30$a;

    .line 21
    invoke-direct {v2, p0, p1}, Lh30$a;-><init>(Lh30;Landroid/content/Context;)V

    .line 24
    iget-object v1, p0, Lh30;->a:Ljava/util/Timer;

    .line 26
    const-wide/16 v3, 0x0

    .line 28
    const-wide/16 v5, 0x1388

    .line 30
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public final declared-synchronized k()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lh30;->a:Ljava/util/Timer;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 10
    iget-object v1, p0, Lh30;->a:Ljava/util/Timer;

    .line 12
    invoke-virtual {v1}, Ljava/util/Timer;->purge()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    :goto_0
    :try_start_1
    iput-object v0, p0, Lh30;->a:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    :try_start_2
    sget-object v1, Lh30;->d:Ljava/lang/String;

    .line 22
    const-string v2, "stopNetCheckTimer error"

    .line 24
    const/4 v3, 0x0

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    invoke-static {v1, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_2
    :try_start_3
    iput-object v0, p0, Lh30;->a:Ljava/util/Timer;

    .line 35
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public final l(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    sget-object v0, Lh30;->d:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 13
    const-string v2, "terminateNetCheck,isConnect = {?}"

    .line 15
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const-string v0, "WIFI_DIRECT_DEVICE_NET_STATE"

    .line 20
    invoke-static {p1, v0, p2}, Lvm0;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {p0}, Lh30;->k()V

    .line 26
    invoke-virtual {p0, p1}, Lh30;->m(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public final m(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh30;->c:Lh30$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    return-void
.end method
