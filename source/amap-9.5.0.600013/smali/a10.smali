.class public abstract La10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/MenuItem;CI)V
    .locals 2

    .line 1
    instance-of v0, p0, Lff0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lff0;

    .line 7
    invoke-interface {p0, p1, p2}, Lff0;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-lt v0, v1, :cond_1

    .line 17
    invoke-static {p0, p1, p2}, Lz00;->a(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lff0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lff0;

    .line 7
    invoke-interface {p0, p1}, Lff0;->setContentDescription(Ljava/lang/CharSequence;)Lff0;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-lt v0, v1, :cond_1

    .line 17
    invoke-static {p0, p1}, Lx00;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lff0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lff0;

    .line 7
    invoke-interface {p0, p1}, Lff0;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-lt v0, v1, :cond_1

    .line 17
    invoke-static {p0, p1}, Lw00;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lff0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lff0;

    .line 7
    invoke-interface {p0, p1}, Lff0;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-lt v0, v1, :cond_1

    .line 17
    invoke-static {p0, p1}, Lv00;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Landroid/view/MenuItem;CI)V
    .locals 2

    .line 1
    instance-of v0, p0, Lff0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lff0;

    .line 7
    invoke-interface {p0, p1, p2}, Lff0;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-lt v0, v1, :cond_1

    .line 17
    invoke-static {p0, p1, p2}, Ly00;->a(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lff0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lff0;

    .line 7
    invoke-interface {p0, p1}, Lff0;->setTooltipText(Ljava/lang/CharSequence;)Lff0;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-lt v0, v1, :cond_1

    .line 17
    invoke-static {p0, p1}, Lu00;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 20
    :cond_1
    :goto_0
    return-void
.end method
