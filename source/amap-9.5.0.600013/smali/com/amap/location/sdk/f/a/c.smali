.class public Lcom/amap/location/sdk/f/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/BroadcastReceiver;

.field private b:Z

.field private c:Lcom/amap/location/sdk/f/a/b;

.field private d:J

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/sdk/f/a/c$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/f/a/c$1;-><init>(Lcom/amap/location/sdk/f/a/c;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/sdk/f/a/c;->a:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/f/a/c;Lcom/amap/location/sdk/f/a/b;)Lcom/amap/location/sdk/f/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/f/a/c;->c:Lcom/amap/location/sdk/f/a/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/sdk/f/a/c;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 55
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v2, "amap.intent.action.location.status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vivo.dr"

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "value"

    .line 58
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sendTime"

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/f/a/c;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/amap/location/sdk/f/a/c;->b:Z

    return p0
.end method

.method private c()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isVivo()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    move-result-object v0

    .line 14
    const-string v2, "getBoolean"

    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    const-class v5, Ljava/lang/String;

    .line 21
    aput-object v5, v4, v1

    .line 23
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 25
    const/4 v6, 0x1

    .line 26
    aput-object v5, v4, v6

    .line 28
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    move-result-object v2

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    const-string v4, "persist.vivo.jpark.location"

    .line 36
    aput-object v4, v3, v1

    .line 38
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    aput-object v4, v3, v6

    .line 42
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 57
    :cond_0
    return v1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/sdk/f/a/c;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/amap/location/sdk/f/a/c;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/sdk/f/a/c;->e:Ljava/lang/Boolean;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/f/a/c;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 7
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v0

    const-string v1, "vivopark"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable"

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "max_in_time"

    .line 9
    sget-wide v2, Lcom/amap/location/sdk/f/a/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/amap/location/sdk/f/a/a;->a:J

    const-string v1, "max_out_time"

    .line 10
    sget-wide v2, Lcom/amap/location/sdk/f/a/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/amap/location/sdk/f/a/a;->b:J

    const-string v1, "max_park_dis"

    .line 11
    sget v2, Lcom/amap/location/sdk/f/a/a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/amap/location/sdk/f/a/a;->c:I

    const-string v1, "max_lane_dis"

    .line 12
    sget v2, Lcom/amap/location/sdk/f/a/a;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/amap/location/sdk/f/a/a;->d:I

    const-string v1, "park_with_poiid"

    .line 13
    sget-boolean v2, Lcom/amap/location/sdk/f/a/a;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/amap/location/sdk/f/a/a;->e:Z

    const-string v1, "lane_with_poiid"

    .line 14
    sget-boolean v2, Lcom/amap/location/sdk/f/a/a;->f:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/amap/location/sdk/f/a/a;->f:Z

    const-string v1, "acc_thd"

    .line 15
    sget v2, Lcom/amap/location/sdk/f/a/a;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/amap/location/sdk/f/a/a;->g:I

    const-string v1, "send_park_time"

    .line 16
    sget-wide v2, Lcom/amap/location/sdk/f/a/a;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/amap/location/sdk/f/a/a;->h:J

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "vivo.intent.action.location.garage_status_broadcast"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    .line 20
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/location/sdk/f/a/c;->a:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Ler0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/location/sdk/f/a/c;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const-string v0, "start"

    .line 22
    invoke-direct {p0, v0}, Lcom/amap/location/sdk/f/a/c;->a(Ljava/lang/String;)V

    const-string v0, "VivoGarageRecognizer"

    const-string v1, "start"

    .line 23
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/amap/location/sdk/f/a/c;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    :try_start_2
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 13

    .line 27
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a/c;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/f/a/c;->c:Lcom/amap/location/sdk/f/a/b;

    const-string v8, "parkInfo"

    const-string v9, "hasVivoParkInfo"

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v9, v0}, Lcom/amap/location/type/location/Location;->getOptAttrBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1, v8}, Lcom/amap/location/type/location/Location;->removeOptAttr(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, v9}, Lcom/amap/location/type/location/Location;->removeOptAttr(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 32
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 33
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v1, v0

    move-wide v2, v10

    invoke-virtual/range {v1 .. v7}, Lcom/amap/location/sdk/f/a/b;->a(JDD)Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 34
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/location/sdk/f/a/b;->a(ZDD)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v1, v0

    move-wide v2, v10

    invoke-virtual/range {v1 .. v7}, Lcom/amap/location/sdk/f/a/b;->b(JDD)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/location/sdk/f/a/b;->a(ZDD)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v12

    .line 37
    :goto_0
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 38
    invoke-virtual {v0}, Lcom/amap/location/sdk/f/a/b;->a()Z

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x1ae5b

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    const-string v2, "set_garage"

    .line 40
    invoke-direct {p0, v2}, Lcom/amap/location/sdk/f/a/c;->a(Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, v2}, Lcom/amap/location/sdk/f/a/b;->a(Z)V

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v8, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v9, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Lcom/amap/location/sdk/f/a/b;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 45
    iput-wide v10, p0, Lcom/amap/location/sdk/f/a/c;->d:J

    .line 46
    iput-object v12, p0, Lcom/amap/location/sdk/f/a/c;->c:Lcom/amap/location/sdk/f/a/b;

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Lcom/amap/location/type/location/LocationMatch;)V
    .locals 8

    .line 47
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a/c;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/LocationMatch;->getYawType()B

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    iget-wide v2, p0, Lcom/amap/location/sdk/f/a/c;->d:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/amap/location/sdk/f/a/a;->h:J

    const-wide/16 v6, 0x3e8

    mul-long v2, v2, v6

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const-string p1, "yaw_park"

    .line 51
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a/c;->a(Ljava/lang/String;)V

    const p1, 0x1ae5c

    const/4 v0, 0x0

    .line 52
    invoke-static {p1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 53
    iput-wide v4, p0, Lcom/amap/location/sdk/f/a/c;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/content/Context;

    .line 12
    iget-object v1, p0, Lcom/amap/location/sdk/f/a/c;->a:Landroid/content/BroadcastReceiver;

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    const-string v1, "VivoGarageRecognizer"

    .line 21
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :goto_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/amap/location/sdk/f/a/c;->b:Z

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amap/location/sdk/f/a/c;->c:Lcom/amap/location/sdk/f/a/b;

    .line 30
    const-string v0, "VivoGarageRecognizer"

    .line 32
    const-string v1, "stop"

    .line 34
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0
.end method
