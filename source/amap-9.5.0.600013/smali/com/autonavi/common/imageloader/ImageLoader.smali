.class public Lcom/autonavi/common/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;,
        Lcom/autonavi/common/imageloader/ImageLoader$Builder;,
        Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;,
        Lcom/autonavi/common/imageloader/ImageLoader$Priority;,
        Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;,
        Lcom/autonavi/common/imageloader/ImageLoader$Listener;
    }
.end annotation


# static fields
.field static final HANDLER:Landroid/os/Handler;

.field static final TAG:Ljava/lang/String; = "ImageLoader"

.field static downloader:Lcom/autonavi/common/imageloader/IDownloader;

.field static networkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

.field static volatile singleton:Lcom/autonavi/common/imageloader/ImageLoader;


# instance fields
.field final cache:Lcom/autonavi/common/imageloader/LruCache;

.field private final cleanupThread:Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;

.field final context:Landroid/content/Context;

.field final defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field final diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

.field final dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

.field indicatorsEnabled:Z

.field private final listener:Lcom/autonavi/common/imageloader/ImageLoader$Listener;

.field volatile loggingEnabled:Z

.field final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTransformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

.field shutdown:Z

.field final stats:Lcom/autonavi/common/imageloader/Stats;

.field final targetToAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/autonavi/common/imageloader/Action;",
            ">;"
        }
    .end annotation
.end field

