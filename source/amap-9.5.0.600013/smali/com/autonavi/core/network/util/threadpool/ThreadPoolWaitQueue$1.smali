.class Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue$1;->this$0:Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;)I
    .locals 2

    .line 2
    iget v0, p2, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    iget v1, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget p1, p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->index:I

    iget p2, p2, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->index:I

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    check-cast p2, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/core/network/util/threadpool/ThreadPoolWaitQueue$1;->compare(Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;)I

    move-result p1

    return p1
.end method
