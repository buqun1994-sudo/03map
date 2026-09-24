.class public Lxm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
.implements Lkj;


# static fields
.field public static volatile h:Lxm0;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/os/Looper;

.field public c:Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;

.field public d:Landroid/net/wifi/p2p/WifiP2pManager;

.field public e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public f:Z

.field public g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lxm0;->f:Z

    .line 7
    return-void
.end method

.method public static synthetic a(Lxm0;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxm0;->s(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 4
    return-void
.end method

.method public static n()Lxm0;
    .locals 2

    .line 1
    sget-object v0, Lxm0;->h:Lxm0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lxm0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lxm0;->h:Lxm0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lxm0;

    .line 14
    invoke-direct {v1}, Lxm0;-><init>()V

    .line 17
    sput-object v1, Lxm0;->h:Lxm0;

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
    sget-object v0, Lxm0;->h:Lxm0;

    .line 26
    return-object v0
.end method


# virtual methods
.method public A(IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "setWifiP2pChannels"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    iget-object v4, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x4

    .line 19
    new-array v6, v5, [Ljava/lang/Class;

    .line 21
    iget-object v7, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object v7

    .line 27
    aput-object v7, v6, v0

    .line 29
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    aput-object v7, v6, v1

    .line 33
    const/4 v8, 0x2

    .line 34
    aput-object v7, v6, v8

    .line 36
    const-class v7, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 38
    const/4 v9, 0x3

    .line 39
    aput-object v7, v6, v9

    .line 41
    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 48
    iget-object v4, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 50
    new-array v5, v5, [Ljava/lang/Object;

    .line 52
    iget-object v6, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 54
    aput-object v6, v5, v0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    aput-object p1, v5, v1

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p1

    .line 66
    aput-object p1, v5, v8

    .line 68
    aput-object p3, v5, v9

    .line 70
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    new-array p2, v1, [Ljava/lang/Object;

    .line 77
    aput-object p1, p2, v0

    .line 79
    const-string p1, "setWifiP2pChannels error = {?}"

    .line 81
    invoke-static {v2, p1, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :goto_0
    return v0
.end method

.method public B(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lxm0;->A(IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "stopPeerDiscovery"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 19
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0
.end method

.method public declared-synchronized D()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "WifiDirectConnectUtils"

    .line 4
    const-string v1, "unInit with mHasInited = {?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    iget-boolean v3, p0, Lxm0;->f:Z

    .line 11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 18
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-boolean v0, p0, Lxm0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    iput-boolean v4, p0, Lxm0;->f:Z

    .line 29
    iget-object v0, p0, Lxm0;->c:Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    iget-object v1, p0, Lxm0;->a:Landroid/content/Context;

    .line 35
    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lxm0;->a:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 45
    iput-object v0, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0

    .line 51
    throw v0
.end method

.method public E(Lkj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    return-void
.end method

.method public b(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lkj;

    .line 21
    invoke-interface {v1, p1}, Lkj;->b(Landroid/net/NetworkInfo;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public c(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "cancelConnect"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 19
    iget-object v2, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 21
    invoke-virtual {v1, v2, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 24
    :cond_0
    return v0
.end method

.method public d(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lkj;

    .line 21
    invoke-interface {v1, p1}, Lkj;->d(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 8
    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v2

    .line 21
    const-string v3, "setDeviceName"

    .line 23
    const/4 v4, 0x3

    .line 24
    new-array v5, v4, [Ljava/lang/Class;

    .line 26
    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 28
    aput-object v6, v5, v0

    .line 30
    const-class v6, Ljava/lang/String;

    .line 32
    aput-object v6, v5, v1

    .line 34
    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 36
    const/4 v7, 0x2

    .line 37
    aput-object v6, v5, v7

    .line 39
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    iget-object v3, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 48
    new-array v4, v4, [Ljava/lang/Object;

    .line 50
    iget-object v5, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 52
    aput-object v5, v4, v0

    .line 54
    aput-object p1, v4, v1

    .line 56
    aput-object p2, v4, v7

    .line 58
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    nop

    .line 63
    const-string p1, "invoke setDeviceName onFailure"

    .line 65
    new-array v1, v0, [Ljava/lang/Object;

    .line 67
    const-string v2, "WifiDirectConnectUtils"

    .line 69
    invoke-static {v2, p1, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    if-eqz p2, :cond_2

    .line 74
    invoke-interface {p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 77
    :cond_2
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lxm0;->f:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v3

    .line 24
    aput-object v3, v1, v2

    .line 26
    const-string v2, "WifiDirectConnectUtils"

    .line 28
    const-string v3, "checkWifiState result = {?}"

    .line 30
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return v0
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lkj;

    .line 21
    invoke-interface {v1, p1}, Lkj;->g(I)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "WifiDirectConnectUtils"

    .line 9
    const-string v4, "connect deviceAddress {?}"

    .line 11
    invoke-static {v3, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 28
    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 31
    iput-object p1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 33
    iget-object p1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 35
    iput v2, p1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 37
    iput p2, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 39
    iget-object p1, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 41
    iget-object p2, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 43
    invoke-virtual {p1, p2, v1, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 46
    return v0

    .line 47
    :cond_0
    invoke-interface {p3, v2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 50
    :cond_1
    return v2
.end method

.method public i(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "createGroup"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    const/16 v1, 0x1d

    .line 21
    if-lt v0, v1, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lxm0;->l(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lxm0;->k(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 30
    :goto_0
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    return v0
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lkj;

    .line 21
    invoke-interface {v1, p1}, Lkj;->j(I)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final k(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 3
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 8
    return-void
.end method

.method public final l(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 3
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 8
    return-void
.end method

.method public m(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "discoverPeers"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 19
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0
.end method

.method public o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lxm0;->s(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lxm0$a;

    .line 9
    invoke-direct {p1, p0}, Lxm0$a;-><init>(Lxm0;)V

    .line 12
    invoke-virtual {p0, p1}, Lxm0;->y(Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)Z

    .line 15
    :goto_0
    return-void
.end method

.method public onChannelDisconnected()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectConnectUtils"

    .line 6
    const-string v2, "onChannelDisconnected and retry init channel"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 14
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lxm0;->r()Z

    .line 21
    :cond_0
    return-void
.end method

.method public declared-synchronized p(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lxm0;->q(Landroid/content/Context;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public declared-synchronized q(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "WifiDirectConnectUtils"

    .line 4
    const-string v1, "init mHasInited = {?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    iget-boolean v4, p0, Lxm0;->f:Z

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    aput-object v4, v3, v5

    .line 18
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-boolean v0, p0, Lxm0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    iput-object p1, p0, Lxm0;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lxm0;->b:Landroid/os/Looper;

    .line 31
    const-string p2, "wifip2p"

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 39
    iput-object p1, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 41
    invoke-virtual {p0}, Lxm0;->r()Z

    .line 44
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    if-nez p1, :cond_1

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_1
    :try_start_2
    new-instance p1, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;

    .line 51
    invoke-direct {p1, p0}, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;-><init>(Lkj;)V

    .line 54
    iput-object p1, p0, Lxm0;->c:Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;

    .line 56
    iget-object p2, p0, Lxm0;->a:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a()Landroid/content/IntentFilter;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    iput-boolean v2, p0, Lxm0;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public final r()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 4
    iget-object v2, p0, Lxm0;->a:Landroid/content/Context;

    .line 6
    iget-object v3, p0, Lxm0;->b:Landroid/os/Looper;

    .line 8
    invoke-virtual {v1, v2, v3, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return v0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 25
    const-string v1, "WifiDirectConnectUtils"

    .line 27
    const-string v3, "initChannel error with msg = {?}"

    .line 29
    invoke-static {v1, v3, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return v2
.end method

.method public final s(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lkj;

    .line 21
    invoke-interface {v1, p1}, Lkj;->o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public t(Lkj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 12
    :cond_0
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lxm0;->g:Ljava/util/List;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    return-void
.end method

.method public u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "removeGroup"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 19
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0
.end method

.method public v()V
    .locals 10

    .line 1
    const-string v0, "WifiDirectConnectUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    const-class v3, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 7
    const-string v4, "deletePersistentGroup"

    .line 9
    const/4 v5, 0x3

    .line 10
    new-array v6, v5, [Ljava/lang/Class;

    .line 12
    const-class v7, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 14
    aput-object v7, v6, v2

    .line 16
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    aput-object v7, v6, v1

    .line 20
    const-class v7, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 22
    const/4 v8, 0x2

    .line 23
    aput-object v7, v6, v8

    .line 25
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    const/16 v6, 0x20

    .line 32
    if-ge v4, v6, :cond_0

    .line 34
    iget-object v6, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 36
    new-array v7, v5, [Ljava/lang/Object;

    .line 38
    iget-object v9, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 40
    aput-object v9, v7, v2

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v9

    .line 46
    aput-object v9, v7, v1

    .line 48
    const/4 v9, 0x0

    .line 49
    aput-object v9, v7, v8

    .line 51
    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v3, "Persistent groups removed"

    .line 59
    new-array v4, v2, [Ljava/lang/Object;

    .line 61
    invoke-static {v0, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception v3

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    aput-object v3, v1, v2

    .line 70
    const-string v2, "Failure removing persistent groups error = {?} "

    .line 72
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_1
    return-void
.end method

.method public w(Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "requestConnectionInfo "

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 19
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0
.end method

.method public x(Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "requestGroupInfo "

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 19
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0
.end method

.method public y(Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectConnectUtils"

    .line 6
    const-string v3, "requestPeers "

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lxm0;->f()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lxm0;->d:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 19
    iget-object v1, p0, Lxm0;->e:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0
.end method

.method public z(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, p1}, Lxm0;->A(IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method
