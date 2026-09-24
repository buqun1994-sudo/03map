.class public abstract Lfe0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/TypedArray;II)Lsa0;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 5
    move-result p1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    move-result p0

    .line 14
    if-ne p0, v0, :cond_1

    .line 16
    return-object v1

    .line 17
    :cond_1
    new-instance p2, Lsa0;

    .line 19
    invoke-direct {p2}, Lsa0;-><init>()V

    .line 22
    invoke-virtual {p2, p1}, Lsa0;->c(I)V

    .line 25
    invoke-virtual {p2, p0}, Lsa0;->d(I)V

    .line 28
    return-object p2
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;)Lde0;
    .locals 2

    .line 1
    new-instance v0, Lde0;

    .line 3
    invoke-direct {v0}, Lde0;-><init>()V

    .line 6
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    :cond_0
    sget-object v1, Lj90;->m:[I

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object p0

    .line 15
    sget p1, Lj90;->A:I

    .line 17
    sget v1, Lj90;->z:I

    .line 19
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lde0;->p(Lsa0;)V

    .line 26
    sget p1, Lj90;->o:I

    .line 28
    sget v1, Lj90;->n:I

    .line 30
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lde0;->j(Lsa0;)V

    .line 37
    sget p1, Lj90;->y:I

    .line 39
    sget v1, Lj90;->x:I

    .line 41
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lde0;->o(Lsa0;)V

    .line 48
    sget p1, Lj90;->q:I

    .line 50
    sget v1, Lj90;->p:I

    .line 52
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lde0;->k(Lsa0;)V

    .line 59
    sget p1, Lj90;->s:I

    .line 61
    sget v1, Lj90;->r:I

    .line 63
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Lde0;->l(Lsa0;)V

    .line 70
    sget p1, Lj90;->w:I

    .line 72
    sget v1, Lj90;->v:I

    .line 74
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lde0;->n(Lsa0;)V

    .line 81
    sget p1, Lj90;->u:I

    .line 83
    sget v1, Lj90;->t:I

    .line 85
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lde0;->m(Lsa0;)V

    .line 92
    sget p1, Lj90;->C:I

    .line 94
    sget v1, Lj90;->B:I

    .line 96
    invoke-static {p0, p1, v1}, Lfe0;->a(Landroid/content/res/TypedArray;II)Lsa0;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Lde0;->q(Lsa0;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return-object v0
.end method
