.class public Lpy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String; = "py"

.field public static l:Lpy;


# instance fields
.field public a:Landroid/net/wifi/WifiManager;

.field public b:Landroid/location/LocationManager;

.field public c:Landroid/telephony/TelephonyManager;

.field public d:Landroid/net/ConnectivityManager;

.field public e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

.field public f:Landroid/content/Context;

.field public g:Landroid/content/BroadcastReceiver;

.field public h:Landroid/location/LocationListener;

.field public i:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

.field public j:Lcom/amap/location/support/signal/gnss/AmapNmeaListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpy;

    .line 3
    invoke-direct {v0}, Lpy;-><init>()V

    .line 6
    sput-object v0, Lpy;->l:Lpy;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lpy$a;

    .line 6
    invoke-direct {v0, p0}, Lpy$a;-><init>(Lpy;)V

    .line 9
    iput-object v0, p0, Lpy;->g:Landroid/content/BroadcastReceiver;

    .line 11
    new-instance v0, Lpy$b;

    .line 13
    invoke-direct {v0, p0}, Lpy$b;-><init>(Lpy;)V

    .line 16
    iput-object v0, p0, Lpy;->h:Landroid/location/LocationListener;

    .line 18
    new-instance v0, Lpy$c;

    .line 20
    invoke-direct {v0, p0}, Lpy$c;-><init>(Lpy;)V

    .line 23
    iput-object v0, p0, Lpy;->i:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 25
    new-instance v0, Lpy$d;

    .line 27
    invoke-direct {v0, p0}, Lpy$d;-><init>(Lpy;)V

    .line 30
    iput-object v0, p0, Lpy;->j:Lcom/amap/location/support/signal/gnss/AmapNmeaListener;

    .line 32
    invoke-static {}, Lrv;->H()Lrv;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lpy;->f:Landroid/content/Context;

    .line 42
    const-string v1, "wifi"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 50
    iput-object v0, p0, Lpy;->a:Landroid/net/wifi/WifiManager;

    .line 52
    iget-object v0, p0, Lpy;->f:Landroid/content/Context;

    .line 54
    const-string v1, "location"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/location/LocationManager;

    .line 62
    iput-object v0, p0, Lpy;->b:Landroid/location/LocationManager;

    .line 64
    iget-object v0, p0, Lpy;->f:Landroid/content/Context;

    .line 66
    const-string v1, "phone"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 74
    iput-object v0, p0, Lpy;->c:Landroid/telephony/TelephonyManager;

    .line 76
    iget-object v0, p0, Lpy;->f:Landroid/content/Context;

    .line 78
    const-string v1, "connectivity"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    iput-object v0, p0, Lpy;->d:Landroid/net/ConnectivityManager;

    .line 88
    invoke-static {}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->getInstance()Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lpy;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 94
    return-void
.end method

