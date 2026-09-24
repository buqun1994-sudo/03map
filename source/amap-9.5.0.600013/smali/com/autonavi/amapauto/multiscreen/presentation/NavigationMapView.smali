.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;
.super Lcom/autonavi/amapauto/MapSurfaceView;
.source "SourceFile"


# instance fields
.field public a:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public b:Landroid/os/Handler;

.field public c:Lhl;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/lang/Runnable;

.field public final g:Ljava/lang/Runnable;

.field public h:Landroid/view/Surface;

.field public i:I

.field public j:I

.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/MapSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d:Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance p1, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;

    .line 21
    invoke-direct {p1, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)V

    .line 24
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;

    .line 28
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)V

    .line 31
    iput-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g:Ljava/lang/Runnable;

    .line 33
    const/16 v1, -0x9

    .line 35
    iput v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->i:I

    .line 37
    iput-boolean p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->l:Z

    .line 39
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 46
    iput-boolean p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->l:Z

    .line 48
    const-string v1, "construct NavigationMapView !!"

    .line 50
    new-array p2, p2, [Ljava/lang/Object;

    .line 52
    const-string v2, "NavigationMapView"

    .line 54
    invoke-static {v2, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object p2, Lag0;->j:Lag0;

    .line 59
    invoke-static {p2}, Lbg0;->a(Lag0;)Lcg0;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcg0;->execute(Ljava/lang/Runnable;)V

    .line 66
    invoke-static {p2}, Lbg0;->a(Lag0;)Lcg0;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcg0;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->l:Z

    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->c:Lhl;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h:Landroid/view/Surface;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->j:I

    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->k:I

    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->i:I

    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 4
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "NavigationMapView"

    .line 6
    const-string v2, "onSizeChanged:"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 14
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 1
    const-string v0, "NavigationMapView"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "PresentationMapView surfaceChanged:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p3, ","

    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p3

    .line 28
    const/4 p4, 0x0

    .line 29
    new-array v1, p4, [Ljava/lang/Object;

    .line 31
    invoke-static {v0, p3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h:Landroid/view/Surface;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->j:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->k:I

    .line 52
    iput p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->i:I

    .line 54
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->c:Lhl;

    .line 56
    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 60
    if-eqz p1, :cond_1

    .line 62
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 64
    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    const/4 p3, 0x1

    .line 69
    invoke-virtual {p1, p4, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 72
    const-string p1, "NavigationMapView"

    .line 74
    const-string p3, "surfaceChanged handle sync !!!"

    .line 76
    new-array p4, p4, [Ljava/lang/Object;

    .line 78
    invoke-static {p1, p3, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 83
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 85
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h:Landroid/view/Surface;

    .line 87
    iget p4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->j:I

    .line 89
    iget v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->k:I

    .line 91
    invoke-static {p1, p3, p2, p4, v0}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d:Ljava/lang/Object;

    .line 97
    monitor-enter p1

    .line 98
    :try_start_0
    const-string p2, "NavigationMapView"

    .line 100
    const-string p3, "surfaceChanged changeLock notify !!!"

    .line 102
    new-array p4, p4, [Ljava/lang/Object;

    .line 104
    invoke-static {p2, p3, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d:Ljava/lang/Object;

    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 112
    monitor-exit p1

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p2

    .line 115
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p2

    .line 117
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const-string v0, "NavigationMapView"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "NavigationMapView surfaceCreated\uff1a"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-string v0, "NavigationMapView"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v3, "NavigationMapView surfaceCreated\uff1a"

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v3, ","

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    new-array v3, v2, [Ljava/lang/Object;

    .line 65
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iput-boolean v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->l:Z

    .line 70
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h:Landroid/view/Surface;

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->j:I

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->k:I

    .line 88
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->c:Lhl;

    .line 90
    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 94
    if-eqz p1, :cond_1

    .line 96
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 98
    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 106
    const-string p1, "NavigationMapView"

    .line 108
    const-string v0, "surfaceCreated handle sync !!!"

    .line 110
    new-array v1, v2, [Ljava/lang/Object;

    .line 112
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 117
    iget v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 119
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 121
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h:Landroid/view/Surface;

    .line 123
    invoke-static {v0, p1, v1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lse;->getMapSurfaceCreateLock()Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_1

    .line 137
    monitor-enter p1

    .line 138
    :try_start_0
    const-string v0, "NavigationMapView"

    .line 140
    const-string v1, "surfaceCreated surfaceCreateLock notify !!!"

    .line 142
    new-array v2, v2, [Ljava/lang/Object;

    .line 144
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 150
    monitor-exit p1

    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    throw v0

    .line 155
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/lang/Throwable;

    .line 6
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 9
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    const-string v2, "NavigationMapView"

    .line 18
    const-string v4, " surfaceDestroyed stacktrace={?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h:Landroid/view/Surface;

    .line 29
    const/16 v1, -0x9

    .line 31
    iput v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->i:I

    .line 33
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->c:Lhl;

    .line 35
    if-eqz v1, :cond_1

    .line 37
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 39
    if-eqz v4, :cond_1

    .line 41
    invoke-virtual {v1, p1}, Lhl;->p(Landroid/view/Surface;)V

    .line 44
    const/4 p1, 0x2

    .line 45
    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 49
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v1

    .line 55
    aput-object v1, p1, v3

    .line 57
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 59
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object v1

    .line 65
    aput-object v1, p1, v0

    .line 67
    const-string v0, "MultiScreenNative.surfaceDestroy id = {?}, isSynMultiScreenNotify = {?}"

    .line 69
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 74
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 76
    if-eqz p1, :cond_0

    .line 78
    const-string p1, "surfaceDestroyed handle sync !!!"

    .line 80
    new-array v0, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 87
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 89
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h:Landroid/view/Surface;

    .line 91
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b:Landroid/os/Handler;

    .line 97
    if-eqz p1, :cond_1

    .line 99
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$c;

    .line 101
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$c;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "NavigationMapView{TAG=\'NavigationMapView\', mViewInfo="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x7d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
