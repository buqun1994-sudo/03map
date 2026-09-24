.class public Lcom/autonavi/core/network/inter/HttpService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ANet-HttpService"

.field private static volatile sInstance:Lcom/autonavi/core/network/inter/HttpService;

.field private static volatile sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/autonavi/core/network/inter/HttpService;
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/HttpService;->sInstance:Lcom/autonavi/core/network/inter/HttpService;

    .line 3
    if-nez v0, :cond_2

    .line 5
    const-class v0, Lcom/autonavi/core/network/inter/HttpService;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/autonavi/core/network/inter/HttpService;->sInstance:Lcom/autonavi/core/network/inter/HttpService;

    .line 10
    if-nez v1, :cond_1

    .line 12
    sget-object v1, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 14
    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/autonavi/core/network/inter/NetworkClient;

    .line 18
    invoke-direct {v1}, Lcom/autonavi/core/network/inter/NetworkClient;-><init>()V

    .line 21
    sput-object v1, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 23
    :cond_0
    new-instance v1, Lcom/autonavi/core/network/inter/HttpService;

    .line 25
    invoke-direct {v1}, Lcom/autonavi/core/network/inter/HttpService;-><init>()V

    .line 28
    sput-object v1, Lcom/autonavi/core/network/inter/HttpService;->sInstance:Lcom/autonavi/core/network/inter/HttpService;

    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1

    .line 35
    :cond_2
    :goto_0
    sget-object v0, Lcom/autonavi/core/network/inter/HttpService;->sInstance:Lcom/autonavi/core/network/inter/HttpService;

    .line 37
    return-object v0
.end method

.method public static declared-synchronized setNetworkClient(Lcom/autonavi/core/network/inter/NetworkClient;)V
    .locals 2

    .line 1
    const-class v0, Lcom/autonavi/core/network/inter/HttpService;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const-string p0, "ANet-HttpService"

    .line 10
    const-string v1, "setNetworkClient error, NetworkClient has initialized!"

    .line 12
    invoke-static {p0, v1}, Lcom/autonavi/core/network/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    sput-object p0, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0

    .line 23
    throw p0
.end method


# virtual methods
.method public cancel(Lcom/autonavi/core/network/inter/request/HttpRequest;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/common/filedownload/FileDownloader;->getInstance()Lcom/autonavi/common/filedownload/FileDownloader;

    .line 8
    move-result-object v0

    .line 9
    check-cast p1, Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/common/filedownload/DownloadRequest;->getOutputPath()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/autonavi/common/filedownload/FileDownloader;->cancel(Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 21
    invoke-virtual {v0, p1}, Lcom/autonavi/core/network/inter/NetworkClient;->cancel(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 24
    return-void
.end method

.method public download(Lcom/autonavi/common/filedownload/DownloadRequest;Lcom/autonavi/common/filedownload/DownloadCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->setChannel(I)V

    .line 5
    const/16 v0, 0x32

    .line 7
    invoke-virtual {p1, v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->setPriority(I)V

    .line 10
    invoke-static {}, Lcom/autonavi/common/filedownload/FileDownloader;->getInstance()Lcom/autonavi/common/filedownload/FileDownloader;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/common/filedownload/FileDownloader;->downLoad(Lcom/autonavi/common/filedownload/DownloadRequest;Lcom/autonavi/common/filedownload/DownloadCallback;)V

    .line 17
    return-void
.end method

.method public send(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/autonavi/core/network/inter/response/HttpResponse;",
            ">(",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/core/network/inter/NetworkClient;->send(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public send(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/autonavi/core/network/inter/response/HttpResponse;",
            ">(",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            "Lcom/autonavi/core/network/inter/response/ResponseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/core/network/inter/NetworkClient;->send(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V

    return-void
.end method

.method public upload(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/autonavi/core/network/inter/response/HttpResponse;",
            ">(",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            "Lcom/autonavi/core/network/inter/response/ResponseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->setChannel(I)V

    .line 5
    const/16 v0, 0x96

    .line 7
    invoke-virtual {p1, v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->setPriority(I)V

    .line 10
    sget-object v0, Lcom/autonavi/core/network/inter/HttpService;->sNetworkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/core/network/inter/NetworkClient;->send(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V

    .line 15
    return-void
.end method
