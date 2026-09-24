.class public Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/util/threadpool/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityRunnable"
.end annotation


# instance fields
.field public index:I

.field public name:Ljava/lang/String;

.field public priority:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->name:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->runnable:Ljava/lang/Runnable;

    .line 8
    iput p2, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->priority:I

    .line 10
    iput p4, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->index:I

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->name:Ljava/lang/String;

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/autonavi/core/network/util/threadpool/ThreadPool$PriorityRunnable;->runnable:Ljava/lang/Runnable;

    .line 24
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 30
    return-void
.end method
