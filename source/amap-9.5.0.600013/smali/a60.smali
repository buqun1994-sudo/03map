.class public La60;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr90;

.field public b:J

.field public c:Lk50;

.field public d:I

.field public e:Lz50;

.field public f:Lz50;

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lr90;Lk50;Lmb0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, La60;->d:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, La60;->e:Lz50;

    .line 10
    iput-object v0, p0, La60;->f:Lz50;

    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, La60;->g:I

    .line 15
    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, La60;->h:J

    .line 19
    iput-object p1, p0, La60;->a:Lr90;

    .line 21
    iput-object p2, p0, La60;->c:Lk50;

    .line 23
    invoke-virtual {p3}, Lmb0;->j()J

    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, La60;->b:J

    .line 29
    new-instance p1, Lz50;

    .line 31
    invoke-direct {p1, p3}, Lz50;-><init>(Lmb0;)V

    .line 34
    iput-object p1, p0, La60;->e:Lz50;

    .line 36
    iput-object p1, p0, La60;->f:Lz50;

    .line 38
    const/4 p1, 0x1

    .line 39
    iput p1, p0, La60;->d:I

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lmb0;)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 4
    monitor-exit p0

    .line 5
    const/4 p1, -0x5

    .line 6
    return p1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lmb0;->k()J

    .line 10
    new-instance v0, Lz50;

    .line 12
    invoke-direct {v0, p1}, Lz50;-><init>(Lmb0;)V

    .line 15
    iget-object p1, p0, La60;->a:Lr90;

    .line 17
    iget p1, p1, Lr90;->o:I

    .line 19
    if-lez p1, :cond_1

    .line 21
    invoke-virtual {p0, v0}, La60;->c(Lz50;)I

    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-nez p1, :cond_2

    .line 28
    invoke-virtual {p0, v0}, La60;->e(Lz50;)I

    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v1, -0x1

    .line 34
    if-ne p1, v1, :cond_3

    .line 36
    invoke-virtual {p0, v0}, La60;->j(Lz50;)I

    .line 39
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 p1, 0x0

    .line 42
    :goto_0
    monitor-exit p0

    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method

.method public final b(Lz50;Lz50;)I
    .locals 4

    .line 1
    iget v0, p1, Lz50;->f:I

    .line 3
    iget v1, p2, Lz50;->f:I

    .line 5
    if-ge v0, v1, :cond_2

    .line 7
    iget v0, p1, Lz50;->d:I

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p1, Lz50;->d:I

    .line 13
    :goto_0
    iget-object v0, p1, Lz50;->c:Lz50;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget v1, v0, Lz50;->f:I

    .line 19
    iget v2, p2, Lz50;->f:I

    .line 21
    if-ge v1, v2, :cond_0

    .line 23
    move-object p1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    iget v1, v0, Lz50;->f:I

    .line 29
    iget v2, p2, Lz50;->f:I

    .line 31
    if-ne v1, v2, :cond_1

    .line 33
    const/4 p1, -0x2

    .line 34
    return p1

    .line 35
    :cond_1
    iput-object v0, p2, Lz50;->c:Lz50;

    .line 37
    iput-object p2, p1, Lz50;->c:Lz50;

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iput-object p1, p2, Lz50;->c:Lz50;

    .line 42
    iget v0, p1, Lz50;->d:I

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 46
    iput v0, p2, Lz50;->d:I

    .line 48
    iget-object v0, p1, Lz50;->a:Lz50;

    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz v0, :cond_3

    .line 53
    iput-object p2, v0, Lz50;->b:Lz50;

    .line 55
    iput-object v0, p2, Lz50;->a:Lz50;

    .line 57
    iput-object v1, p1, Lz50;->a:Lz50;

    .line 59
    :cond_3
    iget-object v0, p1, Lz50;->b:Lz50;

    .line 61
    if-eqz v0, :cond_4

    .line 63
    iput-object p2, v0, Lz50;->a:Lz50;

    .line 65
    iput-object v0, p2, Lz50;->b:Lz50;

    .line 67
    iput-object v1, p1, Lz50;->b:Lz50;

    .line 69
    :cond_4
    iget-object p1, p0, La60;->f:Lz50;

    .line 71
    iget-wide v0, p1, Lz50;->e:J

    .line 73
    iget-wide v2, p2, Lz50;->e:J

    .line 75
    cmp-long p1, v0, v2

    .line 77
    if-nez p1, :cond_5

    .line 79
    iput-object p2, p0, La60;->f:Lz50;

    .line 81
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 82
    return p1
.end method

