.class public Lp4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lgh0;

.field public c:Lgh0;

.field public d:Lgh0;

.field public e:Lgh0;

.field public f:Lgh0;

.field public g:Lgh0;

.field public h:Lgh0;

.field public final i:Lc5;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lp4;->j:I

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lp4;->k:I

    .line 10
    iput-object p1, p0, Lp4;->a:Landroid/widget/TextView;

    .line 12
    new-instance v0, Lc5;

    .line 14
    invoke-direct {v0, p1}, Lc5;-><init>(Landroid/widget/TextView;)V

    .line 17
    iput-object v0, p0, Lp4;->i:Lc5;

    .line 19
    return-void
.end method

.method public static d(Landroid/content/Context;Lu3;I)Lgh0;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lu3;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    new-instance p1, Lgh0;

    .line 9
    invoke-direct {p1}, Lgh0;-><init>()V

    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lgh0;->d:Z

    .line 15
    iput-object p0, p1, Lgh0;->a:Landroid/content/res/ColorStateList;

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method


# virtual methods
.method public final A(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0, p1, p2}, Lc5;->v(IF)V

    .line 6
    return-void
.end method

.method public final B(Landroid/content/Context;Lih0;)V
    .locals 10

    .line 1
    sget v0, Ll90;->c2:I

    .line 3
    iget v1, p0, Lp4;->j:I

    .line 5
    invoke-virtual {p2, v0, v1}, Lih0;->i(II)I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lp4;->j:I

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x1c

    .line 18
    if-lt v0, v4, :cond_0

    .line 20
    sget v5, Ll90;->h2:I

    .line 22
    invoke-virtual {p2, v5, v2}, Lih0;->i(II)I

    .line 25
    move-result v5

    .line 26
    iput v5, p0, Lp4;->k:I

    .line 28
    if-eq v5, v2, :cond_0

    .line 30
    iget v5, p0, Lp4;->j:I

    .line 32
    and-int/2addr v5, v1

    .line 33
    or-int/2addr v5, v3

    .line 34
    iput v5, p0, Lp4;->j:I

    .line 36
    :cond_0
    sget v5, Ll90;->g2:I

    .line 38
    invoke-virtual {p2, v5}, Lih0;->p(I)Z

    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    if-nez v6, :cond_6

    .line 45
    sget v6, Ll90;->i2:I

    .line 47
    invoke-virtual {p2, v6}, Lih0;->p(I)Z

    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget p1, Ll90;->b2:I

    .line 56
    invoke-virtual {p2, p1}, Lih0;->p(I)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_5

    .line 62
    iput-boolean v3, p0, Lp4;->m:Z

    .line 64
    invoke-virtual {p2, p1, v7}, Lih0;->i(II)I

    .line 67
    move-result p1

    .line 68
    if-eq p1, v7, :cond_4

    .line 70
    if-eq p1, v1, :cond_3

    .line 72
    const/4 p2, 0x3

    .line 73
    if-eq p1, p2, :cond_2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 78
    iput-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 83
    iput-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 88
    iput-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 90
    :cond_5
    :goto_0
    return-void

    .line 91
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 92
    iput-object v6, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 94
    sget v6, Ll90;->i2:I

    .line 96
    invoke-virtual {p2, v6}, Lih0;->p(I)Z

    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_7

    .line 102
    move v5, v6

    .line 103
    :cond_7
    iget v6, p0, Lp4;->k:I

    .line 105
    iget v8, p0, Lp4;->j:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_c

    .line 113
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 115
    iget-object v9, p0, Lp4;->a:Landroid/widget/TextView;

    .line 117
    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 120
    new-instance v9, Lp4$a;

    .line 122
    invoke-direct {v9, p0, v6, v8, p1}, Lp4$a;-><init>(Lp4;IILjava/lang/ref/WeakReference;)V

    .line 125
    :try_start_0
    iget p1, p0, Lp4;->j:I

    .line 127
    invoke-virtual {p2, v5, p1, v9}, Lih0;->h(IILya0$c;)Landroid/graphics/Typeface;

    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_a

    .line 133
    if-lt v0, v4, :cond_9

    .line 135
    iget v0, p0, Lp4;->k:I

    .line 137
    if-eq v0, v2, :cond_9

    .line 139
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 142
    move-result-object p1

    .line 143
    iget v0, p0, Lp4;->k:I

    .line 145
    iget v6, p0, Lp4;->j:I

    .line 147
    and-int/2addr v6, v1

    .line 148
    if-eqz v6, :cond_8

    .line 150
    const/4 v6, 0x1

    .line 151
    goto :goto_2

    .line 152
    :cond_8
    const/4 v6, 0x0

    .line 153
    :goto_2
    invoke-static {p1, v0, v6}, Lo4;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 159
    goto :goto_3

    .line 160
    :cond_9
    iput-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 162
    :cond_a
    :goto_3
    iget-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 164
    if-nez p1, :cond_b

    .line 166
    const/4 p1, 0x1

    .line 167
    goto :goto_4

    .line 168
    :cond_b
    const/4 p1, 0x0

    .line 169
    :goto_4
    iput-boolean p1, p0, Lp4;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_5

    .line 172
    :catch_0
    nop

    .line 173
    :cond_c
    :goto_5
    iget-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 175
    if-nez p1, :cond_f

    .line 177
    invoke-virtual {p2, v5}, Lih0;->m(I)Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_f

    .line 183
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 185
    if-lt p2, v4, :cond_e

    .line 187
    iget p2, p0, Lp4;->k:I

    .line 189
    if-eq p2, v2, :cond_e

    .line 191
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 194
    move-result-object p1

    .line 195
    iget p2, p0, Lp4;->k:I

    .line 197
    iget v0, p0, Lp4;->j:I

    .line 199
    and-int/2addr v0, v1

    .line 200
    if-eqz v0, :cond_d

    .line 202
    const/4 v3, 0x1

    .line 203
    :cond_d
    invoke-static {p1, p2, v3}, Lo4;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 209
    goto :goto_6

    .line 210
    :cond_e
    iget p2, p0, Lp4;->j:I

    .line 212
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 218
    :cond_f
    :goto_6
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Lgh0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lp4;->a:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Lu3;->g(Landroid/graphics/drawable/Drawable;Lgh0;[I)V

    .line 14
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp4;->b:Lgh0;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lp4;->c:Lgh0;

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lp4;->d:Lgh0;

    .line 13
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lp4;->e:Lgh0;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    :cond_0
    iget-object v0, p0, Lp4;->a:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v0

    .line 25
    aget-object v3, v0, v2

    .line 27
    iget-object v4, p0, Lp4;->b:Lgh0;

    .line 29
    invoke-virtual {p0, v3, v4}, Lp4;->a(Landroid/graphics/drawable/Drawable;Lgh0;)V

    .line 32
    const/4 v3, 0x1

    .line 33
    aget-object v3, v0, v3

    .line 35
    iget-object v4, p0, Lp4;->c:Lgh0;

    .line 37
    invoke-virtual {p0, v3, v4}, Lp4;->a(Landroid/graphics/drawable/Drawable;Lgh0;)V

    .line 40
    aget-object v3, v0, v1

    .line 42
    iget-object v4, p0, Lp4;->d:Lgh0;

    .line 44
    invoke-virtual {p0, v3, v4}, Lp4;->a(Landroid/graphics/drawable/Drawable;Lgh0;)V

    .line 47
    const/4 v3, 0x3

    .line 48
    aget-object v0, v0, v3

    .line 50
    iget-object v3, p0, Lp4;->e:Lgh0;

    .line 52
    invoke-virtual {p0, v0, v3}, Lp4;->a(Landroid/graphics/drawable/Drawable;Lgh0;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lp4;->f:Lgh0;

    .line 57
    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lp4;->g:Lgh0;

    .line 61
    if-eqz v0, :cond_3

    .line 63
    :cond_2
    iget-object v0, p0, Lp4;->a:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 71
    iget-object v3, p0, Lp4;->f:Lgh0;

    .line 73
    invoke-virtual {p0, v2, v3}, Lp4;->a(Landroid/graphics/drawable/Drawable;Lgh0;)V

    .line 76
    aget-object v0, v0, v1

    .line 78
    iget-object v1, p0, Lp4;->g:Lgh0;

    .line 80
    invoke-virtual {p0, v0, v1}, Lp4;->a(Landroid/graphics/drawable/Drawable;Lgh0;)V

    .line 83
    :cond_3
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0}, Lc5;->a()V

    .line 6
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0}, Lc5;->h()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0}, Lc5;->i()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0}, Lc5;->j()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0}, Lc5;->k()[I

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0}, Lc5;->l()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->h:Lgh0;

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

