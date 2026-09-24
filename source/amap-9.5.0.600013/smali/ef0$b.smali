.class public Lef0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lef0;

.field public a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lef0;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lef0$b;->E:Lef0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lef0$b;->C:Landroid/content/res/ColorStateList;

    .line 9
    iput-object p1, p0, Lef0$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iput-object p2, p0, Lef0$b;->a:Landroid/view/Menu;

    .line 13
    invoke-virtual {p0}, Lef0$b;->h()V

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lef0$b;->h:Z

    .line 4
    iget-object v0, p0, Lef0$b;->a:Landroid/view/Menu;

    .line 6
    iget v1, p0, Lef0$b;->b:I

    .line 8
    iget v2, p0, Lef0$b;->i:I

    .line 10
    iget v3, p0, Lef0$b;->j:I

    .line 12
    iget-object v4, p0, Lef0$b;->k:Ljava/lang/CharSequence;

    .line 14
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lef0$b;->i(Landroid/view/MenuItem;)V

    .line 21
    return-void
.end method

.method public b()Landroid/view/SubMenu;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lef0$b;->h:Z

    .line 4
    iget-object v0, p0, Lef0$b;->a:Landroid/view/Menu;

    .line 6
    iget v1, p0, Lef0$b;->b:I

    .line 8
    iget v2, p0, Lef0$b;->i:I

    .line 10
    iget v3, p0, Lef0$b;->j:I

    .line 12
    iget-object v4, p0, Lef0$b;->k:Ljava/lang/CharSequence;

    .line 14
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Lef0$b;->i(Landroid/view/MenuItem;)V

    .line 25
    return-object v0
.end method