.method public final c(Lz50;)I
    .locals 8

    .line 1
    iget v0, p0, La60;->d:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, La60;->f:Lz50;

    .line 7
    iput-object p1, p0, La60;->e:Lz50;

    .line 9
    goto/16 :goto_2

    .line 11
    :cond_0
    iget-wide v0, p1, Lz50;->e:J

    .line 13
    iget-object v2, p0, La60;->f:Lz50;

    .line 15
    iget-wide v3, v2, Lz50;->e:J

    .line 17
    cmp-long v5, v0, v3

    .line 19
    if-gtz v5, :cond_7

    .line 21
    iget v3, p1, Lz50;->f:I

    .line 23
    iget v4, v2, Lz50;->f:I

    .line 25
    if-le v3, v4, :cond_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0, v0, v1, v3}, La60;->f(JI)Z

    .line 31
    move-result v0

    .line 32
    const/4 v1, -0x1

    .line 33
    if-nez v0, :cond_2

    .line 35
    iget-object v0, p0, La60;->a:Lr90;

    .line 37
    iget v0, v0, Lr90;->o:I

    .line 39
    if-le v0, v1, :cond_2

    .line 41
    return v1

    .line 42
    :cond_2
    iget-object v0, p0, La60;->f:Lz50;

    .line 44
    :goto_0
    iget-wide v2, v0, Lz50;->e:J

    .line 46
    iget-wide v4, p1, Lz50;->e:J

    .line 48
    cmp-long v6, v2, v4

    .line 50
    if-lez v6, :cond_3

    .line 52
    iget-object v0, v0, Lz50;->a:Lz50;

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    cmp-long v6, v2, v4

    .line 57
    if-nez v6, :cond_4

    .line 59
    iget-object v6, p0, La60;->a:Lr90;

    .line 61
    iget-boolean v6, v6, Lr90;->n:Z

    .line 63
    if-eqz v6, :cond_4

    .line 65
    iget v6, p1, Lz50;->f:I

    .line 67
    iget v7, v0, Lz50;->f:I

    .line 69
    if-eq v6, v7, :cond_4

    .line 71
    invoke-virtual {p0, v0, p1}, La60;->b(Lz50;Lz50;)I

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_8

    .line 77
    return p1

    .line 78
    :cond_4
    cmp-long v6, v2, v4

    .line 80
    if-nez v6, :cond_5

    .line 82
    iget v2, p1, Lz50;->f:I

    .line 84
    iget v3, v0, Lz50;->f:I

    .line 86
    if-ne v2, v3, :cond_5

    .line 88
    return v1

    .line 89
    :cond_5
    iput-object v0, p1, Lz50;->a:Lz50;

    .line 91
    iget-object v1, v0, Lz50;->b:Lz50;

    .line 93
    iput-object v1, p1, Lz50;->b:Lz50;

    .line 95
    if-eqz v1, :cond_6

    .line 97
    iput-object p1, v1, Lz50;->a:Lz50;

    .line 99
    :cond_6
    iput-object p1, v0, Lz50;->b:Lz50;

    .line 101
    iget-object v0, p0, La60;->f:Lz50;

    .line 103
    iget-wide v0, v0, Lz50;->e:J

    .line 105
    cmp-long v2, v4, v0

    .line 107
    if-lez v2, :cond_8

    .line 109
    iput-object p1, p0, La60;->f:Lz50;

    .line 111
    goto :goto_2

    .line 112
    :cond_7
    :goto_1
    iput-object v2, p1, Lz50;->a:Lz50;

    .line 114
    iput-object p1, v2, Lz50;->b:Lz50;

    .line 116
    iput-object p1, p0, La60;->f:Lz50;

    .line 118
    :cond_8
    :goto_2
    iget p1, p0, La60;->d:I

    .line 120
    add-int/lit8 p1, p1, 0x1

    .line 122
    iput p1, p0, La60;->d:I

    .line 124
    const/4 p1, 0x0

    .line 125
    return p1
.end method

.method public final d()Lth;
    .locals 5

    .line 1
    iget-object v0, p0, La60;->e:Lz50;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget v1, v0, Lz50;->f:I

    .line 7
    iget v2, p0, La60;->g:I

    .line 9
    add-int/lit8 v3, v2, 0x1

    .line 11
    if-eq v1, v3, :cond_0

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget v1, p0, La60;->d:I

    .line 17
    iget-object v3, p0, La60;->a:Lr90;

    .line 19
    iget v3, v3, Lr90;->o:I

    .line 21
    if-gt v1, v3, :cond_0

    .line 23
    if-gez v2, :cond_1

    .line 25
    :cond_0
    new-instance v1, Lth;

    .line 27
    iget-object v2, p0, La60;->c:Lk50;

    .line 29
    iget-object v3, p0, La60;->a:Lr90;

    .line 31
    iget-object v3, v3, Lr90;->q:Lp90;

    .line 33
    iget-object v4, v0, Lz50;->g:Lmb0;

    .line 35
    invoke-virtual {v4}, Lmb0;->h()I

    .line 38
    move-result v4

    .line 39
    invoke-interface {v3, v4}, Lp90;->b(I)I

    .line 42
    move-result v3

    .line 43
    invoke-direct {v1, v0, v2, v3}, Lth;-><init>(Lz50;Lk50;I)V

    .line 46
    iget v2, v1, Lth;->k:I

    .line 48
    invoke-virtual {p0, v0, v2}, La60;->g(Lz50;I)V

    .line 51
    return-object v1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    return-object v0
