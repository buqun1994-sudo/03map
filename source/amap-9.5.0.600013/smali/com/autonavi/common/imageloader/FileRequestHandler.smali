.class Lcom/autonavi/common/imageloader/FileRequestHandler;
.super Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/common/imageloader/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static getFileExifRotation(Landroid/net/Uri;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/ExifInterface;

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 10
    const-string p0, "Orientation"

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 17
    return p0
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
    const-string v0, "file"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public load(Lcom/autonavi/common/imageloader/Request;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;
    .locals 3
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
    move-result-object v0

    .line 7
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 9
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 11
    invoke-static {p1}, Lcom/autonavi/common/imageloader/FileRequestHandler;->getFileExifRotation(Landroid/net/Uri;)I

    .line 14
    move-result p1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {p2, v2, v0, v1, p1}, Lcom/autonavi/common/imageloader/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;I)V

    .line 19
    return-object p2
.end method
