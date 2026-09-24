.class public Lcom/autonavi/amapauto/ar/camera/ArCameraParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x1

.field public static final CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final CAMERA_FACING_FRONT:I = 0x0

.field public static final IMAGE_TYPE_BGRABGRA_8888:I = 0x2000031

.field public static final IMAGE_TYPE_BGRBGR_888:I = 0x2000030

.field public static final IMAGE_TYPE_JPEG:I = 0x100

.field public static final IMAGE_TYPE_NV16:I = 0x10

.field public static final IMAGE_TYPE_NV21:I = 0x11

.field public static final IMAGE_TYPE_RGB_565:I = 0x4

.field public static final IMAGE_TYPE_RGB_888:I = 0x29

.field public static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field public static final IMAGE_TYPE_YUV_420_888:I = 0x23

.field public static final IMAGE_TYPE_YUV_422_888:I = 0x27

.field public static final IMAGE_TYPE_YUV_444_888:I = 0x28

.field public static final IMAGE_TYPE_YUY2:I = 0x14

.field public static final IMAGE_TYPE_YV_12:I = 0x32315659


# instance fields
.field public cameraFacing:I

.field public format:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    const-string v1, "ArCameraParam{width="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", height="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", format="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", cameraFacing="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->cameraFacing:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x7d

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
