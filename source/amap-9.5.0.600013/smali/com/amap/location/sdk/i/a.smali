.class public Lcom/amap/location/sdk/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/i/a$b;,
        Lcom/amap/location/sdk/i/a$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;

.field private static volatile f:Lcom/amap/location/sdk/i/a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private g:Landroid/location/LocationManager;

.field private h:Lcom/amap/location/sdk/i/a$b;

.field private i:Landroid/os/Handler;

.field private volatile j:Z

.field private k:Z

.field private l:Lcom/amap/location/sdk/i/a$a;

.field private m:I

.field private n:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private o:Lcom/amap/location/sdk/fusion/c$a;

.field private p:I

.field private q:Z

.field private r:J

.field private s:I

.field private t:J

.field private u:J

.field private v:Z

.field private final w:Landroid/location/LocationListener;

.field private final x:Ljava/lang/Runnable;

.field private y:Lcom/amap/location/sdk/i/a$a;

.field private z:Lcom/amap/location/sdk/i/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/sdk/i/a;->e:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x1899d

    .line 7
    iput v0, p0, Lcom/amap/location/sdk/i/a;->a:I

    .line 9
    const v0, 0x18960

    .line 12
    iput v0, p0, Lcom/amap/location/sdk/i/a;->b:I

    .line 14
    const v0, 0x1ae2d

    .line 17
    iput v0, p0, Lcom/amap/location/sdk/i/a;->c:I

    .line 19
    const v0, 0x1ae2c

    .line 22
    iput v0, p0, Lcom/amap/location/sdk/i/a;->d:I

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->j:Z

    .line 27
    iput v0, p0, Lcom/amap/location/sdk/i/a;->m:I

    .line 29
    const/16 v1, 0xa

    .line 31
    iput v1, p0, Lcom/amap/location/sdk/i/a;->p:I

    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/amap/location/sdk/i/a;->q:Z

    .line 36
    const-wide/32 v1, 0xea60

    .line 39
    iput-wide v1, p0, Lcom/amap/location/sdk/i/a;->r:J

    .line 41
    iput v0, p0, Lcom/amap/location/sdk/i/a;->s:I

    .line 43
    const-wide/16 v1, 0x0

    .line 45
    iput-wide v1, p0, Lcom/amap/location/sdk/i/a;->t:J

    .line 47
    iput-wide v1, p0, Lcom/amap/location/sdk/i/a;->u:J

    .line 49
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->v:Z

    .line 51
    new-instance v0, Lcom/amap/location/sdk/i/a$1;

    .line 53
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/i/a$1;-><init>(Lcom/amap/location/sdk/i/a;)V

    .line 56
    iput-object v0, p0, Lcom/amap/location/sdk/i/a;->w:Landroid/location/LocationListener;

    .line 58
    new-instance v0, Lcom/amap/location/sdk/i/a$2;

    .line 60
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/i/a$2;-><init>(Lcom/amap/location/sdk/i/a;)V

    .line 63
    iput-object v0, p0, Lcom/amap/location/sdk/i/a;->x:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/amap/location/sdk/i/a$3;

    .line 67
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/i/a$3;-><init>(Lcom/amap/location/sdk/i/a;)V

    .line 70
    iput-object v0, p0, Lcom/amap/location/sdk/i/a;->y:Lcom/amap/location/sdk/i/a$a;

    .line 72
    new-instance v0, Lcom/amap/location/sdk/i/a$4;

    .line 74
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/i/a$4;-><init>(Lcom/amap/location/sdk/i/a;)V

    .line 77
    iput-object v0, p0, Lcom/amap/location/sdk/i/a;->z:Lcom/amap/location/sdk/i/a$a;

    .line 79
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/i/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/sdk/i/a;->s:I

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/sdk/i/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/sdk/i/a;->u:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/amap/location/sdk/i/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/sdk/i/a;->i:Landroid/os/Handler;

    return-object p1
.end method

