.class public Lcom/amap/location/signal/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/IGnssManager;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/location/signal/c/a/a;

.field private c:Lcom/amap/location/signal/c/a/a;

.field private d:Lcom/amap/location/signal/c/e/b;

.field private e:Lcom/amap/location/signal/c/d/b;

.field private f:Lcom/amap/location/signal/c/b/b;

.field private g:Lcom/amap/location/signal/c/c/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "gnsslocmgr"

    .line 6
    iput-object v0, p0, Lcom/amap/location/signal/c/a;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/amap/location/signal/c/a/a;

    .line 10
    const-string v1, "gps"

    .line 12
    invoke-direct {v0, v1}, Lcom/amap/location/signal/c/a/a;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/c/a;->b:Lcom/amap/location/signal/c/a/a;

    .line 17
    new-instance v0, Lcom/amap/location/signal/c/a/a;

    .line 19
    const-string v1, "passive"

    .line 21
    invoke-direct {v0, v1}, Lcom/amap/location/signal/c/a/a;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object v0, p0, Lcom/amap/location/signal/c/a;->c:Lcom/amap/location/signal/c/a/a;

    .line 26
    new-instance v0, Lcom/amap/location/signal/c/e/b;

    .line 28
    invoke-direct {v0}, Lcom/amap/location/signal/c/e/b;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/amap/location/signal/c/a;->d:Lcom/amap/location/signal/c/e/b;

    .line 33
    new-instance v0, Lcom/amap/location/signal/c/d/b;

    .line 35
    invoke-direct {v0}, Lcom/amap/location/signal/c/d/b;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/amap/location/signal/c/a;->e:Lcom/amap/location/signal/c/d/b;

    .line 40
    new-instance v0, Lcom/amap/location/signal/c/b/b;

    .line 42
    invoke-direct {v0}, Lcom/amap/location/signal/c/b/b;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/amap/location/signal/c/a;->f:Lcom/amap/location/signal/c/b/b;

    .line 47
    new-instance v0, Lcom/amap/location/signal/c/c/b;

    .line 49
    invoke-direct {v0}, Lcom/amap/location/signal/c/c/b;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/amap/location/signal/c/a;->g:Lcom/amap/location/signal/c/c/b;

    .line 54
    return-void
.end method


# virtual methods
.method public addNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->e:Lcom/amap/location/signal/c/d/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getAmapMeasurements()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->f:Lcom/amap/location/signal/c/b/b;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/signal/c/b/b;->a()[Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAmapSatellites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->d:Lcom/amap/location/signal/c/e/b;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/signal/c/e/b;->a()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCn0Count(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->d:Lcom/amap/location/signal/c/e/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/signal/c/e/b;->a(II)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getGGA(J)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->e:Lcom/amap/location/signal/c/d/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/signal/c/d/b;->a(J)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getGnssUpdatesSystemListenerId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/signal/e/c;->getGnssUpdatesSystemListenerId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getGnssUpdatesSystemListenerIdentityHashCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/signal/e/c;->getGnssUpdatesSystemListenerIdentityHashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isGnssEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/signal/e/c;->isGnssEnable()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isNetworkLocationBySystemEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/signal/e/c;->isNetworkLocationBySystemEnable()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isOnGnssRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->b:Lcom/amap/location/signal/c/a/a;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/signal/c/a/a;->a()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onListenChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->b:Lcom/amap/location/signal/c/a/a;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/signal/c/a/a;->onListenChanged()V

    .line 6
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->c:Lcom/amap/location/signal/c/a/a;

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/signal/c/a/a;->onListenChanged()V

    .line 11
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->d:Lcom/amap/location/signal/c/e/b;

    .line 13
    invoke-virtual {v0}, Lcom/amap/location/signal/c/e/b;->onListenChanged()V

    .line 16
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->e:Lcom/amap/location/signal/c/d/b;

    .line 18
    invoke-virtual {v0}, Lcom/amap/location/signal/c/d/b;->onListenChanged()V

    .line 21
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->f:Lcom/amap/location/signal/c/b/b;

    .line 23
    invoke-virtual {v0}, Lcom/amap/location/signal/c/b/b;->onListenChanged()V

    .line 26
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->g:Lcom/amap/location/signal/c/c/b;

    .line 28
    invoke-virtual {v0}, Lcom/amap/location/signal/c/c/b;->onListenChanged()V

    .line 31
    return-void
.end method

.method public registerGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->f:Lcom/amap/location/signal/c/b/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public registerGnssNavigationMessageCallback(Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->g:Lcom/amap/location/signal/c/c/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public registerSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->d:Lcom/amap/location/signal/c/e/b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->b:Lcom/amap/location/signal/c/a/a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->e:Lcom/amap/location/signal/c/d/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->c:Lcom/amap/location/signal/c/a/a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public requestGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->a:Ljava/lang/String;

    .line 15
    const-string v1, "request gps but not set name"

    .line 17
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->b:Lcom/amap/location/signal/c/a/a;

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public requestPassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->a:Ljava/lang/String;

    .line 15
    const-string v1, "request passive but not set name"

    .line 17
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->c:Lcom/amap/location/signal/c/a/a;

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public resetGnssRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->b:Lcom/amap/location/signal/c/a/a;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/signal/c/a/a;->b()V

    .line 6
    return-void
.end method

.method public setFilterGps(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/location/signal/e/c;->setFilterGps(Z)V

    .line 8
    return-void
.end method

.method public unregisterGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->f:Lcom/amap/location/signal/c/b/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public unregisterGnssNavigationMessageCallback(Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->g:Lcom/amap/location/signal/c/c/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public unregisterSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/c/a;->d:Lcom/amap/location/signal/c/e/b;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
