.class public Lcom/amap/location/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/amap/location/g/c;


# instance fields
.field private volatile b:Z

.field private c:Z

.field private d:F

.field private e:J

.field private f:F

.field private g:J

.field private h:Lcom/amap/location/support/handler/AmapHandler;

.field private i:Lcom/amap/location/support/handler/AmapHandlerThread;

.field private j:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/g/c$2;

    .line 6
    invoke-direct {v0, p0}, Lcom/amap/location/g/c$2;-><init>(Lcom/amap/location/g/c;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/g/c;->j:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 11
    return-void
.end method

.method public static a()Lcom/amap/location/g/c;
    .locals 2

    .line 4
    sget-object v0, Lcom/amap/location/g/c;->a:Lcom/amap/location/g/c;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/g/c;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/amap/location/g/c;->a:Lcom/amap/location/g/c;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/amap/location/g/c;

    invoke-direct {v1}, Lcom/amap/location/g/c;-><init>()V

    sput-object v1, Lcom/amap/location/g/c;->a:Lcom/amap/location/g/c;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/g/c;->a:Lcom/amap/location/g/c;

    return-object v0
.end method

.method public static synthetic a(Lcom/amap/location/g/c;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/c;->h:Lcom/amap/location/support/handler/AmapHandler;

    return-object p1
.end method

.method private a(F)V
    .locals 2

    .line 22
    iput p1, p0, Lcom/amap/location/g/c;->d:F

    .line 23
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/g/c;->e:J

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/g/c;F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/g/c;->b(F)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 21
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/location/support/signal/sensor/ISensorManager;->getDefaultSensor(I)Lcom/amap/location/support/bean/sensor/AmapSensor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(JI)Z
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    return v2

    .line 24
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    int-to-long v0, p3

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static synthetic a(Lcom/amap/location/g/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/amap/location/g/c;->b:Z

    return p1
.end method

.method private b(F)V
    .locals 2

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const p1, 0x461c4000    # 10000.0f

    .line 8
    :cond_0
    iput p1, p0, Lcom/amap/location/g/c;->f:F

    .line 9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/g/c;->g:J

    return-void
.end method

.method public static synthetic b(Lcom/amap/location/g/c;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/g/c;->a(F)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/AmapFps;)V
    .locals 5

    const/4 v0, 0x0

    .line 10
    iput v0, p1, Lcom/amap/location/support/bean/AmapFps;->pressureSensorValue:F

    .line 11
    iput v0, p1, Lcom/amap/location/support/bean/AmapFps;->lightSensorValue:F

    .line 12
    iget-object v0, p1, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 13
    aput v1, v0, v2

    .line 14
    iget-wide v3, p0, Lcom/amap/location/g/c;->g:J

    const/16 v0, 0x5dc

    invoke-direct {p0, v3, v4, v0}, Lcom/amap/location/g/c;->a(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    iget v3, p0, Lcom/amap/location/g/c;->f:F

    iput v3, p1, Lcom/amap/location/support/bean/AmapFps;->pressureSensorValue:F

    .line 16
    :cond_0
    iget-wide v3, p0, Lcom/amap/location/g/c;->e:J

    invoke-direct {p0, v3, v4, v0}, Lcom/amap/location/g/c;->a(JI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    iget v3, p0, Lcom/amap/location/g/c;->d:F

    iput v3, p1, Lcom/amap/location/support/bean/AmapFps;->lightSensorValue:F

    .line 18
    :cond_1
    :try_start_0
    iget-object v3, p1, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getCn0Count(II)I

    move-result v4

    aput v4, v3, v1

    .line 19
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->cn0Count:[I

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v1

    const/16 v3, 0x14

    invoke-interface {v1, v3, v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getCn0Count(II)I

    move-result v0

    aput v0, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FpsSensorFeatureManager"

    .line 20
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/amap/location/g/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/sensor/ISensorManager;->getDefaultSensor(I)Lcom/amap/location/support/bean/sensor/AmapSensor;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/amap/location/support/signal/sensor/ISensorManager;->getDefaultSensor(I)Lcom/amap/location/support/bean/sensor/AmapSensor;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/location/g/c;->i:Lcom/amap/location/support/handler/AmapHandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/location/g/c;->h:Lcom/amap/location/support/handler/AmapHandler;

    if-nez v0, :cond_3

    .line 6
    :cond_2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    new-instance v1, Lcom/amap/location/g/c$1;

    invoke-direct {v1, p0}, Lcom/amap/location/g/c$1;-><init>(Lcom/amap/location/g/c;)V

    const-string v2, "fpsSensor"

    const/16 v3, 0xa

    invoke-interface {v0, v2, v3, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandlerThread(Ljava/lang/String;ILcom/amap/location/support/handler/OnLooperPrepared;)Lcom/amap/location/support/handler/AmapHandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/g/c;->i:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 7
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapHandlerThread;->start()V

    :cond_3
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/g/c;->c:Z

    .line 3
    return v0
.end method

.method public d()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/g/c;->b:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/amap/location/g/c;->c:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/amap/location/g/c;->c:Z

    .line 13
    :try_start_0
    sget-boolean v0, Lcom/amap/location/g/a;->j:Z

    .line 15
    if-eqz v0, :cond_2

    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-direct {p0, v0}, Lcom/amap/location/g/c;->a(I)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/amap/location/g/c;->j:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 34
    const/4 v3, 0x5

    .line 35
    const/4 v4, 0x3

    .line 36
    const/4 v5, 0x0

    .line 37
    iget-object v6, p0, Lcom/amap/location/g/c;->h:Lcom/amap/location/support/handler/AmapHandler;

    .line 39
    invoke-interface/range {v1 .. v6}, Lcom/amap/location/support/signal/sensor/ISensorManager;->registerListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;IIILcom/amap/location/support/handler/AmapHandler;)Z

    .line 42
    :cond_1
    const/4 v0, 0x6

    .line 43
    invoke-direct {p0, v0}, Lcom/amap/location/g/c;->a(I)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/amap/location/g/c;->j:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 59
    const/4 v3, 0x6

    .line 60
    const/4 v4, 0x3

    .line 61
    const/4 v5, 0x0

    .line 62
    iget-object v6, p0, Lcom/amap/location/g/c;->h:Lcom/amap/location/support/handler/AmapHandler;

    .line 64
    invoke-interface/range {v1 .. v6}, Lcom/amap/location/support/signal/sensor/ISensorManager;->registerListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;IIILcom/amap/location/support/handler/AmapHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "FpsSensorFeatureManager"

    .line 71
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/g/c;->b:Z

    .line 3
    if-eqz v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/amap/location/g/c;->c:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/amap/location/g/c;->c:Z

    .line 13
    :try_start_0
    sget-boolean v0, Lcom/amap/location/g/a;->j:Z

    .line 15
    if-eqz v0, :cond_2

    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-direct {p0, v0}, Lcom/amap/location/g/c;->a(I)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/amap/location/g/c;->j:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 34
    invoke-interface {v1, v2, v0}, Lcom/amap/location/support/signal/sensor/ISensorManager;->unregisterListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;I)V

    .line 37
    :cond_1
    const/4 v0, 0x6

    .line 38
    invoke-direct {p0, v0}, Lcom/amap/location/g/c;->a(I)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 44
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/amap/location/g/c;->j:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 54
    invoke-interface {v1, v2, v0}, Lcom/amap/location/support/signal/sensor/ISensorManager;->unregisterListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;I)V

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/amap/location/g/c;->h:Lcom/amap/location/support/handler/AmapHandler;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "FpsSensorFeatureManager"

    .line 69
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const-string v0, "FpsSensorFeatureManager"

    .line 3
    invoke-virtual {p0}, Lcom/amap/location/g/c;->e()V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/g/c;->i:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1}, Lcom/amap/location/support/handler/AmapHandlerThread;->quitThread()Z

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/amap/location/g/c;->h:Lcom/amap/location/support/handler/AmapHandler;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/amap/location/g/c;->h:Lcom/amap/location/support/handler/AmapHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/amap/location/g/c;->b:Z

    .line 28
    const-string v1, "fps sensor stop"

    .line 30
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
