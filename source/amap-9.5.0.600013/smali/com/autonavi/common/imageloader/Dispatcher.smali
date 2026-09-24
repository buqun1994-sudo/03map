.class Lcom/autonavi/common/imageloader/Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;,
        Lcom/autonavi/common/imageloader/Dispatcher$DispatcherThread;,
        Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;
    }
.end annotation


# static fields
.field static final AIRPLANE_MODE_CHANGE:I = 0xa

.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x1

.field private static final BATCH_DELAY:I = 0xc8

.field private static final DISPATCHER_THREAD_NAME:Ljava/lang/String; = "Dispatcher"

.field static final HUNTER_BATCH_COMPLETE:I = 0x8

.field static final HUNTER_COMPLETE:I = 0x4

.field static final HUNTER_DECODE_FAILED:I = 0x6

.field static final HUNTER_DELAY_NEXT_BATCH:I = 0x7

.field static final HUNTER_FAST_COMPLETE:I = 0xe

.field static final HUNTER_RETRY:I = 0x5

.field static final NETWORK_STATE_CHANGE:I = 0x9

.field static final REQUEST_BATCH_RESUME:I = 0xd

.field static final REQUEST_CANCEL:I = 0x2

.field static final REQUEST_GCED:I = 0x3

.field static final REQUEST_SUBMIT:I = 0x1

.field private static final RETRY_DELAY:I = 0x1f4

.field static final TAG_PAUSE:I = 0xb

.field static final TAG_RESUME:I = 0xc


# instance fields
.field airplaneMode:Z

.field final batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/autonavi/common/imageloader/LruCache;

.field final context:Landroid/content/Context;

.field final dispatcherThread:Lcom/autonavi/common/imageloader/Dispatcher$DispatcherThread;

.field final downloader:Lcom/autonavi/common/imageloader/IDownloader;

.field final failedActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/autonavi/common/imageloader/Action;",
            ">;"
        }
    .end annotation
.end field

.field final handler:Landroid/os/Handler;

.field final hunterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/autonavi/common/imageloader/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final mainThreadHandler:Landroid/os/Handler;

.field final pausedActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/autonavi/common/imageloader/Action;",
            ">;"
        }
    .end annotation
.end field

.field final pausedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final receiver:Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;

.field final scansNetworkChanges:Z

.field final service:Ljava/util/concurrent/ExecutorService;

.field final stats:Lcom/autonavi/common/imageloader/Stats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/autonavi/common/imageloader/IDownloader;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/Stats;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherThread;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherThread;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->dispatcherThread:Lcom/autonavi/common/imageloader/Dispatcher$DispatcherThread;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/autonavi/common/imageloader/Utils;->flushStackLocalLeaks(Landroid/os/Looper;)V

    .line 21
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 25
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 27
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 32
    new-instance p2, Ljava/util/WeakHashMap;

    .line 34
    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->failedActions:Ljava/util/Map;

    .line 39
    new-instance p2, Ljava/util/WeakHashMap;

    .line 41
    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedActions:Ljava/util/Map;

    .line 46
    new-instance p2, Ljava/util/HashSet;

    .line 48
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedTags:Ljava/util/Set;

    .line 53
    new-instance p2, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p2, v0, p0}, Lcom/autonavi/common/imageloader/Dispatcher$DispatcherHandler;-><init>(Landroid/os/Looper;Lcom/autonavi/common/imageloader/Dispatcher;)V

    .line 62
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 64
    iput-object p4, p0, Lcom/autonavi/common/imageloader/Dispatcher;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 66
    iput-object p3, p0, Lcom/autonavi/common/imageloader/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    .line 68
    iput-object p5, p0, Lcom/autonavi/common/imageloader/Dispatcher;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 70
    iput-object p6, p0, Lcom/autonavi/common/imageloader/Dispatcher;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    .line 74
    const/4 p3, 0x4

    .line 75
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->batch:Ljava/util/List;

    .line 80
    invoke-static {p1}, Lcom/autonavi/common/imageloader/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    .line 83
    move-result p2

    .line 84
    iput-boolean p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->airplaneMode:Z

    .line 86
    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 88
    invoke-static {p1, p2}, Lcom/autonavi/common/imageloader/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    move-result p1

    .line 92
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->scansNetworkChanges:Z

    .line 94
    new-instance p1, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;

    .line 96
    invoke-direct {p1, p0}, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;-><init>(Lcom/autonavi/common/imageloader/Dispatcher;)V

    .line 99
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->receiver:Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;

    .line 101
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;->register()V

    .line 104
    return-void
