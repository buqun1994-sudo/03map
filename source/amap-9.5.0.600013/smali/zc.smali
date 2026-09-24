.class public Lzc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "zc"

.field public static volatile m:Lzc;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Landroid/bluetooth/BluetoothAdapter;

.field public c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:Loj;

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/content/BroadcastReceiver;

.field public k:Lcg;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lzc;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 7
    iput-object v0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 9
    iput-object v0, p0, Lzc;->d:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lzc;->e:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lzc;->f:Z

    .line 16
    const/16 v0, -0x63

    .line 18
    iput v0, p0, Lzc;->g:I

    .line 20
    new-instance v0, Lzc$a;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1}, Lzc$a;-><init>(Lzc;Landroid/os/Looper;)V

    .line 29
    iput-object v0, p0, Lzc;->i:Landroid/os/Handler;

    .line 31
    new-instance v0, Lzc$b;

    .line 33
    invoke-direct {v0, p0}, Lzc$b;-><init>(Lzc;)V

    .line 36
    iput-object v0, p0, Lzc;->j:Landroid/content/BroadcastReceiver;

    .line 38
    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    iput-object v0, p0, Lzc;->a:Ljava/lang/ref/WeakReference;

    .line 47
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lzc;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 53
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Lzc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzc;->d:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Lzc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzc;->e:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic d(Lzc;)Loj;
    .locals 0

    .line 1
    iget-object p0, p0, Lzc;->h:Loj;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lzc;Loj;)Loj;
    .locals 0

    .line 1
    iput-object p1, p0, Lzc;->h:Loj;

    .line 3
    return-object p1
.end method

.method public static synthetic f(Lzc;ILoj;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzc;->r(ILoj;)V

    .line 4
    return-void
.end method

.method public static synthetic g(Lzc;)Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;
    .locals 0

    .line 1
    iget-object p0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lzc;)Lcg;
    .locals 0

    .line 1
    iget-object p0, p0, Lzc;->k:Lcg;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lzc;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lzc;->i:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static o(Landroid/content/Context;)Lzc;
    .locals 2

    .line 1
    sget-object v0, Lzc;->m:Lzc;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Lzc;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lzc;

    .line 10
    invoke-direct {v1, p0}, Lzc;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lzc;->m:Lzc;

    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0

    .line 20
    :cond_0
    :goto_0
    sget-object p0, Lzc;->m:Lzc;

    .line 22
    return-object p0
.end method


# virtual methods
.method public final j(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "connect address:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :try_start_0
    iget-object v0, p0, Lzc;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 34
    invoke-virtual {v0, p1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->h(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    iget-object v0, p0, Lzc;->i:Landroid/os/Handler;

    .line 41
    const/4 v1, -0x2

    .line 42
    const/4 v3, -0x1

    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-virtual {v0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 53
    const-string v1, "BluetoothSPP, caught an exception while connecting"

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    invoke-static {v0, v1, p1, v2}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "doBtConnect address:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lzc;->x()V

    .line 29
    invoke-virtual {p0}, Lzc;->q()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lzc;->u()V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lzc;->s()V

    .line 41
    invoke-virtual {p0, p1}, Lzc;->j(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public l()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lzc;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzc;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzc;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->j()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final r(ILoj;)V
    .locals 3

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "notifyStateChange :"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget v0, p0, Lzc;->g:I

    .line 28
    if-eq v0, p1, :cond_0

    .line 30
    iget-object v0, p0, Lzc;->k:Lcg;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1, p2}, Lcg;->a(ILoj;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 5

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "start registerBluetoothStateReciever"

    .line 8
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v2, p0, Lzc;->a:Ljava/lang/ref/WeakReference;

    .line 13
    if-nez v2, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/Context;

    .line 22
    if-nez v2, :cond_1

    .line 24
    return-void

    .line 25
    :cond_1
    iget-boolean v3, p0, Lzc;->f:Z

    .line 27
    if-eqz v3, :cond_2

    .line 29
    return-void

    .line 30
    :cond_2
    const/4 v3, 0x1

    .line 31
    iput-boolean v3, p0, Lzc;->f:Z

    .line 33
    new-instance v3, Landroid/content/IntentFilter;

    .line 35
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lzc;->j:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    const-string v2, "success registerBluetoothStateReciever"

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    return-void
.end method

.method public t(Lcg;)V
    .locals 3

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "setOnBtStateChangeListener listener :"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lzc;->k:Lcg;

    .line 28
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 3
    iget-object v1, p0, Lzc;->i:Landroid/os/Handler;

    .line 5
    invoke-direct {v0, v1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;-><init>(Landroid/os/Handler;)V

    .line 8
    iput-object v0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 10
    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "startBtServer"

    .line 8
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lzc;->x()V

    .line 14
    invoke-virtual {p0}, Lzc;->q()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lzc;->u()V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lzc;->s()V

    .line 26
    invoke-virtual {p0}, Lzc;->w()V

    .line 29
    return-void
.end method

.method public final declared-synchronized w()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 4
    const-string v1, "startService begin "

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v3, "startService mChatService.getState() : "

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v3, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 28
    invoke-virtual {v3}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->k()I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 46
    invoke-virtual {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->k()I

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->n(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p0

    .line 62
    throw v0
.end method

.method public x()V
    .locals 3

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "stopBt"

    .line 8
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lzc;->y()V

    .line 14
    invoke-virtual {p0}, Lzc;->z()V

    .line 17
    const/16 v0, -0x63

    .line 19
    iput v0, p0, Lzc;->g:I

    .line 21
    return-void
.end method

.method public final declared-synchronized y()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 4
    const-string v1, "stopService begin"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const-string v1, "stopService not null"

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lzc;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 25
    invoke-virtual {v1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->o()V

    .line 28
    :cond_0
    const-string v1, "stopService end"

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method

.method public final z()V
    .locals 4

    .line 1
    sget-object v0, Lzc;->l:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "start unRegisterBluetoothStateReciever"

    .line 8
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v2, p0, Lzc;->a:Ljava/lang/ref/WeakReference;

    .line 13
    if-nez v2, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/Context;

    .line 22
    if-nez v2, :cond_1

    .line 24
    return-void

    .line 25
    :cond_1
    iget-boolean v3, p0, Lzc;->f:Z

    .line 27
    if-nez v3, :cond_2

    .line 29
    return-void

    .line 30
    :cond_2
    iput-boolean v1, p0, Lzc;->f:Z

    .line 32
    iget-object v3, p0, Lzc;->j:Landroid/content/BroadcastReceiver;

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 37
    const-string v2, "success unRegisterBluetoothStateReciever"

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    return-void
.end method
