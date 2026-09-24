.class public abstract Lcom/amap/location/protocol/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/amap/location/protocol/i;ZZ)Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;[BLcom/amap/location/protocol/i;Lcom/amap/location/protocol/h;Z)V
    .locals 2

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    .line 6
    invoke-virtual {p3, v0, v1}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 7
    invoke-virtual {p3, v0, v1}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gzipped"

    const-string v1, "1"

    .line 8
    invoke-virtual {p3, v0, v1}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3}, Lcom/amap/location/support/network/HttpRequest;->addProductHeader()V

    if-nez p5, :cond_0

    const-string p5, "Connection"

    const-string v0, "close"

    .line 10
    invoke-virtual {p3, p5, v0}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    iput-object p2, p3, Lcom/amap/location/support/network/HttpRequest;->body:[B

    .line 12
    iput-object p1, p3, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p3, Lcom/amap/location/support/network/HttpRequest;->returnBytes:Z

    const/4 p1, 0x1

    .line 14
    iput p1, p3, Lcom/amap/location/support/network/HttpRequest;->retryTimes:I

    .line 15
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/amap/location/support/network/INetwork;->post(Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/support/network/INetwork$ICallback;)V

    return-void
.end method

.method public a(Lcom/amap/location/protocol/i;Lcom/amap/location/protocol/h;ZZZ)Z
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/amap/location/protocol/c;->a(Lcom/amap/location/protocol/i;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Lcom/amap/location/protocol/c;->a(Lcom/amap/location/protocol/i;)[B

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/amap/location/protocol/c;->a(Ljava/lang/String;[BLcom/amap/location/protocol/i;Lcom/amap/location/protocol/h;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "baseloc"

    const-string p5, "get location error"

    .line 4
    invoke-static {p4, p5, p3}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p4, -0x63

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lcom/amap/location/protocol/h;->a(Ljava/lang/Exception;ILcom/amap/location/protocol/i;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract a(Lcom/amap/location/protocol/i;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
