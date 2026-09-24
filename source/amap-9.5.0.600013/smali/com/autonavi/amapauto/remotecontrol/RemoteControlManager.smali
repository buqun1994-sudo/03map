.class public Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;,
        Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$c;
    }
.end annotation


# static fields
.field public static d:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;


# instance fields
.field public a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;

.field public b:Landroid/os/Handler;

.field public c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$a;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$a;-><init>(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;Landroid/os/Looper;)V

    .line 16
    iput-object v0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->b:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$b;

    .line 20
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$b;-><init>(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)V

    .line 23
    iput-object v0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->c:Landroid/content/BroadcastReceiver;

    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    const-string v1, "RemoteControlManager"

    .line 30
    const-string v2, "[RemoteControlManager] RemoteControlManager"

    .line 32
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->b:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static declared-synchronized g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;
    .locals 2

    .line 1
    const-class v0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->d:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 10
    invoke-direct {v1}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;-><init>()V

    .line 13
    sput-object v1, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->d:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 15
    :cond_0
    sget-object v1, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->d:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public static i(I)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "RemoteControlManager"

    .line 13
    const-string v2, "[getTrafficCount] type = {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lz90;->j()Lz90;

    .line 21
    invoke-static {p0}, Lz90;->k(I)J

    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method public static l()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[getWifiDirectState]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    invoke-static {}, Lz90;->n()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public static t()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[isLinkNetDevice]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    invoke-static {}, Lz90;->t()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public static u(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "RemoteControlManager"

    .line 13
    const-string v2, "[netProxyState] state = {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lz90;->j()Lz90;

    .line 21
    invoke-static {p0}, Lz90;->v(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] stopWifiLink"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->J()V

    .line 18
    return-void
.end method

.method public B()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] unRegisterBluetoothReceiver"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 22
    move-result-object v1

    .line 23
    iget-object v3, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;

    .line 25
    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    const-string v3, "[unRegisterBluetoothReceiver]unregisterReceiver"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    :goto_0
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] uninitWifiChangeReceive"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->c:Landroid/content/BroadcastReceiver;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 22
    move-result-object v1

    .line 23
    iget-object v3, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->c:Landroid/content/BroadcastReceiver;

    .line 25
    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    const-string v3, "[uninitWifiChangeReceive]unregisterReceiver"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    :goto_0
    return-void
.end method

