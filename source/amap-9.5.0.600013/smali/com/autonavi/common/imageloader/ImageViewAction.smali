.class Lcom/autonavi/common/imageloader/ImageViewAction;
.super Lcom/autonavi/common/imageloader/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/common/imageloader/Action<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/autonavi/common/imageloader/Callback;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Callback;ZZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/autonavi/common/imageloader/Action;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    move-object/from16 v1, p10

    .line 2
    iput-object v1, v0, Lcom/autonavi/common/imageloader/ImageViewAction;->callback:Lcom/autonavi/common/imageloader/Callback;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/autonavi/common/imageloader/Action;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageViewAction;->callback:Lcom/autonavi/common/imageloader/Callback;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageViewAction;->callback:Lcom/autonavi/common/imageloader/Callback;

    .line 11
    :cond_0
    return-void
.end method

.method public complete(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->target:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroid/widget/ImageView;

    .line 12
    if-nez v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 17
    iget-object v2, v0, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    .line 19
    iget-boolean v6, v0, Lcom/autonavi/common/imageloader/ImageLoader;->indicatorsEnabled:Z

    .line 21
    iget-boolean v5, p0, Lcom/autonavi/common/imageloader/Action;->noFade:Z

    .line 23
    move-object v3, p1

    .line 24
    move-object v4, p2

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/autonavi/common/imageloader/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;ZZ)V

    .line 28
    iget-object p1, p0, Lcom/autonavi/common/imageloader/ImageViewAction;->callback:Lcom/autonavi/common/imageloader/Callback;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1}, Lcom/autonavi/common/imageloader/Callback;->onSuccess()V

    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 38
    const/4 p2, 0x1

    .line 39
    new-array p2, p2, [Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    .line 42
    aput-object p0, p2, v0

    .line 44
    const-string v0, "Attempted to complete action with no result!\n%s"

    .line 46
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    throw p1
.end method

.method public error()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->target:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 18
    if-eqz v2, :cond_1

    .line 20
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 22
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 25
    :cond_1
    iget v1, p0, Lcom/autonavi/common/imageloader/Action;->errorResId:I

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Action;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageViewAction;->callback:Lcom/autonavi/common/imageloader/Callback;

    .line 42
    if-eqz v0, :cond_4

    .line 44
    invoke-interface {v0}, Lcom/autonavi/common/imageloader/Callback;->onError()V

    .line 47
    :cond_4
    return-void
.end method
