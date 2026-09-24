.class public Lcom/amap/location/fusion/a/b;
.super Lcom/amap/location/support/location/AbstractPriorityLocationFilter;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/fusion/a/a;

.field private final b:Lcom/amap/location/fusion/a/a;

.field private final c:Lcom/amap/location/fusion/a/a;

.field private final d:Lcom/amap/location/support/handler/AmapHandler;

.field private final e:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private f:J

.field private final g:Z

.field private h:Lcom/amap/location/support/handler/OnHandleMessage;

.field private i:Lcom/amap/location/support/guard/LocationGuarderListener;


# direct methods
.method public constructor <init>(ZLcom/amap/location/support/signal/gnss/AmapLocationListener;Lorg/json/JSONObject;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1388

    .line 3
    invoke-direct {p0, v0, v1, p4}, Lcom/amap/location/support/location/AbstractPriorityLocationFilter;-><init>(JLcom/amap/location/support/handler/AmapLooper;)V

    .line 6
    const-wide/16 v0, 0x3e8

    .line 8
    iput-wide v0, p0, Lcom/amap/location/fusion/a/b;->f:J

    .line 10
    new-instance v0, Lcom/amap/location/fusion/a/b$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/a/b$1;-><init>(Lcom/amap/location/fusion/a/b;)V

    .line 15
    iput-object v0, p0, Lcom/amap/location/fusion/a/b;->h:Lcom/amap/location/support/handler/OnHandleMessage;

    .line 17
    new-instance v0, Lcom/amap/location/fusion/a/b$2;

    .line 19
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/a/b$2;-><init>(Lcom/amap/location/fusion/a/b;)V

    .line 22
    iput-object v0, p0, Lcom/amap/location/fusion/a/b;->i:Lcom/amap/location/support/guard/LocationGuarderListener;

    .line 24
    iput-boolean p1, p0, Lcom/amap/location/fusion/a/b;->g:Z

    .line 26
    iput-object p2, p0, Lcom/amap/location/fusion/a/b;->e:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 28
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->h:Lcom/amap/location/support/handler/OnHandleMessage;

    .line 34
    invoke-interface {p2, p4, v0}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/amap/location/fusion/a/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p4}, Lcom/amap/location/fusion/a/c/d;->a(Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/fusion/a/c/d;

    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    .line 48
    if-eqz p2, :cond_0

    .line 50
    new-instance v0, Lcom/amap/location/support/location/LocationFilterCallback;

    .line 52
    const/16 v1, 0x1f4

    .line 54
    invoke-direct {v0, v1, p0}, Lcom/amap/location/support/location/LocationFilterCallback;-><init>(ILcom/amap/location/support/location/AbstractPriorityLocationFilter;)V

    .line 57
    invoke-virtual {p2, v0}, Lcom/amap/location/support/location/AbstractLocator;->setCallback(Lcom/amap/location/support/location/AbstractLocationCallback;)V

    .line 60
    :cond_0
    new-instance p2, Lcom/amap/location/fusion/a/a/a;

    .line 62
    invoke-direct {p2, p1, p4}, Lcom/amap/location/fusion/a/a/a;-><init>(ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 65
    iput-object p2, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    .line 67
    new-instance v0, Lcom/amap/location/support/location/LocationFilterCallback;

    .line 69
    const/16 v1, 0x12c

    .line 71
    invoke-direct {v0, v1, p0}, Lcom/amap/location/support/location/LocationFilterCallback;-><init>(ILcom/amap/location/support/location/AbstractPriorityLocationFilter;)V

    .line 74
    invoke-virtual {p2, v0}, Lcom/amap/location/support/location/AbstractLocator;->setCallback(Lcom/amap/location/support/location/AbstractLocationCallback;)V

    .line 77
    new-instance p2, Lcom/amap/location/fusion/a/b/a;

    .line 79
    invoke-direct {p2, p1, p3, p4}, Lcom/amap/location/fusion/a/b/a;-><init>(ZLorg/json/JSONObject;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 82
    iput-object p2, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    .line 84
    new-instance p1, Lcom/amap/location/support/location/LocationFilterCallback;

    .line 86
    const/16 p3, 0x64

    .line 88
    invoke-direct {p1, p3, p0}, Lcom/amap/location/support/location/LocationFilterCallback;-><init>(ILcom/amap/location/support/location/AbstractPriorityLocationFilter;)V

    .line 91
    invoke-virtual {p2, p1}, Lcom/amap/location/support/location/AbstractLocator;->setCallback(Lcom/amap/location/support/location/AbstractLocationCallback;)V

    .line 94
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/a/b;)Lcom/amap/location/fusion/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/amap/location/fusion/a/b;)Lcom/amap/location/fusion/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/fusion/a/b;)Lcom/amap/location/fusion/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "oriloc"

    const-string v1, "stop"

    .line 23
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 25
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 26
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 28
    :cond_0
    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/support/guard/LocationGuarder;->stop()V

    .line 29
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractPriorityLocationFilter;->pauseFilter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(IJ)V
    .locals 7

    monitor-enter p0

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-string v0, "oriloc"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/amap/location/support/app/IModule;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",g:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    invoke-interface {v2}, Lcom/amap/location/support/app/IModule;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-interface {v2}, Lcom/amap/location/support/app/IModule;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/amap/location/fusion/a/b;->f:J

    cmp-long v2, v0, p2

    if-eqz v2, :cond_1

    const-string v0, "oriloc"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop as interval changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/amap/location/fusion/a/b;->f:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/b;->a()V

    .line 7
    :cond_1
    iput-wide p2, p0, Lcom/amap/location/fusion/a/b;->f:J

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    if-eqz v0, :cond_3

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 9
    invoke-virtual {v0, p2, p3}, Lcom/amap/location/fusion/a/a;->a(J)V

    .line 10
    iget-object p2, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    invoke-virtual {p2}, Lcom/amap/location/support/location/AbstractLocator;->start()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    :cond_3
    :goto_1
    and-int/lit8 p2, p1, 0x1

    if-ne p2, v4, :cond_5

    .line 12
    iget-object p2, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    iget-wide v0, p0, Lcom/amap/location/fusion/a/b;->f:J

    invoke-virtual {p2, v0, v1}, Lcom/amap/location/fusion/a/a;->a(J)V

    .line 13
    iget-object p2, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    invoke-virtual {p2}, Lcom/amap/location/support/location/AbstractLocator;->start()V

    .line 14
    iget-boolean p2, p0, Lcom/amap/location/fusion/a/b;->g:Z

    if-eqz p2, :cond_4

    .line 15
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object p2

    const-string p3, "enablelocguarder"

    invoke-virtual {p2, p3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_6

    .line 16
    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    move-result-object p2

    iget-object p3, p0, Lcom/amap/location/fusion/a/b;->i:Lcom/amap/location/support/guard/LocationGuarderListener;

    invoke-virtual {p2, p3}, Lcom/amap/location/support/guard/LocationGuarder;->start(Lcom/amap/location/support/guard/LocationGuarderListener;)V

    goto :goto_2

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    invoke-virtual {p2}, Lcom/amap/location/support/location/AbstractLocator;->stop()V

    .line 18
    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/location/support/guard/LocationGuarder;->stop()V

    :cond_6
    :goto_2
    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_7

    .line 19
    iget-object p1, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    iget-wide p2, p0, Lcom/amap/location/fusion/a/b;->f:J

    invoke-virtual {p1, p2, p3}, Lcom/amap/location/fusion/a/a;->a(J)V

    .line 20
    iget-object p1, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-virtual {p1}, Lcom/amap/location/support/location/AbstractLocator;->start()V

    goto :goto_3

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-virtual {p1}, Lcom/amap/location/support/location/AbstractLocator;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a;->a(Z)V

    .line 32
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a;->a(Z)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "oriloc"

    const-string v1, "destroy"

    .line 2
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/location/fusion/a/b;->a()V

    .line 4
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-interface {v0}, Lcom/amap/location/support/app/IModule;->release()V

    .line 5
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->b:Lcom/amap/location/fusion/a/a;

    invoke-interface {v0}, Lcom/amap/location/support/app/IModule;->release()V

    .line 6
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/amap/location/support/app/IModule;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->a:Lcom/amap/location/fusion/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/fusion/a/a;->b()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a;->c(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/fusion/a/a;->d(Z)V

    .line 6
    return-void
.end method

.method public onLocationReport(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->e:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public onSubLocationReport(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->e:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public onTimeoutReport()V
    .locals 2

    .line 1
    const-string v0, "oriloc"

    .line 3
    const-string v1, "no loc timeout"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/fusion/a/b;->c:Lcom/amap/location/fusion/a/a;

    .line 10
    invoke-virtual {v0}, Lcom/amap/location/fusion/a/a;->c()V

    .line 13
    return-void
.end method
