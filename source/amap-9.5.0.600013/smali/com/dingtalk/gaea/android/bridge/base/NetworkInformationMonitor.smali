.class public Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    const-string v0, "gaea.bridge.net.monitor"

    .line 6
    iput-object v0, p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->TAG:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 10
    return-void
.end method

.method public static getConnectionType(Lcom/dingtalk/gaea/android/bridge/base/NetworkState;)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->getNetworkType()I

    move-result v1

    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->getNetworkSubType()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getConnectionType(ZII)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private static getConnectionType(ZII)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;
    .locals 0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_NONE:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    :cond_0
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    .line 3
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_UNKNOWN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_VPN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_ETHERNET:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_BLUETOOTH:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 7
    :cond_4
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_4G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 8
    :cond_5
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_WIFI:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 9
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 10
    :pswitch_0
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_4G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 11
    :pswitch_1
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_3G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_2G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getNetworkState(Landroid/net/Network;)Lcom/dingtalk/gaea/android/bridge/base/NetworkState;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    .line 7
    iget-object v2, v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve information from network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gaea.bridge.net.monitor"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v1, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object v1

    .line 11
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_4

    .line 12
    iget-object v3, v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 13
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    .line 14
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    new-instance v1, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    const/16 v5, 0x11

    const/4 v6, -0x1

    .line 16
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object v1

    .line 17
    :cond_3
    :goto_0
    invoke-direct {v0, v2}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getNetworkState(Landroid/net/NetworkInfo;)Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    move-result-object v1

    return-object v1

    .line 18
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_5

    iget-object v3, v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    invoke-static {v3}, Lna;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 23
    new-instance v3, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    const/16 v7, 0x11

    const/4 v8, -0x1

    .line 24
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object v3

    .line 25
    :cond_5
    new-instance v1, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    .line 26
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    const/16 v13, 0x11

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object v1

    .line 27
    :cond_6
    invoke-direct {v0, v2}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getNetworkState(Landroid/net/NetworkInfo;)Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    move-result-object v1

    return-object v1

    .line 28
    :cond_7
    :goto_1
    new-instance v1, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object v1
.end method

.method private getNetworkState(Landroid/net/NetworkInfo;)Lcom/dingtalk/gaea/android/bridge/base/NetworkState;
    .locals 13

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object v0

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object p1
.end method

.method private static getUnderlyingConnectionTypeForVpn(Lcom/dingtalk/gaea/android/bridge/base/NetworkState;)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->getNetworkType()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x11

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    sget-object p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_NONE:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->isConnected()Z

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->getUnderlyingNetworkTypeForVpn()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->getUnderlyingNetworkSubtypeForVpn()I

    .line 23
    move-result p0

    .line 24
    invoke-static {v0, v1, p0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getConnectionType(ZII)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static native nativeOnNotifyNetworkConnected(Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;Z)V
.end method

.method private static networkToNetId(Landroid/net/Network;)J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x17

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {p0}, Ld30;->a(Landroid/net/Network;)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    move-result p0

    .line 20
    int-to-long v0, p0

    .line 21
    return-wide v0
.end method


# virtual methods
.method public getIPAddresses(Landroid/net/LinkProperties;)[Lcom/dingtalk/gaea/android/bridge/base/IPAddress;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [Lcom/dingtalk/gaea/android/bridge/base/IPAddress;

    .line 11
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/net/LinkAddress;

    .line 32
    new-instance v3, Lcom/dingtalk/gaea/android/bridge/base/IPAddress;

    .line 34
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v3, v2}, Lcom/dingtalk/gaea/android/bridge/base/IPAddress;-><init>([B)V

    .line 45
    aput-object v3, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method

.method public getNetworkInfo(Landroid/net/Network;)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 4
    iget-object v1, p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto/16 :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "gaea.bridge.net.monitor"

    .line 16
    if-nez v1, :cond_1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v3, "Detected unknown network: "

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v0

    .line 43
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_2

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v3, "Null interface name for network "

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v0

    .line 74
    :cond_2
    invoke-direct {p0, p1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getNetworkState(Landroid/net/Network;)Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getConnectionType(Lcom/dingtalk/gaea/android/bridge/base/NetworkState;)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 81
    move-result-object v6

    .line 82
    sget-object v4, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_NONE:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 84
    const-string v5, "Network "

    .line 86
    if-ne v6, v4, :cond_3

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string p1, " is disconnected"

    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v0

    .line 116
    :cond_3
    sget-object v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_UNKNOWN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 118
    if-eq v6, v0, :cond_4

    .line 120
    sget-object v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 122
    if-ne v6, v0, :cond_5

    .line 124
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v4, " connection type is "

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    const-string v4, " because it has type "

    .line 149
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v3}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->getNetworkType()I

    .line 155
    move-result v4

    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v4, " and subtype "

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;->getNetworkSubType()I

    .line 167
    move-result v4

    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_5
    invoke-static {v3}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getUnderlyingConnectionTypeForVpn(Lcom/dingtalk/gaea/android/bridge/base/NetworkState;)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 181
    move-result-object v7

    .line 182
    new-instance v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;

    .line 184
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 187
    move-result-object v5

    .line 188
    invoke-static {p1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->networkToNetId(Landroid/net/Network;)J

    .line 191
    move-result-wide v8

    .line 192
    invoke-virtual {p0, v1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getIPAddresses(Landroid/net/LinkProperties;)[Lcom/dingtalk/gaea/android/bridge/base/IPAddress;

    .line 195
    move-result-object v10

    .line 196
    move-object v4, v0

    .line 197
    invoke-direct/range {v4 .. v10}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;-><init>(Ljava/lang/String;Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;J[Lcom/dingtalk/gaea/android/bridge/base/IPAddress;)V

    .line 200
    :cond_6
    :goto_0
    return-object v0
.end method

.method public getNetworkState()Lcom/dingtalk/gaea/android/bridge/base/NetworkState;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/dingtalk/gaea/android/bridge/base/NetworkState;-><init>(ZIIII)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getNetworkState(Landroid/net/NetworkInfo;)Lcom/dingtalk/gaea/android/bridge/base/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->onNetworkChanged(Landroid/net/Network;Z)V

    .line 5
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->onNetworkChanged(Landroid/net/Network;Z)V

    .line 5
    return-void
.end method

.method public onNetworkChanged(Landroid/net/Network;Z)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->getNetworkInfo(Landroid/net/Network;)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onNetworkChanged, "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string v2, "null"

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;->name:Ljava/lang/String;

    .line 22
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ", connected="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "gaea.bridge.net.monitor"

    .line 39
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez v0, :cond_1

    .line 44
    if-nez p2, :cond_1

    .line 46
    const/4 v9, 0x0

    .line 47
    new-instance v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;

    .line 49
    const/4 v4, 0x0

    .line 50
    sget-object v6, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_UNKNOWN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 52
    invoke-static {p1}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->networkToNetId(Landroid/net/Network;)J

    .line 55
    move-result-wide v7

    .line 56
    move-object v3, v0

    .line 57
    move-object v5, v6

    .line 58
    invoke-direct/range {v3 .. v9}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;-><init>(Ljava/lang/String;Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;J[Lcom/dingtalk/gaea/android/bridge/base/IPAddress;)V

    .line 61
    invoke-static {v0, p2}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->nativeOnNotifyNetworkConnected(Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;Z)V

    .line 64
    return-void

    .line 65
    :cond_1
    if-eqz v0, :cond_2

    .line 67
    invoke-static {v0, p2}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformationMonitor;->nativeOnNotifyNetworkConnected(Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;Z)V

    .line 70
    :cond_2
    return-void
.end method
