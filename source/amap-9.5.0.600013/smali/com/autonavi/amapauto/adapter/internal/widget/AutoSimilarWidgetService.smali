.class public Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;,
        Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;,
        Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;
    }
.end annotation


# static fields
.field public static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final e:Ljava/lang/Object;

.field public static f:Ljava/lang/Object;

.field public static g:Landroid/view/Surface;

.field public static h:I

.field public static i:J

.field public static j:J

.field public static k:Ljava/lang/String;

.field public static l:Z

.field public static m:Lhl;

.field public static n:Lqq;

.field public static o:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;

.field public static p:I

.field public static q:Landroid/os/Handler;

.field public static r:Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/os/IBinder;

.field public b:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

.field public c:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    sput-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    sput-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->f:Ljava/lang/Object;

    .line 23
    const/4 v0, -0x1

    .line 24
    sput v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->h:I

    .line 26
    const-wide/16 v2, 0x0

    .line 28
    sput-wide v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->i:J

    .line 30
    sput-wide v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->j:J

    .line 32
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->k:Ljava/lang/String;

    .line 35
    sput-boolean v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l:Z

    .line 37
    new-instance v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$c;

    .line 39
    invoke-direct {v2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$c;-><init>()V

    .line 42
    sput-object v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->o:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;

    .line 44
    sput v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p:I

    .line 46
    sput-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$e;

    .line 50
    invoke-direct {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$e;-><init>()V

    .line 53
    sput-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->r:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;

    .line 6
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;-><init>(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->a:Landroid/os/IBinder;

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 13
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;-><init>(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V

    .line 16
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->b:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 18
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;

    .line 20
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;-><init>(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V

    .line 23
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->c:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;

    .line 25
    return-void
.end method

.method public static A(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "AutoSimilarWidgetService"

    .line 13
    const-string v3, "onReceiveWidgetOperateResult state:{?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/16 v0, 0xa

    .line 20
    if-gt p0, v0, :cond_1

    .line 22
    :try_start_0
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n:Lqq;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p0}, Lqq;->b0(I)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "onReceiveWidgetOperateResult mStateProvider == null"

    .line 32
    new-array v0, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string v0, "onReceiveWidgetOperateResult e="

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v1, v0, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public static B(Lhl;)V
    .locals 6

    .line 1
    const-string v0, "AutoSimilarWidgetService"

    .line 3
    const-string v1, "setWidgetExtScreen, widgetExtScreen={?}, isWaitScreen={?}"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p0, v2, v3

    .line 11
    sget-boolean v4, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l:Z

    .line 13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x1

    .line 18
    aput-object v4, v2, v5

    .line 20
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const-string v0, "AutoSimilarWidgetService"

    .line 25
    const-string v1, "setWidgetExtScreen, AutoSimilarWidgetService.widgetExtScreen={?}"

    .line 27
    new-array v2, v5, [Ljava/lang/Object;

    .line 29
    sget-object v4, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 31
    aput-object v4, v2, v3

    .line 33
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    sput-object p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 38
    if-eqz p0, :cond_0

    .line 40
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->z()Z

    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 46
    const-string p0, "AutoSimilarWidgetService"

    .line 48
    const-string v0, "setWidgetExtScreen SurfaceValid"

    .line 50
    new-array v1, v3, [Ljava/lang/Object;

    .line 52
    invoke-static {p0, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$a;

    .line 57
    invoke-direct {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$a;-><init>()V

    .line 60
    invoke-static {p0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 63
    return-void

    .line 64
    :cond_0
    sget-object p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e:Ljava/lang/Object;

    .line 66
    monitor-enter p0

    .line 67
    const/4 v0, 0x0

    .line 68
    :try_start_0
    sput-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 70
    const-string v0, "AutoSimilarWidgetService"

    .line 72
    const-string v1, "setWidgetExtScreen, mSurface = null || mSurface InValid.please notice!"

    .line 74
    new-array v2, v3, [Ljava/lang/Object;

    .line 76
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-boolean p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l:Z

    .line 82
    if-eqz p0, :cond_1

    .line 84
    new-instance p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$b;

    .line 86
    invoke-direct {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$b;-><init>()V

    .line 89
    invoke-static {p0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 92
    :cond_1
    return-void

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw v0
.end method

.method public static C()V
    .locals 7

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->V:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const-string v1, "AutoSimilarWidgetService"

    .line 14
    const-string v3, "startRender waitForBackgroundStatusTimes:{?}"

    .line 16
    const/4 v4, 0x1

    .line 17
    new-array v5, v4, [Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v6

    .line 23
    aput-object v6, v5, v2

    .line 25
    invoke-static {v1, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-lez v0, :cond_2

    .line 30
    invoke-static {}, Lk6;->g()Lk6;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lk6;->i()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 40
    sget v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p:I

    .line 42
    if-ge v1, v0, :cond_2

    .line 44
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q:Landroid/os/Handler;

    .line 46
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    .line 50
    const-string v1, "widgetWaitThread"

    .line 52
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    new-instance v1, Landroid/os/Handler;

    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    sput-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q:Landroid/os/Handler;

    .line 69
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q:Landroid/os/Handler;

    .line 71
    if-eqz v0, :cond_1

    .line 73
    sget v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p:I

    .line 75
    add-int/2addr v1, v4

    .line 76
    sput v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p:I

    .line 78
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->r:Ljava/lang/Runnable;

    .line 80
    const-wide/16 v2, 0x32

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    sput v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p:I

    .line 88
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e:Ljava/lang/Object;

    .line 90
    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 93
    sget-object v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 95
    invoke-virtual {v1, v2}, Lhl;->p(Landroid/view/Surface;)V

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 101
    sget v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->h:I

    .line 103
    invoke-virtual {v0, v1}, Lhl;->t(I)V

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw v1

    .line 110
    :cond_2
    sput v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p:I

    .line 112
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e:Ljava/lang/Object;

    .line 114
    monitor-enter v0

    .line 115
    :try_start_2
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 117
    sget-object v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 119
    invoke-virtual {v1, v2}, Lhl;->p(Landroid/view/Surface;)V

    .line 122
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 125
    sget v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->h:I

    .line 127
    invoke-virtual {v0, v1}, Lhl;->t(I)V

    .line 130
    :goto_0
    return-void

    .line 131
    :catchall_1
    move-exception v1

    .line 132
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    throw v1
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->C()V

    .line 4
    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->f:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public static synthetic c()Landroid/view/Surface;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 3
    return-object v0
.end method

.method public static synthetic d(Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 3
    return-object p0
.end method

.method public static synthetic e(I)I
    .locals 0

    .line 1
    sput p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->h:I

    .line 3
    return p0
.end method

.method public static synthetic f()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->z()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l:Z

    .line 3
    return v0
.end method

.method public static synthetic h(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->l:Z

    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->b:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->b:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 3
    return-object p1
.end method

.method public static synthetic k(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->c:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$h;

    .line 3
    return-object p0
.end method

.method public static synthetic l()Lqq;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n:Lqq;

    .line 3
    return-object v0
.end method

.method public static synthetic m(Lqq;)Lqq;
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n:Lqq;

    .line 3
    return-object p0
.end method

.method public static synthetic n(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->A(I)V

    .line 4
    return-void
.end method

.method public static synthetic o()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->k:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic p(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->k:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic q()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->j:J

    .line 3
    return-wide v0
.end method

.method public static synthetic r(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->j:J

    .line 3
    return-wide p0
.end method

.method public static synthetic s()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->i:J

    .line 3
    return-wide v0
.end method

.method public static synthetic t(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->i:J

    .line 3
    return-wide p0
.end method

.method public static synthetic u()Lhl;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 3
    return-object v0
.end method

.method public static synthetic v()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public static synthetic w(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->D()V

    .line 4
    return-void
.end method

.method public static x()Lhl;
    .locals 4

    .line 1
    const/16 v0, 0xbbe

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 15
    aput-object v3, v1, v2

    .line 17
    const-string v2, "AutoSimilarWidgetService"

    .line 19
    const-string v3, "getWidgetExtScreen, widgetType={?}"

    .line 21
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne v1, v0, :cond_0

    .line 27
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 29
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public static y()Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->o:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$g;

    .line 3
    return-object v0
.end method

.method public static z()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string v1, "AutoSimilarWidgetService"

    .line 12
    const-string v4, "isSurfaceInValid mSurface == null"

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    monitor-exit v0

    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    const-string v4, "AutoSimilarWidgetService"

    .line 32
    const-string v5, "isSurfaceInValid isInValid ={?}"

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v6

    .line 40
    aput-object v6, v2, v3

    .line 42
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    monitor-exit v0

    .line 46
    return v1

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v1
.end method


# virtual methods
.method public final D()V
    .locals 5

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->V:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 21
    const-string v3, "AutoSimilarWidgetService"

    .line 23
    const-string v4, "stopRender waitForBackgroundStatusTimes:{?}"

    .line 25
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-lez v0, :cond_0

    .line 30
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->r:Ljava/lang/Runnable;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    sput v2, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p:I

    .line 36
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q:Landroid/os/Handler;

    .line 38
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m:Lhl;

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lhl;->u()V

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "stopRender, widgetExtScreen = null."

    .line 53
    new-array v1, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "AutoSimilarWidgetService"

    .line 6
    const-string v1, " onBind"

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->a:Landroid/os/IBinder;

    .line 13
    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const-string v2, "AutoSimilarWidgetService"

    .line 9
    const-string v3, " AutoSimilarWidgetService onCreate"

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
    if-nez v1, :cond_0

    .line 24
    const-string v1, "onCreate backgroud. startAutoBackgroundService"

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, La7;->c()La7;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, La7;->h(Landroid/content/Context;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4
    const-string v0, "AutoSimilarWidgetService"

    .line 6
    const-string v1, " onDestroy"

    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 22
    sput-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g:Landroid/view/Surface;

    .line 24
    const-string v1, "AutoSimilarWidgetService"

    .line 26
    const-string v3, "onDestroy, mSurface = null.please notice!"

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->f:Ljava/lang/Object;

    .line 36
    monitor-enter v1

    .line 37
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->D()V

    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw v0

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    throw v1
.end method
