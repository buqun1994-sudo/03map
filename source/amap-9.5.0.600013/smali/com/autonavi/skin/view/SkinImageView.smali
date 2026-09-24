.class public Lcom/autonavi/skin/view/SkinImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lmt;


# instance fields
.field public a:Lou;

.field public b:Lod0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/autonavi/skin/view/SkinImageView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/autonavi/skin/view/SkinImageView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/autonavi/skin/view/SkinImageView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->b:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lod0;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    new-instance v0, Lou;

    .line 3
    invoke-direct {v0, p0, p1}, Lou;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->a:Lou;

    .line 8
    invoke-virtual {v0, p0}, Ljl0;->h(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/autonavi/skin/view/SkinImageView;->c(Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public c(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->b:Lod0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lod0;

    .line 7
    invoke-direct {v0, p0, p1}, Lod0;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 10
    iput-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->b:Lod0;

    .line 12
    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->a:Lou;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljl0;->g(II)V

    .line 6
    return-void
.end method

.method public getAdpter()Lmt$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->a:Lou;

    .line 3
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/autonavi/skin/view/SkinImageView;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    move-result v3

    .line 17
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 20
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    return-void
.end method

.method public setIsShowShadow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->b:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lod0;->d(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public setShadowVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinImageView;->b:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lod0;->c(I)V

    .line 8
    :cond_0
    return-void
.end method
