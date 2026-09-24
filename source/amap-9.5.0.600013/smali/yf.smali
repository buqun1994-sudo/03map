.class public Lyf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lvh;

.field public b:Ljk0;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lyf;->a:Lvh;

    .line 7
    iput-object v0, p0, Lyf;->b:Ljk0;

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lyf;->c:Z

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 18
    if-ne v1, v2, :cond_0

    .line 20
    sget-object v1, Lei0;->a:Ljava/lang/String;

    .line 22
    const-string v2, "little endian"

    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-boolean v0, p0, Lyf;->c:Z

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 32
    const-string v1, "bigEndian"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lyf;->c:Z

    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lvh;)[B
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 3
    sget v0, Lvh;->t:I

    .line 5
    new-array v0, v0, [B

    .line 7
    iget-object v1, p1, Lvh;->a:[B

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    sget v1, Lvh;->p:I

    .line 16
    add-int/2addr v1, v3

    .line 17
    iget-object v2, p1, Lvh;->b:[B

    .line 19
    array-length v4, v2

    .line 20
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    sget v2, Lvh;->q:I

    .line 25
    add-int/2addr v1, v2

    .line 26
    iget-object v2, p1, Lvh;->c:[B

    .line 28
    array-length v4, v2

    .line 29
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    sget v2, Lvh;->p:I

    .line 34
    add-int/2addr v1, v2

    .line 35
    iget-object v2, p1, Lvh;->d:[B

    .line 37
    array-length v4, v2

    .line 38
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    sget v2, Lvh;->p:I

    .line 43
    add-int/2addr v1, v2

    .line 44
    iget-object v2, p1, Lvh;->e:[B

    .line 46
    array-length v4, v2

    .line 47
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    sget v2, Lvh;->p:I

    .line 52
    add-int/2addr v1, v2

    .line 53
    iget-object v2, p1, Lvh;->f:[B

    .line 55
    array-length v4, v2

    .line 56
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    sget v2, Lvh;->p:I

    .line 61
    add-int/2addr v1, v2

    .line 62
    iget-object v2, p1, Lvh;->g:[B

    .line 64
    array-length v4, v2

    .line 65
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    sget v2, Lvh;->p:I

    .line 70
    add-int/2addr v1, v2

    .line 71
    iget-object v2, p1, Lvh;->h:[B

    .line 73
    array-length v4, v2

    .line 74
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    sget v2, Lvh;->p:I

    .line 79
    add-int/2addr v1, v2

    .line 80
    iget-object v2, p1, Lvh;->i:[B

    .line 82
    array-length v4, v2

    .line 83
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    sget v2, Lvh;->q:I

    .line 88
    add-int/2addr v1, v2

    .line 89
    iget-object v2, p1, Lvh;->j:[B

    .line 91
    array-length v4, v2

    .line 92
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    sget v2, Lvh;->s:I

    .line 97
    add-int/2addr v1, v2

    .line 98
    iget-object v2, p1, Lvh;->k:[B

    .line 100
    array-length v4, v2

    .line 101
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    sget v2, Lvh;->s:I

    .line 106
    add-int/2addr v1, v2

    .line 107
    iget-object v2, p1, Lvh;->l:[B

    .line 109
    array-length v4, v2

    .line 110
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    sget v2, Lvh;->r:I

    .line 115
    add-int/2addr v1, v2

    .line 116
    iget-object v2, p1, Lvh;->m:[B

    .line 118
    array-length v4, v2

    .line 119
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    sget v2, Lvh;->r:I

    .line 124
    add-int/2addr v1, v2

    .line 125
    iget-object v2, p1, Lvh;->n:[B

    .line 127
    array-length v4, v2

    .line 128
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    sget v2, Lvh;->r:I

    .line 133
    add-int/2addr v1, v2

    .line 134
    iget-object p1, p1, Lvh;->o:[B

    .line 136
    array-length v2, p1

    .line 137
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0
.end method

.method public b(Lvh;)Ljk0;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljk0;

    .line 3
    invoke-direct {v0}, Ljk0;-><init>()V

    .line 6
    iget-object v1, p1, Lvh;->a:[B

    .line 8
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p1, Lvh;->a:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-string v2, "utf-8"

    .line 16
    if-eqz v1, :cond_0

    .line 18
    :try_start_1
    new-instance v3, Ljava/lang/String;

    .line 20
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 23
    iput-object v3, v0, Ljk0;->a:Ljava/lang/String;

    .line 25
    :cond_0
    iget-object v1, p1, Lvh;->b:[B

    .line 27
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p1, Lvh;->b:[B

    .line 33
    if-eqz v1, :cond_1

    .line 35
    new-instance v3, Ljava/lang/String;

    .line 37
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 40
    iput-object v3, v0, Ljk0;->b:Ljava/lang/String;

    .line 42
    :cond_1
    iget-object v1, p1, Lvh;->c:[B

    .line 44
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p1, Lvh;->c:[B

    .line 50
    if-eqz v1, :cond_2

    .line 52
    new-instance v3, Ljava/lang/String;

    .line 54
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 57
    iput-object v3, v0, Ljk0;->c:Ljava/lang/String;

    .line 59
    :cond_2
    iget-object v1, p1, Lvh;->d:[B

    .line 61
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p1, Lvh;->d:[B

    .line 67
    if-eqz v1, :cond_3

    .line 69
    new-instance v3, Ljava/lang/String;

    .line 71
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 74
    iput-object v3, v0, Ljk0;->d:Ljava/lang/String;

    .line 76
    :cond_3
    iget-object v1, p1, Lvh;->e:[B

    .line 78
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p1, Lvh;->e:[B

    .line 84
    if-eqz v1, :cond_4

    .line 86
    new-instance v3, Ljava/lang/String;

    .line 88
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 91
    iput-object v3, v0, Ljk0;->e:Ljava/lang/String;

    .line 93
    :cond_4
    iget-object v1, p1, Lvh;->f:[B

    .line 95
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p1, Lvh;->f:[B

    .line 101
    if-eqz v1, :cond_5

    .line 103
    new-instance v3, Ljava/lang/String;

    .line 105
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 108
    iput-object v3, v0, Ljk0;->f:Ljava/lang/String;

    .line 110
    :cond_5
    iget-object v1, p1, Lvh;->g:[B

    .line 112
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 115
    move-result-object v1

    .line 116
    iput-object v1, p1, Lvh;->g:[B

    .line 118
    if-eqz v1, :cond_6

    .line 120
    new-instance v3, Ljava/lang/String;

    .line 122
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 125
    iput-object v3, v0, Ljk0;->g:Ljava/lang/String;

    .line 127
    :cond_6
    iget-object v1, p1, Lvh;->h:[B

    .line 129
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 132
    move-result-object v1

    .line 133
    iput-object v1, p1, Lvh;->h:[B

    .line 135
    if-eqz v1, :cond_7

    .line 137
    new-instance v3, Ljava/lang/String;

    .line 139
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 142
    iput-object v3, v0, Ljk0;->h:Ljava/lang/String;

    .line 144
    :cond_7
    iget-object v1, p1, Lvh;->i:[B

    .line 146
    invoke-virtual {p0, v1}, Lyf;->j([B)[B

    .line 149
    move-result-object v1

    .line 150
    iput-object v1, p1, Lvh;->i:[B

    .line 152
    if-eqz v1, :cond_8

    .line 154
    new-instance v3, Ljava/lang/String;

    .line 156
    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 159
    iput-object v3, v0, Ljk0;->i:Ljava/lang/String;

    .line 161
    :cond_8
    iget-object v1, p1, Lvh;->j:[B

    .line 163
    invoke-virtual {p0, v1}, Lyf;->e([B)Z

    .line 166
    move-result v1

    .line 167
    iput-boolean v1, v0, Ljk0;->j:Z

    .line 169
    iget-object v1, p1, Lvh;->k:[B

    .line 171
    invoke-virtual {p0, v1}, Lyf;->e([B)Z

    .line 174
    move-result v1

    .line 175
    iput-boolean v1, v0, Ljk0;->k:Z

    .line 177
    iget-object v1, p1, Lvh;->l:[B

    .line 179
    invoke-virtual {p0, v1}, Lyf;->h([B)I

    .line 182
    move-result v1

    .line 183
    iput v1, v0, Ljk0;->l:I

    .line 185
    iget-object v1, p1, Lvh;->m:[B

    .line 187
    invoke-virtual {p0, v1}, Lyf;->h([B)I

    .line 190
    move-result v1

    .line 191
    iput v1, v0, Ljk0;->m:I

    .line 193
    iget-object v1, p1, Lvh;->n:[B

    .line 195
    invoke-virtual {p0, v1}, Lyf;->f([B)J

    .line 198
    move-result-wide v1

    .line 199
    iput-wide v1, v0, Ljk0;->n:J

    .line 201
    iget-object p1, p1, Lvh;->o:[B

    .line 203
    invoke-virtual {p0, p1}, Lyf;->h([B)I

    .line 206
    move-result p1

    .line 207
    iput p1, v0, Ljk0;->o:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    goto :goto_0

    .line 210
    :catch_0
    move-exception p1

    .line 211
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0
.end method

.method public c(Ljk0;)Lvh;
    .locals 3

    .line 1
    if-eqz p1, :cond_9

    .line 3
    new-instance v0, Lvh;

    .line 5
    invoke-direct {v0}, Lvh;-><init>()V

    .line 8
    iget-object v1, p1, Ljk0;->i:Ljava/lang/String;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lvh;->i:[B

    .line 18
    :cond_0
    iget-object v1, p1, Ljk0;->d:Ljava/lang/String;

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lvh;->d:[B

    .line 28
    :cond_1
    iget-object v1, p1, Ljk0;->e:Ljava/lang/String;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lvh;->e:[B

    .line 38
    :cond_2
    iget-object v1, p1, Ljk0;->c:Ljava/lang/String;

    .line 40
    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lvh;->c:[B

    .line 48
    :cond_3
    iget-object v1, p1, Ljk0;->f:Ljava/lang/String;

    .line 50
    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lvh;->f:[B

    .line 58
    :cond_4
    iget-object v1, p1, Ljk0;->b:Ljava/lang/String;

    .line 60
    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 65
    move-result-object v1

    .line 66
    iput-object v1, v0, Lvh;->b:[B

    .line 68
    :cond_5
    iget-object v1, p1, Ljk0;->h:Ljava/lang/String;

    .line 70
    if-eqz v1, :cond_6

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lvh;->h:[B

    .line 78
    :cond_6
    iget-object v1, p1, Ljk0;->g:Ljava/lang/String;

    .line 80
    if-eqz v1, :cond_7

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 85
    move-result-object v1

    .line 86
    iput-object v1, v0, Lvh;->g:[B

    .line 88
    :cond_7
    iget-object v1, p1, Ljk0;->a:Ljava/lang/String;

    .line 90
    if-eqz v1, :cond_8

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 95
    move-result-object v1

    .line 96
    iput-object v1, v0, Lvh;->a:[B

    .line 98
    :cond_8
    iget-boolean v1, p1, Ljk0;->k:Z

    .line 100
    invoke-virtual {p0, v1}, Lyf;->d(Z)[B

    .line 103
    move-result-object v1

    .line 104
    iput-object v1, v0, Lvh;->k:[B

    .line 106
    iget v1, p1, Ljk0;->m:I

    .line 108
    invoke-virtual {p0, v1}, Lyf;->i(I)[B

    .line 111
    move-result-object v1

    .line 112
    iput-object v1, v0, Lvh;->m:[B

    .line 114
    iget-boolean v1, p1, Ljk0;->j:Z

    .line 116
    invoke-virtual {p0, v1}, Lyf;->d(Z)[B

    .line 119
    move-result-object v1

    .line 120
    iput-object v1, v0, Lvh;->j:[B

    .line 122
    iget v1, p1, Ljk0;->l:I

    .line 124
    invoke-virtual {p0, v1}, Lyf;->i(I)[B

    .line 127
    move-result-object v1

    .line 128
    iput-object v1, v0, Lvh;->l:[B

    .line 130
    iget v1, p1, Ljk0;->m:I

    .line 132
    invoke-virtual {p0, v1}, Lyf;->i(I)[B

    .line 135
    move-result-object v1

    .line 136
    iput-object v1, v0, Lvh;->m:[B

    .line 138
    iget-wide v1, p1, Ljk0;->n:J

    .line 140
    long-to-int v2, v1

    .line 141
    invoke-virtual {p0, v2}, Lyf;->i(I)[B

    .line 144
    move-result-object v1

    .line 145
    iput-object v1, v0, Lvh;->n:[B

    .line 147
    iget p1, p1, Ljk0;->o:I

    .line 149
    invoke-virtual {p0, p1}, Lyf;->i(I)[B

    .line 152
    move-result-object p1

    .line 153
    iput-object p1, v0, Lvh;->o:[B

    .line 155
    goto :goto_0

    .line 156
    :cond_9
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0
.end method

.method public final d(Z)[B
    .locals 3

    .line 1
    sget v0, Lvh;->s:I

    .line 3
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-byte v2, v0, v1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    aput-byte v1, v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    aput-byte v2, v0, v2

    .line 16
    :goto_0
    return-object v0
.end method

.method public final e([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    .line 4
    and-int/lit16 v1, v1, 0xff

    .line 6
    const/4 v2, 0x1

    .line 7
    aget-byte p1, p1, v2

    .line 9
    shl-int/lit8 p1, p1, 0x8

    .line 11
    const v3, 0xff00

    .line 14
    and-int/2addr p1, v3

    .line 15
    or-int/2addr p1, v1

    .line 16
    if-lez p1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_0
    return v0
.end method

.method public final f([B)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lyf;->h([B)I

    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    return-wide v0
.end method

.method public g([B)Lvh;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lvh;

    .line 7
    invoke-direct {v0}, Lvh;-><init>()V

    .line 10
    iget-object v1, v0, Lvh;->a:[B

    .line 12
    sget v2, Lvh;->p:I

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    sget v1, Lvh;->p:I

    .line 20
    add-int/2addr v1, v3

    .line 21
    iget-object v2, v0, Lvh;->b:[B

    .line 23
    sget v4, Lvh;->q:I

    .line 25
    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    sget v2, Lvh;->q:I

    .line 30
    add-int/2addr v1, v2

    .line 31
    iget-object v2, v0, Lvh;->c:[B

    .line 33
    sget v4, Lvh;->p:I

    .line 35
    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    sget v2, Lvh;->p:I

    .line 40
    add-int/2addr v1, v2

    .line 41
    iget-object v4, v0, Lvh;->d:[B

    .line 43
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    sget v2, Lvh;->p:I

    .line 48
    add-int/2addr v1, v2

    .line 49
    iget-object v4, v0, Lvh;->e:[B

    .line 51
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    sget v2, Lvh;->p:I

    .line 56
    add-int/2addr v1, v2

    .line 57
    iget-object v4, v0, Lvh;->f:[B

    .line 59
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    sget v2, Lvh;->p:I

    .line 64
    add-int/2addr v1, v2

    .line 65
    iget-object v4, v0, Lvh;->g:[B

    .line 67
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    sget v2, Lvh;->p:I

    .line 72
    add-int/2addr v1, v2

    .line 73
    iget-object v4, v0, Lvh;->h:[B

    .line 75
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    sget v2, Lvh;->p:I

    .line 80
    add-int/2addr v1, v2

    .line 81
    iget-object v2, v0, Lvh;->i:[B

    .line 83
    sget v4, Lvh;->q:I

    .line 85
    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    sget v2, Lvh;->q:I

    .line 90
    add-int/2addr v1, v2

    .line 91
    iget-object v2, v0, Lvh;->j:[B

    .line 93
    sget v4, Lvh;->s:I

    .line 95
    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    sget v2, Lvh;->s:I

    .line 100
    add-int/2addr v1, v2

    .line 101
    iget-object v4, v0, Lvh;->k:[B

    .line 103
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    sget v2, Lvh;->s:I

    .line 108
    add-int/2addr v1, v2

    .line 109
    iget-object v2, v0, Lvh;->l:[B

    .line 111
    sget v4, Lvh;->r:I

    .line 113
    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    sget v2, Lvh;->r:I

    .line 118
    add-int/2addr v1, v2

    .line 119
    iget-object v4, v0, Lvh;->m:[B

    .line 121
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    sget v2, Lvh;->r:I

    .line 126
    add-int/2addr v1, v2

    .line 127
    iget-object v4, v0, Lvh;->n:[B

    .line 129
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    sget v2, Lvh;->r:I

    .line 134
    add-int/2addr v1, v2

    .line 135
    iget-object v4, v0, Lvh;->o:[B

    .line 137
    invoke-static {p1, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-object v0
.end method

.method public final h([B)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-boolean v1, p0, Lyf;->c:Z

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x3

    .line 9
    if-eqz v1, :cond_0

    .line 11
    aget-byte v0, p1, v0

    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 15
    aget-byte v1, p1, v2

    .line 17
    and-int/lit16 v1, v1, 0xff

    .line 19
    shl-int/lit8 v1, v1, 0x8

    .line 21
    or-int/2addr v0, v1

    .line 22
    aget-byte v1, p1, v3

    .line 24
    and-int/lit16 v1, v1, 0xff

    .line 26
    shl-int/lit8 v1, v1, 0x10

    .line 28
    or-int/2addr v0, v1

    .line 29
    aget-byte p1, p1, v4

    .line 31
    and-int/lit16 p1, p1, 0xff

    .line 33
    shl-int/lit8 p1, p1, 0x18

    .line 35
    or-int/2addr v0, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    aget-byte v1, p1, v4

    .line 39
    and-int/lit16 v1, v1, 0xff

    .line 41
    aget-byte v3, p1, v3

    .line 43
    and-int/lit16 v3, v3, 0xff

    .line 45
    shl-int/lit8 v3, v3, 0x8

    .line 47
    or-int/2addr v1, v3

    .line 48
    aget-byte v2, p1, v2

    .line 50
    and-int/lit16 v2, v2, 0xff

    .line 52
    shl-int/lit8 v2, v2, 0x10

    .line 54
    or-int/2addr v1, v2

    .line 55
    aget-byte p1, p1, v0

    .line 57
    and-int/lit16 p1, p1, 0xff

    .line 59
    shl-int/lit8 p1, p1, 0x18

    .line 61
    or-int v0, v1, p1

    .line 63
    :cond_1
    :goto_0
    return v0
.end method

.method public final i(I)[B
    .locals 6

    .line 1
    sget v0, Lvh;->r:I

    .line 3
    new-array v0, v0, [B

    .line 5
    iget-boolean v1, p0, Lyf;->c:Z

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    shr-int/lit8 v1, p1, 0x18

    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, v0, v2

    .line 20
    shr-int/lit8 v1, p1, 0x10

    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 24
    int-to-byte v1, v1

    .line 25
    aput-byte v1, v0, v3

    .line 27
    shr-int/lit8 v1, p1, 0x8

    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 31
    int-to-byte v1, v1

    .line 32
    aput-byte v1, v0, v4

    .line 34
    and-int/lit16 p1, p1, 0xff

    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v0, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    shr-int/lit8 v1, p1, 0x18

    .line 42
    and-int/lit16 v1, v1, 0xff

    .line 44
    int-to-byte v1, v1

    .line 45
    aput-byte v1, v0, v5

    .line 47
    shr-int/lit8 v1, p1, 0x10

    .line 49
    and-int/lit16 v1, v1, 0xff

    .line 51
    int-to-byte v1, v1

    .line 52
    aput-byte v1, v0, v4

    .line 54
    shr-int/lit8 v1, p1, 0x8

    .line 56
    and-int/lit16 v1, v1, 0xff

    .line 58
    int-to-byte v1, v1

    .line 59
    aput-byte v1, v0, v3

    .line 61
    and-int/lit16 p1, p1, 0xff

    .line 63
    int-to-byte p1, p1

    .line 64
    aput-byte p1, v0, v2

    .line 66
    :goto_0
    return-object v0
.end method

.method public final j([B)[B
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_2

    .line 6
    array-length v0, p1

    .line 7
    new-array v0, v0, [B

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    array-length v4, p1

    .line 13
    if-ge v2, v4, :cond_1

    .line 15
    aget-byte v4, p1, v2

    .line 17
    if-eqz v4, :cond_0

    .line 19
    add-int/lit8 v5, v3, 0x1

    .line 21
    aput-byte v4, v0, v3

    .line 23
    move v3, v5

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-lez v3, :cond_2

    .line 29
    new-array p1, v3, [B

    .line 31
    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    :goto_1
    return-object p1
.end method
