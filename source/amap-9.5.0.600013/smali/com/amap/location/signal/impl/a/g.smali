.class public Lcom/amap/location/signal/impl/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/wifi/IWifiManager;


# instance fields
.field private a:Lcom/amap/location/support/signal/wifi/AmapWifiListener;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/signal/impl/a/g$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/amap/location/signal/impl/a/g$1;-><init>(Lcom/amap/location/signal/impl/a/g;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/g;->b:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/g;)Lcom/amap/location/support/signal/wifi/AmapWifiListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/g;->a:Lcom/amap/location/support/signal/wifi/AmapWifiListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public addWifiChangedListener(Lcom/amap/location/support/signal/wifi/AmapWifiListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/g;->a:Lcom/amap/location/support/signal/wifi/AmapWifiListener;

    .line 3
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const/16 p2, 0x22

    .line 7
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 9
    if-lt p1, p2, :cond_0

    .line 11
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/content/Context;

    .line 17
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/g;->b:Landroid/content/BroadcastReceiver;

    .line 19
    new-instance v1, Landroid/content/IntentFilter;

    .line 21
    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-static {p1, p2, v1, v0}, Ler0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/content/Context;

    .line 35
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/g;->b:Landroid/content/BroadcastReceiver;

    .line 37
    new-instance v1, Landroid/content/IntentFilter;

    .line 39
    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_0
    const/4 p1, 0x1

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    const-string p2, "syswifiprd"

    .line 50
    const-string v0, ""

    .line 52
    invoke-static {p2, v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    const/4 p1, 0x0

    .line 56
    :goto_1
    return p1
.end method

.method public enableWifiAlwaysScan()Z
    .locals 11

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    const-class v1, Landroid/content/ContentResolver;

    .line 5
    const-string v2, "wifi_scan_always_enabled"

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Landroid/content/Context;

    .line 14
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v4

    .line 18
    const-string v5, "android.provider.Settings$Global"

    .line 20
    const/4 v6, 0x2

    .line 21
    new-array v7, v6, [Ljava/lang/Object;

    .line 23
    aput-object v4, v7, v3

    .line 25
    const/4 v8, 0x1

    .line 26
    aput-object v2, v7, v8

    .line 28
    new-array v9, v6, [Ljava/lang/Class;

    .line 30
    aput-object v1, v9, v3

    .line 32
    aput-object v0, v9, v8

    .line 34
    const-string v10, "getInt"

    .line 36
    invoke-static {v5, v10, v7, v9}, Lcom/amap/location/support/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_0

    .line 48
    const/4 v7, 0x3

    .line 49
    new-array v9, v7, [Ljava/lang/Object;

    .line 51
    aput-object v4, v9, v3

    .line 53
    aput-object v2, v9, v8

    .line 55
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    aput-object v2, v9, v6

    .line 61
    new-array v2, v7, [Ljava/lang/Class;

    .line 63
    aput-object v1, v2, v3

    .line 65
    aput-object v0, v2, v8

    .line 67
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    aput-object v0, v2, v6

    .line 71
    const-string v0, "putInt"

    .line 73
    invoke-static {v5, v0, v9, v2}, Lcom/amap/location/support/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-eqz v0, :cond_0

    .line 85
    return v8

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    return v3
.end method

.method public getConnectionInfo()Lcom/amap/location/support/bean/wifi/AmapWifi;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/d;->a(Landroid/net/wifi/WifiInfo;)Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "syswifiprd"

    .line 17
    const-string v2, ""

    .line 19
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getConnectionMacAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDhcpInfo()Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;

    .line 13
    invoke-direct {v1}, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;-><init>()V

    .line 16
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 18
    iput v2, v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;->ipAddress:I

    .line 20
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 22
    iput v2, v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;->gateway:I

    .line 24
    iget v2, v0, Landroid/net/DhcpInfo;->netmask:I

    .line 26
    iput v2, v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;->netmask:I

    .line 28
    iget v2, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 30
    iput v2, v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;->dns1:I

    .line 32
    iget v2, v0, Landroid/net/DhcpInfo;->dns2:I

    .line 34
    iput v2, v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;->dns2:I

    .line 36
    iget v2, v0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 38
    iput v2, v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;->serverAddress:I

    .line 40
    iget v0, v0, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 42
    iput v0, v1, Lcom/amap/location/support/bean/wifi/AmapDhcpInfo;->leaseDuration:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "syswifiprd"

    .line 48
    const-string v2, ""

    .line 50
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/wifi/AmapWifi;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "syswifiprd"

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string v0, "getScanResults: no loc permission"

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v1, v0, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    return-object v0

    .line 23
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v2

    .line 27
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    move-result-wide v4

    .line 39
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/d;->a(Ljava/util/List;)Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    move-result-wide v6

    .line 47
    sub-long v2, v4, v2

    .line 49
    const-wide/16 v8, 0x12c

    .line 51
    cmp-long v10, v2, v8

    .line 53
    if-lez v10, :cond_1

    .line 55
    const v2, 0x1ae51

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const v2, 0x1ae52

    .line 62
    :goto_0
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 65
    sub-long/2addr v6, v4

    .line 66
    const-wide/16 v2, 0x64

    .line 68
    cmp-long v4, v6, v2

    .line 70
    if-lez v4, :cond_2

    .line 72
    const v2, 0x1ae53

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const v2, 0x1ae54

    .line 79
    :goto_1
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v2, ""

    .line 86
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    const/4 v0, 0x0

    .line 90
    return-object v0
.end method

.method public getWifiStandard()I
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-static {v0}, Lxw0;->a(Landroid/net/wifi/WifiInfo;)I

    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "syswifiprd"

    .line 25
    const-string v2, ""

    .line 27
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const-string v1, "syswifiprd"

    .line 13
    const-string v2, ""

    .line 15
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public isWifiEnabled()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const-string v1, "syswifiprd"

    .line 13
    const-string v2, ""

    .line 15
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public removeWifiChangedListener(Lcom/amap/location/support/signal/wifi/AmapWifiListener;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/g;->b:Landroid/content/BroadcastReceiver;

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    const-string v0, "syswifiprd"

    .line 16
    const-string v1, ""

    .line 18
    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_0
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public startScan()Z
    .locals 4

    .line 1
    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "syswifiprd"

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string v0, "startScan: no loc permission"

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-static {v2, v0, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    return v1

    .line 19
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v3, ""

    .line 31
    invoke-static {v2, v3, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return v1
.end method