.end method

.method public final e(Lz50;)I
    .locals 8

    .line 1
    iget v0, p0, La60;->d:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, La60;->f:Lz50;

    .line 8
    iput-object p1, p0, La60;->e:Lz50;

    .line 10
    iput v1, p0, La60;->d:I

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-wide v2, p1, Lz50;->e:J

    .line 15
    iget-object v4, p0, La60;->f:Lz50;

    .line 17
    iget-wide v5, v4, Lz50;->e:J

    .line 19
    cmp-long v7, v2, v5

    .line 21
    if-gtz v7, :cond_2

    .line 23
    iget v2, p1, Lz50;->f:I

    .line 25
    iget v3, v4, Lz50;->f:I

    .line 27
    if-le v2, v3, :cond_1

    .line 29
    sub-int/2addr v2, v3

    .line 30
    const/16 v3, 0xa

    .line 32
    if-ge v2, v3, :cond_1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, -0x1

    .line 36
    return p1

    .line 37
    :cond_2
    :goto_0
    iput-object v4, p1, Lz50;->a:Lz50;

    .line 39
    iput-object p1, v4, Lz50;->b:Lz50;

    .line 41
    iput-object p1, p0, La60;->f:Lz50;

    .line 43
    add-int/2addr v0, v1

    .line 44
    iput v0, p0, La60;->d:I

    .line 46
    :goto_1
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public f(JI)Z
    .locals 5

    .line 1
    iget v0, p0, La60;->g:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    return v2

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    const/4 v3, 0x3

    .line 10
    if-lt p3, v0, :cond_1

    .line 12
    if-ge v0, v3, :cond_2

    .line 14
    iget-wide v3, p0, La60;->h:J

    .line 16
    cmp-long p3, p1, v3

    .line 18
    if-gez p3, :cond_2

    .line 20
    return v1

    .line 21
    :cond_1
    if-gt p3, v3, :cond_3

    .line 23
    iget-wide v3, p0, La60;->h:J

    .line 25
    cmp-long p3, p1, v3

    .line 27
    if-gez p3, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return v2

    .line 31
    :cond_3
    :goto_0
    return v1
.end method

.method public final g(Lz50;I)V
    .locals 4

    .line 1
    iget v0, p0, La60;->d:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v2, v0, :cond_0

    .line 7
    iput-object v1, p0, La60;->f:Lz50;

    .line 9
    iput-object v1, p0, La60;->e:Lz50;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v3, p0, La60;->e:Lz50;

    .line 14
    iget-object v3, v3, Lz50;->b:Lz50;

    .line 16
    iput-object v3, p0, La60;->e:Lz50;

    .line 18
    iput-object v1, v3, Lz50;->a:Lz50;

    .line 20
    :goto_0
    sub-int/2addr v0, v2

    .line 21
    iput v0, p0, La60;->d:I

    .line 23
    iput p2, p0, La60;->g:I

    .line 25
    iget-wide p1, p1, Lz50;->e:J

    .line 27
    iput-wide p1, p0, La60;->h:J

    .line 29
    return-void
.end method

.method public declared-synchronized h()Lth;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, La60;->a:Lr90;

    .line 4
    iget v0, v0, Lr90;->o:I

    .line 6
    if-lez v0, :cond_0

    .line 8
    invoke-virtual {p0}, La60;->d()Lth;

    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p0}, La60;->i()Lth;

    .line 17
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public final i()Lth;
    .locals 5

    .line 1
    iget-object v0, p0, La60;->e:Lz50;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v1, v0, Lz50;->f:I

    .line 7
    invoke-virtual {p0, v0, v1}, La60;->g(Lz50;I)V

    .line 10
    new-instance v1, Lth;

    .line 12
    iget-object v2, p0, La60;->c:Lk50;

    .line 14
    iget-object v3, p0, La60;->a:Lr90;

    .line 16
    iget-object v3, v3, Lr90;->q:Lp90;

    .line 18
    iget-object v4, v0, Lz50;->g:Lmb0;

    .line 20
    invoke-virtual {v4}, Lmb0;->h()I

    .line 23
    move-result v4

    .line 24
    invoke-interface {v3, v4}, Lp90;->b(I)I

    .line 27
    move-result v3

    .line 28
    invoke-direct {v1, v0, v2, v3}, Lth;-><init>(Lz50;Lk50;I)V

    .line 31
    return-object v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public final j(Lz50;)I
    .locals 1

    .line 1
    iget-object v0, p0, La60;->e:Lz50;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iput-object p1, v0, Lz50;->a:Lz50;

    .line 7
    iput-object v0, p1, Lz50;->b:Lz50;

    .line 9
    iput-object p1, p0, La60;->e:Lz50;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, La60;->e:Lz50;

    .line 14
    iput-object p1, p0, La60;->f:Lz50;

    .line 16
    :goto_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
