.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public b:Lhl;

.field public c:Landroid/os/Handler;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/lang/Runnable;

.field public final g:Ljava/lang/Runnable;

.field public h:Landroid/view/Surface;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d:Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance p1, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;

    .line 21
    invoke-direct {p1, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)V

    .line 24
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->f:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;

    .line 28
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)V

    .line 31
    iput-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->g:Ljava/lang/Runnable;

    .line 33
    iput-boolean p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->l:Z

    .line 35
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 49
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 56
    iput-boolean p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->l:Z

    .line 58
    const-string v1, "construct NavigationUIView !!"

    .line 60
    new-array p2, p2, [Ljava/lang/Object;

    .line 62
    const-string v2, "NavigationUIView"

    .line 64
    invoke-static {v2, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    sget-object p2, Lag0;->j:Lag0;

    .line 69
    invoke-static {p2}, Lbg0;->a(Lag0;)Lcg0;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, p1}, Lcg0;->execute(Ljava/lang/Runnable;)V

    .line 76
    invoke-static {p2}, Lbg0;->a(Lag0;)Lcg0;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Lcg0;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->l:Z

    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b:Lhl;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h:Landroid/view/Surface;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->i:I

    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->j:I

    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c:Landroid/os/Handler;

    .line 3
    return-object p1
.end method

.method public static synthetic j(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k:Z

    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d:Ljava/lang/Object;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "NavigationUIView"

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
    .locals 2

    .line 1
    const-string p2, "NavigationUIView"

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "surfaceChanged:"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p3, ","

    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p3

    .line 28
    const/4 p4, 0x0

    .line 29
    new-array v0, p4, [Ljava/lang/Object;

    .line 31
    invoke-static {p2, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h:Landroid/view/Surface;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->i:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->j:I

    .line 52
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k:Z

    .line 55
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b:Lhl;

    .line 57
    if-eqz p2, :cond_1

    .line 59
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 61
    if-eqz p2, :cond_1

    .line 63
    iget-boolean p2, p2, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 65
    if-eqz p2, :cond_0

    .line 67
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    invoke-virtual {p2, p4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 72
    const-string p1, "NavigationUIView"

    .line 74
    const-string p2, "MultiScreenNative.surfaceChanged handle sync !!!"

    .line 76
    new-array p3, p4, [Ljava/lang/Object;

    .line 78
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 83
    iget p2, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 85
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h:Landroid/view/Surface;

    .line 87
    invoke-static {p2, p3, p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d:Ljava/lang/Object;

    .line 93
    if-eqz p1, :cond_1

    .line 95
    monitor-enter p1

    .line 96
    :try_start_0
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d:Ljava/lang/Object;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 101
    monitor-exit p1

    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p2

    .line 104
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p2

    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const-string v0, "NavigationUIView"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "surfaceCreated\uff1a"

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
    const-string v0, "NavigationUIView"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v3, "surfaceCreated\uff1a"

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
    iput-boolean v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->l:Z

    .line 70
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h:Landroid/view/Surface;

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->i:I

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->j:I

    .line 88
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b:Lhl;

    .line 90
    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 94
    if-eqz p1, :cond_1

    .line 96
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 98
    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 106
    const-string p1, "NavigationUIView"

    .line 108
    const-string v0, "MultiScreenNative.surfaceCreated handle sync !!!"

    .line 110
    new-array v1, v2, [Ljava/lang/Object;

    .line 112
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 117
    iget v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 119
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h:Landroid/view/Surface;

    .line 121
    invoke-static {v0, v1, p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lse;->getUISurfaceCreateLock()Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_1

    .line 135
    monitor-enter p1

    .line 136
    :try_start_0
    const-string v0, "NavigationUIView"

    .line 138
    const-string v1, "surfaceCreated surfaceCreateLock notify !!!"

    .line 140
    new-array v2, v2, [Ljava/lang/Object;

    .line 142
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 148
    monitor-exit p1

    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw v0

    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NavigationUIView"

    .line 6
    const-string v3, " surfaceDestroyed"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h:Landroid/view/Surface;

    .line 17
    iput-boolean v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k:Z

    .line 19
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b:Lhl;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 25
    if-eqz p1, :cond_1

    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    aput-object p1, v1, v0

    .line 38
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 40
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object p1

    .line 46
    const/4 v3, 0x1

    .line 47
    aput-object p1, v1, v3

    .line 49
    const-string p1, "MultiScreenNative.surfaceDestroyed id={?}, isSynMultiScreenNotify = {?}"

    .line 51
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 56
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 58
    invoke-static {p1, v3}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 61
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 63
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 65
    if-eqz p1, :cond_0

    .line 67
    const-string p1, "MultiScreenNative.surfaceDestroy handle sync !!!"

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 76
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 78
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c:Landroid/os/Handler;

    .line 84
    if-eqz p1, :cond_1

    .line 86
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$c;

    .line 88
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$c;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
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
    const-string v1, "NavigationUIView{TAG=\'NavigationUIView\', mViewInfo="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

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
