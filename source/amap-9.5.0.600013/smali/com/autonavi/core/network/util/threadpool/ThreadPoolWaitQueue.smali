.class final Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance v1, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue$1;

    .line 8
    invoke-direct {v1, p0}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue$1;-><init>(Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;)V

    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 15
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 17
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 6
    return-void
.end method

.method public element()Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractQueue;->element()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 19
    return-object v0
.end method

.method public pop()Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    move-object v1, v0

    .line 20
    :catch_0
    return-object v1
.end method

.method public push(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->mWaitingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
