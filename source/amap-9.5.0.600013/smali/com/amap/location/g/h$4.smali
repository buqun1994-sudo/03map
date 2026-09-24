.class Lcom/amap/location/g/h$4;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/h;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/h$4;->a:Lcom/amap/location/g/h;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 3
    const-string v0, "gps"

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x300

    .line 21
    if-eq v0, v1, :cond_3

    .line 23
    invoke-static {}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->getGnssBlockState()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationDim()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/amap/location/g/h$4;->a:Lcom/amap/location/g/h;

    .line 53
    invoke-static {v0}, Lcom/amap/location/g/h;->s(Lcom/amap/location/g/h;)Lcom/amap/location/g/a/a;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/amap/location/g/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 60
    iget-object v0, p0, Lcom/amap/location/g/h$4;->a:Lcom/amap/location/g/h;

    .line 62
    invoke-static {v0, p1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 65
    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
