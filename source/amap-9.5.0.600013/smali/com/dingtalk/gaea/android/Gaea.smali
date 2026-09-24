.class public Lcom/dingtalk/gaea/android/Gaea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GaeaBridge"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "load gaea bridge library failure ."

    .line 3
    const-string v1, "load gaea library failure ."

    .line 5
    const-string v2, "gaea.bridge"

    .line 7
    :try_start_0
    const-string v3, "gaea"

    .line 9
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    :try_start_1
    const-string v1, "gaea_bridge"

    .line 22
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    goto :goto_1

    .line 26
    :catchall_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_1

    .line 30
    :catch_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "GaeaBridge"

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/dingtalk/bifrost/Bifrost;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v1

    .line 8
    const-string v2, "Bifrost init failed"

    .line 10
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/dingtalk/gaea/android/bridge/base/AndroidUtils;->setContext(Landroid/content/Context;)V

    .line 16
    new-instance p0, Lcom/dingtalk/gaea/android/bridgeimpl/SystemInfoImpl;

    .line 18
    invoke-direct {p0}, Lcom/dingtalk/gaea/android/bridgeimpl/SystemInfoImpl;-><init>()V

    .line 21
    invoke-static {}, Lcom/dingtalk/gaea/android/bridge/SystemInfoManager;->sharedManager()Lcom/dingtalk/gaea/android/bridge/SystemInfoManager;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p0}, Lcom/dingtalk/gaea/android/bridge/SystemInfoManager;->setSystemInfoProvider(Lcom/dingtalk/gaea/android/bridge/SystemInfo;)V

    .line 28
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->getInstance()Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->init()V

    .line 35
    new-instance p0, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;

    .line 37
    invoke-direct {p0}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;-><init>()V

    .line 40
    invoke-static {}, Lcom/dingtalk/gaea/android/bridge/NetworkInterfaceMonitorManager;->sharedManager()Lcom/dingtalk/gaea/android/bridge/NetworkInterfaceMonitorManager;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, p0}, Lcom/dingtalk/gaea/android/bridge/NetworkInterfaceMonitorManager;->setNetworkInterfaceMonitorProvider(Lcom/dingtalk/gaea/android/bridge/NetworkInterfaceMonitor;)V

    .line 47
    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridgeimpl/NetworkInterfaceMonitorImpl;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string v1, "Initialize failed"

    .line 54
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_1
    return-void
.end method

.method public static setSwitchProvider(Lcom/dingtalk/bifrost/BifrostSwitchProvider;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/dingtalk/bifrost/Bifrost;->setSwitchProvider(Lcom/dingtalk/bifrost/BifrostSwitchProvider;)V

    .line 4
    return-void
.end method
