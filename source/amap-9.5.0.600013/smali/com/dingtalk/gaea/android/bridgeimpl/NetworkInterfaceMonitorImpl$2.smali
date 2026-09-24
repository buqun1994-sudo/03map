.class final Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$2;
.super Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->bindCellularNetwork(Landroid/content/Context;Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$2;->val$callback:Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;

    .line 3
    invoke-direct {p0, p1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;-><init>(Landroid/net/ConnectivityManager;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->onAvailable(Landroid/net/Network;)V

    .line 4
    iget-object v0, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$2;->val$callback:Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;->onCellularNetworkChanged(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "Network available e="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "gaea.bridge.monitor"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->onLost(Landroid/net/Network;)V

    .line 4
    iget-object p1, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$2;->val$callback:Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;->onCellularNetworkChanged(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "Network lost e="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "gaea.bridge.monitor"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 4
    iget-object v0, p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$2;->val$callback:Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl$OnCellularNetworkCallback;->onCellularNetworkChanged(Landroid/net/Network;)V

    .line 12
    :cond_0
    return-void
.end method