.end method

.method private batch(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->batch:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 15
    const/4 v0, 0x7

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 24
    const-wide/16 v1, 0xc8

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 29
    :cond_1
    return-void
.end method

.method private fastComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 10
    const/16 v1, 0xe

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    return-void
.end method

.method private flushFailedActions()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->failedActions:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->failedActions:Ljava/util/Map;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/autonavi/common/imageloader/Action;

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 34
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 37
    move-result-object v2

    .line 38
    iget-boolean v2, v2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 40
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Action;->getRequest()Lcom/autonavi/common/imageloader/Request;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    const-string v3, "Dispatcher"

    .line 52
    const-string v4, "replaying"

    .line 54
    invoke-static {v3, v4, v2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, v1, v2}, Lcom/autonavi/common/imageloader/Dispatcher;->performSubmit(Lcom/autonavi/common/imageloader/Action;Z)V

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method private logBatch(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/BitmapHunter;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 17
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 20
    move-result-object v0

    .line 21
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 23
    if-eqz v0, :cond_3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 49
    move-result v2

    .line 50
    if-lez v2, :cond_1

    .line 52
    const-string v2, ", "

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    invoke-static {v1}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string p1, "delivered"

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    const-string v1, "Dispatcher"

    .line 73
    invoke-static {v1, p1, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_3
    :goto_1
    return-void
.end method

.method private logFast(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, "delivered"

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "Dispatcher"

    .line 29
    invoke-static {v1, p1, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method private markForReplay(Lcom/autonavi/common/imageloader/Action;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p1, Lcom/autonavi/common/imageloader/Action;->willReplay:Z

    .line 9
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private markForReplay(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getAction()Lcom/autonavi/common/imageloader/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/autonavi/common/imageloader/Dispatcher;->markForReplay(Lcom/autonavi/common/imageloader/Action;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/common/imageloader/Action;

    .line 6
    invoke-direct {p0, v2}, Lcom/autonavi/common/imageloader/Dispatcher;->markForReplay(Lcom/autonavi/common/imageloader/Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchAirplaneModeChange(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xa

    .line 6
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    return-void
.end method

.method public dispatchCancel(Lcom/autonavi/common/imageloader/Action;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    return-void
.end method

.method public dispatchComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    return-void
.end method

.method public dispatchFailed(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    return-void
.end method

.method public dispatchNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/16 v1, 0x9

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    return-void
.end method

.method public dispatchPauseTag(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/16 v1, 0xb

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    return-void
.end method

.method public dispatchResumeTag(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    return-void
.end method

.method public dispatchRetry(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p1

    .line 8
    const-wide/16 v1, 0x1f4

    .line 10
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
    return-void
.end method

.method public dispatchSubmit(Lcom/autonavi/common/imageloader/Action;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    return-void
.end method

.method public performAirplaneModeChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->airplaneMode:Z

    .line 3
    return-void
.end method

.method public performBatchComplete()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->batch:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->batch:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    .line 15
    const/16 v2, 0x8

    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    invoke-direct {p0, v0}, Lcom/autonavi/common/imageloader/Dispatcher;->logBatch(Ljava/util/List;)V

    .line 27
    return-void
.end method

.method public performCancel(Lcom/autonavi/common/imageloader/Action;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 13
    const-string v2, "canceled"

    .line 15
    const-string v3, "Dispatcher"

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1, p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->detach(Lcom/autonavi/common/imageloader/Action;)V

    .line 22
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->cancel()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 30
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 36
    move-result-object v0

    .line 37
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getRequest()Lcom/autonavi/common/imageloader/Request;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v3, v2, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedTags:Ljava/util/Set;

    .line 54
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTag()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedActions:Ljava/util/Map;

    .line 66
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 76
    move-result-object v0

    .line 77
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 79
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getRequest()Lcom/autonavi/common/imageloader/Request;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    const-string v1, "because paused request got canceled"

    .line 91
    invoke-static {v3, v2, v0, v1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->failedActions:Ljava/util/Map;

    .line 96
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/autonavi/common/imageloader/Action;

    .line 106
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 111
    move-result-object v0

    .line 112
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 114
    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getRequest()Lcom/autonavi/common/imageloader/Request;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    const-string v0, "from replaying"

    .line 126
    invoke-static {v3, v2, p1, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    return-void
.end method

.method public performComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getMemoryPolicy()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/autonavi/common/imageloader/MemoryPolicy;->shouldWriteToMemoryCache(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getKey()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/common/imageloader/LruCache;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getKey()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p1, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 35
    const-string v1, "for completion"

    .line 37
    const-string v2, "Dispatcher"

    .line 39
    if-eqz v0, :cond_2

    .line 41
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/Action;->isfastMode:Z

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->fastComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 48
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 51
    move-result-object v0

    .line 52
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 54
    if-eqz v0, :cond_1

    .line 56
    const-string v0, "fast"

    .line 58
    invoke-static {p1}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2, v0, p1, v1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->batch(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 69
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 72
    move-result-object v0

    .line 73
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 75
    if-eqz v0, :cond_3

    .line 77
    const-string v0, "batched"

    .line 79
    invoke-static {p1}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, v0, p1, v1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    return-void
.end method

.method public performError(Lcom/autonavi/common/imageloader/BitmapHunter;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 7
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 11
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/Action;->isfastMode:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string v0, "fast"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "batched"

    .line 20
    :goto_0
    invoke-static {p1}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v3, "for error"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    if-eqz p2, :cond_1

    .line 36
    const-string p2, " (will replay)"

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p2, ""

    .line 41
    :goto_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    const-string v2, "Dispatcher"

    .line 50
    invoke-static {v2, v0, v1, p2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    iget-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 55
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getKey()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->batch(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 65
    return-void
.end method

.method public performFastComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    .line 3
    const/16 v1, 0xe

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->logFast(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 15
    return-void
.end method

.method public performNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 3
    instance-of v1, v0, Lcom/autonavi/common/imageloader/PicassoExecutorService;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/autonavi/common/imageloader/PicassoExecutorService;

    .line 9
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/PicassoExecutorService;->adjustThreadCount(Landroid/net/NetworkInfo;)V

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 20
    invoke-direct {p0}, Lcom/autonavi/common/imageloader/Dispatcher;->flushFailedActions()V

    .line 23
    :cond_1
    return-void
.end method

.method public performPauseTag(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedTags:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_8

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 32
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 35
    move-result-object v2

    .line 36
    iget-boolean v2, v2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 38
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getAction()Lcom/autonavi/common/imageloader/Action;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getActions()Ljava/util/List;

    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x1

    .line 47
    if-eqz v4, :cond_2

    .line 49
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_2

    .line 55
    const/4 v6, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v6, 0x0

    .line 58
    :goto_1
    if-nez v3, :cond_3

    .line 60
    if-nez v6, :cond_3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string v7, "\' was paused"

    .line 65
    const-string v8, "because tag \'"

    .line 67
    const-string v9, "paused"

    .line 69
    const-string v10, "Dispatcher"

    .line 71
    if-eqz v3, :cond_4

    .line 73
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/Action;->getTag()Ljava/lang/Object;

    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v11

    .line 81
    if-eqz v11, :cond_4

    .line 83
    invoke-virtual {v1, v3}, Lcom/autonavi/common/imageloader/BitmapHunter;->detach(Lcom/autonavi/common/imageloader/Action;)V

    .line 86
    iget-object v11, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedActions:Ljava/util/Map;

    .line 88
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 91
    move-result-object v12

    .line 92
    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    if-eqz v2, :cond_4

    .line 97
    iget-object v3, v3, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 99
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v11

    .line 121
    invoke-static {v10, v9, v3, v11}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_4
    if-eqz v6, :cond_7

    .line 126
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 129
    move-result v3

    .line 130
    sub-int/2addr v3, v5

    .line 131
    :goto_2
    if-ltz v3, :cond_7

    .line 133
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lcom/autonavi/common/imageloader/Action;

    .line 139
    invoke-virtual {v5}, Lcom/autonavi/common/imageloader/Action;->getTag()Ljava/lang/Object;

    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_5

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    invoke-virtual {v1, v5}, Lcom/autonavi/common/imageloader/BitmapHunter;->detach(Lcom/autonavi/common/imageloader/Action;)V

    .line 153
    iget-object v6, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedActions:Ljava/util/Map;

    .line 155
    invoke-virtual {v5}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 158
    move-result-object v11

    .line 159
    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    if-eqz v2, :cond_6

    .line 164
    iget-object v5, v5, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 166
    invoke-virtual {v5}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 169
    move-result-object v5

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 188
    invoke-static {v10, v9, v5, v6}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 193
    goto :goto_2

    .line 194
    :cond_7
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->cancel()Z

    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_1

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 203
    if-eqz v2, :cond_1

    .line 205
    invoke-static {v1}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    const-string v2, "all actions paused"

    .line 211
    const-string v3, "canceled"

    .line 213
    invoke-static {v10, v3, v1, v2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_8
    return-void
.end method

.method public performResumeTag(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedTags:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedActions:Ljava/util/Map;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/autonavi/common/imageloader/Action;

    .line 33
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/Action;->getTag()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 43
    if-nez v1, :cond_2

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    if-eqz v1, :cond_4

    .line 59
    iget-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    .line 61
    const/16 v0, 0xd

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    :cond_4
    return-void
.end method

.method public performRetry(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/autonavi/common/imageloader/Dispatcher;->performError(Lcom/autonavi/common/imageloader/BitmapHunter;Z)V

    .line 20
    return-void

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->scansNetworkChanges:Z

    .line 23
    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->context:Landroid/content/Context;

    .line 27
    const-string v2, "connectivity"

    .line 29
    invoke-static {v0, v2}, Lcom/autonavi/common/imageloader/Utils;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 35
    if-nez v0, :cond_2

    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v0, 0x0

    .line 44
    :goto_0
    const/4 v2, 0x1

    .line 45
    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 53
    const/4 v3, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v3, 0x0

    .line 56
    :goto_1
    iget-boolean v4, p0, Lcom/autonavi/common/imageloader/Dispatcher;->airplaneMode:Z

    .line 58
    invoke-virtual {p1, v4, v0}, Lcom/autonavi/common/imageloader/BitmapHunter;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->supportsReplay()Z

    .line 65
    move-result v4

    .line 66
    if-nez v0, :cond_7

    .line 68
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->scansNetworkChanges:Z

    .line 70
    if-eqz v0, :cond_5

    .line 72
    if-eqz v4, :cond_5

    .line 74
    const/4 v1, 0x1

    .line 75
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/autonavi/common/imageloader/Dispatcher;->performError(Lcom/autonavi/common/imageloader/BitmapHunter;Z)V

    .line 78
    if-eqz v1, :cond_6

    .line 80
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->markForReplay(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 83
    :cond_6
    return-void

    .line 84
    :cond_7
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->scansNetworkChanges:Z

    .line 86
    if-eqz v0, :cond_a

    .line 88
    if-eqz v3, :cond_8

    .line 90
    goto :goto_2

    .line 91
    :cond_8
    invoke-virtual {p0, p1, v4}, Lcom/autonavi/common/imageloader/Dispatcher;->performError(Lcom/autonavi/common/imageloader/BitmapHunter;Z)V

    .line 94
    if-eqz v4, :cond_9

    .line 96
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->markForReplay(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 99
    :cond_9
    return-void

    .line 100
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 103
    move-result-object v0

    .line 104
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 106
    if-eqz v0, :cond_b

    .line 108
    const-string v0, "retrying"

    .line 110
    invoke-static {p1}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    const-string v2, "Dispatcher"

    .line 116
    invoke-static {v2, v0, v1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_b
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getException()Ljava/lang/Exception;

    .line 122
    move-result-object v0

    .line 123
    instance-of v0, v0, Lcom/autonavi/common/imageloader/NetworkRequestHandler$ContentLengthException;

    .line 125
    if-eqz v0, :cond_c

    .line 127
    iget v0, p1, Lcom/autonavi/common/imageloader/BitmapHunter;->networkPolicy:I

    .line 129
    sget-object v1, Lcom/autonavi/common/imageloader/NetworkPolicy;->NO_CACHE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 131
    iget v1, v1, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 133
    or-int/2addr v0, v1

    .line 134
    iput v0, p1, Lcom/autonavi/common/imageloader/BitmapHunter;->networkPolicy:I

    .line 136
    :cond_c
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p1, Lcom/autonavi/common/imageloader/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 144
    return-void
.end method

.method public performSubmit(Lcom/autonavi/common/imageloader/Action;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/common/imageloader/Dispatcher;->performSubmit(Lcom/autonavi/common/imageloader/Action;Z)V

    return-void
.end method

.method public performSubmit(Lcom/autonavi/common/imageloader/Action;Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedTags:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->pausedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    move-result-object p2

    iget-boolean p2, p2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    invoke-virtual {p2}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "because tag \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    .line 7
    invoke-static {v1, v0, p2, p1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/common/imageloader/BitmapHunter;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->attach(Lcom/autonavi/common/imageloader/Action;)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    move-result-object p2

    iget-boolean p2, p2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    if-eqz p2, :cond_3

    .line 12
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "because shut down"

    const-string v0, "ignored"

    invoke-static {v1, v0, p1, p2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->cache:Lcom/autonavi/common/imageloader/LruCache;

    iget-object v3, p0, Lcom/autonavi/common/imageloader/Dispatcher;->stats:Lcom/autonavi/common/imageloader/Stats;

    invoke-static {v0, p0, v2, v3, p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->forRequest(Lcom/autonavi/common/imageloader/ImageLoader;Lcom/autonavi/common/imageloader/Dispatcher;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/Stats;Lcom/autonavi/common/imageloader/Action;)Lcom/autonavi/common/imageloader/BitmapHunter;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/common/imageloader/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 15
    iget-object v2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 16
    iget-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher;->failedActions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;

    move-result-object p2

    iget-boolean p2, p2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    if-eqz p2, :cond_6

    .line 18
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    invoke-static {v1, p2, p1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 3
    instance-of v1, v0, Lcom/autonavi/common/imageloader/PicassoExecutorService;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 12
    invoke-interface {v0}, Lcom/autonavi/common/imageloader/IDownloader;->shutdown()V

    .line 15
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher;->dispatcherThread:Lcom/autonavi/common/imageloader/Dispatcher$DispatcherThread;

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 20
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 22
    new-instance v1, Lcom/autonavi/common/imageloader/Dispatcher$1;

    .line 24
    invoke-direct {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher$1;-><init>(Lcom/autonavi/common/imageloader/Dispatcher;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method
