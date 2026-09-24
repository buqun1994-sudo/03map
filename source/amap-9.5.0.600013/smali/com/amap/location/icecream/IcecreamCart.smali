.class public Lcom/amap/location/icecream/IcecreamCart;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mInstance:Lcom/amap/location/icecream/IcecreamCart;


# instance fields
.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mFreezer:Lcom/amap/location/icecream/IcecreamFreezer;

.field private mHandler:Lcom/amap/location/support/handler/AmapHandler;

.field private volatile mIsInit:Z

.field private mJsonObject:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mIsInit:Z

    .line 7
    new-instance v0, Lcom/amap/location/icecream/IcecreamCart$1;

    .line 9
    invoke-direct {v0, p0}, Lcom/amap/location/icecream/IcecreamCart$1;-><init>(Lcom/amap/location/icecream/IcecreamCart;)V

    .line 12
    iput-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mDelayRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lcom/amap/location/icecream/IcecreamFreezer;

    .line 16
    invoke-direct {v0}, Lcom/amap/location/icecream/IcecreamFreezer;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mFreezer:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/icecream/IcecreamCart;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/icecream/IcecreamCart;->initInner()V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/amap/location/icecream/IcecreamCart;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/icecream/IcecreamCart;->mInstance:Lcom/amap/location/icecream/IcecreamCart;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/icecream/IcecreamCart;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/icecream/IcecreamCart;->mInstance:Lcom/amap/location/icecream/IcecreamCart;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/location/icecream/IcecreamCart;

    .line 14
    invoke-direct {v1}, Lcom/amap/location/icecream/IcecreamCart;-><init>()V

    .line 17
    sput-object v1, Lcom/amap/location/icecream/IcecreamCart;->mInstance:Lcom/amap/location/icecream/IcecreamCart;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/icecream/IcecreamCart;->mInstance:Lcom/amap/location/icecream/IcecreamCart;

    .line 26
    return-object v0
.end method

.method private declared-synchronized initInner()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mJsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mIsInit:Z

    .line 10
    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCrashController;->init()V

    .line 15
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mFreezer:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 17
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamCart;->mJsonObject:Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v0, v1}, Lcom/amap/location/icecream/IcecreamFreezer;->init(Lorg/json/JSONObject;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mIsInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/PluginCloudManager;->getInstance()Lcom/amap/location/support/cloud/PluginCloudManager;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud()Lorg/json/JSONObject;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/amap/location/icecream/IcecreamFilter;->parseJsonArray(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/io/File;

    .line 16
    invoke-static {}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->getPluginsRootPath()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 26
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-nez v2, :cond_0

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 37
    array-length v2, v1

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-ge v3, v2, :cond_2

    .line 41
    aget-object v4, v1, v3

    .line 43
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_1

    .line 53
    invoke-static {v4}, Lcom/amap/location/support/util/FileUtils;->deleteFileOrDir(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    monitor-exit p0

    .line 63
    throw v0
.end method

.method public declared-synchronized init(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamCart;->mJsonObject:Lorg/json/JSONObject;

    .line 8
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamCart;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 10
    if-nez p1, :cond_2

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyLooperObject()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMainLooperObject()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyLooperObject()Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-interface {v0, p1, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandlerBySystemLooper(Ljava/lang/Object;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamCart;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 50
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mDelayRunnable:Ljava/lang/Runnable;

    .line 52
    const-wide/16 v1, 0x1388

    .line 54
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mDelayRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    invoke-direct {p0}, Lcom/amap/location/icecream/IcecreamCart;->initInner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_1
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mIsInit:Z

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamCart;->mDelayRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mFreezer:Lcom/amap/location/icecream/IcecreamFreezer;

    .line 17
    invoke-virtual {v0}, Lcom/amap/location/icecream/IcecreamFreezer;->release()V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamCart;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method