.method public final c(Ljava/lang/String;)C
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lef0$b;->h:Z

    .line 3
    return v0
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lef0$b;->E:Lef0;

    .line 3
    iget-object v0, v0, Lef0;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v0, "Cannot instantiate class: "

    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p3, "SupportMenuInflater"

    .line 47
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public f(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lef0$b;->E:Lef0;

    .line 3
    iget-object v0, v0, Lef0;->c:Landroid/content/Context;

    .line 5
    sget-object v1, Ll90;->M0:[I

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    sget v0, Ll90;->O0:I

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lef0$b;->b:I

    .line 20
    sget v0, Ll90;->Q0:I

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lef0$b;->c:I

    .line 28
    sget v0, Ll90;->R0:I

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lef0$b;->d:I

    .line 36
    sget v0, Ll90;->S0:I

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lef0$b;->e:I

    .line 44
    sget v0, Ll90;->P0:I

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 50
    move-result v0

    .line 51
    iput-boolean v0, p0, Lef0$b;->f:Z

    .line 53
    sget v0, Ll90;->N0:I

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 58
    move-result v0

    .line 59
    iput-boolean v0, p0, Lef0$b;->g:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method public g(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lef0$b;->E:Lef0;

    .line 3
    iget-object v0, v0, Lef0;->c:Landroid/content/Context;

    .line 5
    sget-object v1, Ll90;->T0:[I

    .line 7
    invoke-static {v0, p1, v1}, Lih0;->r(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lih0;

    .line 10
    move-result-object p1

    .line 11
    sget v0, Ll90;->W0:I

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Lih0;->l(II)I

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lef0$b;->i:I

    .line 20
    sget v0, Ll90;->Z0:I

    .line 22
    iget v2, p0, Lef0$b;->c:I

    .line 24
    invoke-virtual {p1, v0, v2}, Lih0;->i(II)I

    .line 27
    move-result v0

    .line 28
    sget v2, Ll90;->a1:I

    .line 30
    iget v3, p0, Lef0$b;->d:I

    .line 32
    invoke-virtual {p1, v2, v3}, Lih0;->i(II)I

    .line 35
    move-result v2

    .line 36
    const/high16 v3, -0x10000

    .line 38
    and-int/2addr v0, v3

    .line 39
    const v3, 0xffff

    .line 42
    and-int/2addr v2, v3

    .line 43
    or-int/2addr v0, v2

    .line 44
    iput v0, p0, Lef0$b;->j:I

    .line 46
    sget v0, Ll90;->b1:I

    .line 48
    invoke-virtual {p1, v0}, Lih0;->n(I)Ljava/lang/CharSequence;

    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lef0$b;->k:Ljava/lang/CharSequence;

    .line 54
    sget v0, Ll90;->c1:I

    .line 56
    invoke-virtual {p1, v0}, Lih0;->n(I)Ljava/lang/CharSequence;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lef0$b;->l:Ljava/lang/CharSequence;

    .line 62
    sget v0, Ll90;->U0:I

    .line 64
    invoke-virtual {p1, v0, v1}, Lih0;->l(II)I

    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lef0$b;->m:I

    .line 70
    sget v0, Ll90;->d1:I

    .line 72
    invoke-virtual {p1, v0}, Lih0;->m(I)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lef0$b;->c(Ljava/lang/String;)C

    .line 79
    move-result v0

    .line 80
    iput-char v0, p0, Lef0$b;->n:C

    .line 82
    sget v0, Ll90;->k1:I

    .line 84
    const/16 v2, 0x1000

    .line 86
    invoke-virtual {p1, v0, v2}, Lih0;->i(II)I

    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lef0$b;->o:I

    .line 92
    sget v0, Ll90;->e1:I

    .line 94
    invoke-virtual {p1, v0}, Lih0;->m(I)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lef0$b;->c(Ljava/lang/String;)C

    .line 101
    move-result v0

    .line 102
    iput-char v0, p0, Lef0$b;->p:C

    .line 104
    sget v0, Ll90;->o1:I

    .line 106
    invoke-virtual {p1, v0, v2}, Lih0;->i(II)I

    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lef0$b;->q:I

    .line 112
    sget v0, Ll90;->f1:I

    .line 114
    invoke-virtual {p1, v0}, Lih0;->p(I)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p1, v0, v1}, Lih0;->a(IZ)Z

    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lef0$b;->r:I

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    iget v0, p0, Lef0$b;->e:I

    .line 129
    iput v0, p0, Lef0$b;->r:I

    .line 131
    :goto_0
    sget v0, Ll90;->X0:I

    .line 133
    invoke-virtual {p1, v0, v1}, Lih0;->a(IZ)Z

    .line 136
    move-result v0

    .line 137
    iput-boolean v0, p0, Lef0$b;->s:Z

    .line 139
    sget v0, Ll90;->Y0:I

    .line 141
    iget-boolean v2, p0, Lef0$b;->f:Z

    .line 143
    invoke-virtual {p1, v0, v2}, Lih0;->a(IZ)Z

    .line 146
    move-result v0

    .line 147
    iput-boolean v0, p0, Lef0$b;->t:Z

    .line 149
    sget v0, Ll90;->V0:I

    .line 151
    iget-boolean v2, p0, Lef0$b;->g:Z

    .line 153
    invoke-virtual {p1, v0, v2}, Lih0;->a(IZ)Z

    .line 156
    move-result v0

    .line 157
    iput-boolean v0, p0, Lef0$b;->u:Z

    .line 159
    sget v0, Ll90;->p1:I

    .line 161
    const/4 v2, -0x1

    .line 162
    invoke-virtual {p1, v0, v2}, Lih0;->i(II)I

    .line 165
    move-result v0

    .line 166
    iput v0, p0, Lef0$b;->v:I

    .line 168
    sget v0, Ll90;->g1:I

    .line 170
    invoke-virtual {p1, v0}, Lih0;->m(I)Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lef0$b;->z:Ljava/lang/String;

    .line 176
    sget v0, Ll90;->h1:I

    .line 178
    invoke-virtual {p1, v0, v1}, Lih0;->l(II)I

    .line 181
    move-result v0

    .line 182
    iput v0, p0, Lef0$b;->w:I

    .line 184
    sget v0, Ll90;->j1:I

    .line 186
    invoke-virtual {p1, v0}, Lih0;->m(I)Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    iput-object v0, p0, Lef0$b;->x:Ljava/lang/String;

    .line 192
    sget v0, Ll90;->i1:I

    .line 194
    invoke-virtual {p1, v0}, Lih0;->m(I)Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    iput-object v0, p0, Lef0$b;->y:Ljava/lang/String;

    .line 200
    if-eqz v0, :cond_1

    .line 202
    const/4 v3, 0x1

    .line 203
    goto :goto_1

    .line 204
    :cond_1
    const/4 v3, 0x0

    .line 205
    :goto_1
    if-eqz v3, :cond_2

    .line 207
    iget v4, p0, Lef0$b;->w:I

    .line 209
    if-nez v4, :cond_2

    .line 211
    iget-object v4, p0, Lef0$b;->x:Ljava/lang/String;

    .line 213
    if-nez v4, :cond_2

    .line 215
    sget-object v3, Lef0;->f:[Ljava/lang/Class;

    .line 217
    iget-object v4, p0, Lef0$b;->E:Lef0;

    .line 219
    iget-object v4, v4, Lef0;->b:[Ljava/lang/Object;

    .line 221
    invoke-virtual {p0, v0, v3, v4}, Lef0$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Ld00;->a(Ljava/lang/Object;)V

    .line 228
    goto :goto_2

    .line 229
    :cond_2
    if-eqz v3, :cond_3

    .line 231
    const-string v0, "SupportMenuInflater"

    .line 233
    const-string v3, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 235
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    :goto_2
    sget v0, Ll90;->l1:I

    .line 240
    invoke-virtual {p1, v0}, Lih0;->n(I)Ljava/lang/CharSequence;

    .line 243
    move-result-object v0

    .line 244
    iput-object v0, p0, Lef0$b;->A:Ljava/lang/CharSequence;

    .line 246
    sget v0, Ll90;->q1:I

    .line 248
    invoke-virtual {p1, v0}, Lih0;->n(I)Ljava/lang/CharSequence;

    .line 251
    move-result-object v0

    .line 252
    iput-object v0, p0, Lef0$b;->B:Ljava/lang/CharSequence;

    .line 254
    sget v0, Ll90;->n1:I

    .line 256
    invoke-virtual {p1, v0}, Lih0;->p(I)Z

    .line 259
    move-result v3

    .line 260
    const/4 v4, 0x0

    .line 261
    if-eqz v3, :cond_4

    .line 263
    invoke-virtual {p1, v0, v2}, Lih0;->i(II)I

    .line 266
    move-result v0

    .line 267
    iget-object v2, p0, Lef0$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 269
    invoke-static {v0, v2}, Lik;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 272
    move-result-object v0

    .line 273
    iput-object v0, p0, Lef0$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 275
    goto :goto_3

    .line 276
    :cond_4
    iput-object v4, p0, Lef0$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 278
    :goto_3
    sget v0, Ll90;->m1:I

    .line 280
    invoke-virtual {p1, v0}, Lih0;->p(I)Z

    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_5

    .line 286
    invoke-virtual {p1, v0}, Lih0;->c(I)Landroid/content/res/ColorStateList;

    .line 289
    move-result-object v0

    .line 290
    iput-object v0, p0, Lef0$b;->C:Landroid/content/res/ColorStateList;

    .line 292
    goto :goto_4

    .line 293
    :cond_5
    iput-object v4, p0, Lef0$b;->C:Landroid/content/res/ColorStateList;

    .line 295
    :goto_4
    invoke-virtual {p1}, Lih0;->t()V

    .line 298
    iput-boolean v1, p0, Lef0$b;->h:Z

    .line 300
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lef0$b;->b:I

    .line 4
    iput v0, p0, Lef0$b;->c:I

    .line 6
    iput v0, p0, Lef0$b;->d:I

    .line 8
    iput v0, p0, Lef0$b;->e:I

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lef0$b;->f:Z

    .line 13
    iput-boolean v0, p0, Lef0$b;->g:Z

    .line 15
    return-void
.end method

.method public final i(Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lef0$b;->s:Z

    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lef0$b;->t:Z

    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lef0$b;->u:Z

    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lef0$b;->r:I

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lef0$b;->l:Ljava/lang/CharSequence;

    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lef0$b;->m:I

    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 43
    iget v0, p0, Lef0$b;->v:I

    .line 45
    if-ltz v0, :cond_1

    .line 47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 50
    :cond_1
    iget-object v0, p0, Lef0$b;->z:Ljava/lang/String;

    .line 52
    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lef0$b;->E:Lef0;

    .line 56
    iget-object v0, v0, Lef0;->c:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 64
    new-instance v0, Lef0$a;

    .line 66
    iget-object v1, p0, Lef0$b;->E:Lef0;

    .line 68
    invoke-virtual {v1}, Lef0;->b()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    iget-object v4, p0, Lef0$b;->z:Ljava/lang/String;

    .line 74
    invoke-direct {v0, v1, v4}, Lef0$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    :cond_3
    :goto_1
    iget v0, p0, Lef0$b;->r:I

    .line 91
    const/4 v1, 0x2

    .line 92
    if-lt v0, v1, :cond_4

    .line 94
    instance-of v0, p1, Landroidx/appcompat/view/menu/e;

    .line 96
    if-eqz v0, :cond_4

    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, Landroidx/appcompat/view/menu/e;

    .line 101
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/e;->s(Z)V

    .line 104
    :cond_4
    iget-object v0, p0, Lef0$b;->x:Ljava/lang/String;

    .line 106
    if-eqz v0, :cond_5

    .line 108
    sget-object v1, Lef0;->e:[Ljava/lang/Class;

    .line 110
    iget-object v2, p0, Lef0$b;->E:Lef0;

    .line 112
    iget-object v2, v2, Lef0;->a:[Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, v0, v1, v2}, Lef0$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/view/View;

    .line 120
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 123
    const/4 v2, 0x1

    .line 124
    :cond_5
    iget v0, p0, Lef0$b;->w:I

    .line 126
    if-lez v0, :cond_7

    .line 128
    if-nez v2, :cond_6

    .line 130
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    const-string v0, "SupportMenuInflater"

    .line 136
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_7
    :goto_2
    iget-object v0, p0, Lef0$b;->A:Ljava/lang/CharSequence;

    .line 143
    invoke-static {p1, v0}, La10;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lef0$b;->B:Ljava/lang/CharSequence;

    .line 148
    invoke-static {p1, v0}, La10;->f(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 151
    iget-char v0, p0, Lef0$b;->n:C

    .line 153
    iget v1, p0, Lef0$b;->o:I

    .line 155
    invoke-static {p1, v0, v1}, La10;->a(Landroid/view/MenuItem;CI)V

    .line 158
    iget-char v0, p0, Lef0$b;->p:C

    .line 160
    iget v1, p0, Lef0$b;->q:I

    .line 162
    invoke-static {p1, v0, v1}, La10;->e(Landroid/view/MenuItem;CI)V

    .line 165
    iget-object v0, p0, Lef0$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 167
    if-eqz v0, :cond_8

    .line 169
    invoke-static {p1, v0}, La10;->d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 172
    :cond_8
    iget-object v0, p0, Lef0$b;->C:Landroid/content/res/ColorStateList;

    .line 174
    if-eqz v0, :cond_9

    .line 176
    invoke-static {p1, v0}, La10;->c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 179
    :cond_9
    return-void
.end method
