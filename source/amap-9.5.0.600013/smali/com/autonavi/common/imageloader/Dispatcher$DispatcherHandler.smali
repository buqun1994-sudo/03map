.class Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherHandler"
.end annotation


# instance fields
.field private final dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/autonavi/common/imageloader/Dispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler$1;

    .line 11
    invoke-direct {v1, p0, p1}, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler$1;-><init>(Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;Landroid/os/Message;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    check-cast p1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 22
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 24
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performFastComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 27
    goto :goto_0

    .line 28
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 32
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performResumeTag(Ljava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 36
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 40
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performPauseTag(Ljava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 46
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 48
    const/4 v2, 0x1

    .line 49
    if-ne p1, v2, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_0
    invoke-virtual {v0, v1}, Lcom/autonavi/common/imageloader/Dispatcher;->performAirplaneModeChange(Z)V

    .line 55
    goto :goto_0

    .line 56
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    check-cast p1, Landroid/net/NetworkInfo;

    .line 60
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 62
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performNetworkStateChange(Landroid/net/NetworkInfo;)V

    .line 65
    goto :goto_0

    .line 66
    :pswitch_6
    iget-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 68
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performBatchComplete()V

    .line 71
    goto :goto_0

    .line 72
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    check-cast p1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 76
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 78
    invoke-virtual {v0, p1, v1}, Lcom/autonavi/common/imageloader/Dispatcher;->performError(Lcom/autonavi/common/imageloader/BitmapHunter;Z)V

    .line 81
    goto :goto_0

    .line 82
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    check-cast p1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 86
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 88
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performRetry(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 91
    goto :goto_0

    .line 92
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    check-cast p1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 96
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 98
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 101
    goto :goto_0

    .line 102
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    check-cast p1, Lcom/autonavi/common/imageloader/Action;

    .line 106
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 108
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performCancel(Lcom/autonavi/common/imageloader/Action;)V

    .line 111
    goto :goto_0

    .line 112
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    check-cast p1, Lcom/autonavi/common/imageloader/Action;

    .line 116
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 118
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->performSubmit(Lcom/autonavi/common/imageloader/Action;)V

    .line 121
    :goto_0
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
