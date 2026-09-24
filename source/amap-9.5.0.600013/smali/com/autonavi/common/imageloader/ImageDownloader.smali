.class public Lcom/autonavi/common/imageloader/ImageDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/common/imageloader/IDownloader;


# instance fields
.field private networkClient:Lcom/autonavi/core/network/inter/NetworkClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Landroid/net/Uri;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;
    .locals 2

    .line 1
    new-instance p2, Lcom/autonavi/core/network/inter/request/GetRequest;

    .line 3
    invoke-direct {p2}, Lcom/autonavi/core/network/inter/request/GetRequest;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/autonavi/common/imageloader/ImageDownloader;->networkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 15
    const-class v0, Lcom/autonavi/core/network/inter/response/InputStreamResponse;

    .line 17
    invoke-virtual {p1, p2, v0}, Lcom/autonavi/core/network/inter/NetworkClient;->send(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/autonavi/core/network/inter/response/InputStreamResponse;

    .line 23
    new-instance p2, Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->NETWORK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 31
    invoke-direct {p2, v0, v1}, Lcom/autonavi/common/imageloader/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 34
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getContentLength()J

    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p2, Lcom/autonavi/common/imageloader/RequestHandler$Result;->contentLength:J

    .line 40
    return-object p2
.end method

.method public setClient(Lcom/autonavi/core/network/inter/NetworkClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageDownloader;->networkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 3
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDownloader;->networkClient:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/NetworkClient;->shutdown()V

    .line 6
    return-void
.end method