.method public static synthetic a(Lpy;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lpy;->a:Landroid/net/wifi/WifiManager;

    .line 3
    return-object p0
.end method

.method public static c()Lpy;
    .locals 1

    .line 1
    sget-object v0, Lpy;->l:Lpy;

    .line 3
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Ltg;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    sget-object v3, Lpy;->k:Ljava/lang/String;

    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    aput-object p1, v4, v2

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v4, v1

    .line 33
    const-string p1, "checkPermission,permission:{?},hasPermission:{?}"

    .line 35
    invoke-static {v3, p1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return v0
.end method

.method public d()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lpy;->f:Landroid/content/Context;

    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v2, v2, [Ljava/lang/String;

    .line 7
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 9
    aput-object v3, v2, v0

    .line 11
    invoke-static {v1, v2}, Lu50;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    sget-object v1, Lpy;->k:Ljava/lang/String;

    .line 18
    const-string v2, "hasLocPermission exception!"

    .line 20
    new-array v3, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpy;->h()I

    .line 4
    invoke-virtual {p0}, Lpy;->o()V

    .line 7
    invoke-virtual {p0}, Lpy;->r()V

    .line 10
    invoke-virtual {p0}, Lpy;->f()I

    .line 13
    const/4 v0, 0x5

    .line 14
    invoke-virtual {p0}, Lpy;->d()I

    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 21
    invoke-virtual {p0}, Lpy;->n()I

    .line 24
    return-void
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lpy;->f:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "airplane_mode_on"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lpy;->b:Landroid/location/LocationManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lpy;->i()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public h()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpy;->i()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lpy;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 11
    if-nez v0, :cond_1

    .line 13
    return v1

    .line 14
    :cond_1
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->isProviderEnabled(I)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lpy;->b:Landroid/location/LocationManager;

    .line 3
    const-string v1, "gps"

    .line 5
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public j()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "location_mode"

    .line 16
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 19
    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_0
    return v0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    return v0
.end method

.method public k()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lpy;->c:Landroid/telephony/TelephonyManager;

    .line 4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/telephony/CellInfo;

    .line 26
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 29
    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz v2, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    sget-object v1, Lpy;->k:Ljava/lang/String;

    .line 36
    const-string v2, "SecurityException"

    .line 38
    new-array v3, v0, [Ljava/lang/Object;

    .line 40
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_1
    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lpy;->b:Landroid/location/LocationManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lpy;->m()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lpy;->b:Landroid/location/LocationManager;

    .line 3
    const-string v1, "network"

    .line 5
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget-object v0, p0, Lpy;->a:Landroid/net/wifi/WifiManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 6
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 8
    invoke-virtual {p0, v0}, Lpy;->b(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lpy;->a:Landroid/net/wifi/WifiManager;

    .line 17
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 20
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public o()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lpy;->i()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lpy;->m()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x7

    .line 10
    invoke-static {v2, v0}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 13
    const/4 v2, 0x6

    .line 14
    invoke-static {v2, v1}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 17
    sget-object v2, Lpy;->k:Ljava/lang/String;

    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v0

    .line 27
    aput-object v0, v3, v4

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object v1

    .line 34
    aput-object v1, v3, v0

    .line 36
    const-string v0, "isGPS={?},isNetworkLoc={?}"

    .line 38
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public p()V
    .locals 10

    .line 1
    sget-object v0, Lpy;->k:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "startMonitor"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v2, Landroid/content/IntentFilter;

    .line 13
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v3, "android.location.PROVIDERS_CHANGED"

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 33
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lrv;->H()Lrv;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lrv;->y()Landroid/app/Application;

    .line 48
    move-result-object v3

    .line 49
    iget-object v4, p0, Lpy;->g:Landroid/content/BroadcastReceiver;

    .line 51
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    iget-object v2, p0, Lpy;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 56
    iget-object v3, p0, Lpy;->i:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2, v3, v4}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->registerSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;Landroid/os/Looper;)Z

    .line 65
    iget-object v2, p0, Lpy;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 67
    iget-object v3, p0, Lpy;->j:Lcom/amap/location/support/signal/gnss/AmapNmeaListener;

    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v2, v3, v4}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->addNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;Landroid/os/Looper;)Z

    .line 76
    invoke-virtual {p0}, Lpy;->i()Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 82
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 84
    invoke-virtual {p0, v2}, Lpy;->b(Ljava/lang/String;)Z

    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 90
    :try_start_0
    iget-object v3, p0, Lpy;->b:Landroid/location/LocationManager;

    .line 92
    const-string v4, "gps"

    .line 94
    const-wide/16 v5, 0x3e8

    .line 96
    const/4 v7, 0x0

    .line 97
    iget-object v8, p0, Lpy;->h:Landroid/location/LocationListener;

    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 102
    move-result-object v9

    .line 103
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 106
    const-string v2, "mLocationManager.requestLocationUpdates"

    .line 108
    new-array v3, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    sget-object v0, Lpy;->k:Ljava/lang/String;

    .line 120
    const-string v2, "mLocationManager.requestLocationUpdates Exception"

    .line 122
    new-array v3, v1, [Ljava/lang/Object;

    .line 124
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    :goto_0
    sget-object v0, Lpy;->k:Ljava/lang/String;

    .line 129
    const/4 v2, 0x1

    .line 130
    new-array v3, v2, [Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lpy;->i()Z

    .line 135
    move-result v4

    .line 136
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    move-result-object v4

    .line 140
    aput-object v4, v3, v1

    .line 142
    const-string v4, "isProviderEnabled(LocationManagerProxy.AN_LOCATION_GPS)={?}"

    .line 144
    invoke-static {v0, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-array v2, v2, [Ljava/lang/Object;

    .line 149
    invoke-virtual {p0}, Lpy;->m()Z

    .line 152
    move-result v3

    .line 153
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    move-result-object v3

    .line 157
    aput-object v3, v2, v1

    .line 159
    const-string v3, "isProviderEnabled(LocationManagerProxy.AN_LOCATION_NETWORK)={?}"

    .line 161
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lpy;->h()I

    .line 167
    move-result v0

    .line 168
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 171
    invoke-virtual {p0}, Lpy;->e()V

    .line 174
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lpy;->g:Landroid/content/BroadcastReceiver;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    :try_start_0
    iget-object v0, p0, Lpy;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 16
    iget-object v1, p0, Lpy;->i:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 18
    invoke-virtual {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->unregisterSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;)Z

    .line 21
    iget-object v0, p0, Lpy;->e:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 23
    iget-object v1, p0, Lpy;->j:Lcom/amap/location/support/signal/gnss/AmapNmeaListener;

    .line 25
    invoke-virtual {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->removeNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;)Z

    .line 28
    iget-object v0, p0, Lpy;->b:Landroid/location/LocationManager;

    .line 30
    iget-object v1, p0, Lpy;->h:Landroid/location/LocationListener;

    .line 32
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    sget-object v0, Lpy;->k:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    const-string v2, "mLocationManager.removeUpdates Exception"

    .line 47
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void
.end method

.method public r()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2, v1}, Lpa;->m(Landroid/content/Context;I)Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    const/4 v4, 0x4

    .line 17
    if-eqz v2, :cond_0

    .line 19
    invoke-static {v4, v1}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 22
    invoke-static {v3, v0}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, v0}, Lpa;->m(Landroid/content/Context;I)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 40
    invoke-static {v4, v0}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 43
    invoke-static {v3, v1}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    sget-object v3, Lpy;->k:Ljava/lang/String;

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    aput-object v2, v1, v0

    .line 58
    const-string v0, "updateConnectInfo\uff0cException={?}"

    .line 60
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_1
    :goto_0
    return-void
.end method
