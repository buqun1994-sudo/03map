.class public Lcom/autonavi/amapauto/view/MapSurfaceViewEx;
.super Lcom/autonavi/amapauto/MapSurfaceView;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/MapSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getSurfaceCallback()Lqt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->a:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lqt;

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public setSurfaceCallback(Lqt;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->a:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->getSurfaceCallback()Lqt;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->getSurfaceCallback()Lqt;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Lqt;->b(Landroid/view/SurfaceHolder;III)Z

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 22
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->getSurfaceCallback()Lqt;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->getSurfaceCallback()Lqt;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lqt;->a(Landroid/view/SurfaceHolder;)V

    .line 17
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->getSurfaceCallback()Lqt;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->getSurfaceCallback()Lqt;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lqt;->c(Landroid/view/SurfaceHolder;)V

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 17
    return-void
.end method
