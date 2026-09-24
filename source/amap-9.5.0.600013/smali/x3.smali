.class public Lx3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Lgh0;

.field public c:Lgh0;

.field public d:Lgh0;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lx3;->d:Lgh0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lgh0;

    .line 7
    invoke-direct {v0}, Lgh0;-><init>()V

    .line 10
    iput-object v0, p0, Lx3;->d:Lgh0;

    .line 12
    :cond_0
    iget-object v0, p0, Lx3;->d:Lgh0;

    .line 14
    invoke-virtual {v0}, Lgh0;->a()V

    .line 17
    iget-object v1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 19
    invoke-static {v1}, Lnu;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    iput-boolean v2, v0, Lgh0;->d:Z

    .line 28
    iput-object v1, v0, Lgh0;->a:Landroid/content/res/ColorStateList;

    .line 30
    :cond_1
    iget-object v1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 32
    invoke-static {v1}, Lnu;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 38
    iput-boolean v2, v0, Lgh0;->c:Z

    .line 40
    iput-object v1, v0, Lgh0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 42
    :cond_2
    iget-boolean v1, v0, Lgh0;->d:Z

    .line 44
    if-nez v1, :cond_4

    .line 46
    iget-boolean v1, v0, Lgh0;->c:Z

    .line 48
    if-eqz v1, :cond_3

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_4
    :goto_0
    iget-object v1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 58
    move-result-object v1

    .line 59
    invoke-static {p1, v0, v1}, Lu3;->g(Landroid/graphics/drawable/Drawable;Lgh0;[I)V

    .line 62
    return v2
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0}, Lik;->b(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0}, Lx3;->j()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p0, v0}, Lx3;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, p0, Lx3;->c:Lgh0;

    .line 29
    if-eqz v1, :cond_2

    .line 31
    iget-object v2, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v1, v2}, Lu3;->g(Landroid/graphics/drawable/Drawable;Lgh0;[I)V

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lx3;->b:Lgh0;

    .line 43
    if-eqz v1, :cond_3

    .line 45
    iget-object v2, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 50
    move-result-object v2

    .line 51
    invoke-static {v0, v1, v2}, Lu3;->g(Landroid/graphics/drawable/Drawable;Lgh0;[I)V

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public c()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3;->c:Lgh0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lgh0;->a:Landroid/content/res/ColorStateList;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3;->c:Lgh0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lgh0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method public f(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget-object v3, Ll90;->H:[I

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p1, v3, p2, v1}, Lih0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lih0;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0}, Lih0;->o()Landroid/content/res/TypedArray;

    .line 23
    move-result-object v5

    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v4, p1

    .line 26
    move v6, p2

    .line 27
    invoke-static/range {v1 .. v7}, Lzk0;->y(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 30
    :try_start_0
    iget-object p1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p1

    .line 36
    const/4 p2, -0x1

    .line 37
    if-nez p1, :cond_0

    .line 39
    sget v1, Ll90;->I:I

    .line 41
    invoke-virtual {v0, v1, p2}, Lih0;->l(II)I

    .line 44
    move-result v1

    .line 45
    if-eq v1, p2, :cond_0

    .line 47
    iget-object p1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v1}, Lb4;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 59
    iget-object v1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    invoke-static {p1}, Lik;->b(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_1
    sget p1, Ll90;->J:I

    .line 71
    invoke-virtual {v0, p1}, Lih0;->p(I)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v0, p1}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 82
    move-result-object p1

    .line 83
    invoke-static {v1, p1}, Lnu;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 86
    :cond_2
    sget p1, Ll90;->K:I

    .line 88
    invoke-virtual {v0, p1}, Lih0;->p(I)Z

    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {v0, p1, p2}, Lih0;->i(II)I

    .line 99
    move-result p1

    .line 100
    const/4 p2, 0x0

    .line 101
    invoke-static {p1, p2}, Lik;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 104
    move-result-object p1

    .line 105
    invoke-static {v1, p1}, Lnu;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_3
    invoke-virtual {v0}, Lih0;->t()V

    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    invoke-virtual {v0}, Lih0;->t()V

    .line 116
    throw p1
.end method

.method public g(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lb4;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    invoke-static {p1}, Lik;->b(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lx3;->a:Landroid/widget/ImageView;

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lx3;->b()V

    .line 33
    return-void
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx3;->c:Lgh0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lgh0;

    .line 7
    invoke-direct {v0}, Lgh0;-><init>()V

    .line 10
    iput-object v0, p0, Lx3;->c:Lgh0;

    .line 12
    :cond_0
    iget-object v0, p0, Lx3;->c:Lgh0;

    .line 14
    iput-object p1, v0, Lgh0;->a:Landroid/content/res/ColorStateList;

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lgh0;->d:Z

    .line 19
    invoke-virtual {p0}, Lx3;->b()V

    .line 22
    return-void
.end method

.method public i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx3;->c:Lgh0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lgh0;

    .line 7
    invoke-direct {v0}, Lgh0;-><init>()V

    .line 10
    iput-object v0, p0, Lx3;->c:Lgh0;

    .line 12
    :cond_0
    iget-object v0, p0, Lx3;->c:Lgh0;

    .line 14
    iput-object p1, v0, Lgh0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lgh0;->c:Z

    .line 19
    invoke-virtual {p0}, Lx3;->b()V

    .line 22
    return-void
.end method

.method public final j()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x15

    .line 7
    if-le v0, v3, :cond_1

    .line 9
    iget-object v0, p0, Lx3;->b:Lgh0;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1

    .line 16
    :cond_1
    if-ne v0, v3, :cond_2

    .line 18
    return v1

    .line 19
    :cond_2
    return v2
.end method
