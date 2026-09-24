.class Lcom/amap/location/g/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/h;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "nllt"

    .line 7
    invoke-virtual {v0, v1}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 12
    const v1, 0x18702

    .line 15
    invoke-static {v0, v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;I)V

    .line 18
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 20
    invoke-static {v0}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 28
    invoke-static {v0}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 40
    invoke-static {v0}, Lcom/amap/location/g/h;->c(Lcom/amap/location/g/h;)Lcom/amap/location/protocol/i;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/amap/location/protocol/i;->a()Lcom/amap/location/support/bean/AmapFps;

    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lcom/amap/location/support/bean/AmapFps;->locResultInfo:Lcom/amap/location/support/nl/NetworkLocationResultInfo;

    .line 50
    iget-object v1, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 52
    invoke-static {v1}, Lcom/amap/location/g/h;->d(Lcom/amap/location/g/h;)I

    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x6

    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/amap/location/support/nl/NetworkLocationResultInfo;->onFail(ILjava/lang/String;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 66
    invoke-static {v0}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 79
    invoke-static {v0}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;)Lcom/amap/location/support/handler/AmapHandler;

    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 87
    invoke-static {v0}, Lcom/amap/location/g/h;->b(Lcom/amap/location/g/h;)Lcom/amap/location/support/handler/AmapHandler;

    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x2

    .line 92
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 97
    invoke-static {v0}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/amap/location/g/h$3;->a:Lcom/amap/location/g/h;

    .line 112
    invoke-static {v1}, Lcom/amap/location/g/h;->a(Lcom/amap/location/g/h;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 123
    throw v0
.end method
