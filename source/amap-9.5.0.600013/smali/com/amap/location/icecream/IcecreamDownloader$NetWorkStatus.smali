.class Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/status/PhoneStatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/icecream/IcecreamDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkStatus"
.end annotation


# static fields
.field static final NETWORK_TYPE_DATA:I = 0x3

.field static final NETWORK_TYPE_NO_OR_UNKNOW:I = 0x1

.field static final NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field private mRegisted:Z

.field final synthetic this$0:Lcom/amap/location/icecream/IcecreamDownloader;


# direct methods
.method private constructor <init>(Lcom/amap/location/icecream/IcecreamDownloader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->mRegisted:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/icecream/IcecreamDownloader$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;-><init>(Lcom/amap/location/icecream/IcecreamDownloader;)V

    return-void
.end method


# virtual methods
.method public getAction()J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public getStatus()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 20
    const/4 v0, 0x3

    .line 21
    return v0

    .line 22
    :cond_1
    return v1
.end method

.method public onChange(JLorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 3
    cmp-long p3, p1, v0

    .line 5
    if-nez p3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 12
    invoke-static {p2}, Lcom/amap/location/icecream/IcecreamDownloader;->access$300(Lcom/amap/location/icecream/IcecreamDownloader;)Z

    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 18
    iget-object p2, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 20
    invoke-static {p2}, Lcom/amap/location/icecream/IcecreamDownloader;->access$500(Lcom/amap/location/icecream/IcecreamDownloader;)V

    .line 23
    :cond_0
    monitor-exit p1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p2

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p2

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized regist()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->mRegisted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-nez v0, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->this$0:Lcom/amap/location/icecream/IcecreamDownloader;

    .line 16
    iget-object v1, v1, Lcom/amap/location/icecream/IcecreamDownloader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 18
    invoke-interface {v1}, Lcom/amap/location/support/handler/AmapHandler;->getLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, p0, v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->mRegisted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :cond_0
    :goto_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0

    .line 37
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->mRegisted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->mRegisted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_0
    :goto_0
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
