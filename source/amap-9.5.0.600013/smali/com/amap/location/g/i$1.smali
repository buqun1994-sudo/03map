.class Lcom/amap/location/g/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/g/i;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/i;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/amap/location/g/i$b;

    .line 9
    iget-object v3, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 11
    invoke-direct {v2, v3, p1}, Lcom/amap/location/g/i$b;-><init>(Lcom/amap/location/g/i;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 14
    invoke-interface {v1, p1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/i;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 21
    iget-object v0, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 23
    invoke-static {v0}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/i;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 30
    invoke-static {v1}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/i;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 40
    new-instance v1, Lcom/amap/location/g/g;

    .line 42
    invoke-static {v0}, Lcom/amap/location/g/i;->b(Lcom/amap/location/g/i;)Lcom/amap/location/g/b;

    .line 45
    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 48
    invoke-direct {v1, v2, p1, v3}, Lcom/amap/location/g/g;-><init>(Lcom/amap/location/g/b;Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/g/d;)V

    .line 51
    invoke-static {v0, v1}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/i;Lcom/amap/location/g/g;)Lcom/amap/location/g/g;

    .line 54
    iget-object v0, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 56
    new-instance v1, Lcom/amap/location/g/c/a;

    .line 58
    invoke-static {v0}, Lcom/amap/location/g/i;->c(Lcom/amap/location/g/i;)Ljava/lang/Runnable;

    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v1, p1, v2}, Lcom/amap/location/g/c/a;-><init>(Lcom/amap/location/support/handler/AmapLooper;Ljava/lang/Runnable;)V

    .line 65
    invoke-static {v0, v1}, Lcom/amap/location/g/i;->a(Lcom/amap/location/g/i;Lcom/amap/location/g/c/a;)Lcom/amap/location/g/c/a;

    .line 68
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/amap/location/g/i$1;->a:Lcom/amap/location/g/i;

    .line 74
    invoke-static {v1}, Lcom/amap/location/g/i;->d(Lcom/amap/location/g/i;)Lcom/amap/location/support/cloud/IAmapCloudListener;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method
