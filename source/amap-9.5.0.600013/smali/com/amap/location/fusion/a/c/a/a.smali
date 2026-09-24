.class public abstract Lcom/amap/location/fusion/a/c/a/a;
.super Lcom/amap/location/support/location/AbstractLocator;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected final b:I

.field protected final c:I

.field protected final d:I

.field protected final e:I

.field protected final f:Ljava/lang/String;

.field protected g:Lcom/amap/location/support/nl/NetworkLocationListener;

.field private h:Lcom/amap/location/support/app/MessageCenterListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/location/AbstractLocator;-><init>()V

    .line 4
    const-string v0, "amap_indoor"

    .line 6
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/amap/location/fusion/a/c/a/a$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/a/c/a/a$1;-><init>(Lcom/amap/location/fusion/a/c/a/a;)V

    .line 13
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->h:Lcom/amap/location/support/app/MessageCenterListener;

    .line 15
    new-instance v0, Lcom/amap/location/fusion/a/c/a/a$2;

    .line 17
    const/16 v1, 0x400

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/amap/location/fusion/a/c/a/a$2;-><init>(Lcom/amap/location/fusion/a/c/a/a;I)V

    .line 22
    iput-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 24
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lorg/json/JSONObject;

    .line 30
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v2, "indoorconfig"

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "bl_navi_ter"

    .line 41
    const/16 v2, 0x190

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lcom/amap/location/fusion/a/c/a/a;->b:I

    .line 49
    const-string v1, "bl_unna_ter"

    .line 51
    const/16 v2, 0x320

    .line 53
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 56
    move-result v1

    .line 57
    iput v1, p0, Lcom/amap/location/fusion/a/c/a/a;->c:I

    .line 59
    const-string v1, "wi_req_ter"

    .line 61
    const/16 v2, 0x3e8

    .line 63
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 66
    move-result v1

    .line 67
    iput v1, p0, Lcom/amap/location/fusion/a/c/a/a;->d:I

    .line 69
    const-string v1, "wi_scan_ter"

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 74
    move-result v1

    .line 75
    iput v1, p0, Lcom/amap/location/fusion/a/c/a/a;->e:I

    .line 77
    const-string v1, "wifi_sort_str"

    .line 79
    const-string v2, "rssi"

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->f:Ljava/lang/String;

    .line 87
    const-string v1, "wifi_window"

    .line 89
    const/4 v2, 0x5

    .line 90
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 93
    move-result v0

    .line 94
    sput v0, Lcom/amap/location/protocol/b/a;->t:I

    .line 96
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/location/fusion/a/c/a/a;->b(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-direct {v0, p1}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Lcom/amap/location/support/bean/location/AmapLocation;)V

    const-string p1, "indoor"

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/amap/location/support/coord/OffsetVersion3;->wgs84ToGcj02(DD)[D

    move-result-object p1

    const-string v1, "hasgcj"

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 6
    aget-wide v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "gcjlat"

    invoke-virtual {v0, v2, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 7
    aget-wide v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "gcjlng"

    invoke-virtual {v0, v1, p1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->getIodStay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "iodStay"

    .line 9
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->getIodStay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/location/support/location/AbstractLocator;->report(Lcom/amap/location/support/bean/location/AmapLocation;)V

    const p1, 0x1876f

    .line 11
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    const p1, 0x18efc

    .line 12
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_0

    :cond_1
    const p1, 0x18efd

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    :goto_0
    return-void
.end method

.method public abstract b(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->hasStart()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public startLocation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->a:Ljava/lang/String;

    .line 3
    const-string v1, "req amap indoor"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->h:Lcom/amap/location/support/app/MessageCenterListener;

    .line 10
    invoke-static {v0}, Lcom/amap/location/support/app/MessageCenter;->addStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/nl/INetworkLocator;->requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 27
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->a:Ljava/lang/String;

    .line 3
    const-string v1, "remove amap indoor"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/a/a;->h:Lcom/amap/location/support/app/MessageCenterListener;

    .line 10
    invoke-static {v0}, Lcom/amap/location/support/app/MessageCenter;->removeStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/a/a;->g:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 19
    invoke-interface {v0, v1}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    .line 22
    return-void
.end method
