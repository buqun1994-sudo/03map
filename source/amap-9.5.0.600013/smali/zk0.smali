.class public abstract Lzk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzk0$j;,
        Lzk0$i;,
        Lzk0$h;,
        Lzk0$f;,
        Lzk0$g;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static b:Ljava/util/WeakHashMap;

.field public static c:Ljava/lang/reflect/Field;

.field public static d:Z

.field public static final e:[I

.field public static final f:Ly40;

.field public static g:Lzk0$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lzk0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lzk0;->b:Ljava/util/WeakHashMap;

    .line 12
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lzk0;->d:Z

    .line 15
    const/16 v2, 0x20

    .line 17
    new-array v2, v2, [I

    .line 19
    sget v3, Lx80;->b:I

    .line 21
    aput v3, v2, v0

    .line 23
    sget v0, Lx80;->c:I

    .line 25
    aput v0, v2, v1

    .line 27
    const/4 v0, 0x2

    .line 28
    sget v1, Lx80;->n:I

    .line 30
    aput v1, v2, v0

    .line 32
    const/4 v0, 0x3

    .line 33
    sget v1, Lx80;->y:I

    .line 35
    aput v1, v2, v0

    .line 37
    const/4 v0, 0x4

    .line 38
    sget v1, Lx80;->B:I

    .line 40
    aput v1, v2, v0

    .line 42
    const/4 v0, 0x5

    .line 43
    sget v1, Lx80;->C:I

    .line 45
    aput v1, v2, v0

    .line 47
    const/4 v0, 0x6

    .line 48
    sget v1, Lx80;->D:I

    .line 50
    aput v1, v2, v0

    .line 52
    const/4 v0, 0x7

    .line 53
    sget v1, Lx80;->E:I

    .line 55
    aput v1, v2, v0

    .line 57
    const/16 v0, 0x8

    .line 59
    sget v1, Lx80;->F:I

    .line 61
    aput v1, v2, v0

    .line 63
    const/16 v0, 0x9

    .line 65
    sget v1, Lx80;->G:I

    .line 67
    aput v1, v2, v0

    .line 69
    const/16 v0, 0xa

    .line 71
    sget v1, Lx80;->d:I

    .line 73
    aput v1, v2, v0

    .line 75
    const/16 v0, 0xb

    .line 77
    sget v1, Lx80;->e:I

    .line 79
    aput v1, v2, v0

    .line 81
    const/16 v0, 0xc

    .line 83
    sget v1, Lx80;->f:I

    .line 85
    aput v1, v2, v0

    .line 87
    const/16 v0, 0xd

    .line 89
    sget v1, Lx80;->g:I

    .line 91
    aput v1, v2, v0

    .line 93
    const/16 v0, 0xe

    .line 95
    sget v1, Lx80;->h:I

    .line 97
    aput v1, v2, v0

    .line 99
    const/16 v0, 0xf

    .line 101
    sget v1, Lx80;->i:I

    .line 103
    aput v1, v2, v0

    .line 105
    const/16 v0, 0x10

    .line 107
    sget v1, Lx80;->j:I

    .line 109
    aput v1, v2, v0

    .line 111
    const/16 v0, 0x11

    .line 113
    sget v1, Lx80;->k:I

    .line 115
    aput v1, v2, v0

    .line 117
    const/16 v0, 0x12

    .line 119
    sget v1, Lx80;->l:I

    .line 121
    aput v1, v2, v0

    .line 123
    const/16 v0, 0x13

    .line 125
    sget v1, Lx80;->m:I

    .line 127
    aput v1, v2, v0

    .line 129
    const/16 v0, 0x14

    .line 131
    sget v1, Lx80;->o:I

    .line 133
    aput v1, v2, v0

    .line 135
    const/16 v0, 0x15

    .line 137
    sget v1, Lx80;->p:I

    .line 139
    aput v1, v2, v0

    .line 141
    const/16 v0, 0x16

    .line 143
    sget v1, Lx80;->q:I

    .line 145
    aput v1, v2, v0

    .line 147
    const/16 v0, 0x17

    .line 149
    sget v1, Lx80;->r:I

    .line 151
    aput v1, v2, v0

    .line 153
    const/16 v0, 0x18

    .line 155
    sget v1, Lx80;->s:I

    .line 157
    aput v1, v2, v0

    .line 159
    const/16 v0, 0x19

    .line 161
    sget v1, Lx80;->t:I

    .line 163
    aput v1, v2, v0

    .line 165
    const/16 v0, 0x1a

    .line 167
    sget v1, Lx80;->u:I

    .line 169
    aput v1, v2, v0

    .line 171
    const/16 v0, 0x1b

    .line 173
    sget v1, Lx80;->v:I

    .line 175
    aput v1, v2, v0

    .line 177
    const/16 v0, 0x1c

    .line 179
    sget v1, Lx80;->w:I

    .line 181
    aput v1, v2, v0

    .line 183
    const/16 v0, 0x1d

    .line 185
    sget v1, Lx80;->x:I

    .line 187
    aput v1, v2, v0

    .line 189
    const/16 v0, 0x1e

    .line 191
    sget v1, Lx80;->z:I

    .line 193
    aput v1, v2, v0

    .line 195
    const/16 v0, 0x1f

    .line 197
    sget v1, Lx80;->A:I

    .line 199
    aput v1, v2, v0

    .line 201
    sput-object v2, Lzk0;->e:[I

    .line 203
    new-instance v0, Lzk0$a;

    .line 205
    invoke-direct {v0}, Lzk0$a;-><init>()V

    .line 208
    sput-object v0, Lzk0;->f:Ly40;

    .line 210
    new-instance v0, Lzk0$f;

    .line 212
    invoke-direct {v0}, Lzk0$f;-><init>()V

    .line 215
    sput-object v0, Lzk0;->g:Lzk0$f;

    .line 217
    return-void
.end method

.method public static A(Landroid/view/View;Ly;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-static {p0}, Lzk0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Ly$a;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance p1, Ly;

    .line 13
    invoke-direct {p1}, Ly;-><init>()V

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Ly;->d()Landroid/view/View$AccessibilityDelegate;

    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 27
    return-void
.end method

.method public static B(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public static C(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    const/16 p1, 0x15

    .line 8
    if-ne v0, p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    if-eqz p1, :cond_3

    .line 32
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_3
    return-void
.end method

.method public static D(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    const/16 p1, 0x15

    .line 8
    if-ne v0, p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    if-eqz p1, :cond_3

    .line 32
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_3
    return-void
.end method

.method public static E(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4
    return-void
.end method

.method public static F(Landroid/view/View;Lx40;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzk0$h;->d(Landroid/view/View;Lx40;)V

    .line 4
    return-void
.end method

.method public static G(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lzk0;->j(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p0, v0}, Lzk0;->E(Landroid/view/View;I)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    .line 17
    if-eqz v1, :cond_2

    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroid/view/View;

    .line 22
    invoke-static {v1}, Lzk0;->j(Landroid/view/View;)I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x4

    .line 27
    if-ne v1, v2, :cond_1

    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-static {p0, v0}, Lzk0;->E(Landroid/view/View;I)V

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    return-void
.end method

.method public static H()Lzk0$g;
    .locals 5

    .line 1
    new-instance v0, Lzk0$d;

    .line 3
    sget v1, Lx80;->N:I

    .line 5
    const/16 v2, 0x40

    .line 7
    const/16 v3, 0x1e

    .line 9
    const-class v4, Ljava/lang/CharSequence;

    .line 11
    invoke-direct {v0, v1, v4, v2, v3}, Lzk0$d;-><init>(ILjava/lang/Class;II)V

    .line 14
    return-object v0
.end method

.method public static I(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 4
    return-void
.end method

.method public static a()Lzk0$g;
    .locals 4

    .line 1
    new-instance v0, Lzk0$e;

    .line 3
    sget v1, Lx80;->J:I

    .line 5
    const-class v2, Ljava/lang/Boolean;

    .line 7
    const/16 v3, 0x1c

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lzk0$e;-><init>(ILjava/lang/Class;I)V

    .line 12
    return-object v0
.end method

.method public static b(Landroid/view/View;Lfn0;Landroid/graphics/Rect;)Lfn0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lzk0$h;->b(Landroid/view/View;Lfn0;Landroid/graphics/Rect;)Lfn0;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Landroid/view/View;Lfn0;)Lfn0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lfn0;->s()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-static {v1, p0}, Lfn0;->u(Landroid/view/WindowInsets;Landroid/view/View;)Lfn0;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    return-object p1
.end method

.method public static d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {p0}, Lyk0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lzk0;->e(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static e(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .line 1
    sget-boolean v0, Lzk0;->d:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lzk0;->c:Ljava/lang/reflect/Field;

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 12
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 14
    const-string v3, "mAccessibilityDelegate"

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lzk0;->c:Ljava/lang/reflect/Field;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    sput-boolean v2, Lzk0;->d:Z

    .line 28
    return-object v1

    .line 29
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lzk0;->c:Ljava/lang/reflect/Field;

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    .line 37
    if-eqz v0, :cond_2

    .line 39
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    return-object p0

    .line 42
    :cond_2
    return-object v1

    .line 43
    :catchall_1
    sput-boolean v2, Lzk0;->d:Z

    .line 45
    return-object v1
.end method

.method public static f(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static g(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {}, Lzk0;->t()Lzk0$g;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lzk0$g;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/CharSequence;

    .line 11
    return-object p0
.end method

.method public static h(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static i(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static j(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static k(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static l(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static m(Landroid/view/View;)Lfn0;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x17

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {p0}, Lzk0$i;->a(Landroid/view/View;)Lfn0;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lzk0$h;->c(Landroid/view/View;)Lfn0;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final n(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {}, Lzk0;->H()Lzk0$g;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lzk0$g;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/CharSequence;

    .line 11
    return-object p0
.end method

.method public static o(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static p(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {}, Lzk0;->a()Lzk0$g;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lzk0$g;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p0

    .line 19
    :goto_0
    return p0
.end method

.method public static q(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static r(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {}, Lzk0;->z()Lzk0$g;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lzk0$g;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p0

    .line 19
    :goto_0
    return p0
.end method

.method public static s(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {p0}, Lzk0;->g(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-static {p0}, Lzk0;->f(Landroid/view/View;)I

    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x20

    .line 41
    if-nez v2, :cond_4

    .line 43
    if-eqz v1, :cond_2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-ne p1, v3, :cond_3

    .line 48
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 55
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 58
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 61
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 67
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0}, Lzk0;->g(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_7

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_3

    .line 96
    :catch_0
    move-exception p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string p0, " does not fully implement ViewParent"

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    const-string v0, "ViewCompat"

    .line 128
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 135
    move-result-object v0

    .line 136
    if-eqz v1, :cond_5

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const/16 v3, 0x800

    .line 141
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 147
    if-eqz v1, :cond_6

    .line 149
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {p0}, Lzk0;->g(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 156
    move-result-object v1

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {p0}, Lzk0;->G(Landroid/view/View;)V

    .line 163
    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 166
    :cond_7
    :goto_3
    return-void
.end method

.method public static t()Lzk0$g;
    .locals 5

    .line 1
    new-instance v0, Lzk0$c;

    .line 3
    sget v1, Lx80;->K:I

    .line 5
    const/16 v2, 0x8

    .line 7
    const/16 v3, 0x1c

    .line 9
    const-class v4, Ljava/lang/CharSequence;

    .line 11
    invoke-direct {v0, v1, v4, v2, v3}, Lzk0$c;-><init>(ILjava/lang/Class;II)V

    .line 14
    return-object v0
.end method

.method public static u(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 4
    return-void
.end method

.method public static v(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public static w(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 4
    return-void
.end method

.method public static x(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 4
    return-void
.end method

.method public static y(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static/range {p0 .. p6}, Lzk0$j;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 10
    :cond_0
    return-void
.end method

.method public static z()Lzk0$g;
    .locals 4

    .line 1
    new-instance v0, Lzk0$b;

    .line 3
    sget v1, Lx80;->M:I

    .line 5
    const-class v2, Ljava/lang/Boolean;

    .line 7
    const/16 v3, 0x1c

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lzk0$b;-><init>(ILjava/lang/Class;I)V

    .line 12
    return-object v0
.end method
