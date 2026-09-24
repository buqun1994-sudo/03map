.class public Lpb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:I


# instance fields
.field public a:I

.field public b:Z

.field public c:Lkm0;

.field public d:Lkm0;

.field public e:Ljava/util/ArrayList;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lkm0;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lpb0;->a:I

    .line 7
    iput-boolean v0, p0, Lpb0;->b:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lpb0;->c:Lkm0;

    .line 12
    iput-object v0, p0, Lpb0;->d:Lkm0;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Lpb0;->e:Ljava/util/ArrayList;

    .line 21
    sget v0, Lpb0;->h:I

    .line 23
    iput v0, p0, Lpb0;->f:I

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    sput v0, Lpb0;->h:I

    .line 29
    iput-object p1, p0, Lpb0;->c:Lkm0;

    .line 31
    iput-object p1, p0, Lpb0;->d:Lkm0;

    .line 33
    iput p2, p0, Lpb0;->g:I

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lkm0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpb0;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object p1, p0, Lpb0;->d:Lkm0;

    .line 8
    return-void
.end method

.method public b(Lmg;I)J
    .locals 12

    .line 1
    iget-object v0, p0, Lpb0;->c:Lkm0;

    .line 3
    instance-of v1, v0, Lne;

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lne;

    .line 12
    iget v1, v1, Lkm0;->f:I

    .line 14
    if-eq v1, p2, :cond_2

    .line 16
    return-wide v2

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 19
    instance-of v1, v0, Lqp;

    .line 21
    if-nez v1, :cond_2

    .line 23
    return-wide v2

    .line 24
    :cond_1
    instance-of v1, v0, Luk0;

    .line 26
    if-nez v1, :cond_2

    .line 28
    return-wide v2

    .line 29
    :cond_2
    if-nez p2, :cond_3

    .line 31
    iget-object v1, p1, Llg;->e:Lqp;

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v1, p1, Llg;->f:Luk0;

    .line 36
    :goto_0
    iget-object v1, v1, Lkm0;->h:Lli;

    .line 38
    if-nez p2, :cond_4

    .line 40
    iget-object p1, p1, Llg;->e:Lqp;

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    iget-object p1, p1, Llg;->f:Luk0;

    .line 45
    :goto_1
    iget-object p1, p1, Lkm0;->i:Lli;

    .line 47
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 49
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    iget-object v1, p0, Lpb0;->c:Lkm0;

    .line 57
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 59
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 61
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 65
    iget-object v1, p0, Lpb0;->c:Lkm0;

    .line 67
    invoke-virtual {v1}, Lkm0;->j()J

    .line 70
    move-result-wide v4

    .line 71
    if-eqz v0, :cond_8

    .line 73
    if-eqz p1, :cond_8

    .line 75
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 77
    iget-object p1, p1, Lkm0;->h:Lli;

    .line 79
    invoke-virtual {p0, p1, v2, v3}, Lpb0;->d(Lli;J)J

    .line 82
    move-result-wide v0

    .line 83
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 85
    iget-object p1, p1, Lkm0;->i:Lli;

    .line 87
    invoke-virtual {p0, p1, v2, v3}, Lpb0;->c(Lli;J)J

    .line 90
    move-result-wide v6

    .line 91
    sub-long/2addr v0, v4

    .line 92
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 94
    iget-object v8, p1, Lkm0;->i:Lli;

    .line 96
    iget v8, v8, Lli;->f:I

    .line 98
    neg-int v9, v8

    .line 99
    int-to-long v9, v9

    .line 100
    cmp-long v11, v0, v9

    .line 102
    if-ltz v11, :cond_5

    .line 104
    int-to-long v8, v8

    .line 105
    add-long/2addr v0, v8

    .line 106
    :cond_5
    neg-long v6, v6

    .line 107
    sub-long/2addr v6, v4

    .line 108
    iget-object v8, p1, Lkm0;->h:Lli;

    .line 110
    iget v8, v8, Lli;->f:I

    .line 112
    int-to-long v9, v8

    .line 113
    sub-long/2addr v6, v9

    .line 114
    int-to-long v9, v8

    .line 115
    cmp-long v11, v6, v9

    .line 117
    if-ltz v11, :cond_6

    .line 119
    int-to-long v8, v8

    .line 120
    sub-long/2addr v6, v8

    .line 121
    :cond_6
    iget-object p1, p1, Lkm0;->b:Llg;

    .line 123
    invoke-virtual {p1, p2}, Llg;->o(I)F

    .line 126
    move-result p1

    .line 127
    const/4 p2, 0x0

    .line 128
    const/high16 v8, 0x3f800000    # 1.0f

    .line 130
    cmpl-float p2, p1, p2

    .line 132
    if-lez p2, :cond_7

    .line 134
    long-to-float p2, v6

    .line 135
    div-float/2addr p2, p1

    .line 136
    long-to-float v0, v0

    .line 137
    sub-float v1, v8, p1

    .line 139
    div-float/2addr v0, v1

    .line 140
    add-float/2addr p2, v0

    .line 141
    float-to-long v2, p2

    .line 142
    :cond_7
    long-to-float p2, v2

    .line 143
    mul-float v0, p2, p1

    .line 145
    const/high16 v1, 0x3f000000    # 0.5f

    .line 147
    add-float/2addr v0, v1

    .line 148
    float-to-long v2, v0

    .line 149
    sub-float/2addr v8, p1

    .line 150
    mul-float p2, p2, v8

    .line 152
    add-float/2addr p2, v1

    .line 153
    float-to-long p1, p2

    .line 154
    add-long/2addr v2, v4

    .line 155
    add-long/2addr v2, p1

    .line 156
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 158
    iget-object p2, p1, Lkm0;->h:Lli;

    .line 160
    iget p2, p2, Lli;->f:I

    .line 162
    int-to-long v0, p2

    .line 163
    add-long/2addr v0, v2

    .line 164
    iget-object p1, p1, Lkm0;->i:Lli;

    .line 166
    iget p1, p1, Lli;->f:I

    .line 168
    goto :goto_2

    .line 169
    :cond_8
    if-eqz v0, :cond_9

    .line 171
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 173
    iget-object p1, p1, Lkm0;->h:Lli;

    .line 175
    iget p2, p1, Lli;->f:I

    .line 177
    int-to-long v0, p2

    .line 178
    invoke-virtual {p0, p1, v0, v1}, Lpb0;->d(Lli;J)J

    .line 181
    move-result-wide p1

    .line 182
    iget-object v0, p0, Lpb0;->c:Lkm0;

    .line 184
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 186
    iget v0, v0, Lli;->f:I

    .line 188
    int-to-long v0, v0

    .line 189
    add-long/2addr v0, v4

    .line 190
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 193
    move-result-wide v0

    .line 194
    goto :goto_3

    .line 195
    :cond_9
    if-eqz p1, :cond_a

    .line 197
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 199
    iget-object p1, p1, Lkm0;->i:Lli;

    .line 201
    iget p2, p1, Lli;->f:I

    .line 203
    int-to-long v0, p2

    .line 204
    invoke-virtual {p0, p1, v0, v1}, Lpb0;->c(Lli;J)J

    .line 207
    move-result-wide p1

    .line 208
    iget-object v0, p0, Lpb0;->c:Lkm0;

    .line 210
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 212
    iget v0, v0, Lli;->f:I

    .line 214
    neg-int v0, v0

    .line 215
    int-to-long v0, v0

    .line 216
    add-long/2addr v0, v4

    .line 217
    neg-long p1, p1

    .line 218
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 221
    move-result-wide v0

    .line 222
    goto :goto_3

    .line 223
    :cond_a
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 225
    iget-object p2, p1, Lkm0;->h:Lli;

    .line 227
    iget p2, p2, Lli;->f:I

    .line 229
    int-to-long v0, p2

    .line 230
    invoke-virtual {p1}, Lkm0;->j()J

    .line 233
    move-result-wide p1

    .line 234
    add-long/2addr v0, p1

    .line 235
    iget-object p1, p0, Lpb0;->c:Lkm0;

    .line 237
    iget-object p1, p1, Lkm0;->i:Lli;

    .line 239
    iget p1, p1, Lli;->f:I

    .line 241
    :goto_2
    int-to-long p1, p1

    .line 242
    sub-long/2addr v0, p1

    .line 243
    :goto_3
    return-wide v0
