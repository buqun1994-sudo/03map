.class public Lcom/dingtalk/mars/comm/PlatformComm$C2Java;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dingtalk/mars/comm/PlatformComm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C2Java"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurRadioAccessNetworkInfo()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 12
    :cond_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 14
    if-nez v1, :cond_1

    .line 16
    return v0

    .line 17
    :cond_1
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwitchProvider()Lcom/dingtalk/bifrost/BifrostSwitchProvider;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwitchProvider()Lcom/dingtalk/bifrost/BifrostSwitchProvider;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "radio_access_net"

    .line 29
    invoke-interface {v1, v2, v0}, Lcom/dingtalk/bifrost/BifrostSwitchProvider;->isSwitchEnable(Ljava/lang/String;Z)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 35
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 37
    invoke-static {v1}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getNetWorkSubType(Landroid/content/Context;)I

    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_2

    .line 43
    return v1

    .line 44
    :cond_2
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 46
    const-string v2, "phone"

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 57
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    return v0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    const-string v2, "bifrost.PlatformComm"

    .line 62
    invoke-static {v2, v1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return v0
.end method

.method public static getCurSIMInfo()Lcom/dingtalk/mars/comm/PlatformComm$SIMInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 12
    :cond_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 14
    if-nez v1, :cond_1

    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-static {v1}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getISPCode(Landroid/content/Context;)I

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 23
    return-object v0

    .line 24
    :cond_2
    new-instance v2, Lcom/dingtalk/mars/comm/PlatformComm$SIMInfo;

    .line 26
    invoke-direct {v2}, Lcom/dingtalk/mars/comm/PlatformComm$SIMInfo;-><init>()V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v4, ""

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v2, Lcom/dingtalk/mars/comm/PlatformComm$SIMInfo;->ispCode:Ljava/lang/String;

    .line 48
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 50
    invoke-static {v1}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getISPName(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v2, Lcom/dingtalk/mars/comm/PlatformComm$SIMInfo;->ispName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    return-object v2

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    const-string v2, "bifrost.PlatformComm"

    .line 60
    invoke-static {v2, v1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-object v0
.end method

.method public static getNetInfo()I
    .locals 7

    .line 1
    const-string v0, "bifrost.PlatformComm"

    .line 3
    const/4 v1, 0x3

    .line 4
    :try_start_0
    sget-object v2, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 6
    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 12
    sput-object v2, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 14
    :cond_0
    sget-object v2, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 16
    const-string v3, "connectivity"

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 24
    const/4 v3, -0x1

    .line 25
    if-nez v2, :cond_1

    .line 27
    return v3

    .line 28
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_2

    .line 34
    return v3

    .line 35
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x2

    .line 40
    if-eqz v3, :cond_7

    .line 42
    const/4 v5, 0x1

    .line 43
    if-eq v3, v5, :cond_6

    .line 45
    if-eq v3, v4, :cond_7

    .line 47
    if-eq v3, v1, :cond_7

    .line 49
    const/4 v5, 0x4

    .line 50
    if-eq v3, v5, :cond_7

    .line 52
    const/4 v6, 0x5

    .line 53
    if-eq v3, v6, :cond_7

    .line 55
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->getInstance()Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    .line 62
    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isSatelliteType(I)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_5

    .line 69
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isEnable()Z

    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_3

    .line 75
    const-string v2, "type satellite disable in getNetInfo"

    .line 77
    invoke-static {v0, v2}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return v1

    .line 81
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 84
    move-result-object v2

    .line 85
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 87
    if-ne v2, v3, :cond_4

    .line 89
    return v5

    .line 90
    :cond_4
    const-string v2, "type satellite disconnect in getNetInfo"

    .line 92
    invoke-static {v0, v2}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_5
    return v1

    .line 96
    :cond_6
    return v5

    .line 97
    :cond_7
    return v4

    .line 98
    :catchall_0
    move-exception v2

    .line 99
    invoke-static {v0, v2}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return v1
.end method

.method public static startAlarm(ZII)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 12
    :cond_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 14
    if-nez v1, :cond_1

    .line 16
    return v0

    .line 17
    :cond_1
    int-to-long v2, p1

    .line 18
    invoke-static {p0, v2, v3, p2, v1}, Lcom/dingtalk/mars/comm/Alarm;->start(ZJILandroid/content/Context;)Z

    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    const-string p1, "bifrost.PlatformComm"

    .line 26
    invoke-static {p1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return v0
.end method

.method public static stopAlarm(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 12
    :cond_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 14
    if-nez v1, :cond_1

    .line 16
    return v0

    .line 17
    :cond_1
    int-to-long v2, p0

    .line 18
    invoke-static {v2, v3, v1}, Lcom/dingtalk/mars/comm/Alarm;->stop(JLandroid/content/Context;)Z

    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    const-string v1, "bifrost.PlatformComm"

    .line 26
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return v0
.end method

.method public static wakeupLock_new()Lcom/dingtalk/mars/comm/WakerLock;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 12
    :cond_0
    sget-object v1, Lcom/dingtalk/mars/comm/PlatformComm;->context:Landroid/content/Context;

    .line 14
    if-nez v1, :cond_1

    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v2, Lcom/dingtalk/mars/comm/WakerLock;

    .line 19
    invoke-direct {v2, v1}, Lcom/dingtalk/mars/comm/WakerLock;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-object v2

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    const-string v2, "bifrost.PlatformComm"

    .line 26
    invoke-static {v2, v1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-object v0
.end method
