.class public Lcom/autonavi/core/network/inter/request/MultipartRequest;
.super Lcom/autonavi/core/network/inter/request/HttpRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;
    }
.end annotation


# instance fields
.field protected final mMultipartKVs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;->mMultipartKVs:Ljava/util/List;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mChannel:I

    .line 14
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mMethod:I

    .line 16
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 18
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/Util;->getHttpMethod(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->method:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public addContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;->mMultipartKVs:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;

    .line 5
    invoke-direct {v1, p2, p1}, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;->mMultipartKVs:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;

    .line 5
    invoke-direct {v1, p2, p1}, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public getMultipartParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;->mMultipartKVs:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

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
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;->mMultipartKVs:Ljava/util/List;

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    move-result v1

    .line 119
    if-lez v1, :cond_5

    .line 121
    const-string v1, ",multipart:"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "["

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;->mMultipartKVs:Ljava/util/List;

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 136
    move-result v1

    .line 137
    const/4 v2, 0x0

    .line 138
    :goto_1
    if-ge v2, v1, :cond_4

    .line 140
    iget-object v3, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest;->mMultipartKVs:Ljava/util/List;

    .line 142
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;

    .line 148
    if-eqz v3, :cond_3

    .line 150
    if-eqz v2, :cond_2

    .line 152
    const-string v4, ","

    .line 154
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_2
    invoke-virtual {v3}, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->toString()Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    const-string v1, "]"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_5
    const-string v1, "}"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    return-object v0
.end method
