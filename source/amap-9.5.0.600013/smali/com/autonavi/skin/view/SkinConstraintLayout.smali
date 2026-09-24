.class public Lcom/autonavi/skin/view/SkinConstraintLayout;
.super Lig;
.source "SourceFile"

# interfaces
.implements Lmt;


# instance fields
.field public x:Ljl0;

.field public y:Lod0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/autonavi/skin/view/SkinConstraintLayout;->u(Landroid/util/AttributeSet;)V

    .line 7
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const-string v1, "SkinConstraintLayout"

    .line 11
    const-string v2, "addChildrenForAccessibility"

    .line 13
    invoke-static {v1, v2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method

.method public getAdpter()Lmt$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinConstraintLayout;->x:Ljl0;

    .line 3
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/autonavi/skin/view/SkinConstraintLayout;->t(Landroid/graphics/Canvas;Landroid/view/View;)V

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
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 20
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    return-void
.end method

.method public setIsShowShadow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinConstraintLayout;->y:Lod0;

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
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinConstraintLayout;->y:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lod0;->c(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public t(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinConstraintLayout;->y:Lod0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lod0;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final u(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    new-instance v0, Ljl0;

    .line 3
    invoke-direct {v0, p0, p1}, Ljl0;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v0, p0, Lcom/autonavi/skin/view/SkinConstraintLayout;->x:Ljl0;

    .line 8
    invoke-virtual {v0, p0}, Ljl0;->h(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/autonavi/skin/view/SkinConstraintLayout;->v(Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public v(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/skin/view/SkinConstraintLayout;->y:Lod0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lod0;

    .line 7
    invoke-direct {v0, p0, p1}, Lod0;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 10
    iput-object v0, p0, Lcom/autonavi/skin/view/SkinConstraintLayout;->y:Lod0;

    .line 12
    :cond_0
    return-void
.end method
