.class public abstract Lkm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lji;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkm0$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Llg;

.field public c:Lpb0;

.field public d:Llg$b;

.field public e:Lhj;

.field public f:I

.field public g:Z

.field public h:Lli;

.field public i:Lli;

.field public j:Lkm0$b;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lhj;

    .line 6
    invoke-direct {v0, p0}, Lhj;-><init>(Lkm0;)V

    .line 9
    iput-object v0, p0, Lkm0;->e:Lhj;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lkm0;->f:I

    .line 14
    iput-boolean v0, p0, Lkm0;->g:Z

    .line 16
    new-instance v0, Lli;

    .line 18
    invoke-direct {v0, p0}, Lli;-><init>(Lkm0;)V

    .line 21
    iput-object v0, p0, Lkm0;->h:Lli;

    .line 23
    new-instance v0, Lli;

    .line 25
    invoke-direct {v0, p0}, Lli;-><init>(Lkm0;)V

    .line 28
    iput-object v0, p0, Lkm0;->i:Lli;

    .line 30
    sget-object v0, Lkm0$b;->a:Lkm0$b;

    .line 32
    iput-object v0, p0, Lkm0;->j:Lkm0$b;

    .line 34
    iput-object p1, p0, Lkm0;->b:Llg;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(Lji;)V
.end method

