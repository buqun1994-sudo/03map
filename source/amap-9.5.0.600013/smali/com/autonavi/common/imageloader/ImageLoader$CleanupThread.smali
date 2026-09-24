.class Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanupThread"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 6
    iput-object p2, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->handler:Landroid/os/Handler;

    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 12
    const-string p1, "ImageLoader-refQueue"

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 8
    const-wide/16 v1, 0x3e8

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/autonavi/common/imageloader/Action$RequestWeakReference;

    .line 16
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->handler:Landroid/os/Handler;

    .line 18
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v0, :cond_0

    .line 24
    const/4 v2, 0x3

    .line 25
    iput v2, v1, Landroid/os/Message;->what:I

    .line 27
    iget-object v0, v0, Lcom/autonavi/common/imageloader/Action$RequestWeakReference;->action:Lcom/autonavi/common/imageloader/Action;

    .line 29
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->handler:Landroid/os/Handler;

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->handler:Landroid/os/Handler;

    .line 44
    new-instance v2, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread$1;

    .line 46
    invoke-direct {v2, p0, v0}, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread$1;-><init>(Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;Ljava/lang/Exception;)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :catch_1
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    return-void
.end method
