.class final Lcom/autonavi/common/imageloader/TargetAction;
.super Lcom/autonavi/common/imageloader/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/common/imageloader/Action<",
        "Lcom/autonavi/common/imageloader/Target;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageLoader;Lcom/autonavi/common/imageloader/Target;Lcom/autonavi/common/imageloader/Request;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;IZ)V
    .locals 12

    .line 1
    const/4 v10, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move/from16 v4, p4

    .line 8
    move/from16 v5, p5

    .line 10
    move/from16 v6, p9

    .line 12
    move-object/from16 v7, p6

    .line 14
    move-object/from16 v8, p7

    .line 16
    move-object/from16 v9, p8

    .line 18
    move/from16 v11, p10

    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/autonavi/common/imageloader/Action;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public complete(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/autonavi/common/imageloader/Target;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1, p2}, Lcom/autonavi/common/imageloader/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    const-string p2, "Target callback must not recycle bitmap!"

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 32
    const/4 p2, 0x1

    .line 33
    new-array p2, p2, [Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    .line 36
    aput-object p0, p2, v0

    .line 38
    const-string v0, "Attempted to complete action with no result!\n%s"

    .line 40
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 47
    throw p1
.end method

.method public error()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Action;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/autonavi/common/imageloader/Target;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget v1, p0, Lcom/autonavi/common/imageloader/Action;->errorResId:I

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Action;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 15
    iget-object v1, v1, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/autonavi/common/imageloader/Action;->errorResId:I

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Lcom/autonavi/common/imageloader/Target;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Action;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-interface {v0, v1}, Lcom/autonavi/common/imageloader/Target;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_1
    :goto_0
    return-void
.end method
