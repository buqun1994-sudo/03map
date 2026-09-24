.class public Lcom/amap/location/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/nl/INetworkLocator;


# instance fields
.field private a:Lcom/amap/location/g/b;

.field private volatile b:Lcom/amap/location/g/i;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/amap/location/g/f;->a:Lcom/amap/location/g/b;

    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nlclient"

    const-string v1, "nl init"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/amap/location/g/i;

    iget-object v1, p0, Lcom/amap/location/g/f;->a:Lcom/amap/location/g/b;

    invoke-direct {v0, v1}, Lcom/amap/location/g/i;-><init>(Lcom/amap/location/g/b;)V

    iput-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 8
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    invoke-virtual {v0}, Lcom/amap/location/g/i;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/location/g/b;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/amap/location/g/f;->a:Lcom/amap/location/g/b;

    .line 2
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    invoke-virtual {v0, p1}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/g/i;->g()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-string v1, "nlclient"

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "nl destroy:"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0

    .line 43
    throw v0
.end method

.method public getLastAmapLocationNetwork()Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 7
    invoke-virtual {v0}, Lcom/amap/location/g/i;->e()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/support/log/StartTimeConsumingLog;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "remove:"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "nlclient"

    .line 29
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/amap/location/g/i;->a(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    .line 37
    :cond_0
    return-void
.end method

.method public requestLocationOnce(Lcom/amap/location/support/nl/NetworkLocationListener;Lcom/amap/location/support/handler/AmapLooper;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/location/support/nl/NetworkLocationListener;",
            "Lcom/amap/location/support/handler/AmapLooper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-static {}, Lcom/amap/location/support/nl/NetworkLocatorParam;->getInstance()Lcom/amap/location/support/nl/NetworkLocatorParam;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 10
    :cond_0
    const/4 p3, 0x1

    .line 11
    invoke-virtual {p1, p3}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlyOnce(Z)V

    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-virtual {p1, p3}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 18
    invoke-virtual {p0, p1, p3, p2}, Lcom/amap/location/g/f;->requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 21
    return-void
.end method

.method public requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/f;->b:Lcom/amap/location/g/i;

    .line 3
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "ncr"

    .line 9
    invoke-virtual {v1, v2}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/amap/location/support/log/StartTimeConsumingLog;->isHasFinish()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasFineLocationPermission()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/amap/location/support/log/StartTimeConsumingLog;->cancel()V

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v2, "request:"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Lcom/amap/location/support/nl/NetworkLocationListener;->getInterval()I

    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, " "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    const-string v2, "nlclient"

    .line 74
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/location/g/i;->a(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 82
    :cond_1
    return-void
.end method
