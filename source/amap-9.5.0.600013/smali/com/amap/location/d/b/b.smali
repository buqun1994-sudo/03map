.class public Lcom/amap/location/d/b/b;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/AmapHandlerThread;


# instance fields
.field volatile a:Lcom/amap/location/support/handler/AmapLooper;

.field b:Lcom/amap/location/support/handler/OnLooperPrepared;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/amap/location/support/handler/OnLooperPrepared;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amap/location/d/b/b;->c:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcom/amap/location/d/b/b;->b:Lcom/amap/location/support/handler/OnLooperPrepared;

    .line 13
    return-void
.end method


# virtual methods
.method public getAmapLooper()Lcom/amap/location/support/handler/AmapLooper;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/d/b/b;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/location/d/b/b;->c:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/d/b/b;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/location/d/b/d;

    .line 14
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Lcom/amap/location/d/b/d;-><init>(Landroid/os/Looper;)V

    .line 21
    iput-object v1, p0, Lcom/amap/location/d/b/b;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/location/d/b/b;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 30
    return-object v0
.end method

.method public onLooperPrepared()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/d/b/b;->getAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/amap/location/d/b/b;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 7
    iget-object v0, p0, Lcom/amap/location/d/b/b;->b:Lcom/amap/location/support/handler/OnLooperPrepared;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/amap/location/d/b/b;->a:Lcom/amap/location/support/handler/AmapLooper;

    .line 13
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/OnLooperPrepared;->onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 16
    :cond_0
    return-void
.end method

.method public quitThread()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 4
    return-void
.end method
