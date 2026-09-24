.class public final Lzx$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/hardware/SensorManager;

.field public b:Landroid/os/HandlerThread;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "sensor"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/hardware/SensorManager;

    .line 20
    iput-object v0, p0, Lzx$d;->a:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lzx$d;->a:Landroid/hardware/SensorManager;

    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzx$d;->a:Landroid/hardware/SensorManager;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lzx$d;->b:Landroid/os/HandlerThread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lzx$d;->b()V

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-class v2, Lzx$d;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "_SensorThread"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object v0, p0, Lzx$d;->b:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    .line 54
    iget-object v1, p0, Lzx$d;->b:Landroid/os/HandlerThread;

    .line 56
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    :try_start_0
    iget-object v1, p0, Lzx$d;->a:Landroid/hardware/SensorManager;

    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 69
    move-result-object v2

    .line 70
    const/4 v3, 0x3

    .line 71
    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    const/4 v1, 0x1

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    aput-object v0, v1, v2

    .line 89
    const-string v0, "Location&DR"

    .line 91
    const-string v2, "sensorManager.registerListener Exception,e={?}"

    .line 93
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzx$d;->a:Landroid/hardware/SensorManager;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 8
    iget-object v0, p0, Lzx$d;->b:Landroid/os/HandlerThread;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lzx$d;->b:Landroid/os/HandlerThread;

    .line 18
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "Location&DR"

    .line 15
    const-string v3, "Listener.start() sdk_int={?}"

    .line 17
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const-string v0, "addGpsStatusListener"

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lzx;->p:Lxy;

    .line 29
    invoke-interface {v0, p0}, Lxy;->p(Landroid/location/GpsStatus$Listener;)V

    .line 32
    invoke-virtual {p0}, Lzx$d;->a()V

    .line 35
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Location&DR"

    .line 6
    const-string v2, "Listener.stop()"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lzx;->p:Lxy;

    .line 13
    invoke-interface {v0, p0}, Lxy;->l(Landroid/location/GpsStatus$Listener;)V

    .line 16
    invoke-virtual {p0}, Lzx$d;->b()V

    .line 19
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_3

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_2

    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p1, v0, :cond_1

    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq p1, v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lzx;->h()Lzx;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lzx;->o()V

    .line 22
    invoke-static {}, Lzx;->a()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "\u536b\u661f\u72b6\u6001\u6539\u53d8"

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lzx;->a()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string v0, "\u7b2c\u4e00\u6b21\u5b9a\u4f4d"

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lzx;->a()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const-string v0, "\u5b9a\u4f4d\u7ed3\u675f"

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {}, Lzx;->a()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    const-string v0, "\u5b9a\u4f4d\u542f\u52a8"

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-wide v0, p0, Lzx$d;->c:J

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    cmp-long v4, v0, v2

    .line 21
    if-nez v4, :cond_1

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    move-result-wide v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v0

    .line 32
    iget-wide v2, p0, Lzx$d;->c:J

    .line 34
    sub-long/2addr v0, v2

    .line 35
    :goto_0
    iput-wide v0, p0, Lzx$d;->c:J

    .line 37
    invoke-static {}, Lzx;->h()Lzx;

    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x7

    .line 43
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 45
    const/4 v0, 0x0

    .line 46
    aget v5, p1, v0

    .line 48
    const/4 v0, 0x1

    .line 49
    aget v6, p1, v0

    .line 51
    const/4 v0, 0x2

    .line 52
    aget v7, p1, v0

    .line 54
    const/4 v8, 0x0

    .line 55
    iget-wide v0, p0, Lzx$d;->c:J

    .line 57
    long-to-int v9, v0

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    move-result-wide v10

    .line 62
    invoke-virtual/range {v2 .. v11}, Lzx;->s(IIFFFFIJ)V

    .line 65
    :cond_2
    :goto_1
    return-void
.end method
