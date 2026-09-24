.class public Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/inter/dependence/INetResponse;


# instance fields
.field private mBodyInputStream:Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;

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

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/impl/http/response/HurlResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->getResponseCode()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mStatusCode:I

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->getHeaders()Ljava/util/Map;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mHeaders:Ljava/util/Map;

    .line 16
    new-instance v0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->getBaseStream()Ljava/io/InputStream;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    iput-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mBodyInputStream:Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;

    .line 27
    return-void
.end method


# virtual methods
.method public getBodyInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mBodyInputStream:Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;

    .line 3
    return-object v0
.end method

.method public getContentLength()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mHeaders:Ljava/util/Map;

    .line 3
    const-string v1, "Content-Length"

    .line 5
    invoke-static {v0, v1}, Lcom/autonavi/core/network/inter/util/HeaderParser;->getHeaderField(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    const-wide/16 v2, -0x1

    .line 15
    if-nez v1, :cond_0

    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 20
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    nop

    .line 23
    :cond_0
    move-wide v0, v2

    .line 24
    :goto_0
    cmp-long v4, v0, v2

    .line 26
    if-nez v4, :cond_1

    .line 28
    iget-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mBodyInputStream:Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;

    .line 30
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->getReadSize()J

    .line 33
    move-result-wide v0

    .line 34
    :cond_1
    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mHeaders:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mHeaders:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlResponseImpl;->mStatusCode:I

    .line 3
    return v0
.end method
