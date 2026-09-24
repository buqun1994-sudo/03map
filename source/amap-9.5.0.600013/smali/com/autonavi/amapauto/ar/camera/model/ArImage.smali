.class public Lcom/autonavi/amapauto/ar/camera/model/ArImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public imageInfo:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

.field public mFrameInfo:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/model/ArImage;->imageInfo:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "imageInfo:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/model/ArImage;->imageInfo:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
