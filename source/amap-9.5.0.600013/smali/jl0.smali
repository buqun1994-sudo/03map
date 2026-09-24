.class public Ljl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmt$a;


# instance fields
.field public a:Lde0;

.field public b:Landroid/content/Context;

.field public c:Landroid/view/View;

.field public d:Lge0;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ljl0;->e:Z

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ljl0;->b:Landroid/content/Context;

    .line 13
    invoke-static {p1, p2}, Lfe0;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lde0;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Ljl0;->a:Lde0;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljl0;->e(Z)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Ljl0;->e:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Ljl0;->f:Z

    .line 13
    iget-object v0, p0, Ljl0;->d:Lge0;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Ljl0;->c:Landroid/view/View;

    .line 19
    invoke-virtual {v0, v1, p1}, Lge0;->a(Landroid/view/View;Z)V

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Ljl0;->c(Z)V

    .line 25
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ljl0;->c:Landroid/view/View;

    .line 3
    iget-object v0, p0, Ljl0;->d:Lge0;

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lge0;

    .line 9
    invoke-direct {v0}, Lge0;-><init>()V

    .line 12
    iput-object v0, p0, Ljl0;->d:Lge0;

    .line 14
    :cond_0
    iget-object v0, p0, Ljl0;->d:Lge0;

    .line 16
    iget-object v1, p0, Ljl0;->b:Landroid/content/Context;

    .line 18
    iget-object v2, p0, Ljl0;->a:Lde0;

    .line 20
    invoke-virtual {v0, v1, v2}, Lge0;->b(Landroid/content/Context;Lde0;)V

    .line 23
    invoke-virtual {p0, p1}, Ljl0;->d(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljl0;->f:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Ljl0;->e:Z

    .line 9
    if-ne v0, p1, :cond_1

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_1
    return v1
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljl0;->f:Z

    .line 4
    return-void
.end method

.method public g(II)V
    .locals 1

    .line 1
    new-instance v0, Lsa0;

    .line 3
    invoke-direct {v0}, Lsa0;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lsa0;->c(I)V

    .line 9
    invoke-virtual {v0, p2}, Lsa0;->d(I)V

    .line 12
    iget-object p1, p0, Ljl0;->a:Lde0;

    .line 14
    invoke-virtual {p1, v0}, Lde0;->j(Lsa0;)V

    .line 17
    iget-object p1, p0, Ljl0;->d:Lge0;

    .line 19
    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lge0;

    .line 23
    invoke-direct {p1}, Lge0;-><init>()V

    .line 26
    iput-object p1, p0, Ljl0;->d:Lge0;

    .line 28
    :cond_0
    iget-object p1, p0, Ljl0;->d:Lge0;

    .line 30
    iget-object p2, p0, Ljl0;->b:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Ljl0;->a:Lde0;

    .line 34
    invoke-virtual {p1, p2, v0}, Lge0;->b(Landroid/content/Context;Lde0;)V

    .line 37
    invoke-virtual {p0}, Ljl0;->f()V

    .line 40
    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljl0;->a:Lde0;

    .line 3
    invoke-virtual {v0}, Lde0;->i()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lee0;->c()Lee0;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lee0;->c()Lee0;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lee0;->d()Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, p1, v1, v2}, Lee0;->g(Landroid/view/View;ZZ)Lee0$b;

    .line 25
    :cond_0
    return-void
.end method
