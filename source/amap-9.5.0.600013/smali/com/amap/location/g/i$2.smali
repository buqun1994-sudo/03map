.class Lcom/amap/location/g/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/i;
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
    iput-object p1, p0, Lcom/amap/location/g/i$2;->a:Lcom/amap/location/g/i;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/g/i$2;->a:Lcom/amap/location/g/i;

    .line 3
    invoke-static {v0}, Lcom/amap/location/g/i;->e(Lcom/amap/location/g/i;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/g/i$2;->a:Lcom/amap/location/g/i;

    .line 16
    invoke-static {v0}, Lcom/amap/location/g/i;->f(Lcom/amap/location/g/i;)Lcom/amap/location/support/handler/AmapHandler;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/amap/location/g/i$2;->a:Lcom/amap/location/g/i;

    .line 24
    invoke-static {v0}, Lcom/amap/location/g/i;->f(Lcom/amap/location/g/i;)Lcom/amap/location/support/handler/AmapHandler;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/i$2;->a:Lcom/amap/location/g/i;

    .line 34
    invoke-static {v0}, Lcom/amap/location/g/i;->e(Lcom/amap/location/g/i;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    iget-object v1, p0, Lcom/amap/location/g/i$2;->a:Lcom/amap/location/g/i;

    .line 49
    invoke-static {v1}, Lcom/amap/location/g/i;->e(Lcom/amap/location/g/i;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 60
    throw v0
.end method
