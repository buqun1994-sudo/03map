.class Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalThreadPoolExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    move-object v0, p1

    .line 3
    iput-object v0, v8, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;->this$0:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;

    .line 5
    move-object v0, p0

    .line 6
    move v1, p2

    .line 7
    move v2, p3

    .line 8
    move-wide v3, p4

    .line 9
    move-object v5, p6

    .line 10
    move-object/from16 v6, p7

    .line 12
    move-object/from16 v7, p8

    .line 14
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 17
    return-void
.end method


# virtual methods
.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$InternalThreadPoolExecutor;->this$0:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;

    .line 6
    invoke-static {v0, p1, p2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;->access$000(Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method
