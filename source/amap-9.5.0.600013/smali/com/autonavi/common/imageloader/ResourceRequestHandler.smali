.class Lcom/autonavi/common/imageloader/ResourceRequestHandler;
.super Lcom/autonavi/common/imageloader/RequestHandler;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/common/imageloader/RequestHandler;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ResourceRequestHandler;->context:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private static decodeResource(Landroid/content/res/Resources;ILcom/autonavi/common/imageloader/Request;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/autonavi/common/imageloader/RequestHandler;->createBitmapOptions(Lcom/autonavi/common/imageloader/Request;)Landroid/graphics/BitmapFactory$Options;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/autonavi/common/imageloader/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    iget v1, p2, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 16
    iget v2, p2, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 18
    invoke-static {v1, v2, v0, p2}, Lcom/autonavi/common/imageloader/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/autonavi/common/imageloader/Request;)V

    .line 21
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method


# virtual methods
.method public canHandleRequest(Lcom/autonavi/common/imageloader/Request;)Z
    .locals 1

    .line 1
    iget v0, p1, Lcom/autonavi/common/imageloader/Request;->resourceId:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const-string v0, "android.resource"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public load(Lcom/autonavi/common/imageloader/Request;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/autonavi/common/imageloader/ResourceRequestHandler;->context:Landroid/content/Context;

    .line 3
    invoke-static {p2, p1}, Lcom/autonavi/common/imageloader/Utils;->getResources(Landroid/content/Context;Lcom/autonavi/common/imageloader/Request;)Landroid/content/res/Resources;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2, p1}, Lcom/autonavi/common/imageloader/Utils;->getResourceId(Landroid/content/res/Resources;Lcom/autonavi/common/imageloader/Request;)I

    .line 10
    move-result v0

    .line 11
    new-instance v1, Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 13
    invoke-static {p2, v0, p1}, Lcom/autonavi/common/imageloader/ResourceRequestHandler;->decodeResource(Landroid/content/res/Resources;ILcom/autonavi/common/imageloader/Request;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 19
    invoke-direct {v1, p1, p2}, Lcom/autonavi/common/imageloader/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 22
    return-object v1
.end method
