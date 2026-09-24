.class public Lcom/dingtalk/mars/comm/NetworkSignalUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "bifrost.NetworkSignalUtil"

.field private static context:Landroid/content/Context; = null

.field private static handlerThread:Landroid/os/HandlerThread; = null

.field private static strength:J = 0x2710L


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitNetworkSignalUtil(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    sput-object p0, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->context:Landroid/content/Context;

    .line 12
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwchmng()Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;

    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;->enableListenNetworkSignalStrength()Z

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 22
    const-string p0, "bifrost.NetworkSignalUtil"

    .line 24
    const-string v0, "do not listen network signal strength"

    .line 26
    invoke-static {p0, v0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    :cond_1
    sget-object p0, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->context:Landroid/content/Context;

    .line 32
    const-string v0, "phone"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 40
    const-class v0, Lcom/dingtalk/mars/comm/NetworkSignalUtil;

    .line 42
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    sget-object v1, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 45
    if-eqz v1, :cond_2

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    .line 51
    const-string v2, "BifrostSignalThread"

    .line 53
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    sput-object v1, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 58
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    new-instance v0, Landroid/os/Handler;

    .line 64
    sget-object v1, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 66
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    new-instance v1, Lcom/dingtalk/mars/comm/NetworkSignalUtil$1;

    .line 75
    invoke-direct {v1, p0}, Lcom/dingtalk/mars/comm/NetworkSignalUtil$1;-><init>(Landroid/telephony/TelephonyManager;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    const-string v0, "MNET"

    .line 88
    const-string v1, "NetworkSignalUtil: "

    .line 90
    invoke-static {v0, v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    const/4 p0, 0x0

    .line 94
    sput-object p0, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 96
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->calSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 4
    return-void
.end method

.method private static calSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, 0x71

    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    .line 23
    move-result p0

    .line 24
    const-wide/16 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    .line 28
    const/16 p0, 0x63

    .line 30
    if-ne v0, p0, :cond_1

    .line 32
    sput-wide v1, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->strength:J

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    int-to-float p0, v0

    .line 36
    const v0, 0x404e739d

    .line 39
    mul-float p0, p0, v0

    .line 41
    float-to-long v3, p0

    .line 42
    sput-wide v3, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->strength:J

    .line 44
    const-wide/16 v5, 0x64

    .line 46
    cmp-long p0, v3, v5

    .line 48
    if-lez p0, :cond_2

    .line 50
    move-wide v3, v5

    .line 51
    :cond_2
    sput-wide v3, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->strength:J

    .line 53
    cmp-long p0, v3, v1

    .line 55
    if-gez p0, :cond_3

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-wide v1, v3

    .line 59
    :goto_1
    sput-wide v1, Lcom/dingtalk/mars/comm/NetworkSignalUtil;->strength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    const-string v0, "bifrost"

    .line 65
    const-string v1, "calSignalStrength:"

    .line 67
    invoke-static {v0, v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :goto_2
    return-void
.end method

.method public static getNetworkSignalStrength(Z)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
