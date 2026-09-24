.class public Lnx;
.super Lhx;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public h:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhx;-><init>(Landroid/view/SurfaceView;)V

    .line 4
    const-string p1, "UiViewCbLinkView init"

    .line 6
    invoke-static {p1}, Lhx;->f(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public g(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lhx;->g(Z)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "ui enable enable="

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
    iget-object v0, p0, Lnx;->h:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {p0, v0, p1}, Lhx;->h(Ljava/lang/ref/WeakReference;Z)V

    .line 29
    return-void
.end method

.method public n()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    iget-object v0, p0, Lnx;->h:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SurfaceView;

    .line 9
    return-object v0
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-super {p0}, Lhx;->r()V

    .line 4
    iget-object v0, p0, Lnx;->h:Ljava/lang/ref/WeakReference;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "UiViewCbLinkView reset "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lhx;->c:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lhx;->f(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lnx;->h:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/view/SurfaceView;

    .line 44
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lnx;->h:Ljava/lang/ref/WeakReference;

    .line 54
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string p2, "UiViewCbLinkView surfaceChanged wh="

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p2, ","

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lhx;->f(Ljava/lang/String;)V

    .line 29
    sget-object p1, Lbq$b;->c:Lbq$b;

    .line 31
    iput-object p1, p0, Lhx;->a:Lbq$b;

    .line 33
    invoke-virtual {p0}, Lhx;->k()Lus;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1, p3, p4}, Lyt;->onUISizeChanged(II)V

    .line 40
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "UiViewCbLinkView surfaceCreated visible="

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Lnx;->h:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/SurfaceView;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, ", index="

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v0, p0, Lhx;->c:I

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lhx;->f(Ljava/lang/String;)V

    .line 43
    sget-object p1, Lbq$b;->b:Lbq$b;

    .line 45
    iput-object p1, p0, Lhx;->a:Lbq$b;

    .line 47
    invoke-virtual {p0}, Lhx;->k()Lus;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Lyt;->onUICreated()V

    .line 54
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "UiViewCbLinkView surfaceDestroyed index="

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v0, p0, Lhx;->c:I

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lhx;->f(Ljava/lang/String;)V

    .line 23
    sget-object p1, Lbq$b;->a:Lbq$b;

    .line 25
    iput-object p1, p0, Lhx;->a:Lbq$b;

    .line 27
    invoke-virtual {p0}, Lhx;->k()Lus;

    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Lyt;->onUIDestroyed()V

    .line 34
    return-void
.end method

.method public t(Landroid/view/SurfaceView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lhx;->t(Landroid/view/SurfaceView;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lnx;->h:Ljava/lang/ref/WeakReference;

    .line 11
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->firstStartup:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 13
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 23
    :cond_0
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->wndReuse:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-void
.end method
