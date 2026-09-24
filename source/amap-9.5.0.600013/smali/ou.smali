.class public Lou;
.super Ljl0;
.source "SourceFile"


# instance fields
.field public g:Lie0;


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
    iget-object v0, p0, Lou;->g:Lie0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Ljl0;->c:Landroid/view/View;

    .line 7
    check-cast v1, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, v1, p1}, Lie0;->a(Landroid/widget/ImageView;Z)V

    .line 12
    :cond_0
    invoke-super {p0, p1}, Ljl0;->c(Z)V

    .line 15
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
    new-instance p1, Lie0;

    .line 8
    invoke-direct {p1}, Lie0;-><init>()V

    .line 11
    iput-object p1, p0, Lou;->g:Lie0;

    .line 13
    iget-object v0, p0, Ljl0;->b:Landroid/content/Context;

    .line 15
    iget-object v1, p0, Ljl0;->a:Lde0;

    .line 17
    invoke-virtual {p1, v0, v1}, Lie0;->b(Landroid/content/Context;Lde0;)V

    .line 20
    return-void
.end method
