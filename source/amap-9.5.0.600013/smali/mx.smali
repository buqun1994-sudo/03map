.class public Lmx;
.super Lhx;
.source "SourceFile"

# interfaces
.implements Lqt;


# instance fields
.field public h:Ljava/lang/ref/WeakReference;

.field public i:Lb00;

.field public j:Z

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhx;-><init>(Landroid/view/SurfaceView;)V

    .line 4
    const-string p1, "MapViewCbLinkView init"

    .line 6
    invoke-static {p1}, Lhx;->f(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static synthetic u(Lmx;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmx;->x(I)V

    return-void
.end method

.method private synthetic x(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmx;->z(I)V

    .line 4
    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lhx;->q()Lht;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lht;->c()Lnq;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lnq;->isInitFinished()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lhx;->q()Lht;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lht;->c()Lnq;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lnq;->isMainPage()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Lhx;->q()Lht;

    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Lht;->b()Lbq;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Lbq;->isActivityCreating()Z

    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 48
    if-eqz v0, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_1
    invoke-virtual {p0}, Lhx;->q()Lht;

    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Lht;->c()Lnq;

    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lnq;->isWarnChecked()Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 66
    if-eqz v1, :cond_4

    .line 68
    :cond_2
    invoke-virtual {p0}, Lhx;->q()Lht;

    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Lht;->b()Lbq;

    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Lbq;->isActivityCreating()Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 82
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->coverDelayOnCreate:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCb2Delay:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 87
    :goto_2
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->d()I

    .line 90
    move-result v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v2, "In active/warn pager, postDrawingFinished in "

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Lhx;->f(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lhx;->i()Landroid/os/Handler;

    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Llx;

    .line 117
    invoke-direct {v2, p0, v0}, Llx;-><init>(Lmx;I)V

    .line 120
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_4
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmx;->h:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lmx;->w()Lbs;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lhx;->m()Landroid/view/Surface;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Lbs;->d(Landroid/view/Surface;)V

    .line 22
    :cond_0
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCallback2:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 24
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lmx;->A()V

    .line 33
    :cond_1
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    sget-object v0, Lbq$b;->b:Lbq$b;

    .line 3
    iput-object v0, p0, Lhx;->a:Lbq$b;

    .line 5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lmx;->k:I

    .line 15
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lmx;->l:I

    .line 25
    invoke-virtual {p0}, Lhx;->k()Lus;

    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Lyt;->onMapCreated()V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v0, "MapViewCbLinkView afterSurfaceCreated wh="

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v0, p0, Lmx;->k:I

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, ","

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v0, p0, Lmx;->l:I

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lhx;->f(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;III)Z
    .locals 1

    .line 1
    sget-object p1, Lbq$b;->c:Lbq$b;

    .line 3
    iput-object p1, p0, Lhx;->a:Lbq$b;

    .line 5
    iget p1, p0, Lmx;->k:I

    .line 7
    if-ne p1, p3, :cond_0

    .line 9
    iget p1, p0, Lmx;->l:I

    .line 11
    if-ne p1, p4, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v0, "MapViewCbLinkView SurfaceChanged wh="

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, ","

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ", isSame="

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Lhx;->f(Ljava/lang/String;)V

    .line 52
    iput p3, p0, Lmx;->k:I

    .line 54
    iput p4, p0, Lmx;->l:I

    .line 56
    invoke-virtual {p0}, Lhx;->k()Lus;

    .line 59
    move-result-object p2

    .line 60
    iget p3, p0, Lmx;->k:I

    .line 62
    iget p4, p0, Lmx;->l:I

    .line 64
    invoke-interface {p2, p3, p4}, Lyt;->onMapSizeChanged(II)V

    .line 67
    return p1
.end method

.method public c(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    sget-object p1, Lbq$b;->a:Lbq$b;

    .line 3
    iput-object p1, p0, Lhx;->a:Lbq$b;

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmx;->j:Z

    .line 8
    invoke-virtual {p0}, Lhx;->k()Lus;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Lyt;->onMapDestroyed()V

    .line 15
    const-string p1, "MapViewCbLinkView SurfaceDestroyed"

    .line 17
    invoke-static {p1}, Lhx;->f(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lhx;->g(Z)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "map enable enable="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lhx;->f(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lmx;->h:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {p0, v0, p1}, Lhx;->h(Ljava/lang/ref/WeakReference;Z)V

    .line 29
    return-void
.end method

.method public n()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    iget-object v0, p0, Lmx;->h:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/SurfaceView;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public r()V
    .locals 3

    .line 1
    invoke-super {p0}, Lhx;->r()V

    .line 4
    iget-object v0, p0, Lmx;->h:Ljava/lang/ref/WeakReference;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v2, "MapViewCbLinkView reset "

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v2, p0, Lhx;->c:I

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lhx;->f(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lmx;->w()Lbs;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, v1}, Lbs;->c(Lqt;)V

    .line 44
    :cond_0
    iput-object v1, p0, Lmx;->h:Ljava/lang/ref/WeakReference;

    .line 46
    iget-object v0, p0, Lmx;->i:Lb00;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lb00;->d()V

    .line 53
    iput-object v1, p0, Lmx;->i:Lb00;

    .line 55
    :cond_1
    return-void
.end method

.method public t(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lhx;->t(Landroid/view/SurfaceView;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmx;->h:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p0}, Lmx;->w()Lbs;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p0}, Lbs;->c(Lqt;)V

    .line 18
    invoke-virtual {p0}, Lmx;->v()V

    .line 21
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->mapCallback2:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lb00;

    .line 11
    invoke-direct {v0}, Lb00;-><init>()V

    .line 14
    iput-object v0, p0, Lmx;->i:Lb00;

    .line 16
    invoke-virtual {v0, p0}, Lb00;->h(Lmx;)V

    .line 19
    iget-object v0, p0, Lmx;->i:Lb00;

    .line 21
    invoke-virtual {p0}, Lhx;->i()Landroid/os/Handler;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lb00;->g(Landroid/os/Handler;)V

    .line 28
    iget-object v0, p0, Lmx;->h:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/SurfaceView;

    .line 36
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lmx;->i:Lb00;

    .line 42
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 45
    :cond_0
    return-void
.end method

.method public w()Lbs;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->MapViewAdapter()Lbs;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public y(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmx;->B()V

    .line 4
    invoke-virtual {p0}, Lhx;->k()Lus;

    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Lyt;->onMapRedrawNeeded()V

    .line 11
    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx;->i:Lb00;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lb00;->c(I)V

    .line 8
    :cond_0
    return-void
.end method
