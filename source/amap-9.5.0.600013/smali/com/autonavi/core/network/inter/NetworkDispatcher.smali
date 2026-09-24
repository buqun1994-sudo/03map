.class public Lcom/autonavi/core/network/inter/NetworkDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;,
        Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;,
        Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ANet-NetworkDispatcher"


# instance fields
.field private final mRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            "Lcom/autonavi/core/network/inter/response/ResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 15
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkDispatcher$1;

    .line 17
    invoke-direct {v0, p0, p1}, Lcom/autonavi/core/network/inter/NetworkDispatcher$1;-><init>(Lcom/autonavi/core/network/inter/NetworkDispatcher;Landroid/os/Handler;)V

    .line 20
    iput-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 22
    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/core/network/inter/NetworkDispatcher;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method private executeOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel(Lcom/autonavi/core/network/inter/request/HttpRequest;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->cancel()V

    .line 4
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 6
    sget v1, Lcom/autonavi/core/network/impl/http/HTTP;->CANCEL:I

    .line 8
    iput v1, v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->result:I

    .line 10
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    return-void
.end method

.method public finishRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    instance-of v0, v0, Lcom/autonavi/core/network/inter/response/ResponseCallbackOnUi;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;

    .line 17
    invoke-direct {v0, p0, p1}, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;-><init>(Lcom/autonavi/core/network/inter/NetworkDispatcher;Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 20
    invoke-direct {p0, v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->executeOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 38
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 41
    move-result v1

    .line 42
    const-string v2, "ANet-NetworkDispatcher"

    .line 44
    if-eqz v1, :cond_2

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "finishRequest, url: "

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {v2, v1}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_2
    if-eqz p1, :cond_3

    .line 72
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 74
    invoke-static {v1}, Lcom/autonavi/core/network/inter/statistics/NetworkTracer;->commitStat(Lcom/autonavi/core/network/inter/statistics/RequestStatistics;)V

    .line 77
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v1, "commitStat, url: "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "\n statistic:"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object p1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 107
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-static {v2, p1}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_3
    return-void
.end method

.method public postError(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 9
    const/4 v0, 0x6

    .line 10
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    if-eqz p3, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v1, "post error, errorCode: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p3, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", msg:"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", url: "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const-string v1, "ANet-NetworkDispatcher"

    .line 63
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    instance-of v0, p1, Lcom/autonavi/core/network/inter/response/ResponseCallbackOnUi;

    .line 68
    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;

    .line 72
    invoke-direct {v0, p1, p2, p3}, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;-><init>(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->executeOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/autonavi/core/network/inter/response/ResponseCallback;->onFailure(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V

    .line 82
    :cond_2
    :goto_0
    return-void
.end method

.method public postResponse(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const-string v0, "ANet-NetworkDispatcher"

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "post response, responseCode: "

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    if-eqz p3, :cond_0

    .line 31
    invoke-virtual {p3}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 34
    move-result v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, -0x1

    .line 37
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v3, ", url: "

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    instance-of v0, p1, Lcom/autonavi/core/network/inter/response/ResponseCallbackOnUi;

    .line 61
    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;

    .line 65
    invoke-direct {v0, p1, p3}, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;-><init>(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/response/HttpResponse;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->executeOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-interface {p1, p3}, Lcom/autonavi/core/network/inter/response/ResponseCallback;->onSuccess(Lcom/autonavi/core/network/inter/response/HttpResponse;)V

    .line 75
    if-nez p3, :cond_3

    .line 77
    move-object v0, v1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p3}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 82
    move-result-object v0

    .line 83
    :goto_1
    invoke-static {v0}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_3

    .line 87
    :catch_0
    move-exception v0

    .line 88
    if-nez p3, :cond_4

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {p3}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 94
    move-result-object v1

    .line 95
    :goto_2
    invoke-static {v1}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    new-instance v1, Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 100
    const-string v2, "dispatch response error!"

    .line 102
    invoke-direct {v1, v2}, Lcom/autonavi/core/network/inter/response/ResponseException;-><init>(Ljava/lang/String;)V

    .line 105
    const/16 v2, 0xa

    .line 107
    iput v2, v1, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 109
    iput-object v0, v1, Lcom/autonavi/core/network/inter/response/ResponseException;->exception:Ljava/lang/Exception;

    .line 111
    iput-object p3, v1, Lcom/autonavi/core/network/inter/response/ResponseException;->response:Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 113
    const/4 p3, 0x1

    .line 114
    iput-boolean p3, v1, Lcom/autonavi/core/network/inter/response/ResponseException;->isCallbackError:Z

    .line 116
    invoke-virtual {p0, p1, p2, v1}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->postError(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V

    .line 119
    :cond_5
    :goto_3
    return-void
.end method

.method public postUploadProgress(Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 9
    instance-of v1, v0, Lcom/autonavi/core/network/inter/response/UploadProgressCallback;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Lcom/autonavi/core/network/inter/response/UploadProgressCallback;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :try_start_0
    instance-of v1, v0, Lcom/autonavi/core/network/inter/response/ResponseCallbackOnUi;

    .line 28
    if-eqz v1, :cond_2

    .line 30
    new-instance v8, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;

    .line 32
    move-object v1, v8

    .line 33
    move-object v2, v0

    .line 34
    move-object v3, p1

    .line 35
    move-wide v4, p2

    .line 36
    move-wide v6, p4

    .line 37
    invoke-direct/range {v1 .. v7}, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;-><init>(Lcom/autonavi/core/network/inter/response/UploadProgressCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V

    .line 40
    invoke-direct {p0, v8}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->executeOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, v0

    .line 45
    move-object v2, p1

    .line 46
    move-wide v3, p2

    .line 47
    move-wide v5, p4

    .line 48
    invoke-interface/range {v1 .. v6}, Lcom/autonavi/core/network/inter/response/UploadProgressCallback;->onProgress(Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p2

    .line 53
    new-instance p3, Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 55
    const-string p4, "upload progress callback error!"

    .line 57
    invoke-direct {p3, p4}, Lcom/autonavi/core/network/inter/response/ResponseException;-><init>(Ljava/lang/String;)V

    .line 60
    const/16 p4, 0xa

    .line 62
    iput p4, p3, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 64
    iput-object p2, p3, Lcom/autonavi/core/network/inter/response/ResponseException;->exception:Ljava/lang/Exception;

    .line 66
    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p3, Lcom/autonavi/core/network/inter/response/ResponseException;->isCallbackError:Z

    .line 69
    instance-of p2, v0, Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 71
    if-eqz p2, :cond_3

    .line 73
    check-cast v0, Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 75
    invoke-virtual {p0, v0, p1, p3}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->postError(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V

    .line 78
    :cond_3
    :goto_1
    return-void
.end method

.method public startRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher;->mRequests:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const/4 p2, 0x3

    .line 7
    invoke-static {p2}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v0, "start http request, url: "

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    const-string p2, "ANet-NetworkDispatcher"

    .line 36
    invoke-static {p2, p1}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method
