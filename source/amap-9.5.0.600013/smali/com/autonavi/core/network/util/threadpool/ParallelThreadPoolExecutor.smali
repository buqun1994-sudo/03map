.class final Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ANet-ThreadPool"


# instance fields
.field private mExecutor:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;

.field private mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

.field private mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 13
    invoke-direct {v0}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 18
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 20
    invoke-direct {v0, p2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;-><init>([I)V

    .line 23
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->getMaxParallelNumberAllGroup()I

    .line 28
    move-result v4

    .line 29
    if-lez v4, :cond_1

    .line 31
    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 33
    new-instance p2, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$1;

    .line 35
    invoke-direct {p2, p0}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$1;-><init>(Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;)V

    .line 38
    invoke-direct {v8, v4, p2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 41
    new-instance p2, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;

    .line 43
    const-wide/16 v5, 0x0

    .line 45
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    new-instance v9, Lcom/autonavi/core/network/util/threadpool/ThreadPool$DefaultThreadFactory;

    .line 49
    invoke-direct {v9, p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPool$DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    .line 52
    move-object v1, p2

    .line 53
    move-object v2, p0

    .line 54
    move v3, v4

    .line 55
    invoke-direct/range {v1 .. v9}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;-><init>(Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 58
    iput-object p2, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;

    .line 60
    const/4 p1, 0x4

    .line 61
    invoke-static {p1}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 67
    sget-object p1, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->TAG:Ljava/lang/String;

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v0, "new ParallelThreadPoolExecutor, max poll size = "

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;

    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    .line 84
    move-result v0

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    invoke-static {p1, p2}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    const-string p2, "parallelNumber error!"

    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1
.end method

.method public static synthetic access$000(Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->notifyAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method private executeRunnable(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 11
    iget p1, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 13
    invoke-virtual {v0, p1}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->addSelfByPriority(I)V

    .line 16
    return-void
.end method

.method private notifyAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    :try_start_0
    instance-of p2, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 10
    if-eqz p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 14
    check-cast p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 16
    iget p1, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 18
    invoke-virtual {p2, p1}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->subSelfByPriority(I)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 23
    invoke-virtual {p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->element()Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 26
    move-result-object p1

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    iget-object p2, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 31
    invoke-virtual {p2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->getMaxParallelNumber()[I

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 37
    invoke-virtual {v1}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->getParallelNumber()[I

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "afterExecute-"

    .line 43
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->isFull(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;[I[ILjava/lang/String;)Z

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 51
    invoke-virtual {p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->pop()Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->executeRunnable(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;)V

    .line 58
    iget-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 60
    invoke-virtual {p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->element()Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 63
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    throw p1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    :try_start_0
    check-cast p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 15
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 17
    invoke-virtual {v0, p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->push(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;)V

    .line 20
    iget-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 22
    invoke-virtual {p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->element()Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 30
    invoke-virtual {v0}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->getMaxParallelNumber()[I

    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 36
    invoke-virtual {v2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->getParallelNumber()[I

    .line 39
    move-result-object v2

    .line 40
    const-string v3, "execute-"

    .line 42
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->isFull(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;[I[ILjava/lang/String;)Z

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 50
    invoke-virtual {p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->pop()Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->executeRunnable(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    throw p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    const-string v0, "thread pool not init or has shutdown!"

    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
.end method

.method public shutdown()V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "ParallelThreadPoolExecutor shutdown!"

    .line 5
    invoke-static {v0, v1}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mThreadPoolWaitQueue:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;->clear()V

    .line 18
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mStatus:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;

    .line 20
    invoke-virtual {v0}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolStatus;->unInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;

    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->mRunnableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    throw v0
.end method
