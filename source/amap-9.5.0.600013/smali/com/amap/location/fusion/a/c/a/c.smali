.class public Lcom/amap/location/fusion/a/c/a/c;
.super Lcom/amap/location/fusion/a/c/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

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
    const-string v1, "_fusion"

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
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->e:I

    .line 40
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setWifiScanInterval(I)V

    .line 43
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 45
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->e:I

    .line 47
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setWifiConnectScanInterval(I)V

    .line 50
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 52
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onNavi()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->d:I

    .line 60
    iget v2, p0, Lcom/amap/location/fusion/a/c/a/a;->b:I

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->d:I

    .line 65
    iget v2, p0, Lcom/amap/location/fusion/a/c/a/a;->c:I

    .line 67
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 74
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
    iget v0, p0, Lcom/amap/location/fusion/a/c/a/a;->d:I

    .line 9
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->b:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/amap/location/fusion/a/c/a/a;->d:I

    .line 14
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->c:I

    .line 16
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 22
    invoke-virtual {v1, v0}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 31
    invoke-interface {v0, v1}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    .line 34
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/nl/INetworkLocator;->requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 48
    return-void
.end method

.method public b(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isHDBluetoothLocation()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const/4 v1, -0x8

    .line 11
    invoke-virtual {p1, v1}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 14
    return v0

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    const-string v1, "-1"

    .line 19
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 29
    const-string v1, "3"

    .line 31
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getResubtype()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    const/16 v1, -0x9

    .line 43
    invoke-virtual {p1, v1}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 46
    const-string v1, "6"

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 56
    const-string v2, "loc_code"

    .line 58
    invoke-virtual {p1, v2, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return v0

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    return p1
.end method
