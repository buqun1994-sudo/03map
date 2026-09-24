.class public Lcom/amap/api/service/AMapServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SUB_SOURCE_TYPE_AMS:I = 0x203

.field public static final SUB_SOURCE_TYPE_HMS:I = 0x202

.field public static final SUB_SOURCE_TYPE_QX:I = 0x201

.field public static final SUB_SOURCE_TYPE_SYSTEM:I

.field private static volatile l:Lcom/amap/api/service/AMapServiceHelper;

.field private static m:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:J

.field private volatile g:Lcom/amap/api/service/LocationServiceImpl;

.field private h:Lcom/amap/location/fusion/LocationProvider;

.field private i:Lcom/amap/location/sdk/c/a;

.field private j:Lcom/amap/location/sdk/b/b;

.field private k:Lcom/amap/location/sdk/d/a;

.field private n:Lcom/amap/location/fusion/b;

.field private o:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private p:Lcom/amap/location/sdk/b/b$a;

.field private volatile q:Z

.field private r:Landroid/location/LocationListener;

.field private s:Lcom/amap/location/support/bean/location/AmapLocation;

.field private t:Lcom/amap/location/support/signal/gnss/AmapLocationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/api/service/AMapServiceHelper;->m:Ljava/lang/Object;

    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/amap/api/service/AmapServiceHelperLoadedFlag;->sLoaded:Z

    .line 11
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/amap/api/service/AMapServiceHelper;->f:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    .line 11
    new-instance v0, Lcom/amap/api/service/AMapServiceHelper$4;

    .line 13
    invoke-direct {v0, p0}, Lcom/amap/api/service/AMapServiceHelper$4;-><init>(Lcom/amap/api/service/AMapServiceHelper;)V

    .line 16
    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->n:Lcom/amap/location/fusion/b;

    .line 18
    new-instance v0, Lcom/amap/api/service/AMapServiceHelper$5;

    .line 20
    const-string v1, "AMapServiceHelper"

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/amap/api/service/AMapServiceHelper$5;-><init>(Lcom/amap/api/service/AMapServiceHelper;Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->o:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 27
    new-instance v0, Lcom/amap/api/service/AMapServiceHelper$6;

    .line 29
    invoke-direct {v0, p0}, Lcom/amap/api/service/AMapServiceHelper$6;-><init>(Lcom/amap/api/service/AMapServiceHelper;)V

    .line 32
    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->p:Lcom/amap/location/sdk/b/b$a;

    .line 34
    new-instance v0, Lcom/amap/api/service/AMapServiceHelper$7;

    .line 36
    invoke-direct {v0, p0}, Lcom/amap/api/service/AMapServiceHelper$7;-><init>(Lcom/amap/api/service/AMapServiceHelper;)V

    .line 39
    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->t:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 41
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper;->a:Landroid/content/Context;

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {p1, v0}, Lcom/amap/location/sdk/a;->a(Landroid/content/Context;Z)V

    .line 47
    invoke-direct {p0}, Lcom/amap/api/service/AMapServiceHelper;->a()V

    .line 50
    return-void
.end method

.method public static synthetic a(Lcom/amap/api/service/AMapServiceHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper;->c:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/api/service/AMapServiceHelper;)Landroid/os/HandlerThread;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->b:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/LocationProvider;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper;->h:Lcom/amap/location/fusion/LocationProvider;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/sdk/b/b;)Lcom/amap/location/sdk/b/b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper;->j:Lcom/amap/location/sdk/b/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/sdk/c/a;)Lcom/amap/location/sdk/c/a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper;->i:Lcom/amap/location/sdk/c/a;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/sdk/d/a;)Lcom/amap/location/sdk/d/a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper;->k:Lcom/amap/location/sdk/d/a;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper;->s:Lcom/amap/location/support/bean/location/AmapLocation;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "amapservicehelper"

    const-string v1, ""

    .line 14
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "channel"

    .line 16
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tid"

    .line 17
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :cond_0
    invoke-static {}, Lcom/amap/location/fusion/util/AmapExtraUtil;->getDefaultExtra()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    :cond_1
    const-string v1, "from"

    const-string v4, "family"

    .line 20
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 21
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v3, :cond_2

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aosparam error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", use param:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private a()V
    .locals 2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/service/AMapServiceHelper;->f:J

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->e:Landroid/os/Handler;

    .line 10
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/amap/api/service/AMapServiceHelper$1;

    const-string v1, "amapservicehelper"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/service/AMapServiceHelper$1;-><init>(Lcom/amap/api/service/AMapServiceHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->b:Landroid/os/HandlerThread;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "loc service is on"

    .line 13
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->b:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/service/AMapServiceHelper;->c:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper;->c:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/service/AMapServiceHelper$3;

    invoke-direct {v2, p0}, Lcom/amap/api/service/AMapServiceHelper$3;-><init>(Lcom/amap/api/service/AMapServiceHelper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/amap/api/service/AMapServiceHelper;->d:Z

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "amapservicehelper"

    const-string v1, "service stop"

    .line 9
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic b(Lcom/amap/api/service/AMapServiceHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/service/AMapServiceHelper;->d:Z

    return p0
.end method

.method public static synthetic c(Lcom/amap/api/service/AMapServiceHelper;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private c()Landroid/os/IBinder;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/service/LocationServiceImpl;

    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/service/LocationServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    .line 4
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper;->h:Lcom/amap/location/fusion/LocationProvider;

    invoke-virtual {v0, v1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/location/fusion/LocationProvider;)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper;->i:Lcom/amap/location/sdk/c/a;

    invoke-virtual {v0, v1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/location/sdk/c/a;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    return-object v0
.end method

.method public static synthetic d(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->k:Lcom/amap/location/sdk/d/a;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->o:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->h:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/b/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->p:Lcom/amap/location/sdk/b/b$a;

    .line 3
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amap/api/service/AMapServiceHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/service/AMapServiceHelper;->l:Lcom/amap/api/service/AMapServiceHelper;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/amap/api/service/AMapServiceHelper;->m:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/api/service/AMapServiceHelper;->l:Lcom/amap/api/service/AMapServiceHelper;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/api/service/AMapServiceHelper;

    .line 14
    invoke-direct {v1, p0}, Lcom/amap/api/service/AMapServiceHelper;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Lcom/amap/api/service/AMapServiceHelper;->l:Lcom/amap/api/service/AMapServiceHelper;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/service/AMapServiceHelper;->l:Lcom/amap/api/service/AMapServiceHelper;

    .line 26
    return-object p0
.end method

.method public static synthetic h(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->n:Lcom/amap/location/fusion/b;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->i:Lcom/amap/location/sdk/c/a;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/api/service/LocationServiceImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->g:Lcom/amap/api/service/LocationServiceImpl;

    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->j:Lcom/amap/location/sdk/b/b;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/amap/api/service/AMapServiceHelper;)Landroid/location/LocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/service/AMapServiceHelper;->r:Landroid/location/LocationListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getLatestLocation()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->s:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    return-object v0
.end method

.method public getLocationProvider()Lcom/amap/location/fusion/LocationProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->h:Lcom/amap/location/fusion/LocationProvider;

    .line 3
    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "100xyz"

    .line 3
    const-string v1, "UTF-8"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lcom/autonavi/jni/location/security/NativeCore;->xxt([BI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return v1

    .line 14
    :catchall_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string p1, "amapservicehelper"

    .line 3
    const-string v0, "on bind"

    .line 5
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const p1, 0x186ff

    .line 11
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 14
    invoke-direct {p0}, Lcom/amap/api/service/AMapServiceHelper;->c()Landroid/os/IBinder;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/service/AMapServiceHelper;->q:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "amapservice"

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/amap/api/service/AMapServiceHelper;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    const-string v1, "amapservicehelper"

    .line 26
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->e:Landroid/os/Handler;

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    const v0, 0x1ae36

    .line 38
    invoke-static {v0, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 41
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper;->b:Landroid/os/HandlerThread;

    .line 43
    monitor-enter v0

    .line 44
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/service/AMapServiceHelper;->c:Landroid/os/Handler;

    .line 46
    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Lcom/amap/api/service/AMapServiceHelper;->c:Landroid/os/Handler;

    .line 53
    new-instance v3, Lcom/amap/api/service/AMapServiceHelper$2;

    .line 55
    invoke-direct {v3, p0}, Lcom/amap/api/service/AMapServiceHelper$2;-><init>(Lcom/amap/api/service/AMapServiceHelper;)V

    .line 58
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x1

    .line 63
    iput-boolean v2, p0, Lcom/amap/api/service/AMapServiceHelper;->d:Z

    .line 65
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 66
    sget-object v2, Lcom/amap/api/service/AMapServiceHelper;->m:Ljava/lang/Object;

    .line 68
    monitor-enter v2

    .line 69
    :try_start_2
    sput-object v1, Lcom/amap/api/service/AMapServiceHelper;->l:Lcom/amap/api/service/AMapServiceHelper;

    .line 71
    monitor-exit v2

    .line 72
    return-void

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    throw v0

    .line 76
    :catchall_2
    move-exception v1

    .line 77
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 78
    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public removeOutterUpdates()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/fusion/LocationProvider;->getMainProvider()Lcom/amap/location/fusion/LocationProvider;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/amap/location/fusion/LocationProvider;->removeFromThird()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public requestOutterUseLocationUpdates(Ljava/lang/String;IJFLandroid/location/LocationListener;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/amap/location/fusion/LocationProvider;->getMainProvider()Lcom/amap/location/fusion/LocationProvider;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/service/AMapServiceHelper;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 15
    return v1

    .line 16
    :cond_1
    iput-object p6, p0, Lcom/amap/api/service/AMapServiceHelper;->r:Landroid/location/LocationListener;

    .line 18
    iget-boolean p6, v0, Lcom/amap/location/fusion/LocationProvider;->mNeedUpdateAosParam:Z

    .line 20
    if-eqz p6, :cond_2

    .line 22
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/LocationProvider;->updateConfig(Lorg/json/JSONObject;)V

    .line 25
    :cond_2
    iget-object v5, p0, Lcom/amap/api/service/AMapServiceHelper;->t:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 27
    move v1, p2

    .line 28
    move-wide v2, p3

    .line 29
    move v4, p5

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/amap/location/fusion/LocationProvider;->requestFromThird(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public setOutterUse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/service/AMapServiceHelper;->q:Z

    .line 3
    return-void
.end method