.method public final b(Lli;Lli;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lli;->l:Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iput p3, p1, Lli;->f:I

    .line 8
    iget-object p2, p2, Lli;->k:Ljava/util/List;

    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public final c(Lli;Lli;ILhj;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lli;->l:Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p1, Lli;->l:Ljava/util/List;

    .line 8
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iput p3, p1, Lli;->h:I

    .line 15
    iput-object p4, p1, Lli;->i:Lhj;

    .line 17
    iget-object p2, p2, Lli;->k:Ljava/util/List;

    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p2, p4, Lli;->k:Ljava/util/List;

    .line 24
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lkm0;->b:Llg;

    .line 5
    iget v0, p2, Llg;->t:I

    .line 7
    iget p2, p2, Llg;->s:I

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result p2

    .line 13
    if-lez v0, :cond_0

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result p2

    .line 19
    :cond_0
    if-eq p2, p1, :cond_3

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Lkm0;->b:Llg;

    .line 24
    iget v0, p2, Llg;->w:I

    .line 26
    iget p2, p2, Llg;->v:I

    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p2

    .line 32
    if-lez v0, :cond_2

    .line 34
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 37
    move-result p2

    .line 38
    :cond_2
    if-eq p2, p1, :cond_3

    .line 40
    :goto_0
    move p1, p2

    .line 41
    :cond_3
    return p1
.end method

.method public final h(Lfg;)Lli;
    .locals 3

    .line 1
    iget-object p1, p1, Lfg;->f:Lfg;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p1, Lfg;->d:Llg;

    .line 9
    iget-object p1, p1, Lfg;->e:Lfg$b;

    .line 11
    sget-object v2, Lkm0$a;->a:[I

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result p1

    .line 17
    aget p1, v2, p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p1, v2, :cond_5

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p1, v2, :cond_4

    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq p1, v2, :cond_3

    .line 28
    const/4 v2, 0x4

    .line 29
    if-eq p1, v2, :cond_2

    .line 31
    const/4 v2, 0x5

    .line 32
    if-eq p1, v2, :cond_1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, v1, Llg;->f:Luk0;

    .line 37
    iget-object v0, p1, Lkm0;->i:Lli;

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, v1, Llg;->f:Luk0;

    .line 42
    iget-object v0, p1, Luk0;->k:Lli;

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object p1, v1, Llg;->f:Luk0;

    .line 47
    iget-object v0, p1, Lkm0;->h:Lli;

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget-object p1, v1, Llg;->e:Lqp;

    .line 52
    iget-object v0, p1, Lkm0;->i:Lli;

    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object p1, v1, Llg;->e:Lqp;

    .line 57
    iget-object v0, p1, Lkm0;->h:Lli;

    .line 59
    :goto_0
    return-object v0
.end method

.method public final i(Lfg;I)Lli;
    .locals 2

    .line 1
    iget-object p1, p1, Lfg;->f:Lfg;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p1, Lfg;->d:Llg;

    .line 9
    if-nez p2, :cond_1

    .line 11
    iget-object p2, v1, Llg;->e:Lqp;

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, v1, Llg;->f:Luk0;

    .line 16
    :goto_0
    iget-object p1, p1, Lfg;->e:Lfg$b;

    .line 18
    sget-object v1, Lkm0$a;->a:[I

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result p1

    .line 24
    aget p1, v1, p1

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq p1, v1, :cond_3

    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq p1, v1, :cond_2

    .line 32
    const/4 v1, 0x3

    .line 33
    if-eq p1, v1, :cond_3

    .line 35
    const/4 v1, 0x5

    .line 36
    if-eq p1, v1, :cond_2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object v0, p2, Lkm0;->i:Lli;

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget-object v0, p2, Lkm0;->h:Lli;

    .line 44
    :goto_1
    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 3
    iget-boolean v1, v0, Lli;->j:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget v0, v0, Lli;->g:I

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    return-wide v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkm0;->g:Z

    .line 3
    return v0
.end method

.method public final l(II)V
    .locals 7

    .line 1
    iget v0, p0, Lkm0;->a:I

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_7

    .line 8
    const/4 p2, 0x2

    .line 9
    const/high16 v2, 0x3f000000    # 0.5f

    .line 11
    if-eq v0, p2, :cond_4

    .line 13
    const/4 p2, 0x3

    .line 14
    if-eq v0, p2, :cond_0

    .line 16
    goto/16 :goto_3

    .line 18
    :cond_0
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 20
    iget-object v3, v0, Llg;->e:Lqp;

    .line 22
    iget-object v4, v3, Lkm0;->d:Llg$b;

    .line 24
    sget-object v5, Llg$b;->c:Llg$b;

    .line 26
    if-ne v4, v5, :cond_1

    .line 28
    iget v4, v3, Lkm0;->a:I

    .line 30
    if-ne v4, p2, :cond_1

    .line 32
    iget-object v4, v0, Llg;->f:Luk0;

    .line 34
    iget-object v6, v4, Lkm0;->d:Llg$b;

    .line 36
    if-ne v6, v5, :cond_1

    .line 38
    iget v4, v4, Lkm0;->a:I

    .line 40
    if-ne v4, p2, :cond_1

    .line 42
    goto/16 :goto_3

    .line 44
    :cond_1
    if-nez p1, :cond_2

    .line 46
    iget-object v3, v0, Llg;->f:Luk0;

    .line 48
    :cond_2
    iget-object p2, v3, Lkm0;->e:Lhj;

    .line 50
    iget-boolean p2, p2, Lli;->j:Z

    .line 52
    if-eqz p2, :cond_9

    .line 54
    invoke-virtual {v0}, Llg;->t()F

    .line 57
    move-result p2

    .line 58
    if-ne p1, v1, :cond_3

    .line 60
    iget-object p1, v3, Lkm0;->e:Lhj;

    .line 62
    iget p1, p1, Lli;->g:I

    .line 64
    int-to-float p1, p1

    .line 65
    div-float/2addr p1, p2

    .line 66
    add-float/2addr p1, v2

    .line 67
    float-to-int p1, p1

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object p1, v3, Lkm0;->e:Lhj;

    .line 71
    iget p1, p1, Lli;->g:I

    .line 73
    int-to-float p1, p1

    .line 74
    mul-float p2, p2, p1

    .line 76
    add-float/2addr p2, v2

    .line 77
    float-to-int p1, p2

    .line 78
    :goto_0
    iget-object p2, p0, Lkm0;->e:Lhj;

    .line 80
    invoke-virtual {p2, p1}, Lhj;->d(I)V

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    iget-object p2, p0, Lkm0;->b:Llg;

    .line 86
    invoke-virtual {p2}, Llg;->I()Llg;

    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_9

    .line 92
    if-nez p1, :cond_5

    .line 94
    iget-object p2, p2, Llg;->e:Lqp;

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    iget-object p2, p2, Llg;->f:Luk0;

    .line 99
    :goto_1
    iget-object p2, p2, Lkm0;->e:Lhj;

    .line 101
    iget-boolean v0, p2, Lli;->j:Z

    .line 103
    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 107
    if-nez p1, :cond_6

    .line 109
    iget v0, v0, Llg;->u:F

    .line 111
    goto :goto_2

    .line 112
    :cond_6
    iget v0, v0, Llg;->x:F

    .line 114
    :goto_2
    iget p2, p2, Lli;->g:I

    .line 116
    int-to-float p2, p2

    .line 117
    mul-float p2, p2, v0

    .line 119
    add-float/2addr p2, v2

    .line 120
    float-to-int p2, p2

    .line 121
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 123
    invoke-virtual {p0, p2, p1}, Lkm0;->g(II)I

    .line 126
    move-result p1

    .line 127
    invoke-virtual {v0, p1}, Lhj;->d(I)V

    .line 130
    goto :goto_3

    .line 131
    :cond_7
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 133
    iget v0, v0, Lhj;->m:I

    .line 135
    invoke-virtual {p0, v0, p1}, Lkm0;->g(II)I

    .line 138
    move-result p1

    .line 139
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 144
    move-result p1

    .line 145
    invoke-virtual {v0, p1}, Lhj;->d(I)V

    .line 148
    goto :goto_3

    .line 149
    :cond_8
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 151
    invoke-virtual {p0, p2, p1}, Lkm0;->g(II)I

    .line 154
    move-result p1

    .line 155
    invoke-virtual {v0, p1}, Lhj;->d(I)V

    .line 158
    :cond_9
    :goto_3
    return-void
.end method

.method public abstract m()Z
.end method

.method public n(Lji;Lfg;Lfg;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lkm0;->h(Lfg;)Lli;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p3}, Lkm0;->h(Lfg;)Lli;

    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p1, Lli;->j:Z

    .line 11
    if-eqz v1, :cond_6

    .line 13
    iget-boolean v1, v0, Lli;->j:Z

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget v1, p1, Lli;->g:I

    .line 20
    invoke-virtual {p2}, Lfg;->e()I

    .line 23
    move-result p2

    .line 24
    add-int/2addr v1, p2

    .line 25
    iget p2, v0, Lli;->g:I

    .line 27
    invoke-virtual {p3}, Lfg;->e()I

    .line 30
    move-result p3

    .line 31
    sub-int/2addr p2, p3

    .line 32
    sub-int p3, p2, v1

    .line 34
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 36
    iget-boolean v2, v2, Lli;->j:Z

    .line 38
    if-nez v2, :cond_1

    .line 40
    iget-object v2, p0, Lkm0;->d:Llg$b;

    .line 42
    sget-object v3, Llg$b;->c:Llg$b;

    .line 44
    if-ne v2, v3, :cond_1

    .line 46
    invoke-virtual {p0, p4, p3}, Lkm0;->l(II)V

    .line 49
    :cond_1
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 51
    iget-boolean v3, v2, Lli;->j:Z

    .line 53
    if-nez v3, :cond_2

    .line 55
    return-void

    .line 56
    :cond_2
    iget v2, v2, Lli;->g:I

    .line 58
    if-ne v2, p3, :cond_3

    .line 60
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 62
    invoke-virtual {p1, v1}, Lli;->d(I)V

    .line 65
    iget-object p1, p0, Lkm0;->i:Lli;

    .line 67
    invoke-virtual {p1, p2}, Lli;->d(I)V

    .line 70
    return-void

    .line 71
    :cond_3
    iget-object p3, p0, Lkm0;->b:Llg;

    .line 73
    if-nez p4, :cond_4

    .line 75
    invoke-virtual {p3}, Llg;->w()F

    .line 78
    move-result p3

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p3}, Llg;->M()F

    .line 83
    move-result p3

    .line 84
    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    .line 86
    if-ne p1, v0, :cond_5

    .line 88
    iget v1, p1, Lli;->g:I

    .line 90
    iget p2, v0, Lli;->g:I

    .line 92
    const/high16 p3, 0x3f000000    # 0.5f

    .line 94
    :cond_5
    sub-int/2addr p2, v1

    .line 95
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 97
    iget p1, p1, Lli;->g:I

    .line 99
    sub-int/2addr p2, p1

    .line 100
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 102
    int-to-float v0, v1

    .line 103
    add-float/2addr v0, p4

    .line 104
    int-to-float p2, p2

    .line 105
    mul-float p2, p2, p3

    .line 107
    add-float/2addr v0, p2

    .line 108
    float-to-int p2, v0

    .line 109
    invoke-virtual {p1, p2}, Lli;->d(I)V

    .line 112
    iget-object p1, p0, Lkm0;->i:Lli;

    .line 114
    iget-object p2, p0, Lkm0;->h:Lli;

    .line 116
    iget p2, p2, Lli;->g:I

    .line 118
    iget-object p3, p0, Lkm0;->e:Lhj;

    .line 120
    iget p3, p3, Lli;->g:I

    .line 122
    add-int/2addr p2, p3

    .line 123
    invoke-virtual {p1, p2}, Lli;->d(I)V

    .line 126
    :cond_6
    :goto_1
    return-void
.end method

.method public o(Lji;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Lji;)V
    .locals 0

    .line 1
    return-void
.end method
