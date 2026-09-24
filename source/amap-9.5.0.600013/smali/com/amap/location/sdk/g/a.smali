.class public Lcom/amap/location/sdk/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/third/IThirdLocator;


# instance fields
.field private a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private b:Z

.field private c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;


# direct methods
.method public static a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public forceStop()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/sdk/g/a;->stop()Z

    .line 4
    const/4 v0, 0x1

    .line 5
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/sdk/g/a;->b:Z

    .line 3
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setParam(IJJLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public start(JFLcom/amap/location/support/signal/gnss/AmapLocationListener;)Z
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/amap/location/sdk/g/a;->a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/amap/location/sdk/g/a;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p1, p2, p3}, Lcom/amap/location/support/signal/gnss/IGnssManager;->requestGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/amap/location/sdk/g/a;->b:Z

    .line 23
    return p1
.end method

.method public stop()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/amap/location/sdk/g/a;->c:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removeGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/amap/location/sdk/g/a;->b:Z

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method
