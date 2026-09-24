.class public Lcom/dingtalk/gaea/android/satcom/SatcomService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NONE_SATELLITE:I = 0x0

.field private static final SATELLITE_CONNECTED:I = 0x1

.field private static final SATELLITE_DISCONNECTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "gaea.satcom"

.field private static final TYPE_SATELLITE_V1:I = 0x12

.field private static final TYPE_SATELLITE_V2:I = 0x15

.field private static volatile mInstance:Lcom/dingtalk/gaea/android/satcom/SatcomService;


# instance fields
.field private final mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/dingtalk/gaea/android/satcom/SatcomService;
    .locals 2

    .line 1
    sget-object v0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mInstance:Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mInstance:Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 14
    invoke-direct {v1}, Lcom/dingtalk/gaea/android/satcom/SatcomService;-><init>()V

    .line 17
    sput-object v1, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mInstance:Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mInstance:Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 26
    return-object v0
.end method

.method public static isEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isSupportManufacturer()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isGrayed()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private static isForceUseSatcom()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwitchProvider()Lcom/dingtalk/bifrost/BifrostSwitchProvider;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lwb0;->a(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    const-string v1, "gaea"

    .line 15
    const-string v3, "c_force_enable_satcom_and"

    .line 17
    invoke-interface {v0, v1, v3, v2}, Lcom/dingtalk/bifrost/BifrostSwitchProvider;->isSwitchEnable(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private static isGrayed()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwitchProvider()Lcom/dingtalk/bifrost/BifrostSwitchProvider;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lwb0;->a(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    const-string v1, "c_enable_satcom_v2_and"

    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "gaea"

    .line 18
    invoke-interface {v0, v3, v1, v2}, Lcom/dingtalk/bifrost/BifrostSwitchProvider;->isSwitchEnable(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method private static isSupportManufacturer()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "xiaomi"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "SatcomService init brand="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "gaea.satcom"

    .line 26
    invoke-static {v1, v0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isEnable()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/dingtalk/mars/comm/PlatformComm$C2Java;->getNetInfo()I

    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x4

    .line 41
    if-ne v2, v0, :cond_1

    .line 43
    iget-object v2, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 49
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v3, "SatcomService init state="

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v3, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 64
    move-result v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v3, ", net_type="

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public isSatelliteNetwork()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_1

    .line 19
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isForceUseSatcom()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    return v1
.end method

.method public isSatelliteType(I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwitchProvider()Lcom/dingtalk/bifrost/BifrostSwitchProvider;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lwb0;->a(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x12

    .line 13
    if-eqz v0, :cond_1

    .line 15
    if-ne v3, p1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    const/16 v0, 0x15

    .line 21
    if-eq v0, p1, :cond_2

    .line 23
    if-ne p1, v3, :cond_3

    .line 25
    :cond_2
    const/4 v1, 0x1

    .line 26
    :cond_3
    return v1
.end method

.method public onConnectivityActionReceive(Landroid/content/Intent;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isEnable()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "gaea.satcom"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p1, "onConnectivityActionReceive disable satcom"

    .line 12
    invoke-static {v1, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return v2

    .line 16
    :cond_0
    const-string v0, "networkInfo"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/net/NetworkInfo;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v4, "onConnectivityActionReceive networkType="

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, ",state="

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v4, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-static {v1, v3}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p0, v0}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->isSatelliteType(I)Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v3, "onConnectivityActionReceive type is satellite, state="

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 101
    move-result-object p1

    .line 102
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 104
    const/4 v1, 0x1

    .line 105
    if-ne p1, v0, :cond_2

    .line 107
    const/4 v2, 0x1

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    if-eqz v2, :cond_3

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const/4 v0, 0x2

    .line 115
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 118
    return v1

    .line 119
    :cond_4
    iget-object p1, p0, Lcom/dingtalk/gaea/android/satcom/SatcomService;->mSatelliteState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 124
    return v2
.end method
