.class public Lth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:[J

.field public e:[Z

.field public f:Z

.field public g:I

.field public h:[[B

.field public i:[I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Lz50;Lk50;I)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lth;->b:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lth;->f:Z

    .line 11
    iput v0, p0, Lth;->g:I

    .line 13
    iput v0, p0, Lth;->j:I

    .line 15
    iput p3, p0, Lth;->m:I

    .line 17
    iget-object v1, p1, Lz50;->g:Lmb0;

    .line 19
    iget v2, p1, Lz50;->d:I

    .line 21
    iput v2, p0, Lth;->l:I

    .line 23
    iget-wide v3, p1, Lz50;->e:J

    .line 25
    iput-wide v3, p0, Lth;->a:J

    .line 27
    invoke-virtual {v1}, Lmb0;->j()J

    .line 30
    move-result-wide v3

    .line 31
    iput-wide v3, p0, Lth;->c:J

    .line 33
    invoke-virtual {v1}, Lmb0;->c()[J

    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lth;->d:[J

    .line 39
    iget-wide v3, p2, Lk50;->z:D

    .line 41
    const-wide/16 v5, 0x0

    .line 43
    cmpl-double v7, v3, v5

    .line 45
    if-lez v7, :cond_0

    .line 47
    iget-wide v5, p2, Lk50;->A:J

    .line 49
    iget-wide v7, p0, Lth;->a:J

    .line 51
    iget-wide v9, p2, Lk50;->D:J

    .line 53
    sub-long/2addr v7, v9

    .line 54
    long-to-double v7, v7

    .line 55
    mul-double v3, v3, v7

    .line 57
    double-to-long v3, v3

    .line 58
    add-long/2addr v5, v3

    .line 59
    iput-wide v5, p0, Lth;->b:J

    .line 61
    :cond_0
    invoke-virtual {v1}, Lmb0;->g()I

    .line 64
    move-result p2

    .line 65
    iget v1, p1, Lz50;->d:I

    .line 67
    filled-new-array {v1, p2}, [I

    .line 70
    move-result-object v1

    .line 71
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 73
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, [[B

    .line 79
    iput-object v1, p0, Lth;->h:[[B

    .line 81
    iget v1, p1, Lz50;->d:I

    .line 83
    new-array v3, v1, [I

    .line 85
    iput-object v3, p0, Lth;->i:[I

    .line 87
    new-array v1, v1, [Z

    .line 89
    iput-object v1, p0, Lth;->e:[Z

    .line 91
    const/4 v1, 0x0

    .line 92
    :goto_0
    const/4 v3, 0x1

    .line 93
    if-ge v1, v2, :cond_4

    .line 95
    iget-object v4, p1, Lz50;->g:Lmb0;

    .line 97
    invoke-virtual {v4}, Lmb0;->f()[B

    .line 100
    move-result-object v4

    .line 101
    iget v5, p0, Lth;->j:I

    .line 103
    array-length v6, v4

    .line 104
    add-int/2addr v5, v6

    .line 105
    iput v5, p0, Lth;->j:I

    .line 107
    array-length v5, v4

    .line 108
    if-ne v5, p2, :cond_1

    .line 110
    iget-object v5, p0, Lth;->h:[[B

    .line 112
    aput-object v4, v5, v1

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    array-length v5, v4

    .line 116
    if-ge v5, p2, :cond_2

    .line 118
    iget-object v5, p0, Lth;->h:[[B

    .line 120
    aget-object v5, v5, v1

    .line 122
    array-length v6, v4

    .line 123
    invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_2
    :goto_1
    iget-object v4, p0, Lth;->i:[I

    .line 128
    iget v5, p1, Lz50;->f:I

    .line 130
    aput v5, v4, v1

    .line 132
    iget-object v4, p0, Lth;->e:[Z

    .line 134
    iget-object v5, p1, Lz50;->g:Lmb0;

    .line 136
    invoke-virtual {v5}, Lmb0;->l()Z

    .line 139
    move-result v5

    .line 140
    aput-boolean v5, v4, v1

    .line 142
    iget-object v4, p0, Lth;->e:[Z

    .line 144
    aget-boolean v4, v4, v1

    .line 146
    if-eqz v4, :cond_3

    .line 148
    iput-boolean v3, p0, Lth;->f:Z

    .line 150
    :cond_3
    iget-object p1, p1, Lz50;->c:Lz50;

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_0

    .line 155
    :cond_4
    iget-object p1, p0, Lth;->i:[I

    .line 157
    sub-int/2addr v1, v3

    .line 158
    aget p1, p1, v1

    .line 160
    iput p1, p0, Lth;->k:I

    .line 162
    if-lez p3, :cond_6

    .line 164
    iget p2, p0, Lth;->l:I

    .line 166
    sub-int v0, p2, p1

    .line 168
    if-gez v0, :cond_5

    .line 170
    const v0, 0x7fffffff

    .line 173
    sub-int/2addr v0, p2

    .line 174
    add-int/2addr v0, p1

    .line 175
    :cond_5
    if-ne v0, v2, :cond_7

    .line 177
    if-ne v2, p3, :cond_7

    .line 179
    iput v3, p0, Lth;->g:I

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    const/4 p1, -0x1

    .line 183
    iput p1, p0, Lth;->g:I

    .line 185
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 8

    .line 1
    iget v0, p0, Lth;->m:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_2

    .line 7
    iget v0, p0, Lth;->j:I

    .line 9
    new-array v0, v0, [B

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    iget-object v4, p0, Lth;->h:[[B

    .line 15
    array-length v5, v4

    .line 16
    if-ge v1, v5, :cond_1

    .line 18
    aget-object v4, v4, v1

    .line 20
    array-length v5, v4

    .line 21
    add-int v6, v3, v5

    .line 23
    iget v7, p0, Lth;->j:I

    .line 25
    if-le v6, v7, :cond_0

    .line 27
    sub-int v5, v7, v3

    .line 29
    :cond_0
    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v4, p0, Lth;->h:[[B

    .line 34
    aget-object v4, v4, v1

    .line 36
    array-length v4, v4

    .line 37
    add-int/2addr v3, v4

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0

    .line 42
    :cond_2
    iget-object v0, p0, Lth;->h:[[B

    .line 44
    aget-object v0, v0, v2

    .line 46
    return-object v0
.end method
