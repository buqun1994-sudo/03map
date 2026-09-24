.class Lcom/autonavi/common/imageloader/PicassoExecutorService;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x3

    .line 2
    const/4 v2, 0x3

    .line 3
    const-wide/16 v3, 0x0

    .line 5
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 9
    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 12
    new-instance v7, Lcom/autonavi/common/imageloader/Utils$PicassoThreadFactory;

    .line 14
    invoke-direct {v7}, Lcom/autonavi/common/imageloader/Utils$PicassoThreadFactory;-><init>()V

    .line 17
    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 21
    return-void
.end method

.method private setThreadCount(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 7
    return-void
.end method


# virtual methods
.method public adjustThreadCount(Landroid/net/NetworkInfo;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 18
    if-eq v1, v2, :cond_1

    .line 20
    const/4 p1, 0x6

    .line 21
    if-eq v1, p1, :cond_1

    .line 23
    const/16 p1, 0x9

    .line 25
    if-eq v1, p1, :cond_1

    .line 27
    invoke-direct {p0, v0}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->setThreadCount(I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x4

    .line 32
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->setThreadCount(I)V

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 39
    move-result p1

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 43
    packed-switch p1, :pswitch_data_1

    .line 46
    invoke-direct {p0, v0}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->setThreadCount(I)V

    .line 49
    goto :goto_0

    .line 50
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->setThreadCount(I)V

    .line 53
    goto :goto_0

    .line 54
    :pswitch_1
    const/4 p1, 0x2

    .line 55
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->setThreadCount(I)V

    .line 58
    goto :goto_0

    .line 59
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->setThreadCount(I)V

    .line 62
    :goto_0
    return-void

    .line 63
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->setThreadCount(I)V

    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 83
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;

    .line 3
    check-cast p1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 5
    invoke-direct {v0, p1}, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;-><init>(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-object v0
.end method
