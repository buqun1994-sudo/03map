.class public abstract Lrm0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrm0$a;,
        Lrm0$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Ljava/lang/StringBuilder; = null

.field public static e:J = -0x1L

.field public static f:J = -0x1L

.field public static g:Ljava/lang/String; = ""

.field public static h:Ljava/util/List;

.field public static i:Ljava/lang/Object;

.field public static j:Lrm0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lrm0;->h:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lrm0;->i:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lrm0;->j:Lrm0$b;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lrm0$b;

    .line 7
    invoke-direct {v0}, Lrm0$b;-><init>()V

    .line 10
    sput-object v0, Lrm0;->j:Lrm0$b;

    .line 12
    invoke-virtual {v0}, Lrm0$b;->a()Landroid/content/IntentFilter;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    :cond_0
    return-void
.end method

.method public static B(Lrm0$a;)V
    .locals 2

    .line 1
    sget-object v0, Lrm0;->i:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lrm0;->h:Ljava/util/List;

    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static C(Z)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sget-boolean p0, Lrm0;->a:Z

    .line 5
    if-eqz p0, :cond_0

    .line 7
    sget-object p0, Lrm0;->d:Ljava/lang/StringBuilder;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-string v0, " stop by user!"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    sput-boolean p0, Lrm0;->a:Z

    .line 19
    sput-boolean p0, Lrm0;->b:Z

    .line 21
    sput-boolean p0, Lrm0;->c:Z

    .line 23
    const-wide/16 v0, -0x1

    .line 25
    sput-wide v0, Lrm0;->e:J

    .line 27
    sput-wide v0, Lrm0;->f:J

    .line 29
    return-void
.end method

