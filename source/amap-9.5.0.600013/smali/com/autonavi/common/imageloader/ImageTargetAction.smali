.class public Lcom/autonavi/common/imageloader/ImageTargetAction;
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
.field final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/common/imageloader/Callback;",
            ">;"
        }
    .end annotation
.end field

.field listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/common/imageloader/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageLoader;Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Callback;ZZ)V
    .locals 13

    move-object/from16 v0, p10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    .line 1
    invoke-direct/range {v1 .. v12}, Lcom/autonavi/common/imageloader/Action;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    move-object v1, p0

    iput-object v0, v1, Lcom/autonavi/common/imageloader/ImageTargetAction;->callback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/autonavi/common/imageloader/Action;->cancel()V

    .line 4
    return-void
.end method

.method public complete(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_6

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
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageTargetAction;->listener:Ljava/lang/ref/WeakReference;

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/autonavi/common/imageloader/Target;

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v0, v1

    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 43
    invoke-interface {v0, p1, p2}, Lcom/autonavi/common/imageloader/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 52
    iget-object p1, p0, Lcom/autonavi/common/imageloader/ImageTargetAction;->callback:Ljava/lang/ref/WeakReference;

    .line 54
    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    move-object v1, p1

    .line 61
    check-cast v1, Lcom/autonavi/common/imageloader/Callback;

    .line 63
    :cond_3
    if-eqz v1, :cond_4

    .line 65
    invoke-interface {v1}, Lcom/autonavi/common/imageloader/Callback;->onSuccess()V

    .line 68
    :cond_4
    return-void

    .line 69
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    const-string p2, "Target callback must not recycle bitmap!"

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1

    .line 77
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    .line 79
    const/4 p2, 0x1

    .line 80
    new-array p2, p2, [Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    .line 83
    aput-object p0, p2, v0

    .line 85
    const-string v0, "Attempted to complete action with no result!\n%s"

    .line 87
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 94
    throw p1
.end method

.method public error()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->target:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageTargetAction;->listener:Ljava/lang/ref/WeakReference;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/autonavi/common/imageloader/Target;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    if-eqz v1, :cond_2

    .line 24
    iget v3, p0, Lcom/autonavi/common/imageloader/Action;->errorResId:I

    .line 26
    if-eqz v3, :cond_1

    .line 28
    iget-object v3, p0, Lcom/autonavi/common/imageloader/Action;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 30
    iget-object v3, v3, Lcom/autonavi/common/imageloader/ImageLoader;->context:Landroid/content/Context;

    .line 32
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v3

    .line 36
    iget v4, p0, Lcom/autonavi/common/imageloader/Action;->errorResId:I

    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v1, v3}, Lcom/autonavi/common/imageloader/Target;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/autonavi/common/imageloader/Action;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-interface {v1, v3}, Lcom/autonavi/common/imageloader/Target;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v1

    .line 57
    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 59
    if-eqz v3, :cond_3

    .line 61
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 63
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 66
    :cond_3
    iget v1, p0, Lcom/autonavi/common/imageloader/Action;->errorResId:I

    .line 68
    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Action;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageTargetAction;->callback:Ljava/lang/ref/WeakReference;

    .line 83
    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    move-object v2, v0

    .line 90
    check-cast v2, Lcom/autonavi/common/imageloader/Callback;

    .line 92
    :cond_6
    if-eqz v2, :cond_7

    .line 94
    invoke-interface {v2}, Lcom/autonavi/common/imageloader/Callback;->onError()V

    .line 97
    :cond_7
    return-void
.end method

.method public setTargetListener(Lcom/autonavi/common/imageloader/Target;)Lcom/autonavi/common/imageloader/Action;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageTargetAction;->listener:Ljava/lang/ref/WeakReference;

    .line 13
    return-object p0
.end method
