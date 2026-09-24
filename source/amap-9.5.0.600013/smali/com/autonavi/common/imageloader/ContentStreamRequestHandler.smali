.class Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;
.super Lcom/autonavi/common/imageloader/RequestHandler;
.source "SourceFile"


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/common/imageloader/RequestHandler;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;->context:Landroid/content/Context;

    .line 6
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
    const-string v0, "content"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getInputStream(Lcom/autonavi/common/imageloader/Request;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public load(Lcom/autonavi/common/imageloader/Request;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 3
    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;->getInputStream(Lcom/autonavi/common/imageloader/Request;)Ljava/io/InputStream;

    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 9
    invoke-direct {p2, p1, v0}, Lcom/autonavi/common/imageloader/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 12
    return-object p2
.end method
