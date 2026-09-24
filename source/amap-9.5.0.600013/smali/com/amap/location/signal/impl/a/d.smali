.class public Lcom/amap/location/signal/impl/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/status/IPhoneStatManager;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/amap/location/support/signal/status/PhoneStatListener;

.field private c:Z

.field private d:Z

.field private e:Lcom/amap/location/support/handler/AmapHandler;

.field private f:Landroid/database/ContentObserver;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "systemphnprd"

    .line 6
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/d;->a:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/d;->c:Z

    .line 11
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/d;->d:Z

    .line 13
    new-instance v0, Lcom/amap/location/signal/impl/a/d$1;

    .line 15
    new-instance v1, Landroid/os/Handler;

    .line 17
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Lcom/amap/location/support/handler/AmapLooper;->getAndroidLooperObject()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/os/Looper;

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/amap/location/signal/impl/a/d$1;-><init>(Lcom/amap/location/signal/impl/a/d;Landroid/os/Handler;)V

    .line 44
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/d;->f:Landroid/database/ContentObserver;

    .line 46
    new-instance v0, Lcom/amap/location/signal/impl/a/d$2;

    .line 48
    invoke-direct {v0, p0}, Lcom/amap/location/signal/impl/a/d$2;-><init>(Lcom/amap/location/signal/impl/a/d;)V

    .line 51
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/d;->g:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/d;->b:Lcom/amap/location/support/signal/status/PhoneStatListener;

    return-object p0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/d;->e:Lcom/amap/location/support/handler/AmapHandler;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/signal/impl/a/d;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/d;->e:Lcom/amap/location/support/handler/AmapHandler;

    if-nez v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/d;->d()V

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/d;->e:Lcom/amap/location/support/handler/AmapHandler;

    invoke-interface {v0, p1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 10
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/d;->e:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x3e8

    move v2, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/amap/location/support/handler/AmapHandler;->sendMessageDelayed(IIILjava/lang/Object;J)Z

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/amap/location/signal/impl/a/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/d;->f:Landroid/database/ContentObserver;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "systemphnprd"

    .line 20
    const-string v2, ""

    .line 22
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/content/Context;

    .line 7
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/d;->g:Landroid/content/BroadcastReceiver;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "systemphnprd"

    .line 16
    const-string v2, ""

    .line 18
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/amap/location/signal/impl/a/d$3;

    .line 11
    invoke-direct {v2, p0}, Lcom/amap/location/signal/impl/a/d$3;-><init>(Lcom/amap/location/signal/impl/a/d;)V

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/d;->e:Lcom/amap/location/support/handler/AmapHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/d;->b:Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 3
    invoke-interface {p1}, Lcom/amap/location/support/signal/status/PhoneStatListener;->getAction()J

    .line 6
    move-result-wide p1

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 12
    const-wide/16 v1, 0x1

    .line 14
    and-long v3, p1, v1

    .line 16
    cmp-long v5, v3, v1

    .line 18
    if-nez v5, :cond_0

    .line 20
    const-string v1, "android.location.PROVIDERS_CHANGED"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "android.location.MODE_CHANGED"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    :cond_0
    const-wide/16 v1, 0x2

    .line 32
    and-long v3, p1, v1

    .line 34
    cmp-long v5, v3, v1

    .line 36
    if-nez v5, :cond_1

    .line 38
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    :cond_1
    const-wide/16 v1, 0x4

    .line 45
    and-long v3, p1, v1

    .line 47
    cmp-long v5, v3, v1

    .line 49
    if-nez v5, :cond_2

    .line 51
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    :cond_2
    const-wide/16 v1, 0x8

    .line 58
    and-long v3, p1, v1

    .line 60
    cmp-long v5, v3, v1

    .line 62
    if-nez v5, :cond_3

    .line 64
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    :cond_3
    const-wide/16 v1, 0x10

    .line 76
    and-long v3, p1, v1

    .line 78
    cmp-long v5, v3, v1

    .line 80
    if-nez v5, :cond_4

    .line 82
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    :cond_4
    const-wide/16 v1, 0x20

    .line 89
    and-long v3, p1, v1

    .line 91
    cmp-long v5, v3, v1

    .line 93
    if-nez v5, :cond_5

    .line 95
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    :cond_5
    const-wide/16 v1, 0x40

    .line 107
    and-long v3, p1, v1

    .line 109
    cmp-long v5, v3, v1

    .line 111
    if-nez v5, :cond_6

    .line 113
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    :cond_6
    const-wide/16 v1, 0x100

    .line 120
    and-long v3, p1, v1

    .line 122
    cmp-long v5, v3, v1

    .line 124
    if-nez v5, :cond_7

    .line 126
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    :cond_7
    iget-boolean v1, p0, Lcom/amap/location/signal/impl/a/d;->c:Z

    .line 133
    if-eqz v1, :cond_8

    .line 135
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/d;->c()V

    .line 138
    :cond_8
    iget-boolean v1, p0, Lcom/amap/location/signal/impl/a/d;->d:Z

    .line 140
    if-eqz v1, :cond_9

    .line 142
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/d;->b()V

    .line 145
    :cond_9
    const-wide/16 v1, 0x80

    .line 147
    and-long/2addr p1, v1

    .line 148
    const-string v3, ""

    .line 150
    const-string v4, "systemphnprd"

    .line 152
    const/4 v5, 0x0

    .line 153
    const/4 v6, 0x1

    .line 154
    cmp-long v7, p1, v1

    .line 156
    if-nez v7, :cond_a

    .line 158
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 167
    move-result-object p1

    .line 168
    const-string p2, "wifi_scan_always_enabled"

    .line 170
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 173
    move-result-object p2

    .line 174
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/d;->f:Landroid/database/ContentObserver;

    .line 176
    invoke-virtual {p1, p2, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    iput-boolean v6, p0, Lcom/amap/location/signal/impl/a/d;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v5, 0x1

    .line 182
    goto :goto_0

    .line 183
    :catch_0
    move-exception p1

    .line 184
    invoke-static {v4, v3, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :cond_a
    :goto_0
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 190
    move-result p1

    .line 191
    if-lez p1, :cond_c

    .line 193
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 195
    const/16 p2, 0x22

    .line 197
    if-lt p1, p2, :cond_b

    .line 199
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/content/Context;

    .line 205
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/d;->g:Landroid/content/BroadcastReceiver;

    .line 207
    const/4 v1, 0x2

    .line 208
    invoke-static {p1, p2, v0, v1}, Ler0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 211
    goto :goto_1

    .line 212
    :cond_b
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Landroid/content/Context;

    .line 218
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/d;->g:Landroid/content/BroadcastReceiver;

    .line 220
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    :goto_1
    iput-boolean v6, p0, Lcom/amap/location/signal/impl/a/d;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    goto :goto_2

    .line 226
    :catch_1
    move-exception p1

    .line 227
    invoke-static {v4, v3, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :cond_c
    move v6, v5

    .line 231
    :goto_2
    return v6
.end method

.method public getProcessImportance()I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 6
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v0, -0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x2

    goto :goto_1

    :catchall_0
    const/4 v0, -0x4

    :goto_1
    return v0
.end method

.method public getProcessImportance(Ljava/lang/String;)I
    .locals 3

    .line 8
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 12
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, -0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x2

    goto :goto_1

    :catchall_0
    const/4 p1, -0x4

    :goto_1
    return p1
.end method

.method public hasCoarseLocationPermission()Z
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasFineLocationPermission()Z
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasLocationPermission()Z
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 11
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public hasReadPhoneStatePermission()Z
    .locals 1

    .line 1
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasStoragePermission()Z
    .locals 1

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isAirplaneModeOn()Z
    .locals 5

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "systemphnprd"

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroid/content/Context;

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    const-string v4, "airplane_mode_on"

    .line 18
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v2

    .line 28
    invoke-static {v1, v0, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    invoke-static {v1, v0, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    :goto_0
    return v3
.end method

.method public isLocationDim()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isXiamo()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->c()Z

    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isVivo()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/amap/location/signal/impl/manu/c;->b()Z

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 30
    invoke-static {}, Lcom/amap/location/signal/impl/manu/b;->b()Z

    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->d()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 41
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->b()Z

    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-nez v0, :cond_4

    .line 49
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/d;->a()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_5

    .line 55
    :cond_4
    const/4 v1, 0x1

    .line 56
    :cond_5
    return v1
.end method

.method public isLocationOn()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    const/16 v2, 0x1c

    .line 6
    if-lt v1, v2, :cond_0

    .line 8
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lwu0;->a(Landroid/location/LocationManager;)Z

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/content/Context;

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "location_mode"

    .line 29
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return v0

    .line 36
    :cond_1
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 39
    move-result-object v1

    .line 40
    const-string v2, "gps"

    .line 42
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 48
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 51
    move-result-object v1

    .line 52
    const-string v2, "network"

    .line 54
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 57
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    if-eqz v1, :cond_3

    .line 60
    :cond_2
    const/4 v0, 0x1

    .line 61
    :cond_3
    return v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 66
    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getPowerManager()Landroid/os/PowerManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/amap/location/signal/impl/a/d;->c:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/d;->c()V

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/amap/location/signal/impl/a/d;->c:Z

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    return p1
.end method
