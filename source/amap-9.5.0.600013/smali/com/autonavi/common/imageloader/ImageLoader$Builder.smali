.class public Lcom/autonavi/common/imageloader/ImageLoader$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cache:Lcom/autonavi/common/imageloader/LruCache;

.field private cachePath:Lcom/autonavi/common/imageloader/ICachePath;

.field private final context:Landroid/content/Context;

.field private defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private downloader:Lcom/autonavi/common/imageloader/IDownloader;

.field private indicatorsEnabled:Z

.field private listener:Lcom/autonavi/common/imageloader/ImageLoader$Listener;

.field private loggingEnabled:Z

.field private networkClient:Lcom/autonavi/core/network/inter/NetworkClient;

.field private requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/util/concurrent/ExecutorService;

.field private transformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->context:Landroid/content/Context;

    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "Context must not be null."

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method


# virtual methods
.method public build()Lcom/autonavi/common/imageloader/ImageLoader;
    .locals 15

    .line 1
    iget-object v7, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->context:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->networkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkClient;

    .line 9
    new-instance v1, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;-><init>()V

    .line 14
    invoke-direct {v0, v1}, Lcom/autonavi/core/network/inter/NetworkClient;-><init>(Lcom/autonavi/core/network/inter/dependence/INetwork;)V

    .line 17
    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->networkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 19
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader;->networkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 21
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/inter/NetworkClient;->setNetworkFilter(Lcom/autonavi/core/network/inter/filter/INetworkFilter;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 26
    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lcom/autonavi/common/imageloader/ImageDownloader;

    .line 30
    invoke-direct {v0}, Lcom/autonavi/common/imageloader/ImageDownloader;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 37
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->networkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 39
    invoke-interface {v0, v1}, Lcom/autonavi/common/imageloader/IDownloader;->setClient(Lcom/autonavi/core/network/inter/NetworkClient;)V

    .line 42
    new-instance v9, Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 44
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->cachePath:Lcom/autonavi/common/imageloader/ICachePath;

    .line 46
    const/4 v1, 0x0

    .line 47
    if-nez v0, :cond_2

    .line 49
    move-object v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v0}, Lcom/autonavi/common/imageloader/ICachePath;->getCachePath()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-direct {v9, v7, v1, v0}, Lcom/autonavi/common/imageloader/ImageDiskCache;-><init>(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 60
    if-nez v0, :cond_3

    .line 62
    new-instance v0, Lcom/autonavi/common/imageloader/LruCache;

    .line 64
    invoke-direct {v0, v7}, Lcom/autonavi/common/imageloader/LruCache;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 71
    if-nez v0, :cond_4

    .line 73
    new-instance v0, Lcom/autonavi/common/imageloader/PicassoExecutorService;

    .line 75
    invoke-direct {v0}, Lcom/autonavi/common/imageloader/PicassoExecutorService;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->transformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 82
    if-nez v0, :cond_5

    .line 84
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;->IDENTITY:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 86
    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->transformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 88
    :cond_5
    new-instance v8, Lcom/autonavi/common/imageloader/Stats;

    .line 90
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 92
    invoke-direct {v8, v0}, Lcom/autonavi/common/imageloader/Stats;-><init>(Lcom/autonavi/common/imageloader/LruCache;)V

    .line 95
    new-instance v10, Lcom/autonavi/common/imageloader/Dispatcher;

    .line 97
    iget-object v2, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 99
    sget-object v3, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 101
    iget-object v4, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 103
    iget-object v5, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 105
    move-object v0, v10

    .line 106
    move-object v1, v7

    .line 107
    move-object v6, v8

    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/autonavi/common/imageloader/Dispatcher;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/autonavi/common/imageloader/IDownloader;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/Stats;)V

    .line 111
    new-instance v12, Lcom/autonavi/common/imageloader/ImageLoader;

    .line 113
    iget-object v3, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 115
    iget-object v4, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->listener:Lcom/autonavi/common/imageloader/ImageLoader$Listener;

    .line 117
    iget-object v5, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->transformer:Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;

    .line 119
    iget-object v6, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->requestHandlers:Ljava/util/List;

    .line 121
    iget-object v11, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 123
    iget-boolean v13, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->indicatorsEnabled:Z

    .line 125
    iget-boolean v14, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->loggingEnabled:Z

    .line 127
    move-object v0, v12

    .line 128
    move-object v2, v10

    .line 129
    move-object v7, v8

    .line 130
    move-object v8, v11

    .line 131
    move v10, v13

    .line 132
    move v11, v14

    .line 133
    invoke-direct/range {v0 .. v11}, Lcom/autonavi/common/imageloader/ImageLoader;-><init>(Landroid/content/Context;Lcom/autonavi/common/imageloader/Dispatcher;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/ImageLoader$Listener;Lcom/autonavi/common/imageloader/ImageLoader$RequestTransformer;Ljava/util/List;Lcom/autonavi/common/imageloader/Stats;Landroid/graphics/Bitmap$Config;Lcom/autonavi/common/imageloader/ImageDiskCache;ZZ)V

    .line 136
    return-object v12
.end method

.method public defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/autonavi/common/imageloader/ImageLoader$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v0, "Bitmap config must not be null."

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public indicatorsEnabled(Z)Lcom/autonavi/common/imageloader/ImageLoader$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->indicatorsEnabled:Z

    .line 3
    return-object p0
.end method

.method public loggingEnabled(Z)Lcom/autonavi/common/imageloader/ImageLoader$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->loggingEnabled:Z

    .line 3
    return-object p0
.end method

.method public setCachePath(Lcom/autonavi/common/imageloader/ICachePath;)Lcom/autonavi/common/imageloader/ImageLoader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->cachePath:Lcom/autonavi/common/imageloader/ICachePath;

    .line 3
    return-object p0
.end method

.method public setDownloader(Lcom/autonavi/common/imageloader/IDownloader;)Lcom/autonavi/common/imageloader/ImageLoader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$Builder;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 3
    return-object p0
.end method
