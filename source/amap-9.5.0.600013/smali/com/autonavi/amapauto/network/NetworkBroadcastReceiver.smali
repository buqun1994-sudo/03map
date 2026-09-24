.class public Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:La30;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(La30;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const-string v0, "NetworkBroadcastReceiver"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->b:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->a:La30;

    .line 10
    invoke-static {}, Lzm;->d()Lzm;

    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lzm;->Z:Ljava/lang/String;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 20
    move-result p1

    .line 21
    iput-boolean p1, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->c:Z

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object p1

    .line 30
    aput-object p1, v1, v2

    .line 32
    const-string p1, "[NetworkBroadcastReceiver]isIgnoreAndroidConnectivityChangeBroadcast:{?}"

    .line 34
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    const-string v2, "NetworkBroadcastReceiver"

    .line 19
    const-string v3, "[destroy]unregisterReceiver"

    .line 21
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    iget-boolean v1, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->c:Z

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    :cond_0
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const/16 v1, 0x3e8

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 35
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    const/4 v2, 0x0

    .line 52
    aput-object v0, v1, v2

    .line 54
    const-string v0, "NetworkBroadcastReceiver"

    .line 56
    const-string v2, "Exception"

    .line 58
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->a:La30;

    .line 3
    const-string v0, "NetworkBroadcastReceiver"

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 8
    const-string p1, "[NetworkBroadcastReceiver]onReceive netReceiverCallBack == null"

    .line 10
    new-array p2, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lrv;->R()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    const-string p1, "[NetworkBroadcastReceiver]onReceive isDestroyRunning is true."

    .line 28
    new-array p2, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void

    .line 34
    :cond_1
    if-nez p2, :cond_2

    .line 36
    const-string p1, "[NetworkBroadcastReceiver]onReceive intent == null."

    .line 38
    new-array p2, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const/4 v2, 0x1

    .line 49
    new-array v3, v2, [Ljava/lang/Object;

    .line 51
    aput-object p1, v3, v1

    .line 53
    const-string v4, "[NetworkBroadcastReceiver]onReceive action:{?}"

    .line 55
    invoke-static {v0, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_5

    .line 70
    const-string v3, "wifi_state"

    .line 72
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    move-result v3

    .line 76
    if-eq v3, v2, :cond_4

    .line 78
    const/4 v4, 0x3

    .line 79
    if-eq v3, v4, :cond_3

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v5, "[NetworkBroadcastReceiver]onReceive WIFI\u72b6\u6001:\u6253\u5f00"

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->a:La30;

    .line 106
    invoke-interface {v0, v2}, La30;->b(Z)V

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v4, "[NetworkBroadcastReceiver]onReceive WIFI\u72b6\u6001:\u5173\u95ed"

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    new-array v3, v1, [Ljava/lang/Object;

    .line 129
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->a:La30;

    .line 134
    invoke-interface {v0, v1}, La30;->b(Z)V

    .line 137
    :cond_5
    :goto_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 139
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_6

    .line 145
    iget-boolean p1, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->c:Z

    .line 147
    if-nez p1, :cond_7

    .line 149
    iget-object p1, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->a:La30;

    .line 151
    invoke-interface {p1, p2}, Lb30;->a(Landroid/content/Intent;)V

    .line 154
    goto :goto_1

    .line 155
    :cond_6
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    .line 157
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_7

    .line 163
    iget-object p1, p0, Lcom/autonavi/amapauto/network/NetworkBroadcastReceiver;->a:La30;

    .line 165
    invoke-interface {p1}, La30;->c()V

    .line 168
    :cond_7
    :goto_1
    return-void
.end method
