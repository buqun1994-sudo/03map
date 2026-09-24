.class public abstract Lcom/autonavi/core/network/inter/request/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/inter/request/HttpRequest$Priority;,
        Lcom/autonavi/core/network/inter/request/HttpRequest$Channel;,
        Lcom/autonavi/core/network/inter/request/HttpRequest$Method;
    }
.end annotation


# instance fields
.field protected mChannel:I

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mIsCancelled:Z

.field protected mMethod:I

.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPriority:I

.field protected mRetryTimes:I

.field protected mTimeout:I

.field protected mUrl:Ljava/lang/String;

.field public requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mMethod:I

    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mHeaders:Ljava/util/Map;

    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mParams:Ljava/util/Map;

    .line 21
    const/4 v1, 0x3

    .line 22
    iput v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mRetryTimes:I

    .line 24
    const/16 v1, 0x3a98

    .line 26
    iput v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mTimeout:I

    .line 28
    const/16 v1, 0xfa

    .line 30
    iput v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mPriority:I

    .line 32
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mChannel:I

    .line 34
    new-instance v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 36
    invoke-direct {v0}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 41
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mHeaders:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mParams:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public addParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mParams:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mIsCancelled:Z

    .line 4
    return-void
.end method

.method public getChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mChannel:I

    .line 3
    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mHeaders:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mMethod:I

    .line 3
    return v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mParams:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mPriority:I

    .line 3
    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mRetryTimes:I

    .line 3
    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mTimeout:I

    .line 3
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mIsCancelled:Z

    .line 3
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mUrl:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public setChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mChannel:I

    .line 3
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mPriority:I

    .line 3
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mRetryTimes:I

    .line 3
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mTimeout:I

    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mUrl:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 5
    iput-object p1, v0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->url:Ljava/lang/String;

    .line 7
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
    const-string v1, "}"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    return-object v0
.end method
