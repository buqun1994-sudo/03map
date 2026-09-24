.class public Lcom/amap/location/signal/impl/util/SystemServerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemServerHelper"

.field private static volatile sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static volatile sLocaitionManager:Landroid/location/LocationManager;

.field private static volatile sPackageManager:Landroid/content/pm/PackageManager;

.field private static volatile sPowerManager:Landroid/os/PowerManager;

.field private static volatile sSensorManager:Landroid/hardware/SensorManager;

.field private static volatile sTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static volatile sWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "connectivity"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 30
    sput-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 39
    if-nez v0, :cond_2

    .line 41
    const-string v0, "SystemServerHelper"

    .line 43
    const-string v1, "get null connectivity manager"

    .line 45
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 50
    return-object v0
.end method

.method public static getLocaitionManager()Landroid/location/LocationManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sLocaitionManager:Landroid/location/LocationManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sLocaitionManager:Landroid/location/LocationManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "location"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/location/LocationManager;

    .line 30
    sput-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sLocaitionManager:Landroid/location/LocationManager;

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sLocaitionManager:Landroid/location/LocationManager;

    .line 39
    if-nez v0, :cond_2

    .line 41
    const-string v0, "SystemServerHelper"

    .line 43
    const-string v1, "get null location manager"

    .line 45
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sLocaitionManager:Landroid/location/LocationManager;

    .line 50
    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v1

    .line 26
    sput-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 35
    if-nez v0, :cond_2

    .line 37
    const-string v0, "SystemServerHelper"

    .line 39
    const-string v1, "get null package manager"

    .line 41
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 46
    return-object v0
.end method

.method public static getPowerManager()Landroid/os/PowerManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPowerManager:Landroid/os/PowerManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPowerManager:Landroid/os/PowerManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "power"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/os/PowerManager;

    .line 30
    sput-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPowerManager:Landroid/os/PowerManager;

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPowerManager:Landroid/os/PowerManager;

    .line 39
    if-nez v0, :cond_2

    .line 41
    const-string v0, "SystemServerHelper"

    .line 43
    const-string v1, "get null power manager"

    .line 45
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sPowerManager:Landroid/os/PowerManager;

    .line 50
    return-object v0
.end method

.method public static getSensorManager()Landroid/hardware/SensorManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sSensorManager:Landroid/hardware/SensorManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sSensorManager:Landroid/hardware/SensorManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "sensor"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/hardware/SensorManager;

    .line 30
    sput-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sSensorManager:Landroid/hardware/SensorManager;

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sSensorManager:Landroid/hardware/SensorManager;

    .line 39
    if-nez v0, :cond_2

    .line 41
    const-string v0, "SystemServerHelper"

    .line 43
    const-string v1, "get null sensor manager"

    .line 45
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sSensorManager:Landroid/hardware/SensorManager;

    .line 50
    return-object v0
.end method

.method public static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "phone"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 30
    sput-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 39
    if-nez v0, :cond_2

    .line 41
    const-string v0, "SystemServerHelper"

    .line 43
    const-string v1, "get null phone manager"

    .line 45
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    return-object v0
.end method

.method public static getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sWifiManager:Landroid/net/wifi/WifiManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "wifi"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 30
    sput-object v1, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sWifiManager:Landroid/net/wifi/WifiManager;

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    if-nez v0, :cond_2

    .line 41
    const-string v0, "SystemServerHelper"

    .line 43
    const-string v1, "get null wifi manager"

    .line 45
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    sget-object v0, Lcom/amap/location/signal/impl/util/SystemServerHelper;->sWifiManager:Landroid/net/wifi/WifiManager;

    .line 50
    return-object v0
.end method
