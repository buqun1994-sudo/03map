.class public abstract Lcom/autonavi/core/network/inter/response/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mBodyData:[B

.field private mImpl:Lcom/autonavi/core/network/inter/dependence/INetResponse;

.field private mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

.field protected mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBodyInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mImpl:Lcom/autonavi/core/network/inter/dependence/INetResponse;

    .line 3
    invoke-interface {v0}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mImpl:Lcom/autonavi/core/network/inter/dependence/INetResponse;

    .line 3
    invoke-interface {v0}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getContentLength()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mImpl:Lcom/autonavi/core/network/inter/dependence/INetResponse;

    .line 3
    invoke-interface {v0, p1}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mImpl:Lcom/autonavi/core/network/inter/dependence/INetResponse;

    .line 3
    invoke-interface {v0}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getHeaders()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequest()Lcom/autonavi/core/network/inter/request/HttpRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 3
    return-object v0
.end method

.method public getResponseBodyData()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mBodyData:[B

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 13
    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    const/16 v0, 0x200

    .line 18
    new-array v0, v0, [B

    .line 20
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 22
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    if-eq v3, v4, :cond_0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mBodyData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    const/4 v0, 0x0

    .line 47
    :try_start_1
    iput-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mBodyData:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_1
    invoke-static {v1}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    goto :goto_3

    .line 53
    :goto_2
    invoke-static {v1}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    throw v0

    .line 57
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mBodyData:[B

    .line 59
    return-object v0
.end method

.method public getResponseBodyString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getResponseBodyData()[B

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/autonavi/core/network/inter/util/HeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    new-instance v1, Ljava/lang/String;

    .line 23
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    return-object v1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mResult:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mImpl:Lcom/autonavi/core/network/inter/dependence/INetResponse;

    .line 3
    invoke-interface {v0}, Lcom/autonavi/core/network/inter/dependence/INetResponse;->getStatusCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTtl()J
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "Expires"

    .line 3
    invoke-virtual {p0, v0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    :goto_0
    return-wide v0
.end method

.method public parse()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->parseResult()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mResult:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public abstract parseResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setImpl(Lcom/autonavi/core/network/inter/dependence/INetResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mImpl:Lcom/autonavi/core/network/inter/dependence/INetResponse;

    .line 3
    return-void
.end method

.method public setRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/response/HttpResponse;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 3
    return-void
.end method
