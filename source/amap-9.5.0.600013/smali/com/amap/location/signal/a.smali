.class public Lcom/amap/location/signal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/ISignalManager;


# instance fields
.field private volatile a:Lcom/amap/location/support/signal/cell/ITelephonyManager;

.field private volatile b:Lcom/amap/location/support/signal/wifi/IWifiManager;

.field private volatile c:Lcom/amap/location/support/signal/gnss/IGnssManager;

.field private volatile d:Lcom/amap/location/support/signal/status/IPhoneStatManager;

.field private volatile e:Lcom/amap/location/support/signal/sensor/ISensorManager;

.field private volatile f:Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetooth()Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/a;->f:Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->f:Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/location/signal/a/a;

    .line 12
    invoke-direct {v0}, Lcom/amap/location/signal/a/a;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/a;->f:Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->f:Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;

    .line 24
    return-object v0
.end method

.method public getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/a;->c:Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->c:Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/location/signal/c/a;

    .line 12
    invoke-direct {v0}, Lcom/amap/location/signal/c/a;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/a;->c:Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->c:Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 24
    return-object v0
.end method

.method public getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/a;->d:Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->d:Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/location/signal/d/a;

    .line 12
    invoke-direct {v0}, Lcom/amap/location/signal/d/a;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/a;->d:Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->d:Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 24
    return-object v0
.end method

.method public getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/a;->e:Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->e:Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/location/signal/f/a;

    .line 12
    invoke-direct {v0}, Lcom/amap/location/signal/f/a;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/a;->e:Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->e:Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 24
    return-object v0
.end method

.method public getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/a;->a:Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->a:Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/location/signal/b/a;

    .line 12
    invoke-direct {v0}, Lcom/amap/location/signal/b/a;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/a;->a:Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->a:Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 24
    return-object v0
.end method

.method public getWifi()Lcom/amap/location/support/signal/wifi/IWifiManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/a;->b:Lcom/amap/location/support/signal/wifi/IWifiManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->b:Lcom/amap/location/support/signal/wifi/IWifiManager;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/amap/location/signal/g/a;

    .line 12
    invoke-direct {v0}, Lcom/amap/location/signal/g/a;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/a;->b:Lcom/amap/location/support/signal/wifi/IWifiManager;

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/signal/a;->b:Lcom/amap/location/support/signal/wifi/IWifiManager;

    .line 24
    return-object v0
.end method

.method public retryStart()V
    .locals 2

    .line 1
    const-string v0, "sigmgr"

    .line 3
    const-string v1, "retry start"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/amap/location/signal/a;->getWifi()Lcom/amap/location/support/signal/wifi/IWifiManager;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/amap/location/support/dispatch/Dispatcher;

    .line 14
    invoke-virtual {v0}, Lcom/amap/location/support/dispatch/Dispatcher;->onListenChanged()V

    .line 17
    invoke-virtual {p0}, Lcom/amap/location/signal/a;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/amap/location/support/dispatch/Dispatcher;

    .line 23
    invoke-virtual {v0}, Lcom/amap/location/support/dispatch/Dispatcher;->onListenChanged()V

    .line 26
    invoke-virtual {p0}, Lcom/amap/location/signal/a;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->onListenChanged()V

    .line 33
    invoke-virtual {p0}, Lcom/amap/location/signal/a;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/amap/location/support/dispatch/Dispatcher;

    .line 39
    invoke-virtual {v0}, Lcom/amap/location/support/dispatch/Dispatcher;->onListenChanged()V

    .line 42
    invoke-virtual {p0}, Lcom/amap/location/signal/a;->getBluetooth()Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/amap/location/support/dispatch/Dispatcher;

    .line 48
    invoke-virtual {v0}, Lcom/amap/location/support/dispatch/Dispatcher;->onListenChanged()V

    .line 51
    return-void
.end method

.method public setWorkLooper(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    return-void
.end method
