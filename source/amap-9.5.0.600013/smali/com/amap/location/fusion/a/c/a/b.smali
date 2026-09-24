.class public Lcom/amap/location/fusion/a/c/a/b;
.super Lcom/amap/location/fusion/a/c/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/location/fusion/a/c/a/a;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "_blue"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->a:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlayOnline(Z)V

    .line 31
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 33
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setUseBluetooth(Z)V

    .line 36
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 38
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onNavi()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 44
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->b:I

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->c:I

    .line 49
    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onNavi()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/amap/location/fusion/a/c/a/a;->b:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/amap/location/fusion/a/c/a/a;->c:I

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 14
    invoke-virtual {v1, v0}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 17
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 23
    invoke-interface {v0, v1}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    .line 26
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/nl/INetworkLocator;->requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 40
    return-void
.end method

.method public b(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isHDBluetoothLocation()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, -0x8

    .line 10
    invoke-virtual {p1, v0}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 13
    const-string v0, "3"

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "loc_code"

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method
