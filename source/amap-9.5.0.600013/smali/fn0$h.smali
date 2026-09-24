.class public Lfn0$h;
.super Lfn0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public n:Lzu;


# direct methods
.method public constructor <init>(Lfn0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfn0$g;-><init>(Lfn0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfn0$h;->n:Lzu;

    return-void
.end method

.method public constructor <init>(Lfn0;Lfn0$h;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lfn0$g;-><init>(Lfn0;Lfn0$g;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lfn0$h;->n:Lzu;

    .line 5
    iget-object p1, p2, Lfn0$h;->n:Lzu;

    iput-object p1, p0, Lfn0$h;->n:Lzu;

    return-void
.end method


# virtual methods
.method public b()Lfn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lfn0;->t(Landroid/view/WindowInsets;)Lfn0;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public c()Lfn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lfn0;->t(Landroid/view/WindowInsets;)Lfn0;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final j()Lzu;
    .locals 4

    .line 1
    iget-object v0, p0, Lfn0$h;->n:Lzu;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 13
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 19
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 25
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 28
    move-result v3

    .line 29
    invoke-static {v0, v1, v2, v3}, Lzu;->b(IIII)Lzu;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lfn0$h;->n:Lzu;

    .line 35
    :cond_0
    iget-object v0, p0, Lfn0$h;->n:Lzu;

    .line 37
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public t(Lzu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfn0$h;->n:Lzu;

    .line 3
    return-void
.end method
