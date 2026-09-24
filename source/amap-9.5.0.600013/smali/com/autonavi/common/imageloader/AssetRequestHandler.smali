.class Lcom/autonavi/common/imageloader/AssetRequestHandler;
.super Lcom/autonavi/common/imageloader/RequestHandler;
.source "SourceFile"


# static fields
.field protected static final ANDROID_ASSET:Ljava/lang/String; = "android_asset"

.field private static final ASSET_PREFIX_LENGTH:I = 0x16


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/common/imageloader/RequestHandler;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/autonavi/common/imageloader/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    .line 10
    return-void
.end method

.method public static getFilePath(Lcom/autonavi/common/imageloader/Request;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    sget v0, Lcom/autonavi/common/imageloader/AssetRequestHandler;->ASSET_PREFIX_LENGTH:I

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public canHandleRequest(Lcom/autonavi/common/imageloader/Request;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "file"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    const-string v0, "android_asset"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_0
    return v1
.end method

.method public load(Lcom/autonavi/common/imageloader/Request;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/autonavi/common/imageloader/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    .line 3
    invoke-static {p1}, Lcom/autonavi/common/imageloader/AssetRequestHandler;->getFilePath(Lcom/autonavi/common/imageloader/Request;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 13
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->DISK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 15
    invoke-direct {p2, p1, v0}, Lcom/autonavi/common/imageloader/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 18
    return-object p2
.end method
