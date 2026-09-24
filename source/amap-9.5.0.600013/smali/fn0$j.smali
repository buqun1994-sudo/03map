.class public Lfn0$j;
.super Lfn0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public o:Lzu;

.field public p:Lzu;

.field public q:Lzu;


# direct methods
.method public constructor <init>(Lfn0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfn0$i;-><init>(Lfn0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfn0$j;->o:Lzu;

    .line 3
    iput-object p1, p0, Lfn0$j;->p:Lzu;

    .line 4
    iput-object p1, p0, Lfn0$j;->q:Lzu;

    return-void
.end method

.method public constructor <init>(Lfn0;Lfn0$j;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lfn0$i;-><init>(Lfn0;Lfn0$i;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lfn0$j;->o:Lzu;

    .line 7
    iput-object p1, p0, Lfn0$j;->p:Lzu;

    .line 8
    iput-object p1, p0, Lfn0$j;->q:Lzu;

    return-void
.end method


# virtual methods
.method public i()Lzu;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$j;->p:Lzu;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lsn0;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lzu;->d(Landroid/graphics/Insets;)Lzu;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lfn0$j;->p:Lzu;

    .line 17
    :cond_0
    iget-object v0, p0, Lfn0$j;->p:Lzu;

    .line 19
    return-object v0
.end method

.method public k()Lzu;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$j;->o:Lzu;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lqn0;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lzu;->d(Landroid/graphics/Insets;)Lzu;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lfn0$j;->o:Lzu;

    .line 17
    :cond_0
    iget-object v0, p0, Lfn0$j;->o:Lzu;

    .line 19
    return-object v0
.end method

.method public m()Lzu;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$j;->q:Lzu;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lrn0;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lzu;->d(Landroid/graphics/Insets;)Lzu;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lfn0$j;->q:Lzu;

    .line 17
    :cond_0
    iget-object v0, p0, Lfn0$j;->q:Lzu;

    .line 19
    return-object v0
.end method

.method public n(IIII)Lfn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Ltn0;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lfn0;->t(Landroid/view/WindowInsets;)Lfn0;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public t(Lzu;)V
    .locals 0

    .line 1
    return-void
.end method
