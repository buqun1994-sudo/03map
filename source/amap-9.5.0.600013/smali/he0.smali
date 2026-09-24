.class public Lhe0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lde0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lhe0;->a:Lde0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lde0;->c()Lsa0;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lhe0;->a:Lde0;

    .line 14
    invoke-virtual {v0}, Lde0;->e()Lsa0;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lhe0;->a:Lde0;

    .line 22
    invoke-virtual {v0}, Lde0;->d()Lsa0;

    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lhe0;->a:Lde0;

    .line 30
    invoke-virtual {v0}, Lde0;->b()Lsa0;

    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lhe0;->a:Lde0;

    .line 43
    invoke-virtual {v1}, Lde0;->c()Lsa0;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v0, v1, p2}, Lhe0;->b(Landroid/content/Context;Lsa0;Z)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lhe0;->a:Lde0;

    .line 57
    invoke-virtual {v2}, Lde0;->d()Lsa0;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v1, v2, p2}, Lhe0;->b(Landroid/content/Context;Lsa0;Z)Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v2

    .line 69
    iget-object v3, p0, Lhe0;->a:Lde0;

    .line 71
    invoke-virtual {v3}, Lde0;->e()Lsa0;

    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p0, v2, v3, p2}, Lhe0;->b(Landroid/content/Context;Lsa0;Z)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v3

    .line 83
    iget-object v4, p0, Lhe0;->a:Lde0;

    .line 85
    invoke-virtual {v4}, Lde0;->b()Lsa0;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {p0, v3, v4, p2}, Lhe0;->b(Landroid/content/Context;Lsa0;Z)Landroid/graphics/drawable/Drawable;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public final b(Landroid/content/Context;Lsa0;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Lsa0;->a()I

    .line 7
    move-result v1

    .line 8
    if-gtz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lsa0;->a()I

    .line 14
    move-result v1

    .line 15
    if-eqz p3, :cond_1

    .line 17
    invoke-virtual {p2}, Lsa0;->b()I

    .line 20
    move-result v1

    .line 21
    :cond_1
    if-lez v1, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 40
    move-result p2

    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-virtual {v0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    :cond_2
    :goto_0
    return-object v0
.end method

.method public c(Landroid/content/Context;Lde0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lhe0;->a:Lde0;

    .line 3
    return-void
.end method
