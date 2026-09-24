.class public Lcom/amap/location/fusion/a/c/a/d;
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
    const-string v1, "_wifi"

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
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->f:Ljava/lang/String;

    .line 29
    const-string v2, "age"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInWifiFence(Z)V

    .line 38
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlayOnline(Z)V

    .line 44
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setUseBluetooth(Z)V

    .line 50
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 52
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->e:I

    .line 54
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setWifiScanInterval(I)V

    .line 57
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 59
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->e:I

    .line 61
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setWifiConnectScanInterval(I)V

    .line 64
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 66
    iget v1, p0, Lcom/amap/location/fusion/a/c/a/a;->d:I

    .line 68
    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string v0, "-1"

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string v0, "3"

    .line 17
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getResubtype()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    const/16 v0, -0x9

    .line 29
    invoke-virtual {p1, v0}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 32
    const-string v0, "5"

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "loc_code"

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    return p1
.end method
