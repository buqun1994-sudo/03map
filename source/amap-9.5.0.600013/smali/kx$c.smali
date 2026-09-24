.class public Lkx$c;
.super Lb00;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lkx;


# direct methods
.method public constructor <init>(Lkx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkx$c;->e:Lkx;

    .line 3
    invoke-direct {p0}, Lb00;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public b()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 3
    invoke-virtual {v0}, Lhx;->i()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lb00;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 4
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 6
    iget v1, v0, Lmx;->k:I

    .line 8
    if-ne v1, p3, :cond_0

    .line 10
    iget v0, v0, Lmx;->l:I

    .line 12
    if-eq v0, p4, :cond_1

    .line 14
    :cond_0
    const-string v0, "sizeChanged.."

    .line 16
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Lkx;->F(Lkx;Z)Z

    .line 25
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 27
    invoke-static {v0, p3, p4}, Lkx;->I(Lkx;II)V

    .line 30
    :cond_1
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 32
    invoke-virtual {v0, p1, p2, p3, p4}, Lmx;->b(Landroid/view/SurfaceHolder;III)Z

    .line 35
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lb00;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "surfaceCreated before cb: valid="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 34
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 36
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 43
    invoke-static {v0, v1}, Lkx;->H(Lkx;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 46
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 53
    move-result v0

    .line 54
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v1

    .line 62
    iget-object v2, p0, Lkx$c;->e:Lkx;

    .line 64
    invoke-static {v2, v0, v1}, Lkx;->I(Lkx;II)V

    .line 67
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 69
    invoke-virtual {v0, p1}, Lmx;->a(Landroid/view/SurfaceHolder;)V

    .line 72
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lb00;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 4
    const-string v0, "surfaceDestroyed reuse before cb"

    .line 6
    invoke-virtual {p0, v0}, Lb00;->a(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lkx$c;->e:Lkx;

    .line 11
    invoke-virtual {v0, p1}, Lmx;->c(Landroid/view/SurfaceHolder;)V

    .line 14
    iget-object p1, p0, Lkx$c;->e:Lkx;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Lkx;->H(Lkx;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 20
    iget-object p1, p0, Lkx$c;->e:Lkx;

    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p1, Lmx;->k:I

    .line 25
    iput v0, p1, Lmx;->l:I

    .line 27
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb00;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 4
    const-string p1, "surfaceRedrawNeeded reuse after cb"

    .line 6
    invoke-virtual {p0, p1}, Lb00;->a(Ljava/lang/String;)V

    .line 9
    return-void
.end method
