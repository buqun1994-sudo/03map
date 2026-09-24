.class public Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static c:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;


# instance fields
.field public a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final b:La7$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$b;

    .line 6
    invoke-direct {v0, p0}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$b;-><init>(Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;)V

    .line 9
    iput-object v0, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b:La7$b;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;)La7$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b:La7$b;

    .line 3
    return-object p0
.end method

.method public static b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->c:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 3
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "IntelligentSpeedLimitService"

    .line 6
    const-string v2, "start AutoBackgroundService"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, La7;->c()La7;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, La7;->d()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    invoke-static {}, La7;->c()La7;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, La7;->h(Landroid/content/Context;)V

    .line 28
    :cond_0
    return-void
.end method

.method public d(DDII)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v1, "long"

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 17
    const-string v1, "lat"

    .line 19
    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 22
    const-string v1, "dist"

    .line 24
    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string v1, "speed"

    .line 29
    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "sendISLElecEyeInfo"

    .line 38
    const v2, 0x40000002    # 2.0000005f

    .line 41
    invoke-virtual {p0, v2, v0, v1}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->g(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    :cond_0
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 52
    move-result-object v1

    .line 53
    move-wide v2, p1

    .line 54
    move-wide v4, p3

    .line 55
    move v6, p5

    .line 56
    move v7, p6

    .line 57
    invoke-virtual/range {v1 .. v7}, Lse;->notifyISLElecInfo(DDII)V

    .line 60
    return-void
.end method

.method public e(DDI)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v1, "lat"

    .line 14
    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 17
    const-string v1, "long"

    .line 19
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 22
    const-string v1, "dist"

    .line 24
    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "sendISLJctWayInfo"

    .line 33
    const v2, 0x4000000b    # 2.0000026f

    .line 36
    invoke-virtual {p0, v2, v0, v1}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->g(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    :cond_0
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 47
    move-result-object v1

    .line 48
    move-wide v2, p1

    .line 49
    move-wide v4, p3

    .line 50
    move v6, p5

    .line 51
    invoke-virtual/range {v1 .. v6}, Lse;->notifyISLJctWayInfo(DDI)V

    .line 54
    return-void
.end method

.method public f(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v1, "roadName"

    .line 14
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "roadClass"

    .line 19
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "sendISLRoadClassInfo"

    .line 28
    const v2, 0x40000003    # 2.0000007f

    .line 31
    invoke-virtual {p0, v2, v0, v1}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->g(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :cond_0
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1, p2}, Lse;->notifyISLRoadInfo(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public final g(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;

    .line 7
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;-><init>(Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 12

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    sput-object p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->c:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const-string v2, "IntelligentSpeedLimitService"

    .line 11
    const-string v3, "onCreate"

    .line 13
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    const/16 v5, 0xa

    .line 20
    const/16 v6, 0x14

    .line 22
    const-wide/16 v7, 0x1

    .line 24
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 31
    new-instance v11, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$a;

    .line 33
    invoke-direct {v11, p0}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$a;-><init>(Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;)V

    .line 36
    move-object v4, v1

    .line 37
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    iput-object v1, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    invoke-static {}, La7;->c()La7;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, La7;->d()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 52
    const-string v1, "onCreate nativeNaviOpera"

    .line 54
    new-array v3, v0, [Ljava/lang/Object;

    .line 56
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviOpera(II)V

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string v1, "onCreate WaitForBackgroundLoaded"

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, La7;->c()La7;

    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b:La7$b;

    .line 77
    invoke-virtual {v0, v1}, La7;->a(La7$b;)V

    .line 80
    invoke-static {}, La7;->c()La7;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {}, Lrv;->H()Lrv;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, La7;->h(Landroid/content/Context;)V

    .line 95
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const-string v2, "IntelligentSpeedLimitService"

    .line 9
    const-string v3, "onDestroy"

    .line 11
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, La7;->c()La7;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, La7;->d()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviOpera(II)V

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->c:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 31
    iget-object v0, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 38
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_1

    .line 7
    const-string v0, "onStartCommand startForeground"

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 12
    const-string v3, "IntelligentSpeedLimitService"

    .line 14
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const-string v0, "notification"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/NotificationManager;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-static {v3, v3, v1}, Ly6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2, v1}, Ls6;->a(Landroid/app/NotificationChannel;Z)V

    .line 34
    invoke-static {v2, v1}, Lt6;->a(Landroid/app/NotificationChannel;Z)V

    .line 37
    invoke-static {v2, v1}, Lu6;->a(Landroid/app/NotificationChannel;Z)V

    .line 40
    invoke-static {v0, v2}, Lw6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 43
    :cond_0
    invoke-static {p0, v3}, Lb40;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 50
    move-result-object v0

    .line 51
    const/16 v1, 0x2710

    .line 53
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 60
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 63
    move-result p1

    .line 64
    return p1
.end method
