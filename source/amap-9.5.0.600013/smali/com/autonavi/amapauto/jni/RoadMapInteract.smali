.class public Lcom/autonavi/amapauto/jni/RoadMapInteract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/RoadMapInteract$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RoadMapInteract"

.field public static floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

.field public static widgetHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lob;->a:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 3
    sput-object v0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->widgetHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne v0, p1, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    move-result v0

    .line 23
    if-eq v0, p2, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    int-to-double v3, p1

    .line 29
    int-to-double p1, p2

    .line 30
    invoke-static {p0, v3, v4, p1, p2}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;

    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x1

    .line 35
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result p2

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {p2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object p2

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    .line 53
    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-static {}, Lrv;->H()Lrv;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object v3

    .line 68
    sget v4, Lq80;->b:I

    .line 70
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result v3

    .line 74
    const/16 v4, 0x8

    .line 76
    new-array v4, v4, [F

    .line 78
    const/4 v5, 0x0

    .line 79
    aput v5, v4, v2

    .line 81
    aput v5, v4, v1

    .line 83
    const/4 v1, 0x2

    .line 84
    aput v5, v4, v1

    .line 86
    const/4 v1, 0x3

    .line 87
    aput v5, v4, v1

    .line 89
    int-to-float v1, v3

    .line 90
    const/4 v2, 0x4

    .line 91
    aput v1, v4, v2

    .line 93
    const/4 v2, 0x5

    .line 94
    aput v1, v4, v2

    .line 96
    const/4 v2, 0x6

    .line 97
    aput v1, v4, v2

    .line 99
    const/4 v2, 0x7

    .line 100
    aput v1, v4, v2

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    .line 104
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 107
    const/16 v2, 0xe6

    .line 109
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    new-instance v2, Landroid/graphics/Path;

    .line 114
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 117
    new-instance v3, Landroid/graphics/RectF;

    .line 119
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 122
    move-result v6

    .line 123
    int-to-float v6, v6

    .line 124
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 127
    move-result v7

    .line 128
    int-to-float v7, v7

    .line 129
    invoke-direct {v3, v5, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 132
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 134
    invoke-virtual {v2, v3, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 137
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 140
    invoke-virtual {v0, p0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 149
    if-eqz p1, :cond_3

    .line 151
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->recycle(Landroid/graphics/Bitmap;)V

    .line 154
    :cond_3
    return-object p2

    .line 155
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 156
    return-object p0
.end method

.method private static notifyRoadMapImg(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    sget-object v0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->notifyRoadMapImgImpl(Lcom/autonavi/amapauto/jni/RoadMapImgResponse;)V

    .line 19
    return-void
.end method

.method public static notifyRoadMapImgImpl(Lcom/autonavi/amapauto/jni/RoadMapImgResponse;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v2, "RoadMapInteract"

    .line 9
    const-string v3, "notifyRoadMapImgImpl roadMapImgResponse:{?}"

    .line 11
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p0, :cond_2

    .line 16
    iget v1, p0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->a:I

    .line 18
    if-eqz v1, :cond_1

    .line 20
    if-eq v1, v0, :cond_1

    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq v1, v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->widgetHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 28
    if-eqz v0, :cond_2

    .line 30
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->b:[B

    .line 32
    iget v2, p0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->c:I

    .line 34
    iget p0, p0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->d:I

    .line 36
    invoke-interface {v0, v1, v2, p0}, Lcom/autonavi/amapauto/jni/RoadMapInteract$a;->a([BII)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lcom/autonavi/amapauto/jni/RoadMapInteract;->floatHandler:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 42
    if-eqz v0, :cond_2

    .line 44
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->b:[B

    .line 46
    iget v2, p0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->c:I

    .line 48
    iget p0, p0, Lcom/autonavi/amapauto/jni/RoadMapImgResponse;->d:I

    .line 50
    invoke-interface {v0, v1, v2, p0}, Lcom/autonavi/amapauto/jni/RoadMapInteract$a;->a([BII)V

    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method public static recycle(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    :cond_0
    return-void
.end method

.method private static native sendRoadMapVisible(Landroid/os/Parcel;)V
.end method

.method public static sendRoadMapVisibleImpl(Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v2, "RoadMapInteract"

    .line 9
    const-string v3, "sendRoadMapVisibleImpl roadMapVisibleRequest:{?}"

    .line 11
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amapauto/jni/RoadMapVisibleRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/RoadMapInteract;->sendRoadMapVisible(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    :cond_0
    return-void
.end method

.method public static zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    new-instance v7, Landroid/graphics/Matrix;

    .line 13
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    double-to-float v2, p1

    .line 17
    div-float/2addr v2, v0

    .line 18
    double-to-float v3, p3

    .line 19
    div-float/2addr v3, v1

    .line 20
    cmpl-float v4, v2, v3

    .line 22
    if-lez v4, :cond_0

    .line 24
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 27
    move v9, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 32
    move v9, v2

    .line 33
    :goto_0
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    float-to-int v5, v0

    .line 36
    float-to-int v6, v1

    .line 37
    const/4 v8, 0x1

    .line 38
    move-object v2, p0

    .line 39
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 42
    move-result-object p0

    .line 43
    double-to-int v2, p1

    .line 44
    double-to-int v3, p3

    .line 45
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 47
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Landroid/graphics/Canvas;

    .line 53
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    mul-float v0, v0, v9

    .line 58
    float-to-double v4, v0

    .line 59
    sub-double/2addr p1, v4

    .line 60
    double-to-int p1, p1

    .line 61
    int-to-float p1, p1

    .line 62
    const/high16 p2, 0x40000000    # 2.0f

    .line 64
    div-float/2addr p1, p2

    .line 65
    mul-float v9, v9, v1

    .line 67
    float-to-double v0, v9

    .line 68
    sub-double/2addr p3, v0

    .line 69
    double-to-int p3, p3

    .line 70
    int-to-float p3, p3

    .line 71
    div-float/2addr p3, p2

    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-virtual {v3, p0, p1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 79
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 82
    return-object v2
.end method