.end method

.method public final c(Lli;J)J
    .locals 8

    .line 1
    iget-object v0, p1, Lli;->d:Lkm0;

    .line 3
    instance-of v1, v0, Lfp;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-wide p2

    .line 8
    :cond_0
    iget-object v1, p1, Lli;->k:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move-wide v3, p2

    .line 16
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    iget-object v5, p1, Lli;->k:Ljava/util/List;

    .line 20
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lji;

    .line 26
    instance-of v6, v5, Lli;

    .line 28
    if-eqz v6, :cond_2

    .line 30
    check-cast v5, Lli;

    .line 32
    iget-object v6, v5, Lli;->d:Lkm0;

    .line 34
    if-ne v6, v0, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v6, v5, Lli;->f:I

    .line 39
    int-to-long v6, v6

    .line 40
    add-long/2addr v6, p2

    .line 41
    invoke-virtual {p0, v5, v6, v7}, Lpb0;->c(Lli;J)J

    .line 44
    move-result-wide v5

    .line 45
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 48
    move-result-wide v3

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, v0, Lkm0;->i:Lli;

    .line 54
    if-ne p1, v1, :cond_4

    .line 56
    invoke-virtual {v0}, Lkm0;->j()J

    .line 59
    move-result-wide v1

    .line 60
    iget-object p1, v0, Lkm0;->h:Lli;

    .line 62
    sub-long/2addr p2, v1

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lpb0;->c(Lli;J)J

    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 70
    move-result-wide v1

    .line 71
    iget-object p1, v0, Lkm0;->h:Lli;

    .line 73
    iget p1, p1, Lli;->f:I

    .line 75
    int-to-long v3, p1

    .line 76
    sub-long/2addr p2, v3

    .line 77
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 80
    move-result-wide v3

    .line 81
    :cond_4
    return-wide v3
