.class public Lcom/autonavi/core/network/inter/request/PostRequest;
.super Lcom/autonavi/core/network/inter/request/HttpRequest;
.source "SourceFile"


# instance fields
.field protected mBody:[B

.field protected mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mMethod:I

    .line 7
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 9
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/Util;->getHttpMethod(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->method:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/PostRequest;->mBody:[B

    .line 3
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/PostRequest;->mContentType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setBody([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/request/PostRequest;->mBody:[B

    .line 3
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/request/PostRequest;->mContentType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "{"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "method:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mMethod:I

    .line 18
    invoke-static {v1}, Lcom/autonavi/core/network/inter/util/Util;->getHttpMethod(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ",url:"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 38
    const-string v2, ""

    .line 40
    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v1, v2

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ",channel:"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mChannel:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ",retryTimes:"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mRetryTimes:I

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ",timeout:"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mTimeout:I

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ",priority:"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mPriority:I

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ",header:"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/PostRequest;->getBody()[B

    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/PostRequest;->getBody()[B

    .line 122
    move-result-object v1

    .line 123
    array-length v1, v1

    .line 124
    if-lez v1, :cond_2

    .line 126
    const-string v1, "application/x-www-form-urlencoded"

    .line 128
    iget-object v2, p0, Lcom/autonavi/core/network/inter/request/PostRequest;->mContentType:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_2

    .line 136
    :try_start_0
    const-string v1, ",body:"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v1, Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/PostRequest;->getBody()[B

    .line 146
    move-result-object v2

    .line 147
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :catchall_0
    :cond_2
    const-string v1, "}"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method
