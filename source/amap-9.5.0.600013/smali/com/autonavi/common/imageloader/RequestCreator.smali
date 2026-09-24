.class public Lcom/autonavi/common/imageloader/RequestCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private centerCrop:Z

.field private centerInside:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private deferred:Z

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:I

.field private hasRotationPivot:Z

.field private isfastMode:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoryPolicy:I

.field private networkPolicy:I

.field private noFade:Z

.field private onlyScaleDown:Z

.field private final picasso:Lcom/autonavi/common/imageloader/ImageLoader;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResId:I

.field private priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

.field private purgeable:Z

.field private resourceId:I

.field private rotationDegrees:F

.field private rotationPivotX:F

.field private rotationPivotY:F

.field private setPlaceholder:Z

.field private stableKey:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private targetHeight:I

.field private targetWidth:I

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/DrawableFactory;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/common/imageloader/RequestCreator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/net/Uri;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/common/imageloader/ImageLoader;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->isfastMode:Z

    .line 10
    iget-boolean v0, p1, Lcom/autonavi/common/imageloader/ImageLoader;->shutdown:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 16
    iput-object p2, p0, Lcom/autonavi/common/imageloader/RequestCreator;->uri:Landroid/net/Uri;

    .line 18
    iput p3, p0, Lcom/autonavi/common/imageloader/RequestCreator;->resourceId:I

    .line 20
    iget-object p1, p1, Lcom/autonavi/common/imageloader/ImageLoader;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 22
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->config:Landroid/graphics/Bitmap$Config;

    .line 24
    iput-object p4, p0, Lcom/autonavi/common/imageloader/RequestCreator;->mHeaders:Ljava/util/Map;

    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    const-string p2, "ImageLoader instance already shut down. Cannot submit new requests."

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method private createRequest(J)Lcom/autonavi/common/imageloader/Request;
    .locals 7

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/RequestCreator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/RequestCreator;->build()Lcom/autonavi/common/imageloader/Request;

    .line 10
    move-result-object v1

    .line 11
    iput v0, v1, Lcom/autonavi/common/imageloader/Request;->id:I

    .line 13
    iput-wide p1, v1, Lcom/autonavi/common/imageloader/Request;->started:J

    .line 15
    iget-object v2, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 17
    iget-boolean v2, v2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 19
    const-string v3, "Main"

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Request;->plainId()Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Request;->toString()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    const-string v6, "created"

    .line 33
    invoke-static {v3, v6, v4, v5}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 38
    invoke-virtual {v4, v1}, Lcom/autonavi/common/imageloader/ImageLoader;->transformRequest(Lcom/autonavi/common/imageloader/Request;)Lcom/autonavi/common/imageloader/Request;

    .line 41
    move-result-object v4

    .line 42
    if-eq v4, v1, :cond_1

    .line 44
    iput v0, v4, Lcom/autonavi/common/imageloader/Request;->id:I

    .line 46
    iput-wide p1, v4, Lcom/autonavi/common/imageloader/Request;->started:J

    .line 48
    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v4}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v0, "into "

    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    const-string v0, "changed"

    .line 73
    invoke-static {v3, v0, p1, p2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    return-object v4
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderResId:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 7
    iget-object v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderResId:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    return-object v0
.end method


# virtual methods
.method public build()Lcom/autonavi/common/imageloader/Request;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->centerInside:Z

    .line 5
    if-eqz v1, :cond_1

    .line 7
    iget-boolean v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->centerCrop:Z

    .line 9
    if-nez v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    const-string v2, "Center crop and center inside can not be used together."

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v1

    .line 20
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->centerCrop:Z

    .line 22
    if-eqz v2, :cond_3

    .line 24
    iget v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->targetWidth:I

    .line 26
    if-nez v2, :cond_3

    .line 28
    iget v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->targetHeight:I

    .line 30
    if-eqz v2, :cond_2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 35
    const-string v2, "Center crop requires calling resize with positive width and height."

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v1

    .line 41
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 43
    iget v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->targetWidth:I

    .line 45
    if-nez v1, :cond_5

    .line 47
    iget v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->targetHeight:I

    .line 49
    if-eqz v1, :cond_4

    .line 51
    goto :goto_2

    .line 52
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 54
    const-string v2, "Center inside requires calling resize with positive width and height."

    .line 56
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v1

    .line 60
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 62
    if-nez v1, :cond_6

    .line 64
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader$Priority;->NORMAL:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 66
    iput-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 68
    :cond_6
    new-instance v1, Lcom/autonavi/common/imageloader/Request;

    .line 70
    move-object v2, v1

    .line 71
    iget-object v3, v0, Lcom/autonavi/common/imageloader/RequestCreator;->uri:Landroid/net/Uri;

    .line 73
    iget v4, v0, Lcom/autonavi/common/imageloader/RequestCreator;->resourceId:I

    .line 75
    iget-object v5, v0, Lcom/autonavi/common/imageloader/RequestCreator;->stableKey:Ljava/lang/String;

    .line 77
    iget-object v6, v0, Lcom/autonavi/common/imageloader/RequestCreator;->transformations:Ljava/util/List;

    .line 79
    iget v7, v0, Lcom/autonavi/common/imageloader/RequestCreator;->targetWidth:I

    .line 81
    iget v8, v0, Lcom/autonavi/common/imageloader/RequestCreator;->targetHeight:I

    .line 83
    iget-boolean v9, v0, Lcom/autonavi/common/imageloader/RequestCreator;->centerCrop:Z

    .line 85
    iget-boolean v10, v0, Lcom/autonavi/common/imageloader/RequestCreator;->centerInside:Z

    .line 87
    iget-boolean v11, v0, Lcom/autonavi/common/imageloader/RequestCreator;->onlyScaleDown:Z

    .line 89
    iget v12, v0, Lcom/autonavi/common/imageloader/RequestCreator;->rotationDegrees:F

    .line 91
    iget v13, v0, Lcom/autonavi/common/imageloader/RequestCreator;->rotationPivotX:F

    .line 93
    iget v14, v0, Lcom/autonavi/common/imageloader/RequestCreator;->rotationPivotY:F

    .line 95
    iget-boolean v15, v0, Lcom/autonavi/common/imageloader/RequestCreator;->hasRotationPivot:Z

    .line 97
    move-object/from16 v20, v1

    .line 99
    iget-boolean v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->purgeable:Z

    .line 101
    move/from16 v16, v1

    .line 103
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->config:Landroid/graphics/Bitmap$Config;

    .line 105
    move-object/from16 v17, v1

    .line 107
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 109
    move-object/from16 v18, v1

    .line 111
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->mHeaders:Ljava/util/Map;

    .line 113
    move-object/from16 v19, v1

    .line 115
    invoke-direct/range {v2 .. v19}, Lcom/autonavi/common/imageloader/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZZLandroid/graphics/Bitmap$Config;Lcom/autonavi/common/imageloader/ImageLoader$Priority;Ljava/util/Map;)V

    .line 118
    return-object v20
