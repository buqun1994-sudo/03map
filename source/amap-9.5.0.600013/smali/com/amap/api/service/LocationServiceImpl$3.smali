.class Lcom/amap/api/service/LocationServiceImpl$3;
.super Lcom/amap/location/support/nl/NetworkLocationListener;
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


# direct methods
.method public constructor <init>(Lcom/amap/api/service/LocationServiceImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/LocationServiceImpl$3;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/nl/NetworkLocationListener;-><init>(I)V

    .line 6
    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, " drive:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl$3;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 19
    invoke-static {v1}, Lcom/amap/api/service/LocationServiceImpl;->e(Lcom/amap/api/service/LocationServiceImpl;)Z

    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "hasgcj"

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1, v1, v2}, Lcom/amap/location/type/location/Location;->getOptAttrBoolean(Ljava/lang/String;Z)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    const-string v1, " gcjlat:"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "gcjlat"

    .line 42
    const-wide/16 v2, 0x0

    .line 44
    invoke-virtual {p1, v1, v2, v3}, Lcom/amap/location/type/location/Location;->getOptAttrDouble(Ljava/lang/String;D)D

    .line 47
    move-result-wide v4

    .line 48
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " gcjlng:"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "gcjlng"

    .line 58
    invoke-virtual {p1, v1, v2, v3}, Lcom/amap/location/type/location/Location;->getOptAttrDouble(Ljava/lang/String;D)D

    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_1
    const-string p1, ""

    .line 72
    return-object p1
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 2

    .line 1
    const-string p2, "mainservice"

    .line 3
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "sdkrc"

    .line 18
    invoke-virtual {v0, v1}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/amap/location/support/util/IOUtils;->objToBytes(Ljava/lang/Object;)[B

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/amap/api/service/LocationServiceImpl$3;->a:Lcom/amap/api/service/LocationServiceImpl;

    .line 27
    invoke-static {v1}, Lcom/amap/api/service/LocationServiceImpl;->d(Lcom/amap/api/service/LocationServiceImpl;)Lcom/amap/location/sdk/fusion/ILocationCallback;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v0}, Lcom/amap/location/sdk/fusion/ILocationCallback;->a([B)V

    .line 34
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/amap/location/support/log/StartTimeConsumingLog;->setLocation(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v1, "network callback:"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p0, p1}, Lcom/amap/api/service/LocationServiceImpl$3;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_1
    :goto_0
    return-void
.end method
