.class abstract Lcom/autonavi/common/imageloader/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/imageloader/Action$RequestWeakReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field cancelled:Z

.field final errorDrawable:Landroid/graphics/drawable/Drawable;

.field final errorResId:I

.field final isfastMode:Z

.field final key:Ljava/lang/String;

.field final memoryPolicy:I

.field final networkPolicy:I

.field final noFade:Z

.field final picasso:Lcom/autonavi/common/imageloader/ImageLoader;

.field final request:Lcom/autonavi/common/imageloader/Request;

.field final tag:Ljava/lang/Object;

.field final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field willReplay:Z


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageLoader;Ljava/lang/Object;Lcom/autonavi/common/imageloader/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/common/imageloader/ImageLoader;",
            "TT;",
            "Lcom/autonavi/common/imageloader/Request;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Action;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 6
    iput-object p3, p0, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 8
    if-nez p2, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p3, Lcom/autonavi/common/imageloader/Action$RequestWeakReference;

    .line 14
    iget-object p1, p1, Lcom/autonavi/common/imageloader/ImageLoader;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 16
    invoke-direct {p3, p0, p2, p1}, Lcom/autonavi/common/imageloader/Action$RequestWeakReference;-><init>(Lcom/autonavi/common/imageloader/Action;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 19
    move-object p1, p3

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Action;->target:Ljava/lang/ref/WeakReference;

    .line 22
    iput p4, p0, Lcom/autonavi/common/imageloader/Action;->memoryPolicy:I

    .line 24
    iput p5, p0, Lcom/autonavi/common/imageloader/Action;->networkPolicy:I

    .line 26
    iput-boolean p10, p0, Lcom/autonavi/common/imageloader/Action;->noFade:Z

    .line 28
    iput p6, p0, Lcom/autonavi/common/imageloader/Action;->errorResId:I

    .line 30
    iput-object p7, p0, Lcom/autonavi/common/imageloader/Action;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object p8, p0, Lcom/autonavi/common/imageloader/Action;->key:Ljava/lang/String;

    .line 34
    if-eqz p9, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object p9, p0

    .line 38
    :goto_1
    iput-object p9, p0, Lcom/autonavi/common/imageloader/Action;->tag:Ljava/lang/Object;

    .line 40
    iput-boolean p11, p0, Lcom/autonavi/common/imageloader/Action;->isfastMode:Z

    .line 42
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/common/imageloader/Action;->cancelled:Z

    .line 4
    return-void
.end method

.method public abstract complete(Landroid/graphics/Bitmap;Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;)V
.end method

.method public abstract error()V
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->key:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMemoryPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/Action;->memoryPolicy:I

    .line 3
    return v0
.end method

.method public getNetworkPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/Action;->networkPolicy:I

    .line 3
    return v0
.end method

.method public getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 3
    return-object v0
.end method

.method public getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 3
    iget-object v0, v0, Lcom/autonavi/common/imageloader/Request;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 5
    return-object v0
.end method

.method public getRequest()Lcom/autonavi/common/imageloader/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->tag:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Action;->target:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/Action;->cancelled:Z

    .line 3
    return v0
.end method

.method public willReplay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/common/imageloader/Action;->willReplay:Z

    .line 3
    return v0
.end method
