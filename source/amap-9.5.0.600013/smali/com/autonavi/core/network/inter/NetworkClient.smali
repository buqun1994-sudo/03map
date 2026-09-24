.class public Lcom/autonavi/core/network/inter/NetworkClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ANet-NetworkClient"

.field private static sGlobalNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;


# instance fields
.field private final mNetwork:Lcom/autonavi/core/network/inter/dependence/INetwork;

.field private mNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

.field private final mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

.field private mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;

    invoke-direct {v0}, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/autonavi/core/network/inter/NetworkClient;-><init>(Lcom/autonavi/core/network/inter/dependence/INetwork;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/core/network/inter/dependence/INetwork;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkDispatcher;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/autonavi/core/network/inter/NetworkDispatcher;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 4
    iput-object p1, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mNetwork:Lcom/autonavi/core/network/inter/dependence/INetwork;

    .line 5
    invoke-direct {p0, p1}, Lcom/autonavi/core/network/inter/NetworkClient;->setupProgressCallback(Lcom/autonavi/core/network/inter/dependence/INetwork;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100()Lcom/autonavi/core/network/inter/filter/INetworkFilter;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/core/network/inter/NetworkClient;->sGlobalNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 3
    return-object v0
.end method

.method public static synthetic access$200(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/filter/INetworkFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/autonavi/core/network/inter/NetworkClient;Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/core/network/inter/NetworkClient;->sendInternal(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private sendInternal(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->url:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getMethod()I

    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Lcom/autonavi/core/network/inter/util/Util;->getHttpMethod(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->method:Ljava/lang/String;

    .line 21
    instance-of v0, p1, Lcom/autonavi/core/network/inter/request/PostRequest;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 27
    move-object v1, p1

    .line 28
    check-cast v1, Lcom/autonavi/core/network/inter/request/PostRequest;

    .line 30
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/PostRequest;->getBody()[B

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->body:[B

    .line 36
    :cond_0
    const/4 v0, 0x2

    .line 37
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 40
    move-result v0

    .line 41
    const-string v1, "ANet-NetworkClient"

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mNetwork:Lcom/autonavi/core/network/inter/dependence/INetwork;

    .line 54
    invoke-interface {v0, p1}, Lcom/autonavi/core/network/inter/dependence/INetwork;->send(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/inter/dependence/INetResponse;

    .line 57
    move-result-object v0

    .line 58
    if-nez p2, :cond_4

    .line 60
    if-nez v0, :cond_2

    .line 62
    const/4 p2, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v0}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 67
    move-result-object p2

    .line 68
    :goto_0
    invoke-static {p2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    const/4 p2, 0x5

    .line 72
    invoke-static {p2}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_3

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v0, "http request do not need a response, url\uff1a"

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    invoke-static {v1, p1}, Lcom/autonavi/core/network/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    new-instance p1, Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 104
    const-string p2, "do not need a response!"

    .line 106
    invoke-direct {p1, p2}, Lcom/autonavi/core/network/inter/response/ResponseException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1

    .line 110
    :cond_4
    invoke-static {p1, p2, v0}, Lcom/autonavi/core/network/inter/util/Util;->wrapResponse(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;Lcom/autonavi/core/network/inter/dependence/INetResponse;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 113
    move-result-object p2

    .line 114
    iget-object v2, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 116
    if-nez v0, :cond_5

    .line 118
    const-wide/16 v3, 0x0

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-interface {v0}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getContentLength()J

    .line 124
    move-result-wide v3

    .line 125
    :goto_1
    iput-wide v3, v2, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->recDataSize:J

    .line 127
    iget-object v2, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    move-result-wide v3

    .line 133
    iput-wide v3, v2, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->requestEndTime:J

    .line 135
    invoke-virtual {p2, p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->setRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 138
    invoke-interface {v0}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getStatusCode()I

    .line 141
    move-result v0

    .line 142
    iget-object v2, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const-string v4, "-statusCode"

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v2, v3}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 164
    const/16 v2, 0xc8

    .line 166
    if-lt v0, v2, :cond_8

    .line 168
    const/16 v2, 0x190

    .line 170
    if-lt v0, v2, :cond_6

    .line 172
    sget v2, Lcom/autonavi/core/network/impl/http/HTTP;->RESPONSE_CODE_RANGE_NOT_SATISFIABLE:I

    .line 174
    if-ne v0, v2, :cond_8

    .line 176
    :cond_6
    const/4 v0, 0x3

    .line 177
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_7

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string v2, "send complete, statusCode: "

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 196
    move-result v2

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, ", url: "

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-static {v1, p1}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_7
    return-object p2

    .line 220
    :cond_8
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    new-instance p1, Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v2, "server error, code = "

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    invoke-direct {p1, v0}, Lcom/autonavi/core/network/inter/response/ResponseException;-><init>(Ljava/lang/String;)V

    .line 249
    iput-object p2, p1, Lcom/autonavi/core/network/inter/response/ResponseException;->response:Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 251
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 254
    move-result p2

    .line 255
    iput p2, p1, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 257
    throw p1
.end method

.method public static setGlobalNetworkFilter(Lcom/autonavi/core/network/inter/filter/INetworkFilter;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/autonavi/core/network/inter/NetworkClient;->sGlobalNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 5
    :cond_0
    return-void
.end method

.method private setupProgressCallback(Lcom/autonavi/core/network/inter/dependence/INetwork;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/autonavi/core/network/inter/dependence/ISupportProgress;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "ANet-NetworkClient"

    .line 7
    const-string v1, "setup upload progress callback!"

    .line 9
    invoke-static {v0, v1}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    check-cast p1, Lcom/autonavi/core/network/inter/dependence/ISupportProgress;

    .line 14
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkClient$2;

    .line 16
    invoke-direct {v0, p0}, Lcom/autonavi/core/network/inter/NetworkClient$2;-><init>(Lcom/autonavi/core/network/inter/NetworkClient;)V

    .line 19
    invoke-interface {p1, v0}, Lcom/autonavi/core/network/inter/dependence/ISupportProgress;->setUploadProgressCallback(Lcom/autonavi/core/network/inter/response/UploadProgressCallback;)V

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/autonavi/core/network/inter/request/HttpRequest;)V
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
    const-string v1, "cancel request, url:"

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
    const-string v1, "ANet-NetworkClient"

    .line 31
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 36
    const-string v1, "-cancel"

    .line 38
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 43
    invoke-virtual {v0, p1}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->cancel(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 46
    return-void
.end method

.method public initThreadPool(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    const-string v1, "network-client"

    invoke-direct {v0, v1, p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ANet-NetworkClient"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initThreadPool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public initThreadPool([I)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    if-nez v0, :cond_2

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    const-string v1, "network-client"

    invoke-direct {v0, v1, p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;-><init>(Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    :cond_0
    const/4 v0, 0x4

    .line 12
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ANet-NetworkClient"

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initThreadPool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public send(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;
    .locals 9
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

    const-string v0, "-finishRequest"

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isValid()Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v4, "ANet-NetworkClient"

    if-nez v1, :cond_1

    .line 2
    invoke-static {v2}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "invalid request!"

    .line 3
    invoke-static {v4, p1}, Lcom/autonavi/core/network/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v3

    .line 4
    :cond_1
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->start:J

    .line 5
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    const-string v5, "startSync"

    invoke-virtual {v1, v5}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    invoke-virtual {v1, p1, v3}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->startRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v5, Lcom/autonavi/core/network/inter/NetworkClient;->sGlobalNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "\nafter url: "

    const/4 v7, 0x2

    if-eqz v5, :cond_2

    .line 9
    :try_start_1
    invoke-interface {v5, p1}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 10
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "global filter request, before url:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/core/network/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    iget-object v5, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    if-eqz v5, :cond_3

    .line 13
    invoke-interface {v5, p1}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 14
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local filter request, before url:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/autonavi/core/network/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/autonavi/core/network/inter/NetworkClient;->sendInternal(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 17
    :try_start_3
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    const-string v5, "-requestError"

    invoke-virtual {v1, v5}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Lcom/autonavi/core/network/inter/response/ResponseException;->exception2ResponseException(Ljava/lang/Exception;)Lcom/autonavi/core/network/inter/response/ResponseException;

    move-result-object p2

    .line 19
    invoke-static {v2}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync send error, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", url: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/autonavi/core/network/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-eqz v3, :cond_6

    .line 21
    sget-object p2, Lcom/autonavi/core/network/inter/NetworkClient;->sGlobalNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    if-eqz p2, :cond_5

    .line 22
    invoke-interface {p2, v3}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterResponse(Lcom/autonavi/core/network/inter/response/HttpResponse;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 23
    :cond_5
    iget-object p2, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    if-eqz p2, :cond_6

    .line 24
    invoke-interface {p2, v3}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterResponse(Lcom/autonavi/core/network/inter/response/HttpResponse;)Lcom/autonavi/core/network/inter/response/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :cond_6
    iget-object p2, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    invoke-virtual {p2, v0}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    invoke-virtual {p2, p1}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->finishRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    return-object v3

    :catchall_0
    move-exception p2

    .line 27
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    invoke-virtual {v1, v0}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    invoke-virtual {v0, p1}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->finishRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 29
    throw p2
.end method

.method public send(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V
    .locals 3
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

    const/4 v0, 0x5

    .line 30
    invoke-virtual {p0, v0}, Lcom/autonavi/core/network/inter/NetworkClient;->initThreadPool(I)V

    .line 31
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ANet-NetworkClient"

    const-string v1, "invalid request!"

    .line 32
    invoke-static {v0, v1}, Lcom/autonavi/core/network/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/autonavi/core/network/inter/response/ResponseException;

    invoke-direct {v0, v1}, Lcom/autonavi/core/network/inter/response/ResponseException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 34
    iput v1, v0, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 35
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mResponseDelivery:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    invoke-virtual {v1, p2, p1, v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->postError(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V

    return-void

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->start:J

    .line 37
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    const-string v1, "startAsync"

    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    new-instance v1, Lcom/autonavi/core/network/inter/NetworkClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/core/network/inter/NetworkClient$1;-><init>(Lcom/autonavi/core/network/inter/NetworkClient;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V

    .line 39
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getPriority()I

    move-result p1

    const-string p2, "async"

    .line 40
    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->execute(Ljava/lang/Runnable;ILjava/lang/String;)V

    return-void
.end method

.method public setNetworkFilter(Lcom/autonavi/core/network/inter/filter/INetworkFilter;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mNetworkFilter:Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 5
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "ANet-NetworkClient"

    .line 10
    const-string v1, "shutdown"

    .line 12
    invoke-static {v0, v1}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient;->mThreadPool:Lcom/autonavi/core/network/util/threadpool/ThreadPool;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->shutdown()V

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v0
.end method
