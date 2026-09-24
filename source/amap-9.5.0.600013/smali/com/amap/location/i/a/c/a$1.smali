.class Lcom/amap/location/i/a/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/i/a/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/i/a/c/a;-><init>(Lcom/amap/location/i/c;Lcom/amap/location/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/i/a/c/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/i/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->a(Lcom/amap/location/i/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->b(Lcom/amap/location/i/a/c/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->b(Lcom/amap/location/i/a/c/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v1}, Lcom/amap/location/i/a/c/a;->b(Lcom/amap/location/i/a/c/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 7
    throw v0
.end method

.method public a(J)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->a(Lcom/amap/location/i/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request by limit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloader"

    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$1;->a:Lcom/amap/location/i/a/c/a;

    invoke-static {v0, p1, p2}, Lcom/amap/location/i/a/c/a;->a(Lcom/amap/location/i/a/c/a;J)V

    return-void
.end method
