.class public Lhq0;
.super Lzq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhq0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzq0;-><init>()V

    .line 4
    return-void
.end method

.method public static k()Lhq0;
    .locals 1

    .line 1
    invoke-static {}, Lhq0$a;->a()Lhq0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lxv0;)Lqw0;
    .locals 0

    .line 1
    check-cast p1, Lup0;

    .line 3
    invoke-virtual {p0, p1}, Lhq0;->f(Lup0;)Liq0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public synthetic e(Lvp0;)Ltp0;
    .locals 0

    .line 1
    check-cast p1, Liq0;

    .line 3
    invoke-virtual {p0, p1}, Lhq0;->j(Liq0;)Ltp0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Lup0;)Liq0;
    .locals 4

    .line 1
    new-instance v0, Liq0;

    .line 3
    invoke-direct {v0}, Liq0;-><init>()V

    .line 6
    invoke-virtual {p1}, Lup0;->f()[B

    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lup0;->b()Lvq0;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lup0;->e()Lup0$a;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lpu0;->c()Lyp0;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, p1, v3}, Lar0;->a([BLvq0;Lup0$a;Lyp0;)[B

    .line 25
    move-result-object p1

    .line 26
    array-length v1, p1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p1, v2, v1}, Lru0;->d([BII)Lru0;

    .line 31
    move-result-object p1

    .line 32
    new-instance v1, Lbr0;

    .line 34
    invoke-direct {v1}, Lbr0;-><init>()V

    .line 37
    invoke-virtual {v1, p1}, Lzv0;->a(Lru0;)Lzv0;

    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lbr0;

    .line 43
    invoke-virtual {v0, p1}, Liq0;->h(Lbr0;)V

    .line 46
    sget-object p1, Lzp0;->d:Lzp0;

    .line 48
    invoke-virtual {v0, p1}, Lsq0;->a(Lzp0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    sget-object p1, Lzp0;->B:Lzp0;

    .line 54
    invoke-virtual {v0, p1}, Lsq0;->a(Lzp0;)V

    .line 57
    :goto_0
    return-object v0
.end method

.method public final g(Lbr0$f$b;Lhx0$b;)Lhx0$b;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p1, Lbr0$f$b;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Lhx0$b;->d(Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Lbr0$f$b;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v0}, Lhx0$b;->g(Ljava/lang/String;)V

    .line 15
    iget-wide v0, p1, Lbr0$f$b;->d:D

    .line 17
    invoke-virtual {p2, v0, v1}, Lhx0$b;->f(D)V

    .line 20
    iget-wide v0, p1, Lbr0$f$b;->c:D

    .line 22
    invoke-virtual {p2, v0, v1}, Lhx0$b;->b(D)V

    .line 25
    iget-object v0, p1, Lbr0$f$b;->e:Ljava/lang/String;

    .line 27
    invoke-virtual {p2, v0}, Lhx0$b;->i(Ljava/lang/String;)V

    .line 30
    iget p1, p1, Lbr0$f$b;->f:I

    .line 32
    invoke-virtual {p2, p1}, Lhx0$b;->c(I)V

    .line 35
    return-object p2
.end method

.method public final h(Lbr0$f;)Lhx0;
    .locals 6

    .line 1
    new-instance v0, Lhx0;

    .line 3
    invoke-direct {v0}, Lhx0;-><init>()V

    .line 6
    iget-wide v1, p1, Lbr0$f;->b:D

    .line 8
    invoke-virtual {v0, v1, v2}, Lhx0;->j(D)V

    .line 11
    iget-wide v1, p1, Lbr0$f;->a:D

    .line 13
    invoke-virtual {v0, v1, v2}, Lhx0;->b(D)V

    .line 16
    iget-object v1, p1, Lbr0$f;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Lhx0;->h(Ljava/lang/String;)V

    .line 21
    iget v1, p1, Lbr0$f;->i:I

    .line 23
    invoke-virtual {v0, v1}, Lhx0;->c(I)V

    .line 26
    iget-wide v1, p1, Lbr0$f;->c:D

    .line 28
    invoke-virtual {v0, v1, v2}, Lhx0;->l(D)V

    .line 31
    new-instance v1, Lhx0$e;

    .line 33
    invoke-direct {v1}, Lhx0$e;-><init>()V

    .line 36
    iget-object v2, p1, Lbr0$f;->e:Lbr0$f$e;

    .line 38
    if-eqz v2, :cond_0

    .line 40
    iget v2, v2, Lbr0$f$e;->g:I

    .line 42
    if-eqz v2, :cond_0

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lhx0$e;->m(Ljava/lang/Integer;)V

    .line 51
    :cond_0
    new-instance v2, Lhx0$d;

    .line 53
    invoke-direct {v2}, Lhx0$d;-><init>()V

    .line 56
    new-instance v3, Lhx0$c;

    .line 58
    invoke-direct {v3}, Lhx0$c;-><init>()V

    .line 61
    new-instance v4, Lhx0$a;

    .line 63
    invoke-direct {v4}, Lhx0$a;-><init>()V

    .line 66
    iget-object v5, p1, Lbr0$f;->e:Lbr0$f$e;

    .line 68
    invoke-virtual {p0, v5, v1}, Lhq0;->g(Lbr0$f$b;Lhx0$b;)Lhx0$b;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lhx0$e;

    .line 74
    invoke-virtual {v0, v1}, Lhx0;->g(Lhx0$e;)V

    .line 77
    iget-object v1, p1, Lbr0$f;->f:Lbr0$f$d;

    .line 79
    invoke-virtual {p0, v1, v2}, Lhq0;->g(Lbr0$f$b;Lhx0$b;)Lhx0$b;

    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lhx0$d;

    .line 85
    invoke-virtual {v0, v1}, Lhx0;->f(Lhx0$d;)V

    .line 88
    iget-object v1, p1, Lbr0$f;->g:Lbr0$f$c;

    .line 90
    invoke-virtual {p0, v1, v3}, Lhq0;->g(Lbr0$f$b;Lhx0$b;)Lhx0$b;

    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lhx0$c;

    .line 96
    invoke-virtual {v0, v1}, Lhx0;->e(Lhx0$c;)V

    .line 99
    iget-object p1, p1, Lbr0$f;->h:Lbr0$f$a;

    .line 101
    invoke-virtual {p0, p1, v4}, Lhq0;->g(Lbr0$f$b;Lhx0$b;)Lhx0$b;

    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lhx0$a;

    .line 107
    invoke-virtual {v0, p1}, Lhx0;->d(Lhx0$a;)V

    .line 110
    return-object v0
.end method

.method public final i(Ltp0;Lbr0;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lbr0;->i:[B

    .line 3
    array-length v0, p2

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Ltp0;->q([B)V

    .line 9
    :cond_0
    return-void
.end method

.method public j(Liq0;)Ltp0;
    .locals 2

    .line 1
    new-instance v0, Ltp0;

    .line 3
    invoke-direct {v0}, Ltp0;-><init>()V

    .line 6
    invoke-virtual {p1}, Liq0;->c()Lvq0;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ltp0;->d(Lvq0;)V

    .line 13
    invoke-virtual {p1}, Lvp0;->f()Lup0$a;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ltp0;->b(Lup0$a;)V

    .line 20
    invoke-virtual {p1}, Liq0;->i()Lbr0;

    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0, v0, v1}, Lhq0;->q(Ltp0;Lbr0;)V

    .line 29
    invoke-virtual {p0, v0, v1}, Lhq0;->p(Ltp0;Lbr0;)V

    .line 32
    invoke-virtual {p0, v0, v1}, Lhq0;->o(Ltp0;Lbr0;)V

    .line 35
    invoke-virtual {p0, v0, v1}, Lhq0;->n(Ltp0;Lbr0;)V

    .line 38
    invoke-virtual {p0, v0, v1}, Lhq0;->m(Ltp0;Lbr0;)V

    .line 41
    invoke-virtual {p0, v0, v1}, Lhq0;->l(Ltp0;Lbr0;)V

    .line 44
    invoke-virtual {p0, v0, v1}, Lhq0;->i(Ltp0;Lbr0;)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lsq0;->d()Lzp0;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ltp0;->c(Lzp0;)V

    .line 54
    return-object v0
.end method

.method public final l(Ltp0;Lbr0;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lbr0;->h:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object p2, p2, Lbr0;->h:Ljava/util/List;

    .line 18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p2

    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lbr0$f;

    .line 34
    invoke-virtual {p0, v1}, Lhq0;->h(Lbr0$f;)Lhx0;

    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, v0}, Ltp0;->p(Ljava/util/List;)V

    .line 45
    :cond_1
    return-void
.end method

.method public final m(Ltp0;Lbr0;)V
    .locals 4

    .line 1
    iget-object p2, p2, Lbr0;->g:Lbr0$b;

    .line 3
    if-eqz p2, :cond_1

    .line 5
    iget-object v0, p2, Lbr0$b;->b:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string v1, "\\*"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x2

    .line 17
    if-lt v2, v3, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "eab:"

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const/4 v2, 0x0

    .line 30
    aget-object v2, v1, v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "*ctl:"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/4 v2, 0x1

    .line 41
    aget-object v1, v1, v2

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "*suc:1"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    :cond_0
    invoke-virtual {p1, v0}, Ltp0;->r(Ljava/lang/String;)V

    .line 58
    iget-boolean p2, p2, Lbr0$b;->a:Z

    .line 60
    invoke-virtual {p1, p2}, Ltp0;->k(Z)V

    .line 63
    :cond_1
    return-void
.end method

.method public final n(Ltp0;Lbr0;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lbr0;->f:Lbr0$a;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget v0, p2, Lbr0$a;->a:I

    .line 7
    int-to-short v0, v0

    .line 8
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ltp0;->g(Ljava/lang/Short;)V

    .line 15
    iget v0, p2, Lbr0$a;->c:I

    .line 17
    int-to-byte v0, v0

    .line 18
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ltp0;->f(Ljava/lang/Byte;)V

    .line 25
    iget v0, p2, Lbr0$a;->b:I

    .line 27
    int-to-byte v0, v0

    .line 28
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ltp0;->n(Ljava/lang/Byte;)V

    .line 35
    iget v0, p2, Lbr0$a;->f:I

    .line 37
    int-to-short v0, v0

    .line 38
    invoke-virtual {p1, v0}, Ltp0;->j(S)V

    .line 41
    iget-object v0, p2, Lbr0$a;->h:[B

    .line 43
    invoke-static {v0}, Lbp0;->g([B)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-object p2, p2, Lbr0$a;->h:[B

    .line 51
    invoke-virtual {p1, p2}, Ltp0;->l([B)V

    .line 54
    :cond_0
    return-void
.end method

.method public final o(Ltp0;Lbr0;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lbr0;->e:Lbr0$c;

    .line 3
    if-eqz p2, :cond_1

    .line 5
    iget-object v0, p2, Lbr0$c;->a:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lbp0;->f(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p2, Lbr0$c;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Ltp0;->h(Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object v0, p2, Lbr0$c;->b:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lbp0;->f(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object p2, p2, Lbr0$c;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p2}, Ltp0;->o(Ljava/lang/String;)V

    .line 31
    :cond_1
    return-void
.end method

.method public final p(Ltp0;Lbr0;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lbr0;->c:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 9
    iget-object p2, p2, Lbr0;->c:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lbr0$d;

    .line 18
    new-instance v0, Lku0;

    .line 20
    invoke-direct {v0}, Lku0;-><init>()V

    .line 23
    iget-wide v1, p2, Lbr0$d;->a:J

    .line 25
    long-to-double v1, v1

    .line 26
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 31
    div-double/2addr v1, v3

    .line 32
    invoke-virtual {v0, v1, v2}, Lku0;->b(D)V

    .line 35
    iget-wide v1, p2, Lbr0$d;->b:J

    .line 37
    long-to-double v1, v1

    .line 38
    div-double/2addr v1, v3

    .line 39
    invoke-virtual {v0, v1, v2}, Lku0;->e(D)V

    .line 42
    iget p2, p2, Lbr0$d;->c:I

    .line 44
    invoke-virtual {v0, p2}, Lku0;->c(I)V

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Ltp0;->i(Ljava/util/List;)V

    .line 54
    :cond_0
    return-void
.end method

.method public final q(Ltp0;Lbr0;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lbr0;->d:Lbr0$e;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lvw0;

    .line 7
    invoke-direct {v0}, Lvw0;-><init>()V

    .line 10
    iget-object v1, p2, Lbr0;->d:Lbr0$e;

    .line 12
    iget-object v2, v1, Lbr0$e;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2}, Lvw0;->c(Ljava/lang/String;)V

    .line 17
    iget-object v2, v1, Lbr0$e;->d:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2}, Lvw0;->n(Ljava/lang/String;)V

    .line 22
    iget-object v2, v1, Lbr0$e;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2}, Lvw0;->h(Ljava/lang/String;)V

    .line 27
    iget-object v2, v1, Lbr0$e;->f:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v2}, Lvw0;->l(Ljava/lang/String;)V

    .line 32
    iget-object v2, v1, Lbr0$e;->m:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Lvw0;->t(Ljava/lang/String;)V

    .line 37
    iget-object v2, v1, Lbr0$e;->l:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v2}, Lvw0;->r(Ljava/lang/String;)V

    .line 42
    iget-object v2, v1, Lbr0$e;->g:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v2}, Lvw0;->j(Ljava/lang/String;)V

    .line 47
    iget-object v2, v1, Lbr0$e;->n:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Lvw0;->v(Ljava/lang/String;)V

    .line 52
    iget-object v2, v1, Lbr0$e;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v2}, Lvw0;->f(Ljava/lang/String;)V

    .line 57
    iget-object v2, v1, Lbr0$e;->h:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v2}, Lvw0;->p(Ljava/lang/String;)V

    .line 62
    new-instance v2, Lcx0;

    .line 64
    invoke-direct {v2}, Lcx0;-><init>()V

    .line 67
    iget-object v1, v1, Lbr0$e;->i:Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v1}, Lcx0;->b(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v2}, Lvw0;->b(Lcx0;)V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object p2, p2, Lbr0;->d:Lbr0$e;

    .line 82
    iget-object p2, p2, Lbr0$e;->j:Ljava/util/List;

    .line 84
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object p2

    .line 88
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_0

    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lbr0$e$a;

    .line 100
    new-instance v3, Ltq0;

    .line 102
    invoke-direct {v3}, Ltq0;-><init>()V

    .line 105
    iget-object v2, v2, Lbr0$e$a;->c:Ljava/lang/String;

    .line 107
    invoke-virtual {v3, v2}, Ltq0;->b(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, v1}, Lvw0;->d(Ljava/util/ArrayList;)V

    .line 117
    invoke-virtual {p1, v0}, Ltp0;->e(Lvw0;)V

    .line 120
    :cond_1
    return-void
.end method
