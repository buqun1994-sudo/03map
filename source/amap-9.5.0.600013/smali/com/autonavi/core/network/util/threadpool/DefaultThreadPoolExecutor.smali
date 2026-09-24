.class final Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor$1;-><init>(Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor;)V

    .line 9
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 11
    invoke-direct {v7, p2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 14
    int-to-double v0, p2

    .line 15
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 17
    div-double/2addr v0, v2

    .line 18
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 20
    add-double/2addr v0, v2

    .line 21
    double-to-int v0, v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v2

    .line 27
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    const-wide/16 v4, 0x3c

    .line 31
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    new-instance v8, Lcom/autonavi/core/network/util/threadpool/ThreadPool$DefaultThreadFactory;

    .line 35
    invoke-direct {v8, p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPool$DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    .line 38
    move-object v1, v0

    .line 39
    move v3, p2

    .line 40
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 43
    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 6
    return-void
.end method
