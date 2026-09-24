.class public Le30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Le30;


# instance fields
.field public a:Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;

.field public b:Landroid/telephony/SignalStrength;

.field public c:I

.field public d:I

.field public e:Landroid/telephony/TelephonyManager;

.field public f:Landroid/telephony/PhoneStateListener;

.field public g:Lr10;

.field public h:La30;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le30;->c:I

    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Le30;->d:I

    .line 10
    new-instance v1, Le30$a;

    .line 12
    invoke-direct {v1, p0}, Le30$a;-><init>(Le30;)V

    .line 15
    iput-object v1, p0, Le30;->g:Lr10;

    .line 17
    new-instance v1, Le30$b;

    .line 19
    invoke-direct {v1, p0}, Le30$b;-><init>(Le30;)V

    .line 22
    iput-object v1, p0, Le30;->h:La30;

    .line 24
    const-string v1, "[NetworkManager]NetworkManager"

    .line 26
    new-array v2, v0, [Ljava/lang/Object;

    .line 28
    const-string v3, "NetworkManager"

    .line 30
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lpa;->n(Landroid/content/Context;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lrv;->H()Lrv;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lpa;->h(Landroid/content/Context;)I

    .line 58
    move-result v0

    .line 59
    iput v0, p0, Le30;->c:I

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iput v0, p0, Le30;->c:I

    .line 64
    :goto_0
    return-void
.end method

.method public static synthetic a(Le30;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 1
    iput-object p1, p0, Le30;->b:Landroid/telephony/SignalStrength;

    .line 3
    return-object p1
.end method

.method public static synthetic b(Le30;)I
    .locals 0

    .line 1
    iget p0, p0, Le30;->c:I

    .line 3
    return p0
.end method

.method public static synthetic c(Le30;I)I
    .locals 0

    .line 1
    iput p1, p0, Le30;->c:I

    .line 3
    return p1
.end method

.method public static synthetic d(Le30;)I
    .locals 0

    .line 1
    iget p0, p0, Le30;->d:I

    .line 3
    return p0
.end method

.method public static synthetic e(Le30;I)I
    .locals 0

    .line 1
    iput p1, p0, Le30;->d:I

    .line 3
    return p1
.end method

.method public static synthetic f(Le30;)Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Le30;->a:Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Le30;Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;)Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;
    .locals 0

    .line 1
    iput-object p1, p0, Le30;->a:Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;

    .line 3
    return-object p1
.end method

.method public static synthetic h(Le30;)La30;
    .locals 0

    .line 1
    iget-object p0, p0, Le30;->h:La30;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Le30;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le30;->t()V

    .line 4
    return-void
.end method

.method public static synthetic j(Le30;)Lr10;
    .locals 0

    .line 1
    iget-object p0, p0, Le30;->g:Lr10;

    .line 3
    return-object p0
.end method

.method public static m()Le30;
    .locals 1

    .line 1
    sget-object v0, Le30;->i:Le30;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Le30;

    .line 7
    invoke-direct {v0}, Le30;-><init>()V

    .line 10
    sput-object v0, Le30;->i:Le30;

    .line 12
    :cond_0
    sget-object v0, Le30;->i:Le30;

    .line 14
    return-object v0
.end method


# virtual methods
.method public k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "NetworkManager"

    .line 6
    const-string v2, "[NetworkManager]addListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    new-instance v1, Le30$c;

    .line 22
    invoke-direct {v1, p0}, Le30$c;-><init>(Le30;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Le30;->e:Landroid/telephony/TelephonyManager;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Le30;->f:Landroid/telephony/PhoneStateListener;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 13
    :cond_0
    return-void
.end method

.method public n()I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NetworkManager"

    .line 6
    const-string v3, "[NetworkManager]getSignalLevel"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v4, 0x2

    .line 13
    :try_start_0
    iget v5, p0, Le30;->c:I

    .line 15
    const/4 v6, 0x4

    .line 16
    if-ne v5, v6, :cond_0

    .line 18
    invoke-static {}, Lrv;->H()Lrv;

    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 25
    move-result-object v5

    .line 26
    const-string v6, "wifi"

    .line 28
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 34
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_3

    .line 40
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x5

    .line 45
    invoke-static {v5, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 53
    move-result-object v5

    .line 54
    const/16 v6, 0x2725

    .line 56
    invoke-virtual {v5, v6}, Lse;->getBooleanValue(I)Z

    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_1

    .line 62
    invoke-static {}, Lse;->c()Lse;

    .line 65
    move-result-object v5

    .line 66
    const/16 v6, 0x753b

    .line 68
    invoke-virtual {v5, v6}, Lse;->getIntValue(I)I

    .line 71
    move-result v4

    .line 72
    const-string v5, "[NetworkManager]getSignalLevel adaptor level = {?}"

    .line 74
    new-array v6, v1, [Ljava/lang/Object;

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v7

    .line 80
    aput-object v7, v6, v0

    .line 82
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v5, p0, Le30;->b:Landroid/telephony/SignalStrength;

    .line 88
    if-eqz v5, :cond_2

    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    move-result-object v5

    .line 94
    const-string v6, "getLevel"

    .line 96
    new-array v7, v0, [Ljava/lang/Class;

    .line 98
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    move-result-object v5

    .line 102
    iget-object v6, p0, Le30;->b:Landroid/telephony/SignalStrength;

    .line 104
    new-array v7, v0, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Ljava/lang/Integer;

    .line 112
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 115
    move-result v4

    .line 116
    const-string v5, "[NetworkManager]getSignalLevel getLevel = {?}"

    .line 118
    new-array v6, v1, [Ljava/lang/Object;

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v7

    .line 124
    aput-object v7, v6, v0

    .line 126
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_2
    :goto_0
    iget-object v5, p0, Le30;->b:Landroid/telephony/SignalStrength;

    .line 131
    if-nez v5, :cond_3

    .line 133
    const-string v5, "[NetworkManager]getSignalLevel mSignalStrength == null"

    .line 135
    new-array v6, v0, [Ljava/lang/Object;

    .line 137
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_1

    .line 141
    :catch_0
    move-exception v5

    .line 142
    new-array v6, v0, [Ljava/lang/Object;

    .line 144
    invoke-static {v2, v3, v5, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 147
    :cond_3
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v3

    .line 153
    aput-object v3, v1, v0

    .line 155
    const-string v0, "[NetworkManager]getSignalLevel level={?}"

    .line 157
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return v4
.end method

.method public o()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NetworkManager"

    .line 6
    const-string v3, "[NetworkManager]getWifiStatus"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x4

    .line 12
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 19
    move-result-object v3

    .line 20
    const-string v4, "wifi"

    .line 22
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 28
    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 33
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const-string v3, "[NetworkManager]getWifiEnableState exception"

    .line 37
    new-array v4, v0, [Ljava/lang/Object;

    .line 39
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 43
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v4

    .line 49
    aput-object v4, v3, v0

    .line 51
    const-string v0, "[NetworkManager]getWifiEnableState end with isOpen = {?}"

    .line 53
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return v1
.end method

.method public p(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "NetworkManager"

    .line 13
    const-string v2, "[NetworkManager]AL onNetChange:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetNetWorkState(I)V

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-static {}, Lqe0;->a()V

    .line 26
    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "NetworkManager"

    .line 13
    const-string v2, "[NetworkManager]AL onSignalStrenghChange:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetSignalLevel(I)V

    .line 21
    return-void
.end method

.method public r(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "NetworkManager"

    .line 13
    const-string v3, "[NetworkManager]AL onWifiDeviceStatus:{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lse;->c()Lse;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lse;->getNetWorkState()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x4

    .line 27
    if-ne v1, v2, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeSetWifiState(Z)V

    .line 33
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "NetworkManager"

    .line 6
    const-string v2, "[NetworkManager]removeListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Le30;->a:Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->a()V

    .line 18
    :cond_0
    invoke-virtual {p0}, Le30;->l()V

    .line 21
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "phone"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17
    iput-object v0, p0, Le30;->e:Landroid/telephony/TelephonyManager;

    .line 19
    new-instance v0, Le30$d;

    .line 21
    invoke-direct {v0, p0}, Le30$d;-><init>(Le30;)V

    .line 24
    iput-object v0, p0, Le30;->f:Landroid/telephony/PhoneStateListener;

    .line 26
    iget-object v1, p0, Le30;->e:Landroid/telephony/TelephonyManager;

    .line 28
    if-eqz v1, :cond_0

    .line 30
    const/16 v2, 0x100

    .line 32
    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 35
    :cond_0
    return-void
.end method
