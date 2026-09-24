.class public abstract Lwk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxt;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:Lmx;

.field public d:Lnx;

.field public e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-interface {p0}, Lxt;->f()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/SurfaceView;

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-interface {p0}, Lxt;->a()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/SurfaceView;

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    iput-object v0, p0, Lwk0;->b:Ljava/lang/ref/WeakReference;

    .line 35
    iget-object p1, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 43
    iget-object p1, p0, Lwk0;->b:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Lmx;

    .line 54
    iget-object v0, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 56
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/view/SurfaceView;

    .line 62
    invoke-direct {p1, v0}, Lmx;-><init>(Landroid/view/SurfaceView;)V

    .line 65
    iput-object p1, p0, Lwk0;->c:Lmx;

    .line 67
    new-instance p1, Lnx;

    .line 69
    iget-object v0, p0, Lwk0;->b:Ljava/lang/ref/WeakReference;

    .line 71
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/SurfaceView;

    .line 77
    invoke-direct {p1, v0}, Lnx;-><init>(Landroid/view/SurfaceView;)V

    .line 80
    iput-object p1, p0, Lwk0;->d:Lnx;

    .line 82
    iget-object v0, p0, Lwk0;->c:Lmx;

    .line 84
    invoke-virtual {v0, p1}, Lhx;->s(Lhx;)V

    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method public c()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    iget-object v0, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SurfaceView;

    .line 9
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lwk0;->e:Ljava/lang/ref/WeakReference;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    if-ne v0, p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    iput-object v0, p0, Lwk0;->e:Ljava/lang/ref/WeakReference;

    .line 21
    :cond_1
    return-void
.end method

.method public e()Lmx;
    .locals 1

    .line 1
    iget-object v0, p0, Lwk0;->c:Lmx;

    .line 3
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwk0;->c:Lmx;

    .line 3
    invoke-virtual {v0}, Lmx;->r()V

    .line 6
    iget-object v0, p0, Lwk0;->d:Lnx;

    .line 8
    invoke-virtual {v0}, Lnx;->r()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lwk0;->e:Ljava/lang/ref/WeakReference;

    .line 14
    return-void
.end method
