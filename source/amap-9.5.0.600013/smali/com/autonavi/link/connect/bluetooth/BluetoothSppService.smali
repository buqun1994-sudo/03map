.class public Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;,
        Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "BluetoothSppService"

.field public static final j:Ljava/util/UUID;

.field public static final k:Ljava/util/UUID;


# instance fields
.field public final a:Landroid/bluetooth/BluetoothAdapter;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

.field public d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Loj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "fa87c0d0-2199-1724-12cc-0800200c9a66"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->j:Ljava/util/UUID;

    .line 9
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->k:Ljava/util/UUID;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->g:Z

    .line 7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->e:I

    .line 16
    iput-object p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->i:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic d()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->j:Ljava/util/UUID;

    .line 3
    return-object v0
.end method

.method public static synthetic e()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->k:Ljava/util/UUID;

    .line 3
    return-object v0
.end method

.method public static synthetic f(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->e:I

    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;Loj;)Loj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->h:Loj;

    .line 3
    return-object p1
.end method


# virtual methods
.method public h(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->i:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "connect device:"

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
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->e:I

    .line 28
    const/4 v3, 0x2

    .line 29
    if-ne v1, v3, :cond_0

    .line 31
    const-string v1, "connect STATE_CONNECTING"

    .line 33
    new-array v4, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v1, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 40
    if-eqz v1, :cond_0

    .line 42
    const-string v1, "connect STATE_CONNECTING not null"

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a()V

    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 57
    :cond_0
    new-instance v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 59
    iget-boolean v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->g:Z

    .line 61
    invoke-direct {v0, p0, p1, v1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;-><init>(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 64
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    invoke-virtual {p0, v3}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->m(I)V

    .line 72
    return-void
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const-string v3, "device_name"

    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v2, "device_address"

    .line 24
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p1, "device_info"

    .line 33
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->h:Loj;

    .line 35
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    const/4 p1, 0x3

    .line 47
    invoke-virtual {p0, p1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->m(I)V

    .line 50
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->f:Z

    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->e:I

    .line 3
    return v0
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->f:Z

    .line 3
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->e:I

    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->l(Z)V

    .line 12
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->m(I)V

    .line 5
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

    .line 11
    invoke-direct {v0, p0, p1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;-><init>(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;Z)V

    .line 14
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    iput-boolean p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->g:Z

    .line 21
    :cond_0
    return-void
.end method

.method public declared-synchronized o()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->i:Ljava/lang/String;

    .line 4
    const-string v1, "stop"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const-string v1, "stop and mConnectThread != null"

    .line 19
    new-array v4, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, v1, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 26
    invoke-virtual {v1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a()V

    .line 29
    iput-object v3, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->a()V

    .line 38
    iput-object v3, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

    .line 40
    :cond_1
    const-string v1, "stop end"

    .line 42
    new-array v3, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->m(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit p0

    .line 54
    throw v0
.end method
