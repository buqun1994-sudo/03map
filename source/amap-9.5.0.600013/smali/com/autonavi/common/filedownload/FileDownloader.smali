.class public Lcom/autonavi/common/filedownload/FileDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/filedownload/FileDownloader$WeakListenerKeeper;,
        Lcom/autonavi/common/filedownload/FileDownloader$StrongListenerKeeper;,
        Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileDownloader"

.field private static volatile sInstance:Lcom/autonavi/common/filedownload/FileDownloader;

.field private static sNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;


# instance fields
.field private final mClient:Lcom/autonavi/core/network/inter/NetworkClient;

.field private final mRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 11
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkClient;

    .line 13
    new-instance v1, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;

    .line 15
    invoke-direct {v1}, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;-><init>()V

    .line 18
    invoke-direct {v0, v1}, Lcom/autonavi/core/network/inter/NetworkClient;-><init>(Lcom/autonavi/core/network/inter/dependence/INetwork;)V

    .line 21
    iput-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 23
    sget-object v1, Lcom/autonavi/common/filedownload/FileDownloader;->sNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 25
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/inter/NetworkClient;->setNetworkFilter(Lcom/autonavi/core/network/inter/filter/INetworkFilter;)V

    .line 28
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 30
    const-string v1, "FileDownloader"

    .line 32
    const/4 v2, 0x5

    .line 33
    invoke-direct {v0, v1, v2}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 38
    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/common/filedownload/FileDownloader;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/autonavi/common/filedownload/FileDownloader;)Lcom/autonavi/core/network/inter/NetworkClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/common/filedownload/FileDownloader;->onFinish(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;Lcom/autonavi/core/network/inter/response/HttpResponse;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/common/filedownload/FileDownloader;->onError(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/Throwable;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/common/filedownload/FileDownloader;->getErrorCode(Ljava/lang/Throwable;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/common/filedownload/FileDownloader;->removeRequest(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 19
    :cond_0
    return-object v0
.end method

.method private getErrorCode(Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/16 p1, 0xb

    .line 7
    return p1

    .line 8
    :cond_0
    instance-of v0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const/16 p1, 0xc

    .line 14
    return p1

    .line 15
    :cond_1
    instance-of v0, p1, Ljava/net/MalformedURLException;

    .line 17
    if-eqz v0, :cond_2

    .line 19
    const/16 p1, 0xe

    .line 21
    return p1

    .line 22
    :cond_2
    instance-of p1, p1, Ljava/io/IOException;

    .line 24
    if-eqz p1, :cond_3

    .line 26
    const/16 p1, 0xd

    .line 28
    return p1

    .line 29
    :cond_3
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public static getInstance()Lcom/autonavi/common/filedownload/FileDownloader;
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/common/filedownload/FileDownloader;->sInstance:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/autonavi/common/filedownload/FileDownloader;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/autonavi/common/filedownload/FileDownloader;->sInstance:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/autonavi/common/filedownload/FileDownloader;

    .line 14
    invoke-direct {v1}, Lcom/autonavi/common/filedownload/FileDownloader;-><init>()V

    .line 17
    sput-object v1, Lcom/autonavi/common/filedownload/FileDownloader;->sInstance:Lcom/autonavi/common/filedownload/FileDownloader;

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
    sget-object v0, Lcom/autonavi/common/filedownload/FileDownloader;->sInstance:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 26
    return-object v0
.end method

.method private onError(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "download file error, url:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "errorCode: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, " statusCode: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " url:"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v1, "FileDownloader"

    .line 59
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-interface {p2}, Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;->get()Lcom/autonavi/common/filedownload/DownloadCallback;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_1

    .line 72
    if-eqz p2, :cond_1

    .line 74
    invoke-interface {p2, p3, p4}, Lcom/autonavi/common/filedownload/DownloadCallback;->onError(II)V

    .line 77
    :cond_1
    return-void
.end method

.method private onFinish(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "download file complete, url:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "FileDownloader"

    .line 31
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-interface {p2}, Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;->get()Lcom/autonavi/common/filedownload/DownloadCallback;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 44
    if-eqz p2, :cond_1

    .line 46
    invoke-interface {p2, p3}, Lcom/autonavi/common/filedownload/DownloadCallback;->onFinish(Lcom/autonavi/core/network/inter/response/HttpResponse;)V

    .line 49
    :cond_1
    return-void
.end method

.method private removeRequest(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "FileDownloader"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "download request is canceled, path: "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 41
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->cancel()V

    .line 46
    :cond_1
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1
.end method

.method public downLoad(Lcom/autonavi/common/filedownload/DownloadRequest;Lcom/autonavi/common/filedownload/DownloadCallback;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/common/filedownload/DownloadRequest;->getOutputPath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto/16 :goto_1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/common/filedownload/DownloadRequest;->getOutputPath()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Lcom/autonavi/common/filedownload/FileDownloader$StrongListenerKeeper;

    .line 27
    invoke-direct {v1, p2}, Lcom/autonavi/common/filedownload/FileDownloader$StrongListenerKeeper;-><init>(Lcom/autonavi/common/filedownload/DownloadCallback;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v1, Lcom/autonavi/common/filedownload/FileDownloader$WeakListenerKeeper;

    .line 33
    invoke-direct {v1, p2}, Lcom/autonavi/common/filedownload/FileDownloader$WeakListenerKeeper;-><init>(Lcom/autonavi/common/filedownload/DownloadCallback;)V

    .line 36
    :goto_0
    const/4 p2, 0x3

    .line 37
    invoke-static {p2}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 43
    const-string p2, "FileDownloader"

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v3, "start download request, url:"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v3, ", path: "

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, ", support range:"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 78
    move-result v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    const-string v3, ", keep callback:"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 90
    move-result v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v2}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_2
    iget-object p2, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 103
    monitor-enter p2

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 106
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 112
    const/4 v0, -0x2

    .line 113
    const/4 v2, -0x1

    .line 114
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->onError(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V

    .line 117
    monitor-exit p2

    .line 118
    return-void

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mRequests:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object p2, p0, Lcom/autonavi/common/filedownload/FileDownloader;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 127
    new-instance v2, Lcom/autonavi/common/filedownload/FileDownloader$1;

    .line 129
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/autonavi/common/filedownload/FileDownloader$1;-><init>(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/common/filedownload/DownloadRequest;Ljava/lang/String;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;)V

    .line 132
    const/16 p1, 0xfa

    .line 134
    const-string v0, "FileDownloader"

    .line 136
    invoke-virtual {p2, v2, p1, v0}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->execute(Ljava/lang/Runnable;ILjava/lang/String;)V

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p1

    .line 143
    :cond_4
    :goto_1
    return-void
.end method

.method public setNetworkFilter(Lcom/autonavi/core/network/inter/filter/INetworkFilter;)V
    .locals 2

    .line 1
    const-class v0, Lcom/autonavi/common/filedownload/FileDownloader;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p1, Lcom/autonavi/common/filedownload/FileDownloader;->sNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 6
    sget-object v1, Lcom/autonavi/common/filedownload/FileDownloader;->sInstance:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    sget-object v1, Lcom/autonavi/common/filedownload/FileDownloader;->sInstance:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 12
    iget-object v1, v1, Lcom/autonavi/common/filedownload/FileDownloader;->mClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 14
    invoke-virtual {v1, p1}, Lcom/autonavi/core/network/inter/NetworkClient;->setNetworkFilter(Lcom/autonavi/core/network/inter/filter/INetworkFilter;)V

    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method
