.class public Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;
.super Ljava/lang/Object;
.source "AMapViewManage.java"


# static fields
.field private static instance:Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;


# instance fields
.field private canShowOther:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private mapSurfaceView:Landroid/view/SurfaceView;

.field private rootView:Landroid/view/ViewGroup;

.field private uiSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->canShowOther:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->instance:Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->instance:Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    invoke-direct {v0}, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;-><init>()V

    sput-object v0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->instance:Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->instance:Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCanShowOther()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->canShowOther:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getMapSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->mapSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getUiSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->uiSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    return-void
.end method

.method public removeRootViews()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    :cond_0
    return-void
.end method

.method public restoreViews()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->mapSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->uiSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setCanShowOther(Z)V
    .locals 1
    .param p1, "can"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->canShowOther:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    return-void
.end method

.method public setFrameLayout(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->frameLayout:Landroid/widget/FrameLayout;

    .line 39
    return-void
.end method

.method public setMapSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "mapSurfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->mapSurfaceView:Landroid/view/SurfaceView;

    .line 47
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->rootView:Landroid/view/ViewGroup;

    .line 63
    return-void
.end method

.method public setUiSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "uiSurfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/autonavi/amapauto/chenmo_float/AMapViewManage;->uiSurfaceView:Landroid/view/SurfaceView;

    .line 55
    return-void
.end method
