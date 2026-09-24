.class Lcom/amap/api/service/LocationServiceImpl$6;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/service/LocationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/service/LocationServiceImpl;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>(Ljava/lang/String;)V

    .line 6
    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcom/amap/api/service/LocationServiceImpl$6;->b:J

    .line 10
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/amap/api/service/LocationServiceImpl$6;->b:J

    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x2710

    .line 12
    cmp-long v4, v0, v2

    .line 14
    if-lez v4, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/amap/api/service/LocationServiceImpl$6;->b:J

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v1, "subloc:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, " drive:"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 46
    invoke-static {v1}, Lcom/amap/api/service/LocationServiceImpl;->e(Lcom/amap/api/service/LocationServiceImpl;)Z

    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, " app:"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 60
    invoke-static {v1}, Lcom/amap/api/service/LocationServiceImpl;->g(Lcom/amap/api/service/LocationServiceImpl;)I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    const-string v1, "mainservice"

    .line 73
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 80
    invoke-static {v0}, Lcom/amap/api/service/LocationServiceImpl;->h(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/sdk/f/a/c;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/f/a/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 89
    invoke-static {v0, p1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/api/service/LocationServiceImpl;Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 92
    if-eqz p1, :cond_3

    .line 94
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->setLastLocation(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 97
    const-string v0, "gps"

    .line 99
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_2

    .line 109
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->setLastLocationGnss(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 112
    :cond_2
    invoke-static {}, Lcom/amap/location/sdk/f/a;->a()Lcom/amap/location/sdk/f/a;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/f/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 119
    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    invoke-static {v0, p1}, Lcom/amap/api/service/LocationServiceImpl;->b(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;)Z

    .line 6
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    invoke-static {v0, p1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;)Z

    .line 6
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/LocationServiceImpl$6;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/api/service/LocationServiceImpl;Ljava/lang/String;I)Z

    .line 6
    return-void
.end method
