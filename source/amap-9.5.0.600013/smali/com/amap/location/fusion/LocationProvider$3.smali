.class Lcom/amap/location/fusion/LocationProvider$3;
.super Lcom/amap/location/fusion/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/LocationProvider;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/LocationProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/fusion/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p1, "locprovider"

    .line 9
    const-string v0, "outdoor loc is null"

    .line 11
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isMainChannelLocation(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcom/amap/location/fusion/util/d;->a()Lcom/amap/location/fusion/util/d;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Lcom/amap/location/fusion/util/d;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 28
    iget-object v1, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 30
    invoke-static {v1, p1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 35
    invoke-static {v1, p1}, Lcom/amap/location/fusion/LocationProvider;->b(Lcom/amap/location/fusion/LocationProvider;Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 38
    if-eqz p1, :cond_3

    .line 40
    const-string v1, "gps"

    .line 42
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 52
    const-string v1, "network"

    .line 54
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 64
    const-string v1, "indoor"

    .line 66
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 80
    invoke-static {v0, p1}, Lcom/amap/location/fusion/LocationProvider;->c(Lcom/amap/location/fusion/LocationProvider;Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 83
    invoke-static {}, Lcom/amap/location/fusion/util/g;->a()Lcom/amap/location/fusion/util/g;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/util/g;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 90
    iget-object p1, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 92
    invoke-static {p1}, Lcom/amap/location/fusion/LocationProvider;->g(Lcom/amap/location/fusion/LocationProvider;)Z

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 100
    invoke-static {p1}, Lcom/amap/location/fusion/LocationProvider;->f(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/support/handler/AmapHandler;

    .line 103
    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 106
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->h(Lcom/amap/location/fusion/LocationProvider;)Ljava/lang/Runnable;

    .line 109
    move-result-object v0

    .line 110
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object p1, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 115
    invoke-static {p1}, Lcom/amap/location/fusion/LocationProvider;->f(Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/support/handler/AmapHandler;

    .line 118
    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 121
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->h(Lcom/amap/location/fusion/LocationProvider;)Ljava/lang/Runnable;

    .line 124
    move-result-object v0

    .line 125
    const-wide/16 v1, 0x4e20

    .line 127
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    invoke-static {v0, p1}, Lcom/amap/location/fusion/LocationProvider;->b(Lcom/amap/location/fusion/LocationProvider;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v1, "provider disable:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 26
    move-result-object p1

    .line 27
    const v0, 0x1ae42

    .line 30
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 33
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    invoke-static {v0, p1}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v1, "provider enable:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 26
    move-result-object p1

    .line 27
    const v0, 0x1ae41

    .line 30
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 33
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/LocationProvider$3;->a:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/amap/location/fusion/LocationProvider;->a(Lcom/amap/location/fusion/LocationProvider;Ljava/lang/String;I)V

    .line 6
    return-void
.end method
