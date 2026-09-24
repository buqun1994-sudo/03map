.class public Lh7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7$b;
    }
.end annotation


# instance fields
.field public a:Las;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh7;-><init>()V

    return-void
.end method

.method public static a()Lh7;
    .locals 1

    .line 1
    invoke-static {}, Lh7$b;->a()Lh7;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Las;->o()V

    .line 8
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->n(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Las;->f()V

    .line 8
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Las;->a()V

    .line 8
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->k(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Las;->j()V

    .line 8
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Las;->e()V

    .line 8
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->h(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public j(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->g(Landroid/content/Context;)V

    .line 8
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Las;->onLowMemory()V

    .line 8
    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoEventDispatcher"

    .line 6
    const-string v3, "notifyStartBackgroundService"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lh7;->a:Las;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, "Call onInitBackgrounndService"

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lh7;->a:Las;

    .line 24
    invoke-interface {v0}, Las;->l()V

    .line 27
    :cond_0
    return-void
.end method

.method public m(Landroid/view/Surface;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Las;->m(Landroid/view/Surface;III)V

    .line 8
    :cond_0
    return-void
.end method

.method public n(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->p(Landroid/view/Surface;)V

    .line 8
    :cond_0
    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->i(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public p(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->c(Landroid/view/MotionEvent;)V

    .line 8
    :cond_0
    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->a:Las;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Las;->d(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public r(Las;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lh7;->a:Las;

    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    const-string v0, "AutoEventDispatcher"

    .line 8
    const-string v1, "setMainScreenHandler"

    .line 10
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lh7;->a:Las;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Lg7;

    .line 19
    invoke-direct {v0}, Lg7;-><init>()V

    .line 22
    invoke-interface {p1, v0}, Las;->b(Lhr;)V

    .line 25
    :cond_0
    return-void
.end method
