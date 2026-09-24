.class public Lkx;
.super Lmx;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/ref/WeakReference;

.field public n:Z

.field public final o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;

.field public final q:Ljava/lang/Runnable;

.field public final r:Ljava/lang/Runnable;

.field public final s:Lb00;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lmx;-><init>(Landroid/view/SurfaceView;)V

    .line 5
    new-instance v0, Lix;

    .line 7
    invoke-direct {v0, p0}, Lix;-><init>(Lkx;)V

    .line 10
    iput-object v0, p0, Lkx;->o:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lkx$a;

    .line 14
    invoke-direct {v0, p0}, Lkx$a;-><init>(Lkx;)V

    .line 17
    iput-object v0, p0, Lkx;->p:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Ljx;

    .line 21
    invoke-direct {v0, p0}, Ljx;-><init>(Lkx;)V

    .line 24
    iput-object v0, p0, Lkx;->q:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lkx$b;

    .line 28
    invoke-direct {v0, p0}, Lkx$b;-><init>(Lkx;)V

    .line 31
    iput-object v0, p0, Lkx;->r:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lkx$c;

    .line 35
    invoke-direct {v0, p0}, Lkx$c;-><init>(Lkx;)V

    .line 38
    iput-object v0, p0, Lkx;->s:Lb00;

    .line 40
    return-void
.end method

.method public static synthetic C(Lkx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkx;->p()V

    return-void
.end method

.method public static synthetic D(Lkx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkx;->o()V

    return-void
.end method

.method public static synthetic E(Lkx;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lkx;->n:Z

    .line 3
    return p0
.end method

.method public static synthetic F(Lkx;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkx;->n:Z

    .line 3
    return p1
.end method

.method public static synthetic G(Lkx;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lkx;->m:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic H(Lkx;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iput-object p1, p0, Lkx;->m:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p1
.end method

.method public static synthetic I(Lkx;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkx;->J(II)V

    .line 4
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerReuseCb"

    .line 3
    invoke-static {v0, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 1
    const-string v0, "cbRunCreated start "

    .line 3
    invoke-static {v0}, Lkx;->f(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lbq$b;->b:Lbq$b;

    .line 8
    iput-object v0, p0, Lhx;->a:Lbq$b;

    .line 10
    invoke-virtual {p0}, Lmx;->w()Lbs;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {v0, v1}, Lbs;->b(I)V

    .line 18
    invoke-virtual {p0}, Lmx;->w()Lbs;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lkx;->m()Landroid/view/Surface;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Lbs;->f(Landroid/view/Surface;)V

    .line 29
    return-void
.end method

.method private synthetic p()V
    .locals 2

    .line 1
    const-string v0, "cbRunReDraw start "

    .line 3
    invoke-static {v0}, Lkx;->f(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lkx;->m()Landroid/view/Surface;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lmx;->w()Lbs;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lkx;->m()Landroid/view/Surface;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lbs;->d(Landroid/view/Surface;)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkx;->q:Ljava/lang/Runnable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCallback2:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lmx;->A()V

    .line 17
    :cond_0
    return-void
.end method

.method public final J(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmx;->w()Lbs;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lbs;->g(II)V

    .line 8
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lhx;->i()Landroid/os/Handler;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lhx;->g:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    :cond_0
    return-void
.end method

.method public m()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lkx;->m:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lkx;->m:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/Surface;

    .line 19
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lkx;->m:Ljava/lang/ref/WeakReference;

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/Surface;

    .line 33
    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method public r()V
    .locals 1

    .line 1
    sget-object v0, Lbq$b;->a:Lbq$b;

    .line 3
    iput-object v0, p0, Lhx;->a:Lbq$b;

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lkx;->m:Ljava/lang/ref/WeakReference;

    .line 8
    iget-object v0, p0, Lkx;->s:Lb00;

    .line 10
    invoke-virtual {v0}, Lb00;->d()V

    .line 13
    invoke-super {p0}, Lmx;->r()V

    .line 16
    return-void
.end method

.method public t(Landroid/view/SurfaceView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmx;->t(Landroid/view/SurfaceView;)V

    .line 4
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCallback2:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lkx;->s:Lb00;

    .line 11
    invoke-virtual {v0, p0}, Lb00;->h(Lmx;)V

    .line 14
    iget-object v0, p0, Lkx;->s:Lb00;

    .line 16
    iput-object v0, p0, Lmx;->i:Lb00;

    .line 18
    :cond_0
    return-void
.end method