.method public static a()Lcom/amap/location/sdk/i/a;
    .locals 2

    .line 6
    sget-object v0, Lcom/amap/location/sdk/i/a;->f:Lcom/amap/location/sdk/i/a;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/amap/location/sdk/i/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/sdk/i/a;->f:Lcom/amap/location/sdk/i/a;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/amap/location/sdk/i/a;

    invoke-direct {v1}, Lcom/amap/location/sdk/i/a;-><init>()V

    sput-object v1, Lcom/amap/location/sdk/i/a;->f:Lcom/amap/location/sdk/i/a;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/sdk/i/a;->f:Lcom/amap/location/sdk/i/a;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Z
    .locals 2

    .line 37
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "SourceType"

    const/4 v1, -0x1

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x80

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "LocMonitor"

    const-string v1, ""

    .line 40
    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/sdk/i/a;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/amap/location/sdk/i/a;->k:Z

    return p0
.end method

.method public static synthetic a(Lcom/amap/location/sdk/i/a;Landroid/location/Location;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/i/a;->a(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/amap/location/sdk/i/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/sdk/i/a;->t:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/amap/location/sdk/i/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/sdk/i/a;->r:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/amap/location/sdk/i/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/sdk/i/a;->u:J

    return-wide v0
.end method

.method private e()V
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/sdk/i/a;->t:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/location/sdk/i/a;->u:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/amap/location/sdk/i/a;->s:I

    .line 5
    iget-object v0, p0, Lcom/amap/location/sdk/i/a;->h:Lcom/amap/location/sdk/i/a$b;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->x:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/amap/location/sdk/i/a;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/location/sdk/i/a$b;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/amap/location/sdk/i/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/sdk/i/a;->f()V

    return-void
.end method

.method public static synthetic f(Lcom/amap/location/sdk/i/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/sdk/i/a;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/location/sdk/i/a;->s:I

    return v0
.end method

.method private f()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/amap/location/sdk/i/a;->q:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->getInstance()Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->setParams(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/amap/location/sdk/i/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/sdk/i/a;->s:I

    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/sdk/i/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/i/a;->l:Lcom/amap/location/sdk/i/a$a;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/amap/location/sdk/i/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/sdk/i/a;->p:I

    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/sdk/i/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/i/a;->h:Lcom/amap/location/sdk/i/a$b;

    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/amap/location/sdk/i/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/i/a;->x:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/sdk/fusion/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/i/a;->o:Lcom/amap/location/sdk/fusion/c$a;

    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/amap/location/sdk/i/a;)Landroid/location/LocationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/i/a;->g:Landroid/location/LocationManager;

    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/i/a;->n:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/amap/location/sdk/i/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/sdk/i/a;->i:Landroid/os/Handler;

    .line 3
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(ILcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/sdk/fusion/c$a;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 12
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->v:Z

    .line 13
    iput p1, p0, Lcom/amap/location/sdk/i/a;->m:I

    .line 14
    iput-object p2, p0, Lcom/amap/location/sdk/i/a;->n:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 15
    iput-object p3, p0, Lcom/amap/location/sdk/i/a;->o:Lcom/amap/location/sdk/fusion/c$a;

    .line 16
    iget-boolean p2, p0, Lcom/amap/location/sdk/i/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasFineLocationPermission()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "LocMonitor"

    const-string p2, "startMonitor: no loc permission"

    .line 19
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :cond_1
    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    :try_start_2
    const-string p1, "LocMonitor"

    const-string p2, "no request gps"

    .line 21
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 23
    :cond_3
    :try_start_3
    iget-boolean p1, p0, Lcom/amap/location/sdk/i/a;->k:Z

    if-nez p1, :cond_6

    .line 24
    iget-object p1, p0, Lcom/amap/location/sdk/i/a;->g:Landroid/location/LocationManager;

    if-nez p1, :cond_4

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/amap/location/sdk/i/a;->g:Landroid/location/LocationManager;

    .line 26
    :cond_4
    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->g:Landroid/location/LocationManager;

    if-eqz v1, :cond_5

    const-string v2, "passive"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    .line 27
    iget-object v6, p0, Lcom/amap/location/sdk/i/a;->w:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 28
    :cond_5
    invoke-direct {p0}, Lcom/amap/location/sdk/i/a;->e()V

    .line 29
    :cond_6
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->k:Z

    const-string p1, "LocMonitor"

    const-string p2, "startMonitor "

    .line 30
    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "LocMonitor"

    .line 31
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/amap/location/sdk/i/a;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/amap/location/sdk/i/a;->e()V

    .line 35
    iget-object v0, p0, Lcom/amap/location/sdk/i/a;->l:Lcom/amap/location/sdk/i/a$a;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/i/a$a;->a(Z)V

    :cond_1
    return-void
.end method

.method public declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/sdk/i/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v0

    const-string v1, "sdkLocationMonitor"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "feedback"

    .line 6
    iget-boolean v4, p0, Lcom/amap/location/sdk/i/a;->q:Z

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/amap/location/sdk/i/a;->q:Z

    const-string v3, "unloccycle"

    .line 7
    iget-wide v4, p0, Lcom/amap/location/sdk/i/a;->r:J

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amap/location/sdk/i/a;->r:J

    const-string v3, "fuse"

    .line 8
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "fuseCount"

    .line 9
    iget v4, p0, Lcom/amap/location/sdk/i/a;->p:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amap/location/sdk/i/a;->p:I

    if-eqz v1, :cond_3

    .line 10
    iget-boolean v0, p0, Lcom/amap/location/sdk/i/a;->j:Z

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcom/amap/location/sdk/i/a$b;

    const-string v1, "sdkLocationMonitor"

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v3}, Lcom/amap/location/sdk/i/a$b;-><init>(Lcom/amap/location/sdk/i/a;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/amap/location/sdk/i/a;->h:Lcom/amap/location/sdk/i/a$b;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    .line 13
    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->y:Lcom/amap/location/sdk/i/a$a;

    iput-object v1, p0, Lcom/amap/location/sdk/i/a;->l:Lcom/amap/location/sdk/i/a$a;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v2, v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->z:Lcom/amap/location/sdk/i/a$a;

    iput-object v1, p0, Lcom/amap/location/sdk/i/a;->l:Lcom/amap/location/sdk/i/a$a;

    .line 15
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->j:Z

    const-string v0, "LocMonitor"

    const-string v1, "monitor init"

    .line 16
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean v0, p0, Lcom/amap/location/sdk/i/a;->v:Z

    if-eqz v0, :cond_3

    .line 18
    iget v0, p0, Lcom/amap/location/sdk/i/a;->m:I

    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->n:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    iget-object v2, p0, Lcom/amap/location/sdk/i/a;->o:Lcom/amap/location/sdk/fusion/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/location/sdk/i/a;->a(ILcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/sdk/fusion/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/sdk/i/a;->j:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/amap/location/sdk/i/a;->h:Lcom/amap/location/sdk/i/a$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/amap/location/sdk/i/a$b;->a(Lcom/amap/location/sdk/i/a$b;Z)Z

    .line 5
    iget-object v0, p0, Lcom/amap/location/sdk/i/a;->h:Lcom/amap/location/sdk/i/a$b;

    invoke-virtual {v0}, Lcom/amap/location/sdk/i/a$b;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->j:Z

    :cond_1
    const-string v0, "LocMonitor"

    const-string v1, "destroy "

    .line 7
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->v:Z

    .line 3
    iget-boolean v1, p0, Lcom/amap/location/sdk/i/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/amap/location/sdk/i/a;->k:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->g:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Lcom/amap/location/sdk/i/a;->w:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->h:Lcom/amap/location/sdk/i/a$b;

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Lcom/amap/location/sdk/i/a;->x:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/amap/location/sdk/i/a$b;->a(Ljava/lang/Runnable;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/amap/location/sdk/i/a;->l:Lcom/amap/location/sdk/i/a$a;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/amap/location/sdk/i/a$a;->b()V

    .line 12
    :cond_3
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a;->k:Z

    const-string v0, "LocMonitor"

    const-string v1, "stopMonitor "

    .line 13
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LocMonitor"

    .line 14
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