.end method

.method public centerCrop()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->centerInside:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->centerCrop:Z

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v1, "Center crop can not be used after calling centerInside"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public centerInside()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->centerCrop:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->centerInside:Z

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v1, "Center inside can not be used after calling centerCrop"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public clearTag()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->tag:Ljava/lang/Object;

    .line 4
    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->config:Landroid/graphics/Bitmap$Config;

    .line 3
    return-object p0
.end method

.method public error(I)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->errorResId:I

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->errorResId:I

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fastMode(Z)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->isfastMode:Z

    .line 3
    return-object p0
.end method

.method public fit()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->deferred:Z

    .line 4
    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->tag:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->uri:Landroid/net/Uri;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->resourceId:I

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->targetWidth:I

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->targetHeight:I

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/common/imageloader/RequestCreator;->into(Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Callback;)V

    return-void
.end method

.method public into(Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Callback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 50
    invoke-static {}, Lcom/autonavi/common/imageloader/Utils;->checkMain()V

    if-eqz v3, :cond_b

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v1, v3}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 53
    iget-boolean v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_0

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 55
    :cond_1
    iget-boolean v4, v0, Lcom/autonavi/common/imageloader/RequestCreator;->deferred:Z

    if-eqz v4, :cond_6

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->hasSize()Z

    move-result v4

    if-nez v4, :cond_5

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0, v4, v5}, Lcom/autonavi/common/imageloader/RequestCreator;->resize(II)Lcom/autonavi/common/imageloader/RequestCreator;

    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_4

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_4
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    new-instance v2, Lcom/autonavi/common/imageloader/DeferredRequestCreator;

    invoke-direct {v2, v0, v3, v11}, Lcom/autonavi/common/imageloader/DeferredRequestCreator;-><init>(Lcom/autonavi/common/imageloader/RequestCreator;Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Callback;)V

    invoke-virtual {v1, v3, v2}, Lcom/autonavi/common/imageloader/ImageLoader;->defer(Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/DeferredRequestCreator;)V

    return-void

    .line 63
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_6
    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/autonavi/common/imageloader/RequestCreator;->createRequest(J)Lcom/autonavi/common/imageloader/Request;

    move-result-object v7

    .line 65
    invoke-static {v7}, Lcom/autonavi/common/imageloader/Utils;->createKey(Lcom/autonavi/common/imageloader/Request;)Ljava/lang/String;

    move-result-object v9

    .line 66
    iget v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    invoke-static {v1}, Lcom/autonavi/common/imageloader/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 67
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v1, v9}, Lcom/autonavi/common/imageloader/ImageLoader;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 68
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v1, v3}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 69
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    iget-object v2, v1, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    sget-object v8, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->MEMORY:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    iget-boolean v5, v0, Lcom/autonavi/common/imageloader/RequestCreator;->noFade:Z

    iget-boolean v6, v1, Lcom/autonavi/common/imageloader/ImageLoader;->indicatorsEnabled:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;ZZ)V

    .line 70
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    iget-boolean v1, v1, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    if-eqz v1, :cond_7

    .line 71
    invoke-virtual {v7}, Lcom/autonavi/common/imageloader/Request;->plainId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v11, :cond_8

    .line 72
    invoke-interface/range {p2 .. p2}, Lcom/autonavi/common/imageloader/Callback;->onSuccess()V

    :cond_8
    return-void

    .line 73
    :cond_9
    iget-boolean v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_a

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_a
    new-instance v14, Lcom/autonavi/common/imageloader/ImageViewAction;

    iget-object v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    iget v5, v0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    iget v6, v0, Lcom/autonavi/common/imageloader/RequestCreator;->networkPolicy:I

    iget v8, v0, Lcom/autonavi/common/imageloader/RequestCreator;->errorResId:I

    iget-object v10, v0, Lcom/autonavi/common/imageloader/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/autonavi/common/imageloader/RequestCreator;->tag:Ljava/lang/Object;

    iget-boolean v13, v0, Lcom/autonavi/common/imageloader/RequestCreator;->noFade:Z

    iget-boolean v15, v0, Lcom/autonavi/common/imageloader/RequestCreator;->isfastMode:Z

    move-object v1, v14

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v13

    move v13, v15

    invoke-direct/range {v1 .. v13}, Lcom/autonavi/common/imageloader/ImageViewAction;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Callback;ZZ)V

    .line 76
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v1, v14}, Lcom/autonavi/common/imageloader/ImageLoader;->enqueueAndSubmit(Lcom/autonavi/common/imageloader/Action;)V

    return-void

    .line 77
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public into(Lcom/autonavi/common/imageloader/Target;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/autonavi/common/imageloader/Utils;->checkMain()V

    if-eqz p1, :cond_5

    .line 3
    iget-boolean v3, p0, Lcom/autonavi/common/imageloader/RequestCreator;->deferred:Z

    if-nez v3, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/RequestCreator;->hasImage()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 5
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelRequest(Lcom/autonavi/common/imageloader/Target;)V

    .line 6
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    invoke-interface {p1, v4}, Lcom/autonavi/common/imageloader/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/autonavi/common/imageloader/RequestCreator;->createRequest(J)Lcom/autonavi/common/imageloader/Request;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/autonavi/common/imageloader/Utils;->createKey(Lcom/autonavi/common/imageloader/Request;)Ljava/lang/String;

    move-result-object v7

    .line 9
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    invoke-static {v0}, Lcom/autonavi/common/imageloader/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v0, v7}, Lcom/autonavi/common/imageloader/ImageLoader;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v1, p1}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelRequest(Lcom/autonavi/common/imageloader/Target;)V

    .line 12
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->MEMORY:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    invoke-interface {p1, v0, v1}, Lcom/autonavi/common/imageloader/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    return-void

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    invoke-interface {p1, v4}, Lcom/autonavi/common/imageloader/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 14
    new-instance v11, Lcom/autonavi/common/imageloader/TargetAction;

    iget-object v1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    iget v4, p0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    iget v5, p0, Lcom/autonavi/common/imageloader/RequestCreator;->networkPolicy:I

    iget-object v6, p0, Lcom/autonavi/common/imageloader/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/autonavi/common/imageloader/RequestCreator;->tag:Ljava/lang/Object;

    iget v9, p0, Lcom/autonavi/common/imageloader/RequestCreator;->errorResId:I

    iget-boolean v10, p0, Lcom/autonavi/common/imageloader/RequestCreator;->isfastMode:Z

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/autonavi/common/imageloader/TargetAction;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Lcom/autonavi/common/imageloader/Target;Lcom/autonavi/common/imageloader/Request;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 15
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v0, v11}, Lcom/autonavi/common/imageloader/ImageLoader;->enqueueAndSubmit(Lcom/autonavi/common/imageloader/Action;)V

    return-void

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with a Target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public into(Lcom/autonavi/common/imageloader/Target;Landroid/widget/ImageView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 19
    invoke-static {}, Lcom/autonavi/common/imageloader/Utils;->checkMain()V

    if-eqz v4, :cond_a

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->hasImage()Z

    move-result v5

    if-nez v5, :cond_1

    .line 21
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v1, v4}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 22
    iget-boolean v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_0

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 24
    :cond_1
    iget-boolean v5, v0, Lcom/autonavi/common/imageloader/RequestCreator;->deferred:Z

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->hasSize()Z

    move-result v5

    if-nez v5, :cond_5

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v5, :cond_3

    if-nez v6, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v0, v5, v6}, Lcom/autonavi/common/imageloader/RequestCreator;->resize(II)Lcom/autonavi/common/imageloader/RequestCreator;

    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_4

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 31
    :cond_4
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    new-instance v2, Lcom/autonavi/common/imageloader/DeferredRequestCreator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v4, v3}, Lcom/autonavi/common/imageloader/DeferredRequestCreator;-><init>(Lcom/autonavi/common/imageloader/RequestCreator;Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Callback;)V

    invoke-virtual {v1, v4, v2}, Lcom/autonavi/common/imageloader/ImageLoader;->defer(Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/DeferredRequestCreator;)V

    return-void

    .line 32
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_6
    :goto_1
    invoke-direct {v0, v2, v3}, Lcom/autonavi/common/imageloader/RequestCreator;->createRequest(J)Lcom/autonavi/common/imageloader/Request;

    move-result-object v8

    .line 34
    invoke-static {v8}, Lcom/autonavi/common/imageloader/Utils;->createKey(Lcom/autonavi/common/imageloader/Request;)Ljava/lang/String;

    move-result-object v10

    .line 35
    iget v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    invoke-static {v2}, Lcom/autonavi/common/imageloader/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 36
    iget-object v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v2, v10}, Lcom/autonavi/common/imageloader/ImageLoader;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 37
    iget-object v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v2, v4}, Lcom/autonavi/common/imageloader/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 38
    iget-object v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    iget-object v3, v2, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    sget-object v10, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->MEMORY:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    iget-boolean v6, v0, Lcom/autonavi/common/imageloader/RequestCreator;->noFade:Z

    iget-boolean v7, v2, Lcom/autonavi/common/imageloader/ImageLoader;->indicatorsEnabled:Z

    move-object/from16 v2, p2

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v2 .. v7}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;ZZ)V

    .line 39
    invoke-interface {v1, v9, v10}, Lcom/autonavi/common/imageloader/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 40
    iget-object v1, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    iget-boolean v1, v1, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    if-eqz v1, :cond_7

    .line 41
    invoke-virtual {v8}, Lcom/autonavi/common/imageloader/Request;->plainId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 42
    :cond_8
    iget-boolean v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v2, :cond_9

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/common/imageloader/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_9
    new-instance v15, Lcom/autonavi/common/imageloader/ImageTargetAction;

    iget-object v3, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    iget v6, v0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    iget v7, v0, Lcom/autonavi/common/imageloader/RequestCreator;->networkPolicy:I

    iget v9, v0, Lcom/autonavi/common/imageloader/RequestCreator;->errorResId:I

    iget-object v11, v0, Lcom/autonavi/common/imageloader/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/autonavi/common/imageloader/RequestCreator;->tag:Ljava/lang/Object;

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/autonavi/common/imageloader/RequestCreator;->noFade:Z

    iget-boolean v5, v0, Lcom/autonavi/common/imageloader/RequestCreator;->isfastMode:Z

    move-object v2, v15

    move-object/from16 v4, p2

    move/from16 v16, v5

    move-object v5, v8

    move v8, v9

    move-object v9, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Lcom/autonavi/common/imageloader/ImageTargetAction;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Callback;ZZ)V

    .line 45
    invoke-virtual {v15, v1}, Lcom/autonavi/common/imageloader/ImageTargetAction;->setTargetListener(Lcom/autonavi/common/imageloader/Target;)Lcom/autonavi/common/imageloader/Action;

    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    invoke-virtual {v2, v1}, Lcom/autonavi/common/imageloader/ImageLoader;->enqueueAndSubmit(Lcom/autonavi/common/imageloader/Action;)V

    return-void

    .line 47
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs memoryPolicy(Lcom/autonavi/common/imageloader/MemoryPolicy;[Lcom/autonavi/common/imageloader/MemoryPolicy;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 4

    .line 1
    const-string v0, "Memory policy cannot be null."

    .line 3
    if-eqz p1, :cond_3

    .line 5
    iget v1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    .line 7
    iget p1, p1, Lcom/autonavi/common/imageloader/MemoryPolicy;->index:I

    .line 9
    or-int/2addr p1, v1

    .line 10
    iput p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    .line 12
    if-eqz p2, :cond_2

    .line 14
    array-length p1, p2

    .line 15
    if-lez p1, :cond_1

    .line 17
    array-length p1, p2

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, p1, :cond_1

    .line 21
    aget-object v2, p2, v1

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget v3, p0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    .line 27
    iget v2, v2, Lcom/autonavi/common/imageloader/MemoryPolicy;->index:I

    .line 29
    or-int/2addr v2, v3

    .line 30
    iput v2, p0, Lcom/autonavi/common/imageloader/RequestCreator;->memoryPolicy:I

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_1
    return-object p0

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method

.method public varargs networkPolicy(Lcom/autonavi/common/imageloader/NetworkPolicy;[Lcom/autonavi/common/imageloader/NetworkPolicy;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 4

    .line 1
    const-string v0, "Network policy cannot be null."

    .line 3
    if-eqz p1, :cond_3

    .line 5
    iget v1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->networkPolicy:I

    .line 7
    iget p1, p1, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 9
    or-int/2addr p1, v1

    .line 10
    iput p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->networkPolicy:I

    .line 12
    if-eqz p2, :cond_2

    .line 14
    array-length p1, p2

    .line 15
    if-lez p1, :cond_1

    .line 17
    array-length p1, p2

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, p1, :cond_1

    .line 21
    aget-object v2, p2, v1

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget v3, p0, Lcom/autonavi/common/imageloader/RequestCreator;->networkPolicy:I

    .line 27
    iget v2, v2, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 29
    or-int/2addr v2, v3

    .line 30
    iput v2, p0, Lcom/autonavi/common/imageloader/RequestCreator;->networkPolicy:I

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_1
    return-object p0

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method

.method public noFade()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->noFade:Z

    .line 4
    return-object p0
.end method

.method public noPlaceholder()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderResId:I

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    const-string v1, "Placeholder image already set."

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    const-string v1, "Placeholder resource already set."

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0
.end method

.method public onlyScaleDown()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->targetHeight:I

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->targetWidth:I

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "onlyScaleDown can not be applied without resize"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->onlyScaleDown:Z

    .line 21
    return-object p0
.end method

.method public placeholder(I)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderResId:I

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_1

    .line 8
    iget v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderResId:I

    if-nez v0, :cond_0

    .line 9
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public priority(Lcom/autonavi/common/imageloader/ImageLoader$Priority;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 5
    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string v0, "Priority already set."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "Priority invalid."

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public purgeable()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->purgeable:Z

    .line 4
    return-object p0
.end method

.method public resize(II)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 0

    .line 1
    if-ltz p1, :cond_3

    .line 3
    if-ltz p2, :cond_2

    .line 5
    if-nez p2, :cond_1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string p2, "At least one dimension has to be positive number."

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    iput p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->targetWidth:I

    .line 20
    iput p2, p0, Lcom/autonavi/common/imageloader/RequestCreator;->targetHeight:I

    .line 22
    return-object p0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p2, "Height must be positive number or 0."

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p2, "Width must be positive number or 0."

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method

.method public resizeDimen(II)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 3
    iget-object v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/common/imageloader/RequestCreator;->resize(II)Lcom/autonavi/common/imageloader/RequestCreator;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public stableKey(Ljava/lang/String;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->stableKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->tag:Ljava/lang/Object;

    .line 5
    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/autonavi/common/imageloader/RequestCreator;->tag:Ljava/lang/Object;

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string v0, "Tag already set."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "Tag invalid."

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public transform(Lcom/autonavi/common/imageloader/DrawableFactory;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Lcom/autonavi/common/imageloader/DrawableFactory;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->transformations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->transformations:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->transformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DrawableFactory key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DrawableFactory must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Ljava/util/List;)Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/autonavi/common/imageloader/DrawableFactory;",
            ">;)",
            "Lcom/autonavi/common/imageloader/RequestCreator;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/common/imageloader/DrawableFactory;

    invoke-virtual {p0, v2}, Lcom/autonavi/common/imageloader/RequestCreator;->transform(Lcom/autonavi/common/imageloader/DrawableFactory;)Lcom/autonavi/common/imageloader/RequestCreator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DrawableFactory list must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unfit()Lcom/autonavi/common/imageloader/RequestCreator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/RequestCreator;->deferred:Z

    .line 4
    return-object p0
.end method
