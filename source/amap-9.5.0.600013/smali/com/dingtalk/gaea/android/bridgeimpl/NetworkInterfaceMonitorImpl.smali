.class public Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dingtalk/gaea/android/bridge/NetworkInterfaceMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "gaea.bridge.monitor"

.field private static networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private networkRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$1;-><init>(Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;)V

    .line 9
    iput-object v0, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->bindCellularNetworkInner(Landroid/content/Context;Z)V

    .line 4
    return-void
.end method

.method public static bindCellularNetwork(Landroid/content/Context;Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "connectivity"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    const-string v0, "gaea.bridge.monitor"

    .line 14
    if-nez p0, :cond_1

    .line 16
    const-string p0, "bindCellularNetwork get ConnectivityManager failed"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 24
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 31
    const/16 v2, 0xc

    .line 33
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 36
    :try_start_0
    sget-object v2, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 38
    if-nez v2, :cond_2

    .line 40
    new-instance v2, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$2;

    .line 42
    invoke-direct {v2, p0, p1}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$2;-><init>(Landroid/net/ConnectivityManager;Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;)V

    .line 45
    sput-object v2, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 47
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 50
    move-result-object p1

    .line 51
    sget-object v1, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 53
    invoke-virtual {p0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 56
    const-string p0, "bindCellularNetwork requestNetwork"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string p1, "bindCellularNetwork failed"

    .line 65
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_0
    return-void
.end method

.method private bindCellularNetworkInner(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkRequested:Z

    .line 5
    if-eqz v0, :cond_1

    .line 7
    :cond_0
    if-nez p2, :cond_2

    .line 9
    iget-boolean p2, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkRequested:Z

    .line 11
    if-eqz p2, :cond_2

    .line 13
    :cond_1
    return-void

    .line 14
    :cond_2
    const/4 p2, 0x0

    .line 15
    invoke-static {p1, p2}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->bindCellularNetwork(Landroid/content/Context;Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;)V

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkRequested:Z

    .line 21
    return-void
.end method

.method public static unbindCellularNetwork(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    sget-object v0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 21
    const/4 p0, 0x0

    .line 22
    sput-object p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v0, "gaea.bridge.monitor"

    .line 28
    const-string v1, "unbindCellularNetwork failed"

    .line 30
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method private unbindCellularNetworkInner(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkRequested:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->unbindCellularNetwork(Landroid/content/Context;)V

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->networkRequested:Z

    .line 12
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/dingtalk/gaea/android/bridge/base/AndroidUtils;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->bindCellularNetworkInner(Landroid/content/Context;Z)V

    .line 12
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 14
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 16
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const-string v0, "gaea.bridge.monitor"

    .line 27
    const-string v1, "register for network change exp"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dingtalk/gaea/android/bridge/base/AndroidUtils;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->unbindCellularNetworkInner(Landroid/content/Context;)V

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string v0, "gaea.bridge.monitor"

    .line 19
    const-string v1, "unregister for network change exp"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void
.end method
