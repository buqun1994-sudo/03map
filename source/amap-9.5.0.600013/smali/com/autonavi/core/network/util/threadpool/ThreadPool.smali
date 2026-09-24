.class public Lcom/autonavi/core/network/util/threadpool/ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;,
        Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;,
        Lcom/autonavi/core/network/util/threadpool/ThreadPool$DefaultThreadFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_POOL_NAME:Ljava/lang/String; = "default"

.field private static final DEFAULT_POOL_SIZE:I = 0x5

.field public static final PRIORITY_HIGH:I = 0x1f3

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0xfa

.field private static volatile sDefaultInstance:Lcom/autonavi/core/network/util/threadpool/ThreadPool;


# instance fields
.field private mExecutor:Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;

.field private mThreadIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mThreadIndex:I

    .line 3
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor;

    invoke-direct {v0, p1, p2}, Lcom/autonavi/core/network/util/threadpool/DefaultThreadPoolExecutor;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mThreadIndex:I

    .line 6
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;

    invoke-direct {v0, p1, p2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;

    return-void
.end method

.method public static defaultInstance()Lcom/autonavi/core/network/util/threadpool/ThreadPool;
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->sDefaultInstance:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->sDefaultInstance:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 14
    const-string v2, "default"

    .line 16
    const/4 v3, 0x5

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;-><init>(Ljava/lang/String;I)V

    .line 20
    sput-object v1, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->sDefaultInstance:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->sDefaultInstance:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 29
    return-object v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;ILjava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mThreadIndex:I

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mThreadIndex:I

    .line 10
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;

    .line 12
    new-instance v1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget p3, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mThreadIndex:I

    .line 24
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 31
    iget v2, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mThreadIndex:I

    .line 33
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;-><init>(Ljava/lang/Runnable;ILjava/lang/String;I)V

    .line 36
    invoke-interface {v0, v1}, Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    .line 44
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->mExecutor:Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;

    .line 3
    invoke-interface {v0}, Lcom/autonavi/core/network/util/threadpool/ThreadPool$IExecutor;->shutdown()V

    .line 6
    return-void
.end method