.method public static D(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lrm0;->j:Lrm0$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    const/4 p0, 0x0

    .line 9
    sput-object p0, Lrm0;->j:Lrm0$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lrm0;->C(Z)V

    .line 4
    return-void
.end method

.method public static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrm0;->a:Z

    .line 3
    return v0
.end method

.method public static synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrm0;->b:Z

    .line 3
    return v0
.end method

.method public static synthetic d()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    sget-object v0, Lrm0;->d:Ljava/lang/StringBuilder;

    .line 3
    return-object v0
.end method

.method public static synthetic e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lrm0;->c:Z

    .line 3
    return v0
.end method

.method public static synthetic f(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lrm0;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lrm0;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic h()J
    .locals 2

    .line 1
    sget-wide v0, Lrm0;->f:J

    .line 3
    return-wide v0
.end method

.method public static synthetic i(J)J
    .locals 0

    .line 1
    sput-wide p0, Lrm0;->f:J

    .line 3
    return-wide p0
.end method

.method public static synthetic j()J
    .locals 2

    .line 1
    sget-wide v0, Lrm0;->e:J

    .line 3
    return-wide v0
.end method

.method public static k(Lrm0$a;)V
    .locals 2

    .line 1
    sget-object v0, Lrm0;->i:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lrm0;->h:Ljava/util/List;

    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "\"%s\""

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const/4 v3, 0x1

    .line 10
    aput-object p2, v1, v3

    .line 12
    const-string v4, "WifiConnectUtils"

    .line 14
    const-string v5, "connectWifiWithSSID ssid = {?},password = {?}"

    .line 16
    invoke-static {v4, v5, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object p0

    .line 23
    const-string v1, "wifi"

    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 31
    if-nez p0, :cond_0

    .line 33
    sput-boolean v2, Lrm0;->a:Z

    .line 35
    return v2

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 42
    sput-boolean v2, Lrm0;->a:Z

    .line 44
    return v2

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v1

    .line 55
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 67
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_2

    .line 75
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 77
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_2

    .line 83
    iget v1, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 85
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 88
    :cond_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .line 90
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 93
    new-array v4, v3, [Ljava/lang/Object;

    .line 95
    aput-object p1, v4, v2

    .line 97
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v4

    .line 101
    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 103
    new-array v3, v3, [Ljava/lang/Object;

    .line 105
    aput-object p2, v3, v2

    .line 107
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    iput-object p2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 113
    sput-object p1, Lrm0;->g:Ljava/lang/String;

    .line 115
    invoke-static {}, Lrm0;->w()V

    .line 118
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 128
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 131
    move-result p0

    .line 132
    sput-boolean p0, Lrm0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return p0

    .line 135
    :catch_0
    return v2
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiConnectUtils"

    .line 6
    const-string v3, "disConnectWifiWithSSID"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Lrm0;->C(Z)V

    .line 15
    :try_start_0
    invoke-static {p0}, Lrm0;->u(Landroid/content/Context;)Z

    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 21
    return v0

    .line 22
    :cond_0
    invoke-static {p0}, Lrm0;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "wifi"

    .line 28
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 34
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_2

    .line 40
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v4

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 56
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 58
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_1

    .line 64
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 66
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_1

    .line 72
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 74
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 77
    const-string v6, "disConnectWifiWithSSID disconnect id = {?}"

    .line 79
    new-array v7, v1, [Ljava/lang/Object;

    .line 81
    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v5

    .line 87
    aput-object v5, v7, v0

    .line 89
    invoke-static {v2, v6, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 96
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return p0

    .line 98
    :catch_0
    return v0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiConnectUtils"

    .line 6
    const-string v3, "disConnectWifiWithSSID"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Lrm0;->C(Z)V

    .line 15
    :try_start_0
    const-string v3, "wifi"

    .line 17
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 23
    if-nez v3, :cond_0

    .line 25
    return v0

    .line 26
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 32
    return v0

    .line 33
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_4

    .line 39
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v4

    .line 43
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_4

    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 55
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 57
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_2

    .line 63
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 65
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_2

    .line 71
    iget p1, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 73
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 76
    const-string p1, "disConnectWifiWithSSID disconnect"

    .line 78
    new-array v4, v0, [Ljava/lang/Object;

    .line 80
    invoke-static {v2, p1, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {p0}, Lrm0;->u(Landroid/content/Context;)Z

    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_3

    .line 89
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_3
    return v1

    .line 93
    :catch_0
    :cond_4
    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lrm0;->a:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "connectOperate failure!"

    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lrm0;->d:Ljava/lang/StringBuilder;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_1
    const-string v0, ""

    .line 19
    return-object v0
.end method

.method public static p(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiConnectUtils"

    .line 6
    const-string v3, "[NetworkUtil]getConnectivityService"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    const-string v1, "connectivity"

    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v1, "[NetworkUtil]getConnectivityService.Exception"

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v2, v1, p0, v0}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 28
    const/4 p0, 0x0

    .line 29
    :goto_0
    return-object p0
.end method

.method public static q(Landroid/content/Context;)I
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "WifiConnectUtils"

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 7
    const-string p0, "[getNetWorkType]context ==null, NETWORK_CLASS_UNCONNECT"

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v1, p0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return v0

    .line 15
    :cond_0
    const-string v3, "[NetworkUtil]getNetWorkType"

    .line 17
    new-array v4, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {v1, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :try_start_0
    invoke-static {p0}, Lrm0;->p(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_3

    .line 28
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_3

    .line 34
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 40
    const-string v3, "[getNetWorkType]isConnected={?}"

    .line 42
    const/4 v4, 0x1

    .line 43
    new-array v5, v4, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 48
    move-result v6

    .line 49
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v6

    .line 53
    aput-object v6, v5, v2

    .line 55
    invoke-static {v1, v3, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 61
    move-result p0

    .line 62
    const-string v3, "[getNetWorkType]type={?}"

    .line 64
    new-array v5, v4, [Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v6

    .line 70
    aput-object v6, v5, v2

    .line 72
    invoke-static {v1, v3, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    if-ne p0, v4, :cond_1

    .line 77
    return v2

    .line 78
    :cond_1
    if-nez p0, :cond_2

    .line 80
    return v4

    .line 81
    :cond_2
    const-string p0, "[getNetWorkType]other"

    .line 83
    new-array v3, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {v1, p0, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const/4 p0, 0x2

    .line 89
    return p0

    .line 90
    :cond_3
    const-string p0, "[getNetWorkType]NETWORK_CLASS_UNCONNECT"

    .line 92
    new-array v3, v2, [Ljava/lang/Object;

    .line 94
    invoke-static {v1, p0, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return v0

    .line 98
    :catch_0
    const-string p0, "[getNetWorkType]exception NETWORK_CLASS_UNCONNECT"

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    .line 102
    invoke-static {v1, p0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return v0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "\""

    .line 3
    const-string v1, "WifiConnectUtils"

    .line 5
    const-string v2, ""

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    :try_start_0
    const-string v5, "wifi"

    .line 11
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 17
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 20
    move-result-object v5

    .line 21
    if-eqz v5, :cond_3

    .line 23
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 26
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    const-string v7, "case 1 getSSID ssid = {?}"

    .line 29
    new-array v8, v4, [Ljava/lang/Object;

    .line 31
    aput-object v6, v8, v3

    .line 33
    invoke-static {v1, v7, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_1

    .line 42
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 45
    move-result v5

    .line 46
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_1

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p0

    .line 56
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 68
    iget v8, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 70
    if-ne v8, v5, :cond_0

    .line 72
    iget-object v6, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 74
    const-string p0, "case 2 getSSID ssid = {?},networkId = {?}"

    .line 76
    const/4 v7, 0x2

    .line 77
    new-array v7, v7, [Ljava/lang/Object;

    .line 79
    aput-object v6, v7, v3

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v5

    .line 85
    aput-object v5, v7, v4

    .line 87
    invoke-static {v1, p0, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_4

    .line 96
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_2

    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 105
    move-result p0

    .line 106
    invoke-virtual {v6, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    move-object v2, p0

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move-object v2, v6

    .line 113
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_4

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 122
    move-result p0

    .line 123
    sub-int/2addr p0, v4

    .line 124
    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    goto :goto_2

    .line 129
    :catch_0
    move-exception p0

    .line 130
    move-object v2, v6

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    return-object v2

    .line 133
    :catch_1
    move-exception p0

    .line 134
    :goto_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    aput-object p0, v0, v3

    .line 142
    const-string p0, "get ssid error {?}"

    .line 144
    invoke-static {v1, p0, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_4
    :goto_2
    new-array p0, v4, [Ljava/lang/Object;

    .line 149
    aput-object v2, p0, v3

    .line 151
    const-string v0, "return getSSID ssid = {?}"

    .line 153
    invoke-static {v1, v0, p0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-object v2
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 5
    const-string v3, "getWifiApState"

    .line 7
    new-array v4, v1, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    move-result-object v2

    .line 13
    const-string v3, "wifi"

    .line 15
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    new-array v3, v1, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/Integer;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/16 v2, 0xb

    .line 38
    if-eq p0, v2, :cond_0

    .line 40
    const/16 v2, 0xe

    .line 42
    if-ne p0, v2, :cond_1

    .line 44
    :cond_0
    return v1

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string v2, "[NetworkUtil]isApEnable.Exception"

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    const-string v3, "WifiConnectUtils"

    .line 52
    invoke-static {v3, v2, p0, v1}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    return v0
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 4
    :try_start_0
    invoke-static {p0}, Lrm0;->p(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string v1, "[NetworkUtil]isNetworkConnected.Exception"

    .line 25
    new-array v2, v0, [Ljava/lang/Object;

    .line 27
    const-string v3, "WifiConnectUtils"

    .line 29
    invoke-static {v3, v1, p0, v2}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 32
    :cond_1
    return v0
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiConnectUtils"

    .line 6
    const-string v3, "isWifiConnectWithWifiDirect ssid"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p0}, Lrm0;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    const-string v1, "DIRECT-"

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    return v0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "wifi"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 9
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static w()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sput-object v0, Lrm0;->d:Ljava/lang/StringBuilder;

    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lrm0;->b:Z

    .line 11
    sput-boolean v0, Lrm0;->c:Z

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lrm0;->e:J

    .line 19
    return-void
.end method

.method public static x(ZLjava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lrm0;->i:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lrm0;->h:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string p0, "WifiConnectUtils"

    .line 15
    const-string p1, "notifyListener with empty"

    .line 17
    new-array v1, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {p0, p1, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v1, Lrm0;->h:Ljava/util/List;

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    move-result v1

    .line 30
    new-array v1, v1, [Lrm0$a;

    .line 32
    sget-object v3, Lrm0;->h:Ljava/util/List;

    .line 34
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Lrm0$a;

    .line 40
    array-length v3, v1

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_0
    if-ge v4, v3, :cond_1

    .line 44
    aget-object v5, v1, v4

    .line 46
    const-string v6, "WifiConnectUtils"

    .line 48
    const-string v7, "notifyListener with listener"

    .line 50
    new-array v8, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v6, v7, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-interface {v5, p0, p1}, Lrm0$a;->l(ZLjava/lang/String;)V

    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public static final y()Z
    .locals 7

    .line 1
    const-string v0, "result = "

    .line 3
    const-string v1, "WifiConnectUtils"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "114.114.114.114"

    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 11
    move-result-object v4

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v6, "ping -c 1 -w 4 "

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Ljava/io/BufferedReader;

    .line 39
    new-instance v6, Ljava/io/InputStreamReader;

    .line 41
    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 44
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    new-instance v4, Ljava/lang/StringBuffer;

    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 55
    move-result-object v6

    .line 56
    if-eqz v6, :cond_0

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v6, "result content : "

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    new-array v5, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {v1, v4, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_1

    .line 94
    const-string v3, "success"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    invoke-static {v1, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const/4 v0, 0x1

    .line 117
    return v0

    .line 118
    :cond_1
    :try_start_1
    const-string v3, "failed"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    new-array v3, v2, [Ljava/lang/Object;

    .line 137
    invoke-static {v1, v0, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v3

    .line 142
    goto :goto_2

    .line 143
    :catch_0
    :try_start_2
    const-string v3, "InterruptedException"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    new-array v3, v2, [Ljava/lang/Object;

    .line 162
    invoke-static {v1, v0, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    goto :goto_1

    .line 166
    :catch_1
    :try_start_3
    const-string v3, "IOException"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    new-array v3, v2, [Ljava/lang/Object;

    .line 185
    invoke-static {v1, v0, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :goto_1
    return v2

    .line 189
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    new-array v2, v2, [Ljava/lang/Object;

    .line 207
    invoke-static {v1, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    throw v3
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiConnectUtils"

    .line 6
    const-string v3, "reconnectWifi"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    const-string v3, "wifi"

    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 26
    if-nez v1, :cond_1

    .line 28
    return v0

    .line 29
    :cond_1
    invoke-static {p0}, Lrm0;->q(Landroid/content/Context;)I

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 38
    move-result p0

    .line 39
    const-string v3, "reconnectWifi startScan result = {?}"

    .line 41
    const/4 v4, 0x1

    .line 42
    new-array v5, v4, [Ljava/lang/Object;

    .line 44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object v6

    .line 48
    aput-object v6, v5, v0

    .line 50
    invoke-static {v2, v3, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    if-eqz p0, :cond_2

    .line 55
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 58
    move-result p0

    .line 59
    const-string v1, "reconnectWifi reconnect result = {?}"

    .line 61
    new-array v3, v4, [Ljava/lang/Object;

    .line 63
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    move-result-object v4

    .line 67
    aput-object v4, v3, v0

    .line 69
    invoke-static {v2, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return p0

    .line 73
    :catch_0
    :cond_2
    return v0
.end method
