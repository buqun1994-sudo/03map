.class public Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/inter/dependence/INetwork;
.implements Lcom/autonavi/core/network/inter/dependence/ISupportProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ANet-HurlNetworkImpl"


# instance fields
.field private mUploadProgressWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/core/network/inter/response/UploadProgressCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;->mUploadProgressWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    return-void
.end method

.method private static final request2Params(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getMethod()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_2

    .line 13
    instance-of v1, p0, Lcom/autonavi/core/network/inter/request/FileUploadRequest;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    move-object v1, p0

    .line 18
    check-cast v1, Lcom/autonavi/core/network/inter/request/FileUploadRequest;

    .line 20
    new-instance v2, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;

    .line 22
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->getFile()Ljava/io/File;

    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v2, v3}, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;-><init>(Ljava/io/File;)V

    .line 29
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->getContentType()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->setContentType(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->setHttpEntity(Lcom/autonavi/core/network/impl/http/entity/HttpEntity;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    instance-of v1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;

    .line 42
    if-eqz v1, :cond_1

    .line 44
    move-object v1, p0

    .line 45
    check-cast v1, Lcom/autonavi/core/network/inter/request/MultipartRequest;

    .line 47
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/MultipartRequest;->getMultipartParam()Ljava/util/List;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->setMultiPartParams(Ljava/util/List;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    instance-of v1, p0, Lcom/autonavi/core/network/inter/request/PostRequest;

    .line 57
    if-eqz v1, :cond_2

    .line 59
    move-object v1, p0

    .line 60
    check-cast v1, Lcom/autonavi/core/network/inter/request/PostRequest;

    .line 62
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/PostRequest;->getBody()[B

    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 68
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 70
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/PostRequest;->getBody()[B

    .line 73
    move-result-object v3

    .line 74
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/PostRequest;->getContentType()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->setHeaders(Ljava/util/Map;)V

    .line 91
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getRetryTimes()I

    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->setMaxRetryCount(I)V

    .line 98
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getTimeout()I

    .line 101
    move-result p0

    .line 102
    invoke-virtual {v0, p0}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->setTimeout(I)V

    .line 105
    return-object v0
.end method


# virtual methods
.method public send(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/inter/dependence/INetResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;->request2Params(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getMethod()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Lcom/autonavi/core/network/inter/util/Util;->getHttpMethod(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/autonavi/core/network/impl/http/HurlRequester;

    .line 19
    invoke-direct {v3, v2, v1, v0}, Lcom/autonavi/core/network/impl/http/HurlRequester;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;)V

    .line 22
    new-instance v0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;

    .line 24
    iget-object v1, p0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;->mUploadProgressWeakReference:Ljava/lang/ref/WeakReference;

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v0, p1, v1, v4}, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;-><init>(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/ref/WeakReference;Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$1;)V

    .line 30
    invoke-virtual {v3, v0}, Lcom/autonavi/core/network/impl/http/HurlRequester;->setProgressCallback(Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;)V

    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v1, "send hurl, url:"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v1, "ANet-HurlNetworkImpl"

    .line 59
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->requestStartTime:J

    .line 70
    :try_start_0
    invoke-virtual {v3}, Lcom/autonavi/core/network/impl/http/HurlRequester;->sendRequest()Lcom/autonavi/core/network/impl/http/response/HurlResponse;

    .line 73
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 76
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getRetryTimes()I

    .line 79
    move-result v2

    .line 80
    iput v2, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->retryTimes:I

    .line 82
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 84
    invoke-virtual {v3}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getRequestDataLength()J

    .line 87
    move-result-wide v2

    .line 88
    iput-wide v2, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->sendDataSize:J

    .line 90
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    move-result-wide v2

    .line 96
    iput-wide v2, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->receiveStartTime:J

    .line 98
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->getResponseCode()I

    .line 101
    move-result v1

    .line 102
    iget-object v2, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 104
    iput v1, v2, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->statusCode:I

    .line 106
    const/16 v2, 0xc8

    .line 108
    if-lt v1, v2, :cond_1

    .line 110
    const/16 v2, 0x190

    .line 112
    if-lt v1, v2, :cond_2

    .line 114
    :cond_1
    sget v2, Lcom/autonavi/core/network/impl/http/HTTP;->RESPONSE_CODE_RANGE_NOT_SATISFIABLE:I

    .line 116
    if-ne v1, v2, :cond_3

    .line 118
    :cond_2
    iget-object p1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 120
    sget v1, Lcom/autonavi/core/network/impl/http/HTTP;->SUCCESS:I

    .line 122
    iput v1, p1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->result:I

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    iget-object p1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 127
    sget v1, Lcom/autonavi/core/network/impl/http/HTTP;->FAIL:I

    .line 129
    iput v1, p1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->result:I

    .line 131
    :goto_0
    new-instance p1, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;

    .line 133
    invoke-direct {p1, v0}, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;-><init>(Lcom/autonavi/core/network/impl/http/response/HurlResponse;)V

    .line 136
    return-object p1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 140
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getRetryTimes()I

    .line 143
    move-result v2

    .line 144
    iput v2, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->retryTimes:I

    .line 146
    iget-object p1, p1, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 148
    invoke-virtual {v3}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getRequestDataLength()J

    .line 151
    move-result-wide v1

    .line 152
    iput-wide v1, p1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->sendDataSize:J

    .line 154
    throw v0
.end method

.method public setUploadProgressCallback(Lcom/autonavi/core/network/inter/response/UploadProgressCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;->mUploadProgressWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    :cond_0
    return-void
.end method
