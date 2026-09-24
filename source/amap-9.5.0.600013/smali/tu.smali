.class public Ltu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltu$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Lsu;

.field public d:Landroid/util/SparseArray;

.field public e:Lf7;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltu;->a:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltu;->d:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Lf7;

    invoke-direct {v0}, Lf7;-><init>()V

    iput-object v0, p0, Ltu;->e:Lf7;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ltu;->f:I

    .line 7
    iput v0, p0, Ltu;->g:I

    .line 8
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v1

    sget-object v2, Lzm;->S:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltu;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Ltu$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltu;-><init>()V

    return-void
.end method

.method public static c()Ltu;
    .locals 1

    .line 1
    invoke-static {}, Ltu$b;->a()Ltu;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ltu;->g:I

    .line 3
    return v0
.end method

.method public final b(I)Lsu;
    .locals 6

    .line 1
    iget-object v0, p0, Ltu;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "InputWrapperManager"

    .line 6
    const-string v2, "getInputMethodWrapper displayId={?}"

    .line 8
    const/4 v3, 0x1

    .line 9
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    aput-object v4, v3, v5

    .line 18
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v1, p0, Ltu;->d:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lsu;

    .line 29
    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lsu;

    .line 33
    invoke-direct {v1, p1}, Lsu;-><init>(I)V

    .line 36
    iget-object v2, p0, Ltu;->d:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    :cond_0
    monitor-exit v0

    .line 42
    return-object v1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Ltu;->f:I

    .line 3
    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "InputWrapperManager"

    .line 6
    const-string v3, "hideSoftInput"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0}, Ltu;->f(I)V

    .line 14
    return-void
.end method

.method public f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 3
    invoke-virtual {v0}, Lf7;->a()V

    .line 6
    iget-boolean v0, p0, Ltu;->b:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 20
    const-string v1, "InputWrapperManager"

    .line 22
    const-string v2, "hideSoftInput displayId={?}"

    .line 24
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Ltu;->d:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lsu;

    .line 35
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lsu;->p()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Ltu;->c:Lsu;

    .line 43
    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Lsu;->p()V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltu;->b:Z

    .line 3
    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "InputWrapperManager"

    .line 6
    const-string v2, "selectAll "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lsu;->v()V

    .line 18
    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "InputWrapperManager"

    .line 13
    const-string v2, "selectAll displayId={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, p1}, Ltu;->b(I)Lsu;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Ltu;->c:Lsu;

    .line 24
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lsu;->v()V

    .line 29
    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltu;->g:I

    .line 3
    return-void
.end method

