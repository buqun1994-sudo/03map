.class Lcom/autonavi/common/imageloader/NetworkRequestHandler;
.super Lcom/autonavi/common/imageloader/RequestHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/imageloader/NetworkRequestHandler$ContentLengthException;
    }
.end annotation


# static fields
.field static final RETRY_COUNT:I = 0x2

.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private final diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

.field private final downloader:Lcom/autonavi/common/imageloader/IDownloader;

.field private final stats:Lcom/autonavi/common/imageloader/Stats;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/IDownloader;Lcom/autonavi/common/imageloader/Stats;Lcom/autonavi/common/imageloader/ImageDiskCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/common/imageloader/RequestHandler;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/NetworkRequestHandler;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 6
    iput-object p2, p0, Lcom/autonavi/common/imageloader/NetworkRequestHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 8
    iput-object p3, p0, Lcom/autonavi/common/imageloader/NetworkRequestHandler;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 10
    return-void
.end method


# virtual methods
.method public canHandleRequest(Lcom/autonavi/common/imageloader/Request;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "http"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    const-string v0, "https"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method public getRetryCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public load(Lcom/autonavi/common/imageloader/Request;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->generateImageName(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2}, Lcom/autonavi/common/imageloader/NetworkPolicy;->isOfflineOnly(I)Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/autonavi/common/imageloader/NetworkRequestHandler;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1, v0}, Lcom/autonavi/common/imageloader/ImageDiskCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    .line 25
    move-result-object v2

    .line 26
    :cond_0
    new-instance p1, Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 28
    sget-object p2, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 30
    invoke-direct {p1, v2, p2}, Lcom/autonavi/common/imageloader/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 33
    return-object p1

    .line 34
    :cond_1
    invoke-static {p2}, Lcom/autonavi/common/imageloader/NetworkPolicy;->shouldReadFromDiskCache(I)Z

    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 40
    iget-object p2, p0, Lcom/autonavi/common/imageloader/NetworkRequestHandler;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 42
    if-eqz p2, :cond_2

    .line 44
    invoke-virtual {p2, v0}, Lcom/autonavi/common/imageloader/ImageDiskCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_2

    .line 50
    new-instance p1, Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 52
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 54
    invoke-direct {p1, p2, v0}, Lcom/autonavi/common/imageloader/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 57
    return-object p1

    .line 58
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/autonavi/common/imageloader/NetworkRequestHandler;->downloader:Lcom/autonavi/common/imageloader/IDownloader;

    .line 60
    iget-object v0, p1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 62
    iget p1, p1, Lcom/autonavi/common/imageloader/Request;->networkPolicy:I

    .line 64
    invoke-interface {p2, v0, p1}, Lcom/autonavi/common/imageloader/IDownloader;->load(Landroid/net/Uri;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/RequestHandler$Result;->getLoadedFrom()Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 73
    move-result-object p1

    .line 74
    sget-object p2, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->NETWORK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 76
    if-ne p1, p2, :cond_3

    .line 78
    iget-wide p1, v2, Lcom/autonavi/common/imageloader/RequestHandler$Result;->contentLength:J

    .line 80
    const-wide/16 v0, 0x0

    .line 82
    cmp-long v3, p1, v0

    .line 84
    if-lez v3, :cond_3

    .line 86
    iget-object v0, p0, Lcom/autonavi/common/imageloader/NetworkRequestHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/common/imageloader/Stats;->dispatchDownloadFinished(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    :cond_3
    return-object v2
.end method

.method public shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    return p1
.end method

.method public supportsReplay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
