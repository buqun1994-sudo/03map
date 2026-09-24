.class public Lcom/autonavi/core/network/impl/cache/CacheResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/inter/dependence/INetResponse;
.implements Ljava/io/Serializable;


# instance fields
.field private mContentLength:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResponseBody:[B

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_3

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/util/List;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v3

    .line 54
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/lang/String;

    .line 66
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iput-object v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mHeaders:Ljava/util/Map;

    .line 80
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getResponseBodyData()[B

    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mResponseBody:[B

    .line 86
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getContentLength()J

    .line 89
    move-result-wide v0

    .line 90
    iput-wide v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mContentLength:J

    .line 92
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 95
    move-result p1

    .line 96
    iput p1, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mStatusCode:I

    .line 98
    :cond_3
    return-void
.end method


# virtual methods
.method public getBodyInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mResponseBody:[B

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 9
    iget-object v1, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mResponseBody:[B

    .line 11
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    :goto_0
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mContentLength:J

    .line 3
    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mHeaders:Ljava/util/Map;

    .line 3
    invoke-static {v0, p1}, Lcom/autonavi/core/network/inter/util/HeaderParser;->getHeaderField(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mHeaders:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/cache/CacheResponse;->mStatusCode:I

    .line 3
    return v0
.end method
