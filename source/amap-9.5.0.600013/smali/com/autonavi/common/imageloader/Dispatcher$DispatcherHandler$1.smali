.class Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;Landroid/os/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler$1;->this$0:Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;

    .line 3
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler$1;->val$msg:Landroid/os/Message;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Unknown handler message received: "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler$1;->val$msg:Landroid/os/Message;

    .line 15
    iget v2, v2, Landroid/os/Message;->what:I

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 27
    throw v0
.end method
