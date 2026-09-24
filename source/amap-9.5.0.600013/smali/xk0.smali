.class public abstract Lxk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxt;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Lkx;

.field public c:Lnx;

.field public d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lkx;

    .line 6
    invoke-direct {v0}, Lkx;-><init>()V

    .line 9
    iput-object v0, p0, Lxk0;->b:Lkx;

    .line 11
    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-interface {p0}, Lxt;->a()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/SurfaceView;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lxk0;->a:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance p1, Lnx;

    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/SurfaceView;

    .line 26
    invoke-direct {p1, v0}, Lnx;-><init>(Landroid/view/SurfaceView;)V

    .line 29
    iput-object p1, p0, Lxk0;->c:Lnx;

    .line 31
    iget-object v0, p0, Lxk0;->b:Lkx;

    .line 33
    invoke-virtual {v0, p1}, Lhx;->s(Lhx;)V

    .line 36
    return-void
.end method

.method public c()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lxk0;->d:Ljava/lang/ref/WeakReference;

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
    iput-object v0, p0, Lxk0;->d:Ljava/lang/ref/WeakReference;

    .line 21
    :cond_1
    return-void
.end method

.method public e()Lmx;
    .locals 1

    .line 1
    iget-object v0, p0, Lxk0;->b:Lkx;

    .line 3
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxk0;->b:Lkx;

    .line 3
    invoke-virtual {v0}, Lkx;->r()V

    .line 6
    iget-object v0, p0, Lxk0;->c:Lnx;

    .line 8
    invoke-virtual {v0}, Lnx;->r()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lxk0;->d:Ljava/lang/ref/WeakReference;

    .line 14
    return-void
.end method
