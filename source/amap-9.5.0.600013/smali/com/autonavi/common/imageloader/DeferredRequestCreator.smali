.class Lcom/autonavi/common/imageloader/DeferredRequestCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field callback:Lcom/autonavi/common/imageloader/Callback;

.field final creator:Lcom/autonavi/common/imageloader/RequestCreator;

.field final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/RequestCreator;Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->creator:Lcom/autonavi/common/imageloader/RequestCreator;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    .line 13
    iput-object p3, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->callback:Lcom/autonavi/common/imageloader/Callback;

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->creator:Lcom/autonavi/common/imageloader/RequestCreator;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/RequestCreator;->clearTag()Lcom/autonavi/common/imageloader/RequestCreator;

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->callback:Lcom/autonavi/common/imageloader/Callback;

    .line 9
    iget-object v0, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 34
    return-void
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->creator:Lcom/autonavi/common/imageloader/RequestCreator;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/RequestCreator;->getTag()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 23
    return v1

    .line 24
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v4

    .line 32
    if-lez v3, :cond_3

    .line 34
    if-gtz v4, :cond_2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 40
    iget-object v2, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->creator:Lcom/autonavi/common/imageloader/RequestCreator;

    .line 42
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/RequestCreator;->unfit()Lcom/autonavi/common/imageloader/RequestCreator;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v3, v4}, Lcom/autonavi/common/imageloader/RequestCreator;->resize(II)Lcom/autonavi/common/imageloader/RequestCreator;

    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/autonavi/common/imageloader/DeferredRequestCreator;->callback:Lcom/autonavi/common/imageloader/Callback;

    .line 52
    invoke-virtual {v2, v0, v3}, Lcom/autonavi/common/imageloader/RequestCreator;->into(Landroid/widget/ImageView;Lcom/autonavi/common/imageloader/Callback;)V

    .line 55
    :cond_3
    :goto_0
    return v1
.end method
