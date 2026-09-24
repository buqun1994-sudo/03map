.class public Lcom/autonavi/core/network/inter/request/FileUploadRequest;
.super Lcom/autonavi/core/network/inter/request/HttpRequest;
.source "SourceFile"


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mChannel:I

    .line 7
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mMethod:I

    .line 9
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 11
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/Util;->getHttpMethod(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->method:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->mContentType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->mFile:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->mContentType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->mFile:Ljava/io/File;

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
    move-result-object v1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move-object v1, v2

    .line 112
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ",file:"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->getFile()Ljava/io/File;

    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/request/FileUploadRequest;->getFile()Ljava/io/File;

    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "}"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    return-object v0
.end method
