.class final Lcom/amap/location/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field protected volatile a:Z

.field final synthetic b:Lcom/amap/location/b/c;


# direct methods
.method private constructor <init>(Lcom/amap/location/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/b/c;Lcom/amap/location/b/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/b/c$a;-><init>(Lcom/amap/location/b/c;)V

    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 3
    invoke-static {v0}, Lcom/amap/location/b/c;->c(Lcom/amap/location/b/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 14
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/b/c$a;->a:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-interface {p1}, Lcom/amap/location/support/handler/AmapLooper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 25
    invoke-static {p1}, Lcom/amap/location/b/c;->c(Lcom/amap/location/b/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 39
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {v1, p1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lcom/amap/location/b/c;->a(Lcom/amap/location/b/c;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    iget-object p1, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 53
    invoke-static {p1}, Lcom/amap/location/b/c;->c(Lcom/amap/location/b/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 64
    :try_start_2
    iget-object p1, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 66
    invoke-static {p1}, Lcom/amap/location/b/c;->d(Lcom/amap/location/b/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 74
    invoke-static {p1}, Lcom/amap/location/b/c;->d(Lcom/amap/location/b/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 80
    invoke-static {v0}, Lcom/amap/location/b/c;->e(Lcom/amap/location/b/c;)Ljava/lang/Runnable;

    .line 83
    move-result-object v0

    .line 84
    const-wide/16 v1, 0x1388

    .line 86
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 91
    invoke-static {p1}, Lcom/amap/location/b/c;->f(Lcom/amap/location/b/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    const-string v0, "loccldmain"

    .line 98
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :goto_0
    return-void

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    iget-object v0, p0, Lcom/amap/location/b/c$a;->b:Lcom/amap/location/b/c;

    .line 105
    invoke-static {v0}, Lcom/amap/location/b/c;->c(Lcom/amap/location/b/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 116
    throw p1
.end method