.method public k()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->h:Lgh0;

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

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0}, Lc5;->p()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m(Landroid/util/AttributeSet;I)V
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    move/from16 v9, p2

    .line 7
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v10

    .line 13
    invoke-static {}, Lu3;->b()Lu3;

    .line 16
    move-result-object v11

    .line 17
    sget-object v2, Ll90;->M:[I

    .line 19
    const/4 v12, 0x0

    .line 20
    invoke-static {v10, v8, v2, v9, v12}, Lih0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lih0;

    .line 23
    move-result-object v13

    .line 24
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v13}, Lih0;->o()Landroid/content/res/TypedArray;

    .line 33
    move-result-object v4

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object/from16 v3, p1

    .line 37
    move/from16 v5, p2

    .line 39
    invoke-static/range {v0 .. v6}, Lzk0;->y(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 42
    sget v0, Ll90;->N:I

    .line 44
    const/4 v14, -0x1

    .line 45
    invoke-virtual {v13, v0, v14}, Lih0;->l(II)I

    .line 48
    move-result v0

    .line 49
    sget v1, Ll90;->Q:I

    .line 51
    invoke-virtual {v13, v1}, Lih0;->p(I)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v13, v1, v12}, Lih0;->l(II)I

    .line 60
    move-result v1

    .line 61
    invoke-static {v10, v11, v1}, Lp4;->d(Landroid/content/Context;Lu3;I)Lgh0;

    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v7, Lp4;->b:Lgh0;

    .line 67
    :cond_0
    sget v1, Ll90;->O:I

    .line 69
    invoke-virtual {v13, v1}, Lih0;->p(I)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v13, v1, v12}, Lih0;->l(II)I

    .line 78
    move-result v1

    .line 79
    invoke-static {v10, v11, v1}, Lp4;->d(Landroid/content/Context;Lu3;I)Lgh0;

    .line 82
    move-result-object v1

    .line 83
    iput-object v1, v7, Lp4;->c:Lgh0;

    .line 85
    :cond_1
    sget v1, Ll90;->R:I

    .line 87
    invoke-virtual {v13, v1}, Lih0;->p(I)Z

    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v13, v1, v12}, Lih0;->l(II)I

    .line 96
    move-result v1

    .line 97
    invoke-static {v10, v11, v1}, Lp4;->d(Landroid/content/Context;Lu3;I)Lgh0;

    .line 100
    move-result-object v1

    .line 101
    iput-object v1, v7, Lp4;->d:Lgh0;

    .line 103
    :cond_2
    sget v1, Ll90;->P:I

    .line 105
    invoke-virtual {v13, v1}, Lih0;->p(I)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v13, v1, v12}, Lih0;->l(II)I

    .line 114
    move-result v1

    .line 115
    invoke-static {v10, v11, v1}, Lp4;->d(Landroid/content/Context;Lu3;I)Lgh0;

    .line 118
    move-result-object v1

    .line 119
    iput-object v1, v7, Lp4;->e:Lgh0;

    .line 121
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    sget v2, Ll90;->S:I

    .line 125
    invoke-virtual {v13, v2}, Lih0;->p(I)Z

    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_4

    .line 131
    invoke-virtual {v13, v2, v12}, Lih0;->l(II)I

    .line 134
    move-result v2

    .line 135
    invoke-static {v10, v11, v2}, Lp4;->d(Landroid/content/Context;Lu3;I)Lgh0;

    .line 138
    move-result-object v2

    .line 139
    iput-object v2, v7, Lp4;->f:Lgh0;

    .line 141
    :cond_4
    sget v2, Ll90;->T:I

    .line 143
    invoke-virtual {v13, v2}, Lih0;->p(I)Z

    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {v13, v2, v12}, Lih0;->l(II)I

    .line 152
    move-result v2

    .line 153
    invoke-static {v10, v11, v2}, Lp4;->d(Landroid/content/Context;Lu3;I)Lgh0;

    .line 156
    move-result-object v2

    .line 157
    iput-object v2, v7, Lp4;->g:Lgh0;

    .line 159
    :cond_5
    invoke-virtual {v13}, Lih0;->t()V

    .line 162
    iget-object v2, v7, Lp4;->a:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 167
    move-result-object v2

    .line 168
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 170
    const/16 v3, 0x1a

    .line 172
    const/16 v5, 0x17

    .line 174
    if-eq v0, v14, :cond_d

    .line 176
    sget-object v6, Ll90;->Z1:[I

    .line 178
    invoke-static {v10, v0, v6}, Lih0;->q(Landroid/content/Context;I[I)Lih0;

    .line 181
    move-result-object v0

    .line 182
    if-nez v2, :cond_6

    .line 184
    sget v6, Ll90;->k2:I

    .line 186
    invoke-virtual {v0, v6}, Lih0;->p(I)Z

    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_6

    .line 192
    invoke-virtual {v0, v6, v12}, Lih0;->a(IZ)Z

    .line 195
    move-result v6

    .line 196
    const/4 v15, 0x1

    .line 197
    goto :goto_0

    .line 198
    :cond_6
    const/4 v6, 0x0

    .line 199
    const/4 v15, 0x0

    .line 200
    :goto_0
    invoke-virtual {v7, v10, v0}, Lp4;->B(Landroid/content/Context;Lih0;)V

    .line 203
    if-ge v1, v5, :cond_9

    .line 205
    sget v4, Ll90;->d2:I

    .line 207
    invoke-virtual {v0, v4}, Lih0;->p(I)Z

    .line 210
    move-result v17

    .line 211
    if-eqz v17, :cond_7

    .line 213
    invoke-virtual {v0, v4}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 216
    move-result-object v4

    .line 217
    goto :goto_1

    .line 218
    :cond_7
    const/4 v4, 0x0

    .line 219
    :goto_1
    sget v13, Ll90;->e2:I

    .line 221
    invoke-virtual {v0, v13}, Lih0;->p(I)Z

    .line 224
    move-result v18

    .line 225
    if-eqz v18, :cond_8

    .line 227
    invoke-virtual {v0, v13}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 230
    move-result-object v13

    .line 231
    goto :goto_2

    .line 232
    :cond_8
    const/4 v13, 0x0

    .line 233
    :goto_2
    sget v14, Ll90;->f2:I

    .line 235
    invoke-virtual {v0, v14}, Lih0;->p(I)Z

    .line 238
    move-result v19

    .line 239
    if-eqz v19, :cond_a

    .line 241
    invoke-virtual {v0, v14}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 244
    move-result-object v14

    .line 245
    goto :goto_3

    .line 246
    :cond_9
    const/4 v4, 0x0

    .line 247
    const/4 v13, 0x0

    .line 248
    :cond_a
    const/4 v14, 0x0

    .line 249
    :goto_3
    sget v5, Ll90;->l2:I

    .line 251
    invoke-virtual {v0, v5}, Lih0;->p(I)Z

    .line 254
    move-result v20

    .line 255
    if-eqz v20, :cond_b

    .line 257
    invoke-virtual {v0, v5}, Lih0;->m(I)Ljava/lang/String;

    .line 260
    move-result-object v5

    .line 261
    goto :goto_4

    .line 262
    :cond_b
    const/4 v5, 0x0

    .line 263
    :goto_4
    if-lt v1, v3, :cond_c

    .line 265
    sget v3, Ll90;->j2:I

    .line 267
    invoke-virtual {v0, v3}, Lih0;->p(I)Z

    .line 270
    move-result v21

    .line 271
    if-eqz v21, :cond_c

    .line 273
    invoke-virtual {v0, v3}, Lih0;->m(I)Ljava/lang/String;

    .line 276
    move-result-object v3

    .line 277
    goto :goto_5

    .line 278
    :cond_c
    const/4 v3, 0x0

    .line 279
    :goto_5
    invoke-virtual {v0}, Lih0;->t()V

    .line 282
    goto :goto_6

    .line 283
    :cond_d
    const/4 v3, 0x0

    .line 284
    const/4 v4, 0x0

    .line 285
    const/4 v5, 0x0

    .line 286
    const/4 v6, 0x0

    .line 287
    const/4 v13, 0x0

    .line 288
    const/4 v14, 0x0

    .line 289
    const/4 v15, 0x0

    .line 290
    :goto_6
    sget-object v0, Ll90;->Z1:[I

    .line 292
    invoke-static {v10, v8, v0, v9, v12}, Lih0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lih0;

    .line 295
    move-result-object v0

    .line 296
    if-nez v2, :cond_e

    .line 298
    sget v12, Ll90;->k2:I

    .line 300
    invoke-virtual {v0, v12}, Lih0;->p(I)Z

    .line 303
    move-result v22

    .line 304
    if-eqz v22, :cond_e

    .line 306
    move-object/from16 v22, v3

    .line 308
    const/4 v3, 0x0

    .line 309
    invoke-virtual {v0, v12, v3}, Lih0;->a(IZ)Z

    .line 312
    move-result v6

    .line 313
    const/16 v3, 0x17

    .line 315
    const/4 v15, 0x1

    .line 316
    goto :goto_7

    .line 317
    :cond_e
    move-object/from16 v22, v3

    .line 319
    const/16 v3, 0x17

    .line 321
    :goto_7
    if-ge v1, v3, :cond_11

    .line 323
    sget v3, Ll90;->d2:I

    .line 325
    invoke-virtual {v0, v3}, Lih0;->p(I)Z

    .line 328
    move-result v12

    .line 329
    if-eqz v12, :cond_f

    .line 331
    invoke-virtual {v0, v3}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 334
    move-result-object v4

    .line 335
    :cond_f
    sget v3, Ll90;->e2:I

    .line 337
    invoke-virtual {v0, v3}, Lih0;->p(I)Z

    .line 340
    move-result v12

    .line 341
    if-eqz v12, :cond_10

    .line 343
    invoke-virtual {v0, v3}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 346
    move-result-object v13

    .line 347
    :cond_10
    sget v3, Ll90;->f2:I

    .line 349
    invoke-virtual {v0, v3}, Lih0;->p(I)Z

    .line 352
    move-result v12

    .line 353
    if-eqz v12, :cond_11

    .line 355
    invoke-virtual {v0, v3}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 358
    move-result-object v14

    .line 359
    :cond_11
    sget v3, Ll90;->l2:I

    .line 361
    invoke-virtual {v0, v3}, Lih0;->p(I)Z

    .line 364
    move-result v12

    .line 365
    if-eqz v12, :cond_12

    .line 367
    invoke-virtual {v0, v3}, Lih0;->m(I)Ljava/lang/String;

    .line 370
    move-result-object v5

    .line 371
    :cond_12
    const/16 v3, 0x1a

    .line 373
    if-lt v1, v3, :cond_13

    .line 375
    sget v3, Ll90;->j2:I

    .line 377
    invoke-virtual {v0, v3}, Lih0;->p(I)Z

    .line 380
    move-result v12

    .line 381
    if-eqz v12, :cond_13

    .line 383
    invoke-virtual {v0, v3}, Lih0;->m(I)Ljava/lang/String;

    .line 386
    move-result-object v3

    .line 387
    goto :goto_8

    .line 388
    :cond_13
    move-object/from16 v3, v22

    .line 390
    :goto_8
    const/16 v12, 0x1c

    .line 392
    if-lt v1, v12, :cond_14

    .line 394
    sget v12, Ll90;->a2:I

    .line 396
    invoke-virtual {v0, v12}, Lih0;->p(I)Z

    .line 399
    move-result v16

    .line 400
    if-eqz v16, :cond_14

    .line 402
    move-object/from16 v16, v11

    .line 404
    const/4 v11, -0x1

    .line 405
    invoke-virtual {v0, v12, v11}, Lih0;->e(II)I

    .line 408
    move-result v12

    .line 409
    if-nez v12, :cond_15

    .line 411
    iget-object v11, v7, Lp4;->a:Landroid/widget/TextView;

    .line 413
    const/4 v12, 0x0

    .line 414
    const/4 v8, 0x0

    .line 415
    invoke-virtual {v11, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    goto :goto_9

    .line 419
    :cond_14
    move-object/from16 v16, v11

    .line 421
    :cond_15
    :goto_9
    invoke-virtual {v7, v10, v0}, Lp4;->B(Landroid/content/Context;Lih0;)V

    .line 424
    invoke-virtual {v0}, Lih0;->t()V

    .line 427
    if-eqz v4, :cond_16

    .line 429
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 431
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 434
    :cond_16
    if-eqz v13, :cond_17

    .line 436
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 438
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 441
    :cond_17
    if-eqz v14, :cond_18

    .line 443
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 445
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 448
    :cond_18
    if-nez v2, :cond_19

    .line 450
    if-eqz v15, :cond_19

    .line 452
    invoke-virtual {v7, v6}, Lp4;->r(Z)V

    .line 455
    :cond_19
    iget-object v0, v7, Lp4;->l:Landroid/graphics/Typeface;

    .line 457
    if-eqz v0, :cond_1b

    .line 459
    iget v2, v7, Lp4;->k:I

    .line 461
    const/4 v4, -0x1

    .line 462
    if-ne v2, v4, :cond_1a

    .line 464
    iget-object v2, v7, Lp4;->a:Landroid/widget/TextView;

    .line 466
    iget v4, v7, Lp4;->j:I

    .line 468
    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 471
    goto :goto_a

    .line 472
    :cond_1a
    iget-object v2, v7, Lp4;->a:Landroid/widget/TextView;

    .line 474
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 477
    :cond_1b
    :goto_a
    if-eqz v3, :cond_1c

    .line 479
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 481
    invoke-static {v0, v3}, Li4;->a(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 484
    :cond_1c
    if-eqz v5, :cond_1e

    .line 486
    const/16 v0, 0x18

    .line 488
    if-lt v1, v0, :cond_1d

    .line 490
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 492
    invoke-static {v5}, Lj4;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 495
    move-result-object v1

    .line 496
    invoke-static {v0, v1}, Lk4;->a(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 499
    goto :goto_b

    .line 500
    :cond_1d
    const/16 v0, 0x2c

    .line 502
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    .line 505
    move-result v0

    .line 506
    const/4 v1, 0x0

    .line 507
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 510
    move-result-object v0

    .line 511
    iget-object v1, v7, Lp4;->a:Landroid/widget/TextView;

    .line 513
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 520
    :cond_1e
    :goto_b
    iget-object v0, v7, Lp4;->i:Lc5;

    .line 522
    move-object/from16 v1, p1

    .line 524
    invoke-virtual {v0, v1, v9}, Lc5;->q(Landroid/util/AttributeSet;I)V

    .line 527
    sget-boolean v0, Lya;->N:Z

    .line 529
    if-eqz v0, :cond_20

    .line 531
    iget-object v0, v7, Lp4;->i:Lc5;

    .line 533
    invoke-virtual {v0}, Lc5;->l()I

    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_20

    .line 539
    iget-object v0, v7, Lp4;->i:Lc5;

    .line 541
    invoke-virtual {v0}, Lc5;->k()[I

    .line 544
    move-result-object v0

    .line 545
    array-length v2, v0

    .line 546
    if-lez v2, :cond_20

    .line 548
    iget-object v2, v7, Lp4;->a:Landroid/widget/TextView;

    .line 550
    invoke-static {v2}, Ll4;->a(Landroid/widget/TextView;)I

    .line 553
    move-result v2

    .line 554
    int-to-float v2, v2

    .line 555
    const/high16 v3, -0x40800000    # -1.0f

    .line 557
    cmpl-float v2, v2, v3

    .line 559
    if-eqz v2, :cond_1f

    .line 561
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 563
    iget-object v2, v7, Lp4;->i:Lc5;

    .line 565
    invoke-virtual {v2}, Lc5;->i()I

    .line 568
    move-result v2

    .line 569
    iget-object v3, v7, Lp4;->i:Lc5;

    .line 571
    invoke-virtual {v3}, Lc5;->h()I

    .line 574
    move-result v3

    .line 575
    iget-object v4, v7, Lp4;->i:Lc5;

    .line 577
    invoke-virtual {v4}, Lc5;->j()I

    .line 580
    move-result v4

    .line 581
    const/4 v5, 0x0

    .line 582
    invoke-static {v0, v2, v3, v4, v5}, Lm4;->a(Landroid/widget/TextView;IIII)V

    .line 585
    goto :goto_c

    .line 586
    :cond_1f
    const/4 v5, 0x0

    .line 587
    iget-object v2, v7, Lp4;->a:Landroid/widget/TextView;

    .line 589
    invoke-static {v2, v0, v5}, Ln4;->a(Landroid/widget/TextView;[II)V

    .line 592
    :cond_20
    :goto_c
    sget-object v0, Ll90;->U:[I

    .line 594
    invoke-static {v10, v1, v0}, Lih0;->r(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lih0;

    .line 597
    move-result-object v8

    .line 598
    sget v0, Ll90;->c0:I

    .line 600
    const/4 v1, -0x1

    .line 601
    invoke-virtual {v8, v0, v1}, Lih0;->l(II)I

    .line 604
    move-result v0

    .line 605
    move-object/from16 v2, v16

    .line 607
    if-eq v0, v1, :cond_21

    .line 609
    invoke-virtual {v2, v10, v0}, Lu3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 612
    move-result-object v0

    .line 613
    move-object v3, v0

    .line 614
    goto :goto_d

    .line 615
    :cond_21
    const/4 v3, 0x0

    .line 616
    :goto_d
    sget v0, Ll90;->h0:I

    .line 618
    invoke-virtual {v8, v0, v1}, Lih0;->l(II)I

    .line 621
    move-result v0

    .line 622
    if-eq v0, v1, :cond_22

    .line 624
    invoke-virtual {v2, v10, v0}, Lu3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 627
    move-result-object v0

    .line 628
    move-object v4, v0

    .line 629
    goto :goto_e

    .line 630
    :cond_22
    const/4 v4, 0x0

    .line 631
    :goto_e
    sget v0, Ll90;->d0:I

    .line 633
    invoke-virtual {v8, v0, v1}, Lih0;->l(II)I

    .line 636
    move-result v0

    .line 637
    if-eq v0, v1, :cond_23

    .line 639
    invoke-virtual {v2, v10, v0}, Lu3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 642
    move-result-object v0

    .line 643
    move-object v5, v0

    .line 644
    goto :goto_f

    .line 645
    :cond_23
    const/4 v5, 0x0

    .line 646
    :goto_f
    sget v0, Ll90;->a0:I

    .line 648
    invoke-virtual {v8, v0, v1}, Lih0;->l(II)I

    .line 651
    move-result v0

    .line 652
    if-eq v0, v1, :cond_24

    .line 654
    invoke-virtual {v2, v10, v0}, Lu3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 657
    move-result-object v0

    .line 658
    move-object v6, v0

    .line 659
    goto :goto_10

    .line 660
    :cond_24
    const/4 v6, 0x0

    .line 661
    :goto_10
    sget v0, Ll90;->e0:I

    .line 663
    invoke-virtual {v8, v0, v1}, Lih0;->l(II)I

    .line 666
    move-result v0

    .line 667
    if-eq v0, v1, :cond_25

    .line 669
    invoke-virtual {v2, v10, v0}, Lu3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 672
    move-result-object v0

    .line 673
    move-object v9, v0

    .line 674
    goto :goto_11

    .line 675
    :cond_25
    const/4 v9, 0x0

    .line 676
    :goto_11
    sget v0, Ll90;->b0:I

    .line 678
    invoke-virtual {v8, v0, v1}, Lih0;->l(II)I

    .line 681
    move-result v0

    .line 682
    if-eq v0, v1, :cond_26

    .line 684
    invoke-virtual {v2, v10, v0}, Lu3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 687
    move-result-object v0

    .line 688
    move-object v10, v0

    .line 689
    goto :goto_12

    .line 690
    :cond_26
    const/4 v10, 0x0

    .line 691
    :goto_12
    move-object/from16 v0, p0

    .line 693
    move-object v1, v3

    .line 694
    move-object v2, v4

    .line 695
    move-object v3, v5

    .line 696
    move-object v4, v6

    .line 697
    move-object v5, v9

    .line 698
    move-object v6, v10

    .line 699
    invoke-virtual/range {v0 .. v6}, Lp4;->x(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 702
    sget v0, Ll90;->f0:I

    .line 704
    invoke-virtual {v8, v0}, Lih0;->p(I)Z

    .line 707
    move-result v1

    .line 708
    if-eqz v1, :cond_27

    .line 710
    invoke-virtual {v8, v0}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 713
    move-result-object v0

    .line 714
    iget-object v1, v7, Lp4;->a:Landroid/widget/TextView;

    .line 716
    invoke-static {v1, v0}, Lwg0;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 719
    :cond_27
    sget v0, Ll90;->g0:I

    .line 721
    invoke-virtual {v8, v0}, Lih0;->p(I)Z

    .line 724
    move-result v1

    .line 725
    if-eqz v1, :cond_28

    .line 727
    const/4 v1, -0x1

    .line 728
    invoke-virtual {v8, v0, v1}, Lih0;->i(II)I

    .line 731
    move-result v0

    .line 732
    const/4 v2, 0x0

    .line 733
    invoke-static {v0, v2}, Lik;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 736
    move-result-object v0

    .line 737
    iget-object v2, v7, Lp4;->a:Landroid/widget/TextView;

    .line 739
    invoke-static {v2, v0}, Lwg0;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 742
    goto :goto_13

    .line 743
    :cond_28
    const/4 v1, -0x1

    .line 744
    :goto_13
    sget v0, Ll90;->i0:I

    .line 746
    invoke-virtual {v8, v0, v1}, Lih0;->e(II)I

    .line 749
    move-result v0

    .line 750
    sget v2, Ll90;->j0:I

    .line 752
    invoke-virtual {v8, v2, v1}, Lih0;->e(II)I

    .line 755
    move-result v2

    .line 756
    sget v3, Ll90;->k0:I

    .line 758
    invoke-virtual {v8, v3, v1}, Lih0;->e(II)I

    .line 761
    move-result v3

    .line 762
    invoke-virtual {v8}, Lih0;->t()V

    .line 765
    if-eq v0, v1, :cond_29

    .line 767
    iget-object v4, v7, Lp4;->a:Landroid/widget/TextView;

    .line 769
    invoke-static {v4, v0}, Lwg0;->h(Landroid/widget/TextView;I)V

    .line 772
    :cond_29
    if-eq v2, v1, :cond_2a

    .line 774
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 776
    invoke-static {v0, v2}, Lwg0;->i(Landroid/widget/TextView;I)V

    .line 779
    :cond_2a
    if-eq v3, v1, :cond_2b

    .line 781
    iget-object v0, v7, Lp4;->a:Landroid/widget/TextView;

    .line 783
    invoke-static {v0, v3}, Lwg0;->j(Landroid/widget/TextView;I)V

    .line 786
    :cond_2b
    return-void
.end method

.method public n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp4;->m:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iput-object p2, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget v0, p0, Lp4;->j:I

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 20
    :cond_0
    return-void
.end method

.method public o(ZIIII)V
    .locals 0

    .line 1
    sget-boolean p1, Lya;->N:Z

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lp4;->c()V

    .line 8
    :cond_0
    return-void
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp4;->b()V

    .line 4
    return-void
.end method

.method public q(Landroid/content/Context;I)V
    .locals 4

    .line 1
    sget-object v0, Ll90;->Z1:[I

    .line 3
    invoke-static {p1, p2, v0}, Lih0;->q(Landroid/content/Context;I[I)Lih0;

    .line 6
    move-result-object p2

    .line 7
    sget v0, Ll90;->k2:I

    .line 9
    invoke-virtual {p2, v0}, Lih0;->p(I)Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p2, v0, v2}, Lih0;->a(IZ)Z

    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lp4;->r(Z)V

    .line 23
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    const/16 v1, 0x17

    .line 27
    if-ge v0, v1, :cond_1

    .line 29
    sget v1, Ll90;->d2:I

    .line 31
    invoke-virtual {p2, v1}, Lih0;->p(I)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {p2, v1}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 43
    iget-object v3, p0, Lp4;->a:Landroid/widget/TextView;

    .line 45
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_1
    sget v1, Ll90;->a2:I

    .line 50
    invoke-virtual {p2, v1}, Lih0;->p(I)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 56
    const/4 v3, -0x1

    .line 57
    invoke-virtual {p2, v1, v3}, Lih0;->e(II)I

    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 63
    iget-object v1, p0, Lp4;->a:Landroid/widget/TextView;

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    :cond_2
    invoke-virtual {p0, p1, p2}, Lp4;->B(Landroid/content/Context;Lih0;)V

    .line 72
    const/16 p1, 0x1a

    .line 74
    if-lt v0, p1, :cond_3

    .line 76
    sget p1, Ll90;->j2:I

    .line 78
    invoke-virtual {p2, p1}, Lih0;->p(I)Z

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p2, p1}, Lih0;->m(I)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_3

    .line 90
    iget-object v0, p0, Lp4;->a:Landroid/widget/TextView;

    .line 92
    invoke-static {v0, p1}, Li4;->a(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 95
    :cond_3
    invoke-virtual {p2}, Lih0;->t()V

    .line 98
    iget-object p1, p0, Lp4;->l:Landroid/graphics/Typeface;

    .line 100
    if-eqz p1, :cond_4

    .line 102
    iget-object p2, p0, Lp4;->a:Landroid/widget/TextView;

    .line 104
    iget v0, p0, Lp4;->j:I

    .line 106
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 109
    :cond_4
    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->a:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 6
    return-void
.end method

.method public s(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lc5;->r(IIII)V

    .line 6
    return-void
.end method

.method public t([II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0, p1, p2}, Lc5;->s([II)V

    .line 6
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->i:Lc5;

    .line 3
    invoke-virtual {v0, p1}, Lc5;->t(I)V

    .line 6
    return-void
.end method

.method public v(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->h:Lgh0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lgh0;

    .line 7
    invoke-direct {v0}, Lgh0;-><init>()V

    .line 10
    iput-object v0, p0, Lp4;->h:Lgh0;

    .line 12
    :cond_0
    iget-object v0, p0, Lp4;->h:Lgh0;

    .line 14
    iput-object p1, v0, Lgh0;->a:Landroid/content/res/ColorStateList;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lgh0;->d:Z

    .line 23
    invoke-virtual {p0}, Lp4;->y()V

    .line 26
    return-void
.end method

.method public w(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->h:Lgh0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lgh0;

    .line 7
    invoke-direct {v0}, Lgh0;-><init>()V

    .line 10
    iput-object v0, p0, Lp4;->h:Lgh0;

    .line 12
    :cond_0
    iget-object v0, p0, Lp4;->h:Lgh0;

    .line 14
    iput-object p1, v0, Lgh0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lgh0;->c:Z

    .line 23
    invoke-virtual {p0}, Lp4;->y()V

    .line 26
    return-void
.end method

.method public final x(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    if-nez p5, :cond_a

    .line 7
    if-eqz p6, :cond_0

    .line 9
    goto :goto_7

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 12
    if-nez p2, :cond_1

    .line 14
    if-nez p3, :cond_1

    .line 16
    if-eqz p4, :cond_f

    .line 18
    :cond_1
    iget-object p5, p0, Lp4;->a:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p5

    .line 24
    aget-object p6, p5, v2

    .line 26
    if-nez p6, :cond_7

    .line 28
    aget-object v4, p5, v3

    .line 30
    if-eqz v4, :cond_2

    .line 32
    goto :goto_4

    .line 33
    :cond_2
    iget-object p5, p0, Lp4;->a:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p5

    .line 39
    iget-object p6, p0, Lp4;->a:Landroid/widget/TextView;

    .line 41
    if-eqz p1, :cond_3

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    aget-object p1, p5, v2

    .line 46
    :goto_0
    if-eqz p2, :cond_4

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    aget-object p2, p5, v1

    .line 51
    :goto_1
    if-eqz p3, :cond_5

    .line 53
    goto :goto_2

    .line 54
    :cond_5
    aget-object p3, p5, v3

    .line 56
    :goto_2
    if-eqz p4, :cond_6

    .line 58
    goto :goto_3

    .line 59
    :cond_6
    aget-object p4, p5, v0

    .line 61
    :goto_3
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 64
    goto :goto_c

    .line 65
    :cond_7
    :goto_4
    iget-object p1, p0, Lp4;->a:Landroid/widget/TextView;

    .line 67
    if-eqz p2, :cond_8

    .line 69
    goto :goto_5

    .line 70
    :cond_8
    aget-object p2, p5, v1

    .line 72
    :goto_5
    aget-object p3, p5, v3

    .line 74
    if-eqz p4, :cond_9

    .line 76
    goto :goto_6

    .line 77
    :cond_9
    aget-object p4, p5, v0

    .line 79
    :goto_6
    invoke-virtual {p1, p6, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void

    .line 83
    :cond_a
    :goto_7
    iget-object p1, p0, Lp4;->a:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 88
    move-result-object p1

    .line 89
    iget-object p3, p0, Lp4;->a:Landroid/widget/TextView;

    .line 91
    if-eqz p5, :cond_b

    .line 93
    goto :goto_8

    .line 94
    :cond_b
    aget-object p5, p1, v2

    .line 96
    :goto_8
    if-eqz p2, :cond_c

    .line 98
    goto :goto_9

    .line 99
    :cond_c
    aget-object p2, p1, v1

    .line 101
    :goto_9
    if-eqz p6, :cond_d

    .line 103
    goto :goto_a

    .line 104
    :cond_d
    aget-object p6, p1, v3

    .line 106
    :goto_a
    if-eqz p4, :cond_e

    .line 108
    goto :goto_b

    .line 109
    :cond_e
    aget-object p4, p1, v0

    .line 111
    :goto_b
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_f
    :goto_c
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4;->h:Lgh0;

    .line 3
    iput-object v0, p0, Lp4;->b:Lgh0;

    .line 5
    iput-object v0, p0, Lp4;->c:Lgh0;

    .line 7
    iput-object v0, p0, Lp4;->d:Lgh0;

    .line 9
    iput-object v0, p0, Lp4;->e:Lgh0;

    .line 11
    iput-object v0, p0, Lp4;->f:Lgh0;

    .line 13
    iput-object v0, p0, Lp4;->g:Lgh0;

    .line 15
    return-void
.end method

.method public z(IF)V
    .locals 1

    .line 1
    sget-boolean v0, Lya;->N:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lp4;->l()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0, p1, p2}, Lp4;->A(IF)V

    .line 14
    :cond_0
    return-void
.end method