.method public D(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object p3, v0, v1

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v2

    .line 22
    aput-object v2, v0, v1

    .line 24
    const-string v1, "RemoteControlManager"

    .line 26
    const-string v2, "operate = {?},arg1 = {?},arg2 = {?},arg3 = {?}"

    .line 28
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lz90;->j()Lz90;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1, p2, p3, p4}, Lz90;->L(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] activeConnectBluetooth"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lz90;->g(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] addBluetoothConnectChangeListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->B()V

    .line 18
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] addWifiConnectChangeListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->C()V

    .line 18
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] destroy"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->I()V

    .line 18
    invoke-static {}, Lz90;->h()V

    .line 21
    sget-object v0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->d:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->d:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 28
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager]getBluetoothAdapterAddress"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    const v3, 0x9c41

    .line 18
    invoke-virtual {v1, v3}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-nez v3, :cond_0

    .line 29
    new-array v3, v4, [Ljava/lang/Object;

    .line 31
    aput-object v1, v3, v0

    .line 33
    const-string v0, "[RemoteControlManager]getBluetoothAdapterAddress GET_BLUETOOTH_ADDRESS address={?}"

    .line 35
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-object v1

    .line 39
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    const/16 v5, 0x17

    .line 43
    if-lt v3, v5, :cond_1

    .line 45
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    move-result-object v3

    .line 57
    const-string v5, "bluetooth_address"

    .line 59
    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    const-string v3, "[RemoteControlManager]getBluetoothAdapterAddress from setting. address={?} "

    .line 65
    new-array v5, v4, [Ljava/lang/Object;

    .line 67
    aput-object v1, v5, v0

    .line 69
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v3

    .line 74
    const-string v5, "[RemoteControlManager]getBluetoothAdapterAddress Unable to get Bluetooth address, error occurs."

    .line 76
    new-array v6, v0, [Ljava/lang/Object;

    .line 78
    invoke-static {v2, v5, v3, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    :cond_1
    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 83
    aput-object v1, v3, v0

    .line 85
    const-string v0, "[RemoteControlManager]getBluetooth Address end :{?}"

    .line 87
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-object v1
.end method

.method public h()[Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] getPairedDeviceAddress"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lz90;->i()Landroid/bluetooth/BluetoothAdapter;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 22
    return-object v3

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 29
    const-string v1, "[RemoteControlManager] getPairedDeviceAddress devices == null"

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_1
    return-object v3
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lz90;->j()Lz90;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lz90;->l()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lz90;->j()Lz90;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lz90;->m()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public m()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "RemoteControlManager"

    .line 9
    const-string v2, "[RemoteControlManager] RemoteControlManager init:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] initBluetoothServer"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->o()V

    .line 18
    return-void
.end method

.method public o(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] initHttpServer"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lz90;->p(I)V

    .line 18
    return-void
.end method

.method public p()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] initWifiChangeReceive"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Landroid/content/IntentFilter;

    .line 13
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 18
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lrv;->y()Landroid/app/Application;

    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->c:Landroid/content/BroadcastReceiver;

    .line 31
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    const-string v3, "[initWifiChangeReceive]Exception"

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] initWifiServer"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->s()V

    .line 18
    return-void
.end method

.method public r()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] isBluetoothAdapterEnabled"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lz90;->i()Landroid/bluetooth/BluetoothAdapter;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-static {}, Lse;->c()Lse;

    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x2727

    .line 27
    invoke-virtual {v3, v4}, Lse;->getBooleanValue(I)Z

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_0

    .line 34
    invoke-static {}, Lse;->c()Lse;

    .line 37
    move-result-object v1

    .line 38
    const/16 v3, 0x2728

    .line 40
    invoke-virtual {v1, v3}, Lse;->getBooleanValue(I)Z

    .line 43
    move-result v1

    .line 44
    new-array v3, v4, [Ljava/lang/Object;

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v4

    .line 50
    aput-object v4, v3, v0

    .line 52
    const-string v0, "[isBluetoothAdapterEnabled]adapter bluetooth isEnabled:{?}"

    .line 54
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return v1

    .line 58
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 61
    move-result v1

    .line 62
    new-array v3, v4, [Ljava/lang/Object;

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v4

    .line 68
    aput-object v4, v3, v0

    .line 70
    const-string v0, "[isBluetoothAdapterEnabled]isEnabled:{?}"

    .line 72
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return v1

    .line 76
    :cond_1
    return v0
.end method

.method public s(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] isContainedInBTParied"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->h()[Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    aget-object v4, v1, v3

    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v0
.end method

.method public v()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] openBluetooth"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lz90;->i()Landroid/bluetooth/BluetoothAdapter;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const-string v3, "[RemoteControlManager][openBluetooth]had BluetoothAdapter"

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Ljava/lang/Thread;

    .line 30
    new-instance v2, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$c;

    .line 32
    invoke-direct {v2, v1}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$c;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    .line 35
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    iget-object v0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->b:Landroid/os/Handler;

    .line 43
    const/16 v1, 0x3ea

    .line 45
    const-wide/16 v2, 0x1388

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "[RemoteControlManager][openBluetooth]don\'t had BluetoothAdapter"

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->b:Landroid/os/Handler;

    .line 60
    const/16 v1, 0x3e8

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    :goto_0
    return-void
.end method

.method public w()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager] registerBluetoothReceiver"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Landroid/content/IntentFilter;

    .line 13
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 18
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 23
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 28
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    new-instance v3, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;

    .line 33
    invoke-direct {v3, p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;-><init>(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)V

    .line 36
    iput-object v3, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;

    .line 38
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lrv;->y()Landroid/app/Application;

    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;

    .line 48
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string v3, "[registerBluetoothReceiver]Exception"

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] removeBluetoothConnectChangeListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->x()V

    .line 18
    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] removeWifiConnectChangeListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->y()V

    .line 18
    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlManager"

    .line 6
    const-string v2, "[RemoteControlManager] stopBluetoothLink"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lz90;->j()Lz90;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lz90;->E()V

    .line 18
    return-void
.end method
