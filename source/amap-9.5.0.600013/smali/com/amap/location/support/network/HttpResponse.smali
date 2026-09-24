.class public Lcom/amap/location/support/network/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public body:[B

.field public errorCode:I

.field public errorException:Ljava/lang/Exception;

.field public headers:Ljava/util/Map;
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

.field public statusCode:I

.field public stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 4
    iput-object p1, p0, Lcom/amap/location/support/network/HttpResponse;->errorException:Ljava/lang/Exception;

    .line 5
    iput p2, p0, Lcom/amap/location/support/network/HttpResponse;->errorCode:I

    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/network/HttpResponse;->headers:Ljava/util/Map;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    move-object p1, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/List;

    .line 14
    :goto_0
    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    move-object v1, p1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 36
    :cond_2
    :goto_1
    return-object v1
.end method

.method public getResponseBodyBytesFromStream(Ljava/io/InputStream;Z)[B
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/amap/location/support/network/HttpResponse;->headers:Ljava/util/Map;

    .line 7
    if-eqz p2, :cond_0

    .line 9
    const-string p2, "Content-Encoding"

    .line 11
    invoke-virtual {p0, p2}, Lcom/amap/location/support/network/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 17
    const-string v0, "gzip"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 25
    :try_start_0
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    .line 27
    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    move-object p1, p2

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p2

    .line 33
    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    :goto_0
    new-instance p2, Ljava/io/BufferedInputStream;

    .line 38
    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    const/16 p1, 0x200

    .line 43
    new-array p1, p1, [B

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 47
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    :goto_1
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    .line 53
    move-result v1

    .line 54
    const/4 v2, -0x1

    .line 55
    if-eq v1, v2, :cond_1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 65
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {p2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    return-object p1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :catch_1
    move-exception p1

    .line 73
    :try_start_2
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-static {p2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    invoke-static {p2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    throw p1

    .line 84
    :cond_2
    :goto_3
    const/4 p1, 0x0

    .line 85
    return-object p1
.end method