.method public final k(Lsu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 3
    iget-object v0, v0, Lf7;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Lsu;->y(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 10
    iget v0, v0, Lf7;->b:I

    .line 12
    invoke-virtual {p1, v0}, Lsu;->B(I)V

    .line 15
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 17
    iget v0, v0, Lf7;->a:I

    .line 19
    invoke-virtual {p1, v0}, Lsu;->A(I)V

    .line 22
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 24
    iget v0, v0, Lf7;->d:I

    .line 26
    invoke-virtual {p1, v0}, Lsu;->w(I)V

    .line 29
    return-void
.end method

.method public l(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "InputWrapperManager"

    .line 13
    const-string v2, "setEditTextSelection :{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 20
    iput p1, v0, Lf7;->d:I

    .line 22
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lsu;->w(I)V

    .line 29
    :cond_0
    return-void
.end method

.method public m(II)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "InputWrapperManager"

    .line 6
    const-string v2, "setEditTextSelection "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1, p2}, Lsu;->x(II)V

    .line 18
    :cond_0
    return-void
.end method

.method public n(III)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "InputWrapperManager"

    .line 13
    const-string v2, "setEditTextSelection displayId={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, p3}, Ltu;->b(I)Lsu;

    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Ltu;->c:Lsu;

    .line 24
    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p3, p1, p2}, Lsu;->x(II)V

    .line 29
    :cond_0
    return-void
.end method

.method public o(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "InputWrapperManager"

    .line 20
    const-string v2, "setEditTextSelectionByDisplayId :{?},displayId={?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, p2}, Ltu;->b(I)Lsu;

    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Ltu;->c:Lsu;

    .line 31
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p1}, Lsu;->w(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "InputWrapperManager"

    .line 9
    const-string v2, "setInputContent :{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 16
    iput-object p1, v0, Lf7;->c:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lsu;->y(Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "InputWrapperManager"

    .line 9
    const-string v2, "setInputContent :{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p2}, Ltu;->b(I)Lsu;

    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Ltu;->c:Lsu;

    .line 20
    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2, p1}, Lsu;->y(Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "InputWrapperManager"

    .line 13
    const-string v2, "setKeyboardType :{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 20
    iput p1, v0, Lf7;->a:I

    .line 22
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lsu;->A(I)V

    .line 29
    :cond_0
    return-void
.end method

.method public s(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "InputWrapperManager"

    .line 20
    const-string v2, "setKeyboardType :{?},displayId={?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, p2}, Ltu;->b(I)Lsu;

    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Ltu;->c:Lsu;

    .line 31
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p1}, Lsu;->A(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "InputWrapperManager"

    .line 13
    const-string v2, "setMaxTextLenght :{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 20
    iput p1, v0, Lf7;->b:I

    .line 22
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lsu;->B(I)V

    .line 29
    :cond_0
    return-void
.end method

.method public u(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "InputWrapperManager"

    .line 20
    const-string v2, "setMaxTextLenght :{?},displayId={?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, p2}, Ltu;->b(I)Lsu;

    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Ltu;->c:Lsu;

    .line 31
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p1}, Lsu;->B(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltu;->f:I

    .line 3
    return-void
.end method

.method public w(ZI)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "InputWrapperManager"

    .line 20
    const-string v2, "setSystemInputStatus isShow:{?} displayId:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-boolean v0, p0, Ltu;->b:Z

    .line 27
    if-nez v0, :cond_0

    .line 29
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->setSystemInputStatus(Z)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/jni/AndroidSoftkeyboard;->setMultiScreenInputStatus(ZI)V

    .line 36
    :goto_0
    return-void
.end method

.method public declared-synchronized x(IZI)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ltu;->b:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 10
    if-nez v0, :cond_2

    .line 12
    new-instance v0, Lsu;

    .line 14
    invoke-direct {v0, p3}, Lsu;-><init>(I)V

    .line 17
    iput-object v0, p0, Ltu;->c:Lsu;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p3}, Ltu;->b(I)Lsu;

    .line 23
    move-result-object v0

    .line 24
    iget-object v3, p0, Ltu;->c:Lsu;

    .line 26
    if-eqz v3, :cond_1

    .line 28
    if-eq v0, v3, :cond_1

    .line 30
    const-string v4, "InputWrapperManager"

    .line 32
    const-string v5, "hide pre inputWrapper:{?}"

    .line 34
    new-array v6, v2, [Ljava/lang/Object;

    .line 36
    aput-object v3, v6, v1

    .line 38
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v3, p0, Ltu;->c:Lsu;

    .line 43
    invoke-virtual {v3}, Lsu;->p()V

    .line 46
    :cond_1
    iput-object v0, p0, Ltu;->c:Lsu;

    .line 48
    :cond_2
    :goto_0
    iget-boolean v0, p0, Ltu;->b:Z

    .line 50
    if-nez v0, :cond_4

    .line 52
    if-nez p2, :cond_3

    .line 54
    iget-object v0, p0, Ltu;->e:Lf7;

    .line 56
    invoke-virtual {v0}, Lf7;->a()V

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 62
    invoke-virtual {p0, v0}, Ltu;->k(Lsu;)V

    .line 65
    :cond_4
    :goto_1
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 67
    invoke-virtual {v0, p1, p2}, Lsu;->D(IZ)V

    .line 70
    const-string v0, "InputWrapperManager"

    .line 72
    const-string v3, "showSystemInputMethod isSupportMutli:{?} imeOptions:{?} isShow:{?} displayId:{?} lastInputWrapper:{?}"

    .line 74
    const/4 v4, 0x5

    .line 75
    new-array v4, v4, [Ljava/lang/Object;

    .line 77
    iget-boolean v5, p0, Ltu;->b:Z

    .line 79
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object v5

    .line 83
    aput-object v5, v4, v1

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p1

    .line 89
    aput-object p1, v4, v2

    .line 91
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object p1

    .line 95
    const/4 p2, 0x2

    .line 96
    aput-object p1, v4, p2

    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p1

    .line 102
    const/4 p2, 0x3

    .line 103
    aput-object p1, v4, p2

    .line 105
    iget-object p1, p0, Ltu;->c:Lsu;

    .line 107
    const/4 p2, 0x4

    .line 108
    aput-object p1, v4, p2

    .line 110
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0

    .line 117
    throw p1
.end method

.method public y()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Ltu;->b:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "InputWrapperManager"

    .line 15
    const-string v3, "unRegisterActivity empty param isSupportMutli : {?}"

    .line 17
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Ltu;->b:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Ltu;->d:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lsu;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Lsu;->p()V

    .line 37
    invoke-virtual {v0}, Lsu;->t()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lsu;->p()V

    .line 48
    iget-object v0, p0, Ltu;->c:Lsu;

    .line 50
    invoke-virtual {v0}, Lsu;->t()V

    .line 53
    :cond_1
    :goto_0
    return-void
.end method
