.class public Lxg0;
.super Ljl0;
.source "SourceFile"


# instance fields
.field public g:Lje0;

.field public h:Lhe0;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljl0;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljl0;->c(Z)V

    .line 4
    iget-object v0, p0, Lxg0;->g:Lje0;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Ljl0;->c:Landroid/view/View;

    .line 10
    check-cast v1, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, v1, p1}, Lje0;->a(Landroid/widget/TextView;Z)V

    .line 15
    :cond_0
    iget-object v0, p0, Lxg0;->h:Lhe0;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v1, p0, Ljl0;->c:Landroid/view/View;

    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 23
    invoke-virtual {v0, v1, p1}, Lhe0;->a(Landroid/widget/TextView;Z)V

    .line 26
    :cond_1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ljl0;->a:Lde0;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lje0;

    .line 8
    invoke-direct {p1}, Lje0;-><init>()V

    .line 11
    iput-object p1, p0, Lxg0;->g:Lje0;

    .line 13
    iget-object v0, p0, Ljl0;->b:Landroid/content/Context;

    .line 15
    iget-object v1, p0, Ljl0;->a:Lde0;

    .line 17
    invoke-virtual {p1, v0, v1}, Lje0;->c(Landroid/content/Context;Lde0;)V

    .line 20
    new-instance p1, Lhe0;

    .line 22
    invoke-direct {p1}, Lhe0;-><init>()V

    .line 25
    iput-object p1, p0, Lxg0;->h:Lhe0;

    .line 27
    iget-object v0, p0, Ljl0;->b:Landroid/content/Context;

    .line 29
    iget-object v1, p0, Ljl0;->a:Lde0;

    .line 31
    invoke-virtual {p1, v0, v1}, Lhe0;->c(Landroid/content/Context;Lde0;)V

    .line 34
    return-void
.end method
