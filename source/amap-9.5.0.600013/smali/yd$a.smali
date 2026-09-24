.class public Lyd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyd;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lyd;


# direct methods
.method public constructor <init>(Lyd;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyd$a;->c:Lyd;

    .line 3
    iput p2, p0, Lyd$a;->a:I

    .line 5
    iput p3, p0, Lyd$a;->b:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10

    .line 1
    new-instance p2, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 3
    invoke-direct {p2}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [[B

    .line 9
    iget v2, p0, Lyd$a;->a:I

    .line 11
    filled-new-array {v2}, [I

    .line 14
    move-result-object v3

    .line 15
    filled-new-array {v0}, [I

    .line 18
    move-result-object v4

    .line 19
    iget v5, p0, Lyd$a;->b:I

    .line 21
    mul-int v2, v2, v5

    .line 23
    mul-int/lit8 v2, v2, 0x3

    .line 25
    const/4 v5, 0x2

    .line 26
    div-int/2addr v2, v5

    .line 27
    new-array v6, v2, [B

    .line 29
    const/4 v7, 0x0

    .line 30
    aput-object v6, v1, v7

    .line 32
    new-array v5, v5, [Ljava/lang/Object;

    .line 34
    array-length v6, p1

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v6

    .line 39
    aput-object v6, v5, v7

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v6

    .line 45
    aput-object v6, v5, v0

    .line 47
    const-string v6, "Camera1"

    .line 49
    const-string v8, "onPreviewFrame,bytes.length={?}, length={?}"

    .line 51
    invoke-static {v6, v8, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    aget-object v5, v1, v7

    .line 56
    invoke-static {p1, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object p1, p0, Lyd$a;->c:Lyd;

    .line 61
    invoke-static {p1}, Lyd;->m(Lyd;)Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 64
    move-result-object p1

    .line 65
    iget p1, p1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 67
    iput p1, p2, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 69
    iget p1, p0, Lyd$a;->a:I

    .line 71
    iput p1, p2, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 73
    iget p1, p0, Lyd$a;->b:I

    .line 75
    iput p1, p2, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    move-result-wide v8

    .line 81
    iput-wide v8, p2, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->timestamp:J

    .line 83
    const/4 p1, 0x0

    .line 84
    :goto_0
    if-ge p1, v0, :cond_1

    .line 86
    aget-object v2, v1, p1

    .line 88
    array-length v2, v2

    .line 89
    if-nez v2, :cond_0

    .line 91
    new-array p2, v0, [Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object p1

    .line 97
    aput-object p1, p2, v7

    .line 99
    const-string p1, "planeData[{?}}].length == 0"

    .line 101
    invoke-static {v6, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void

    .line 105
    :cond_0
    new-instance v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 107
    invoke-direct {v2}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 110
    aget-object v5, v1, p1

    .line 112
    iput-object v5, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 114
    aget v8, v4, p1

    .line 116
    iput v8, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 118
    aget v8, v3, p1

    .line 120
    iput v8, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 122
    array-length v5, v5

    .line 123
    iput v5, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 125
    iget-object v5, p2, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 p1, p1, 0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lyd$a;->c:Lyd;

    .line 135
    invoke-static {p1, p2}, Lyd;->n(Lyd;Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;)Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 138
    return-void
.end method