.field final targetToDeferredRequestCreator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lcom/autonavi/common/imageloader/DeferredRequestCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/common/imageloader/ImageLoader$1;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/autonavi/common/imageloader/ImageLoader$1;-><init>(Landroid/os/Looper;)V

    .line 10
    sput-object v0, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/common/imageloader/Dispatcher;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/ImageLoader$Listener;Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;Ljava/util/List;Lcom/autonavi/common/imageloader/Stats;Landroid/graphics/Bitmap$Config;Lcom/autonavi/common/imageloader/ImageDiskCache;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/autonavi/common/imageloader/Dispatcher;",
            "Lcom/autonavi/common/imageloader/LruCache;",
            "Lcom/autonavi/common/imageloader/ImageLoader$Listener;",
            "Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;",
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/RequestHandler;",
            ">;",
            "Lcom/autonavi/common/imageloader/Stats;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/autonavi/common/imageloader/ImageDiskCache;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/autonavi/common/imageloader/ImageLoader;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 4
    iput-object p3, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 5
    iput-object p4, p0, Lcom/autonavi/common/imageloader/ImageLoader;->listener:Lcom/autonavi/common/imageloader/ImageLoader$Listener;

    .line 6
    iput-object p5, p0, Lcom/autonavi/common/imageloader/ImageLoader;->requestTransformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 7
    iput-object p8, p0, Lcom/autonavi/common/imageloader/ImageLoader;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p6, :cond_0

    .line 8
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    add-int/lit8 p3, p3, 0x5

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance p3, Lcom/autonavi/common/imageloader/ResourceRequestHandler;

    invoke-direct {p3, p1}, Lcom/autonavi/common/imageloader/ResourceRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    .line 11
    invoke-interface {p4, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_1
    new-instance p3, Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;

    invoke-direct {p3, p1}, Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p3, Lcom/autonavi/common/imageloader/AssetRequestHandler;

    invoke-direct {p3, p1}, Lcom/autonavi/common/imageloader/AssetRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p3, Lcom/autonavi/common/imageloader/FileRequestHandler;

    invoke-direct {p3, p1}, Lcom/autonavi/common/imageloader/FileRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Lcom/autonavi/common/imageloader/NetworkRequestHandler;

    iget-object p2, p2, Lcom/autonavi/common/imageloader/Dispatcher;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    invoke-direct {p1, p2, p7, p9}, Lcom/autonavi/common/imageloader/NetworkRequestHandler;-><init>(Lcom/autonavi/common/imageloader/IDownloader;Lcom/autonavi/common/imageloader/Stats;Lcom/autonavi/common/imageloader/ImageDiskCache;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->requestHandlers:Ljava/util/List;

    .line 17
    iput-object p7, p0, Lcom/autonavi/common/imageloader/ImageLoader;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 18
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToAction:Ljava/util/Map;

    .line 19
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 20
    iput-boolean p10, p0, Lcom/autonavi/common/imageloader/ImageLoader;->indicatorsEnabled:Z

    .line 21
    iput-boolean p11, p0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 22
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 23
    new-instance p2, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;

    sget-object p3, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cleanupThread:Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 25
    iput-object p9, p0, Lcom/autonavi/common/imageloader/ImageLoader;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/common/imageloader/ImageLoader;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private cancelExistingRequest(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/common/imageloader/Utils;->checkMain()V

    .line 4
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToAction:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/autonavi/common/imageloader/Action;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Action;->cancel()V

    .line 17
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 19
    invoke-virtual {v1, v0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchCancel(Lcom/autonavi/common/imageloader/Action;)V

    .line 22
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    check-cast p1, Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/autonavi/common/imageloader/DeferredRequestCreator;

    .line 36
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->cancel()V

    .line 41
    :cond_1
    return-void
.end method

.method private deliverAction(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;Lcom/autonavi/common/imageloader/Action;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcom/autonavi/common/imageloader/Action;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/autonavi/common/imageloader/Action;->willReplay()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToAction:Ljava/util/Map;

    .line 16
    invoke-virtual {p3}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_1
    const-string v0, "Main"

    .line 25
    if-eqz p1, :cond_3

    .line 27
    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p3, p1, p2}, Lcom/autonavi/common/imageloader/Action;->complete(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 32
    iget-boolean p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 34
    if-eqz p1, :cond_4

    .line 36
    iget-object p1, p3, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    new-instance p3, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v1, "from "

    .line 49
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    const-string p3, "completed"

    .line 61
    invoke-static {v0, p3, p1, p2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 67
    const-string p2, "LoadedFrom cannot be null."

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 72
    throw p1

    .line 73
    :cond_3
    invoke-virtual {p3}, Lcom/autonavi/common/imageloader/Action;->error()V

    .line 76
    iget-boolean p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 78
    if-eqz p1, :cond_4

    .line 80
    iget-object p1, p3, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 82
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    const-string p2, "errored"

    .line 88
    invoke-static {v0, p2, p1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_4
    :goto_0
    return-void
.end method

.method public static setNetworkFilter(Lcom/autonavi/core/network/inter/filter/INetworkFilter;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->networkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 3
    return-void
.end method

.method public static setSingletonInstance(Lcom/autonavi/common/imageloader/ImageLoader;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 3
    const-class v0, Lcom/autonavi/common/imageloader/ImageLoader;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 8
    if-nez v1, :cond_0

    .line 10
    sput-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "Singleton instance already exists."

    .line 18
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v0, "ImageLoader must not be null."

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static with(Landroid/content/Context;)Lcom/autonavi/common/imageloader/ImageLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/autonavi/common/imageloader/ImageLoader;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/autonavi/common/imageloader/ImageLoader$Builder;

    .line 14
    invoke-direct {v1, p0}, Lcom/autonavi/common/imageloader/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 19
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->setDownloader(Lcom/autonavi/common/imageloader/IDownloader;)Lcom/autonavi/common/imageloader/ImageLoader$Builder;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->build()Lcom/autonavi/common/imageloader/ImageLoader;

    .line 26
    move-result-object p0

    .line 27
    sput-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 36
    return-object p0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelExistingRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelRequest(Lcom/autonavi/common/imageloader/Target;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelExistingRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/autonavi/common/imageloader/Utils;->checkMain()V

    .line 4
    if-eqz p1, :cond_4

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToAction:Ljava/util/Map;

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v1, :cond_1

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/autonavi/common/imageloader/Action;

    .line 31
    invoke-virtual {v4}, Lcom/autonavi/common/imageloader/Action;->getTag()Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v4}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    invoke-direct {p0, v4}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 55
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    move-result v1

    .line 66
    :goto_1
    if-ge v2, v1, :cond_3

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/autonavi/common/imageloader/DeferredRequestCreator;

    .line 74
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->getTag()Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_2

    .line 84
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->cancel()V

    .line 87
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    return-void

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 93
    const-string v0, "Cannot cancel requests with null tag."

    .line 95
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p1
.end method

.method public clearDiskCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/ImageDiskCache;->clearCache()Z

    .line 8
    :cond_0
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/LruCache;->clear()V

    .line 8
    :cond_0
    return-void
.end method

.method public complete(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getAction()Lcom/autonavi/common/imageloader/Action;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getActions()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 24
    if-eqz v4, :cond_1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 30
    return-void

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getData()Lcom/autonavi/common/imageloader/Request;

    .line 34
    move-result-object v2

    .line 35
    iget-object v2, v2, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 37
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getException()Ljava/lang/Exception;

    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getLoadedFrom()Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 48
    move-result-object p1

    .line 49
    if-eqz v0, :cond_4

    .line 51
    invoke-direct {p0, v6, p1, v0}, Lcom/autonavi/common/imageloader/ImageLoader;->deliverAction(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;Lcom/autonavi/common/imageloader/Action;)V

    .line 54
    :cond_4
    if-eqz v4, :cond_5

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    move-result v0

    .line 60
    :goto_2
    if-ge v3, v0, :cond_5

    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/autonavi/common/imageloader/Action;

    .line 68
    invoke-direct {p0, v6, p1, v4}, Lcom/autonavi/common/imageloader/ImageLoader;->deliverAction(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;Lcom/autonavi/common/imageloader/Action;)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    iget-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->listener:Lcom/autonavi/common/imageloader/ImageLoader$Listener;

    .line 76
    if-eqz p1, :cond_6

    .line 78
    if-eqz v5, :cond_6

    .line 80
    invoke-interface {p1, p0, v2, v5}, Lcom/autonavi/common/imageloader/ImageLoader$Listener;->onImageLoadFailed(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 83
    :cond_6
    return-void
.end method

.method public defer(Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/DeferredRequestCreator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public enqueueAndSubmit(Lcom/autonavi/common/imageloader/Action;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToAction:Ljava/util/Map;

    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    if-eq v1, p1, :cond_0

    .line 15
    invoke-direct {p0, v0}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToAction:Ljava/util/Map;

    .line 20
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->submit(Lcom/autonavi/common/imageloader/Action;)V

    .line 26
    return-void
.end method

.method public getDiskCache()Lcom/autonavi/common/imageloader/ImageDiskCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 3
    return-object v0
.end method

.method public getMemoryCache()Lcom/autonavi/common/imageloader/LruCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 3
    return-object v0
.end method

.method public getSnapshot()Lcom/autonavi/common/imageloader/StatsSnapshot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Stats;->createSnapshot()Lcom/autonavi/common/imageloader/StatsSnapshot;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cache:Lcom/autonavi/common/imageloader/LruCache;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/LruCache;->clearKeyUri(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uri == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidate(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->invalidate(Landroid/net/Uri;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->invalidate(Landroid/net/Uri;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load(I)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Lcom/autonavi/common/imageloader/RequestCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/autonavi/common/imageloader/RequestCreator;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/net/Uri;ILjava/util/Map;)V

    return-object v0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resource ID must not be zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load(Landroid/net/Uri;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/common/imageloader/RequestCreator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/autonavi/common/imageloader/RequestCreator;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/net/Uri;ILjava/util/Map;)V

    return-object v0
.end method

.method public load(Ljava/io/File;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/autonavi/common/imageloader/RequestCreator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0, v1}, Lcom/autonavi/common/imageloader/RequestCreator;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/net/Uri;ILjava/util/Map;)V

    return-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->load(Landroid/net/Uri;)Lcom/autonavi/common/imageloader/RequestCreator;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/autonavi/common/imageloader/RequestCreator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0, v1}, Lcom/autonavi/common/imageloader/RequestCreator;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/net/Uri;ILjava/util/Map;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->load(Landroid/net/Uri;)Lcom/autonavi/common/imageloader/RequestCreator;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pauseTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchPauseTag(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 3
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/LruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 11
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Stats;->dispatchCacheHit()V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 17
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Stats;->dispatchCacheMiss()V

    .line 20
    :goto_0
    return-object p1
.end method

.method public resumeAction(Lcom/autonavi/common/imageloader/Action;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/autonavi/common/imageloader/Action;->memoryPolicy:I

    .line 3
    invoke-static {v0}, Lcom/autonavi/common/imageloader/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getKey()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/autonavi/common/imageloader/ImageLoader;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string v1, "Main"

    .line 21
    if-eqz v0, :cond_1

    .line 23
    sget-object v2, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->MEMORY:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 25
    invoke-direct {p0, v0, v2, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->deliverAction(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;Lcom/autonavi/common/imageloader/Action;)V

    .line 28
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 30
    if-eqz v0, :cond_2

    .line 32
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 34
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v3, "from "

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    const-string v2, "completed"

    .line 57
    invoke-static {v1, v2, p1, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->enqueueAndSubmit(Lcom/autonavi/common/imageloader/Action;)V

    .line 64
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 66
    if-eqz v0, :cond_2

    .line 68
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 70
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const-string v0, "resumed"

    .line 76
    invoke-static {v1, v0, p1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2
    :goto_1
    return-void
.end method

.method public resumeTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchResumeTag(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setIndicatorsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->indicatorsEnabled:Z

    .line 3
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 3
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader;->singleton:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 3
    if-eq p0, v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->shutdown:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/LruCache;->clear()V

    .line 15
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->cleanupThread:Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;

    .line 17
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->shutdown()V

    .line 20
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 22
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Stats;->shutdown()V

    .line 25
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 27
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/ImageDiskCache;->shutdown()V

    .line 30
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 32
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/Dispatcher;->shutdown()V

    .line 35
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/autonavi/common/imageloader/DeferredRequestCreator;

    .line 57
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->cancel()V

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->shutdown:Z

    .line 69
    return-void

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 72
    const-string v1, "Default singleton instance cannot be shutdown."

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
.end method

.method public submit(Lcom/autonavi/common/imageloader/Action;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 3
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchSubmit(Lcom/autonavi/common/imageloader/Action;)V

    .line 6
    return-void
.end method

.method public transformRequest(Lcom/autonavi/common/imageloader/Request;)Lcom/autonavi/common/imageloader/Request;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader;->requestTransformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 3
    invoke-interface {v0, p1}, Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;->transformRequest(Lcom/autonavi/common/imageloader/Request;)Lcom/autonavi/common/imageloader/Request;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "Request transformer "

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Lcom/autonavi/common/imageloader/ImageLoader;->requestTransformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " returned null for "

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method
