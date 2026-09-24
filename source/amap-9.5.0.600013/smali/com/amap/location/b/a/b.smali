.class public Lcom/amap/location/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x5e

    .line 3
    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_0

    .line 8
    sput-object v0, Lcom/amap/location/b/a/b;->a:[B

    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x30t
        0x5ct
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        0x4bt
        0x0t
        0x30t
        0x48t
        0x2t
        0x41t
        0x0t
        -0x12t
        0x4at
        0x63t
        -0x41t
        0x49t
        -0x9t
        -0x79t
        0x68t
        -0x2ct
        0x7at
        0x7et
        -0x48t
        -0x9t
        0x4t
        -0xat
        -0x1et
        0x66t
        -0x49t
        0x65t
        0xdt
        -0x77t
        -0x53t
        -0x5at
        -0x65t
        0x57t
        -0x8t
        -0x46t
        0x39t
        0x50t
        0x41t
        0x7dt
        -0x75t
        -0x31t
        -0x76t
        0x2dt
        -0x49t
        0x4bt
        0x27t
        -0x2dt
        -0x10t
        -0x74t
        0x22t
        -0x24t
        -0x76t
        -0x79t
        -0x4et
        -0x48t
        -0x80t
        0x43t
        -0xft
        -0x1ft
        0x17t
        -0x7t
        -0x15t
        -0x48t
        -0x7ft
        -0x59t
        -0x5ft
        -0x17t
        0x79t
        -0x3ct
        0x18t
        0x5t
        -0x4bt
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/amap/location/support/network/HttpRequest;

    .line 4
    invoke-direct {v1}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/amap/location/support/network/HttpRequest;->addProductHeader()V

    .line 10
    iget-object v2, v1, Lcom/amap/location/support/network/HttpRequest;->headers:Ljava/util/Map;

    .line 12
    const-string v3, "et"

    .line 14
    const-string v4, "111"

    .line 16
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v2, v1, Lcom/amap/location/support/network/HttpRequest;->headers:Ljava/util/Map;

    .line 21
    const-string v3, "Accept-Encoding"

    .line 23
    const-string v4, "gzip"

    .line 25
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object p0, v1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 30
    const/4 p0, 0x2

    .line 31
    new-array p0, p0, [B

    .line 33
    iput-object p0, v1, Lcom/amap/location/support/network/HttpRequest;->body:[B

    .line 35
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0, v1}, Lcom/amap/location/support/network/INetwork;->post(Lcom/amap/location/support/network/HttpRequest;)Lcom/amap/location/support/network/HttpResponse;

    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_0

    .line 45
    iget v1, p0, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 47
    const/16 v2, 0xc8

    .line 49
    if-ne v1, v2, :cond_0

    .line 51
    iget-object p0, p0, Lcom/amap/location/support/network/HttpResponse;->body:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    return-object p0

    .line 54
    :cond_0
    return-object v0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    const-string v1, "CloudUtils"

    .line 58
    invoke-static {v1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-object v0
.end method
