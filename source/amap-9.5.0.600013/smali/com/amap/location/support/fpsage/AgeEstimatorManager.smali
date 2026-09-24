.class public Lcom/amap/location/support/fpsage/AgeEstimatorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mInstance:Lcom/amap/location/support/fpsage/AgeEstimatorManager;


# instance fields
.field private mCellAgeEstimator:Lcom/amap/location/support/fpsage/CellAgeEstimator;

.field private mHandler:Lcom/amap/location/support/handler/AmapHandler;

.field private mIsInit:Z

.field private mLooper:Lcom/amap/location/support/handler/AmapLooper;

.field private mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/support/fpsage/AgeEstimatorManager;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->updateCloudConfig(Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/amap/location/support/fpsage/AgeEstimatorManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mInstance:Lcom/amap/location/support/fpsage/AgeEstimatorManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mInstance:Lcom/amap/location/support/fpsage/AgeEstimatorManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/location/support/fpsage/AgeEstimatorManager;

    .line 14
    invoke-direct {v1}, Lcom/amap/location/support/fpsage/AgeEstimatorManager;-><init>()V

    .line 17
    sput-object v1, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mInstance:Lcom/amap/location/support/fpsage/AgeEstimatorManager;

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
    sget-object v0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mInstance:Lcom/amap/location/support/fpsage/AgeEstimatorManager;

    .line 26
    return-object v0
.end method

.method private updateCloudConfig(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/fpsage/CloudConfig;->update(Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method


# virtual methods
.method public declared-synchronized init()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 21
    new-instance v1, Lcom/amap/location/support/fpsage/CellAgeEstimator;

    .line 23
    const-string v2, "cellage"

    .line 25
    invoke-direct {v1, v2, v0}, Lcom/amap/location/support/fpsage/CellAgeEstimator;-><init>(Ljava/lang/String;Lcom/amap/location/support/handler/AmapHandler;)V

    .line 28
    iput-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mCellAgeEstimator:Lcom/amap/location/support/fpsage/CellAgeEstimator;

    .line 30
    new-instance v0, Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    .line 32
    const-string v1, "wifiage"

    .line 34
    iget-object v2, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/amap/location/support/fpsage/WifiAgeEstimator;-><init>(Ljava/lang/String;Lcom/amap/location/support/handler/AmapHandler;)V

    .line 39
    iput-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    .line 41
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mCellAgeEstimator:Lcom/amap/location/support/fpsage/CellAgeEstimator;

    .line 43
    invoke-virtual {v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->start()V

    .line 46
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    .line 48
    invoke-virtual {v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->start()V

    .line 51
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lcom/amap/location/support/fpsage/AgeEstimatorManager$1;

    .line 57
    const-string v2, "age"

    .line 59
    invoke-direct {v1, p0, v2}, Lcom/amap/location/support/fpsage/AgeEstimatorManager$1;-><init>(Lcom/amap/location/support/fpsage/AgeEstimatorManager;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 69
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    monitor-exit p0

    .line 76
    throw v0
.end method

.method public declared-synchronized setInWifiFence(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
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
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    .line 10
    invoke-virtual {v0, p1}, Lcom/amap/location/support/fpsage/WifiAgeEstimator;->setInWifiFence(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized start()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
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
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mCellAgeEstimator:Lcom/amap/location/support/fpsage/CellAgeEstimator;

    .line 10
    invoke-virtual {v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->start()V

    .line 13
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    .line 15
    invoke-virtual {v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
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
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mCellAgeEstimator:Lcom/amap/location/support/fpsage/CellAgeEstimator;

    .line 10
    invoke-virtual {v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->stop()V

    .line 13
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    .line 15
    invoke-virtual {v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public declared-synchronized updateCell(Lcom/amap/location/support/bean/cell/AmapCell;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mCellAgeEstimator:Lcom/amap/location/support/fpsage/CellAgeEstimator;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->update(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCell(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mCellAgeEstimator:Lcom/amap/location/support/fpsage/CellAgeEstimator;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->update(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateWifi(Lcom/amap/location/support/bean/wifi/AmapWifi;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->update(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateWifi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/wifi/AmapWifi;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->mWifiAgeEstimator:Lcom/amap/location/support/fpsage/WifiAgeEstimator;

    invoke-virtual {v0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->update(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
