.class Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;-><init>(Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$1;->this$0:Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/core/network/util/threadpool/ParallelThreadPoolExecutor$1;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    iget p2, p2, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    check-cast p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    iget p1, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    sub-int/2addr p2, p1

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