.end method

.method public final d(Lli;J)J
    .locals 8

    .line 1
    iget-object v0, p1, Lli;->d:Lkm0;

    .line 3
    instance-of v1, v0, Lfp;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-wide p2

    .line 8
    :cond_0
    iget-object v1, p1, Lli;->k:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move-wide v3, p2

    .line 16
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    iget-object v5, p1, Lli;->k:Ljava/util/List;

    .line 20
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lji;

    .line 26
    instance-of v6, v5, Lli;

    .line 28
    if-eqz v6, :cond_2

    .line 30
    check-cast v5, Lli;

    .line 32
    iget-object v6, v5, Lli;->d:Lkm0;

    .line 34
    if-ne v6, v0, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget v6, v5, Lli;->f:I

    .line 39
    int-to-long v6, v6

    .line 40
    add-long/2addr v6, p2

    .line 41
    invoke-virtual {p0, v5, v6, v7}, Lpb0;->d(Lli;J)J

    .line 44
    move-result-wide v5

    .line 45
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 48
    move-result-wide v3

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, v0, Lkm0;->h:Lli;

    .line 54
    if-ne p1, v1, :cond_4

    .line 56
    invoke-virtual {v0}, Lkm0;->j()J

    .line 59
    move-result-wide v1

    .line 60
    iget-object p1, v0, Lkm0;->i:Lli;

    .line 62
    add-long/2addr p2, v1

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lpb0;->d(Lli;J)J

    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 70
    move-result-wide v1

    .line 71
    iget-object p1, v0, Lkm0;->i:Lli;

    .line 73
    iget p1, p1, Lli;->f:I

    .line 75
    int-to-long v3, p1

    .line 76
    sub-long/2addr p2, v3

    .line 77
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 80
    move-result-wide v3

    .line 81
    :cond_4
    return-wide v3
.end method
