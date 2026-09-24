.class public abstract Lhx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lbq$b;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:I

.field public d:Ljava/lang/ref/WeakReference;

.field public final e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lfx;

    .line 6
    invoke-direct {v0, p0}, Lfx;-><init>(Lhx;)V

    .line 9
    iput-object v0, p0, Lhx;->e:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lgx;

    .line 13
    invoke-direct {v0, p0}, Lgx;-><init>(Lhx;)V

    .line 16
    iput-object v0, p0, Lhx;->f:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lhx$a;

    .line 20
    invoke-direct {v0, p0}, Lhx$a;-><init>(Lhx;)V

    .line 23
    iput-object v0, p0, Lhx;->g:Ljava/lang/Runnable;

    .line 25
    sget-object v0, Lbq$b;->a:Lbq$b;

    .line 27
    iput-object v0, p0, Lhx;->a:Lbq$b;

    .line 29
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lhx;->t(Landroid/view/SurfaceView;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic d(Lhx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhx;->o()V

    return-void
.end method

.method public static synthetic e(Lhx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhx;->p()V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerView"

    .line 3
    invoke-static {v0, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private synthetic o()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lhx;->g(Z)V

    .line 5
    return-void
.end method

.method private synthetic p()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lhx;->g(Z)V

    .line 5
    return-void
.end method


# virtual methods
.method public g(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhx;->i()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lhx;->e:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lhx;->i()Landroid/os/Handler;

    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lhx;->g:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/ref/WeakReference;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    if-eqz p2, :cond_0

    .line 11
    iget-object p2, p0, Lhx;->b:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/SurfaceView;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v0, "add view index="

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v0, p0, Lhx;->c:I

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    invoke-static {p2}, Lhx;->f(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lhx;->b:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/view/View;

    .line 71
    iget v0, p0, Lhx;->c:I

    .line 73
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v0, "remove view index="

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v0, p0, Lhx;->c:I

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    invoke-static {p2}, Lhx;->f(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lhx;->b:Ljava/lang/ref/WeakReference;

    .line 101
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/view/View;

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method public i()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhx;->q()Lht;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lht;->d()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public j()Lhx;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx;->d:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lhx;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public k()Lus;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhx;->q()Lht;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lht;->a()Lus;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public l()Lbq$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx;->a:Lbq$b;

    .line 3
    return-object v0
.end method

.method public m()Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhx;->n()Landroid/view/SurfaceView;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lhx;->n()Landroid/view/SurfaceView;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lhx;->n()Landroid/view/SurfaceView;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method public abstract n()Landroid/view/SurfaceView;
.end method

.method public q()Lht;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->getManager()Lht;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhx;->i()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lhx;->e:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p0}, Lhx;->i()Landroid/os/Handler;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lhx;->g:Ljava/lang/Runnable;

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public s(Lhx;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lhx;->d:Ljava/lang/ref/WeakReference;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lhx;->d:Ljava/lang/ref/WeakReference;

    .line 14
    :goto_0
    return-void
.end method

.method public t(Landroid/view/SurfaceView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/ViewGroup;

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object v0, p0, Lhx;->b:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lhx;->c:I

    .line 32
    :cond_0
    return-void
.end method
