.class public Lou0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/nio/charset/Charset;


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lou0;->b:Ljava/nio/charset/Charset;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    iput-object v0, p0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 11
    return-void
.end method

.method public static a(II)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static r(I)I
    .locals 1

    .line 1
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;[BII)I
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr p4, p3

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 9
    if-ge v1, v0, :cond_0

    .line 11
    add-int v3, v1, p3

    .line 13
    if-ge v3, p4, :cond_0

    .line 15
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    move-result v4

    .line 19
    if-ge v4, v2, :cond_0

    .line 21
    int-to-byte v2, v4

    .line 22
    aput-byte v2, p2, v3

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-ne v1, v0, :cond_1

    .line 29
    add-int/2addr p3, v0

    .line 30
    return p3

    .line 31
    :cond_1
    add-int/2addr p3, v1

    .line 32
    :goto_1
    if-ge v1, v0, :cond_a

    .line 34
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    move-result v3

    .line 38
    if-ge v3, v2, :cond_2

    .line 40
    if-ge p3, p4, :cond_2

    .line 42
    add-int/lit8 v4, p3, 0x1

    .line 44
    int-to-byte v3, v3

    .line 45
    aput-byte v3, p2, p3

    .line 47
    :goto_2
    move p3, v4

    .line 48
    goto/16 :goto_3

    .line 50
    :cond_2
    const/16 v4, 0x800

    .line 52
    if-ge v3, v4, :cond_3

    .line 54
    add-int/lit8 v4, p4, -0x2

    .line 56
    if-gt p3, v4, :cond_3

    .line 58
    add-int/lit8 v4, p3, 0x1

    .line 60
    ushr-int/lit8 v5, v3, 0x6

    .line 62
    or-int/lit16 v5, v5, 0x3c0

    .line 64
    int-to-byte v5, v5

    .line 65
    aput-byte v5, p2, p3

    .line 67
    add-int/lit8 p3, v4, 0x1

    .line 69
    and-int/lit8 v3, v3, 0x3f

    .line 71
    or-int/2addr v3, v2

    .line 72
    int-to-byte v3, v3

    .line 73
    aput-byte v3, p2, v4

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const v4, 0xdfff

    .line 79
    const v5, 0xd800

    .line 82
    if-lt v3, v5, :cond_4

    .line 84
    if-ge v4, v3, :cond_5

    .line 86
    :cond_4
    add-int/lit8 v6, p4, -0x3

    .line 88
    if-gt p3, v6, :cond_5

    .line 90
    add-int/lit8 v4, p3, 0x1

    .line 92
    ushr-int/lit8 v5, v3, 0xc

    .line 94
    or-int/lit16 v5, v5, 0x1e0

    .line 96
    int-to-byte v5, v5

    .line 97
    aput-byte v5, p2, p3

    .line 99
    add-int/lit8 p3, v4, 0x1

    .line 101
    ushr-int/lit8 v5, v3, 0x6

    .line 103
    and-int/lit8 v5, v5, 0x3f

    .line 105
    or-int/2addr v5, v2

    .line 106
    int-to-byte v5, v5

    .line 107
    aput-byte v5, p2, v4

    .line 109
    add-int/lit8 v4, p3, 0x1

    .line 111
    and-int/lit8 v3, v3, 0x3f

    .line 113
    or-int/2addr v3, v2

    .line 114
    int-to-byte v3, v3

    .line 115
    aput-byte v3, p2, p3

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    add-int/lit8 v6, p4, -0x4

    .line 120
    const-string v7, "utf16Length"

    .line 122
    if-gt p3, v6, :cond_7

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 129
    move-result v4

    .line 130
    if-eq v1, v4, :cond_6

    .line 132
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 135
    move-result v4

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_6

    .line 142
    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 145
    move-result v3

    .line 146
    add-int/lit8 v4, p3, 0x1

    .line 148
    ushr-int/lit8 v5, v3, 0x12

    .line 150
    or-int/lit16 v5, v5, 0xf0

    .line 152
    int-to-byte v5, v5

    .line 153
    aput-byte v5, p2, p3

    .line 155
    add-int/lit8 p3, v4, 0x1

    .line 157
    ushr-int/lit8 v5, v3, 0xc

    .line 159
    and-int/lit8 v5, v5, 0x3f

    .line 161
    or-int/2addr v5, v2

    .line 162
    int-to-byte v5, v5

    .line 163
    aput-byte v5, p2, v4

    .line 165
    add-int/lit8 v4, p3, 0x1

    .line 167
    ushr-int/lit8 v5, v3, 0x6

    .line 169
    and-int/lit8 v5, v5, 0x3f

    .line 171
    or-int/2addr v5, v2

    .line 172
    int-to-byte v5, v5

    .line 173
    aput-byte v5, p2, p3

    .line 175
    add-int/lit8 p3, v4, 0x1

    .line 177
    and-int/lit8 v3, v3, 0x3f

    .line 179
    or-int/2addr v3, v2

    .line 180
    int-to-byte v3, v3

    .line 181
    aput-byte v3, p2, v4

    .line 183
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 185
    goto/16 :goto_1

    .line 187
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 189
    invoke-direct {p1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 192
    throw p1

    .line 193
    :cond_7
    if-gt v5, v3, :cond_9

    .line 195
    if-gt v3, v4, :cond_9

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 199
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 202
    move-result p2

    .line 203
    if-eq v1, p2, :cond_8

    .line 205
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 208
    move-result p1

    .line 209
    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_9

    .line 215
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 217
    invoke-direct {p1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 220
    throw p1

    .line 221
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    const-string p4, "Failed writing "

    .line 230
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    const-string p4, " at index "

    .line 238
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object p2

    .line 248
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 251
    throw p1

    .line 252
    :cond_a
    return p3
.end method

.method public c(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lou0;->n(I)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lou0;->h(J)V

    .line 11
    :goto_0
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lou0;->p(IJ)V

    .line 4
    return-void
.end method

.method public final e(ILxq0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lou0;->o(II)V

    .line 5
    invoke-virtual {p0, p2}, Lou0;->i(Lxq0;)V

    .line 8
    return-void
.end method

.method public final f(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lou0;->o(II)V

    .line 5
    invoke-virtual {p0, p2}, Lou0;->j(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final g(I[B)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lou0;->o(II)V

    .line 5
    invoke-virtual {p0, p2}, Lou0;->k([B)V

    .line 8
    return-void
.end method

.method public final h(J)V
    .locals 5

    .line 1
    :goto_0
    const-wide/16 v0, -0x80

    .line 3
    and-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    cmp-long v4, v0, v2

    .line 8
    if-nez v4, :cond_0

    .line 10
    iget-object v0, p0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 12
    long-to-int p2, p1

    .line 13
    int-to-byte p1, p2

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 20
    long-to-int v1, p1

    .line 21
    and-int/lit8 v1, v1, 0x7f

    .line 23
    or-int/lit16 v1, v1, 0x80

    .line 25
    int-to-byte v1, v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 29
    const/4 v0, 0x7

    .line 30
    ushr-long/2addr p1, v0

    .line 31
    goto :goto_0
.end method

.method public final i(Lxq0;)V
    .locals 1

    .line 1
    new-instance v0, Lou0;

    .line 3
    invoke-direct {v0}, Lou0;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Lxq0;->c(Lou0;)V

    .line 9
    iget-object p1, v0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 11
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lou0;->k([B)V

    .line 18
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 7
    new-array v1, v0, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, p1, v1, v2, v0}, Lou0;->b(Ljava/lang/CharSequence;[BII)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, v1, v2, p1}, Lou0;->l([BII)V

    .line 17
    return-void
.end method

.method public final k([B)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lou0;->n(I)V

    .line 5
    const/4 v0, 0x0

    .line 6
    array-length v1, p1

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lou0;->q([BII)V

    .line 10
    return-void
.end method

.method public final l([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lou0;->n(I)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lou0;->q([BII)V

    .line 7
    return-void
.end method

.method public m()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final n(I)V
    .locals 2

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 14
    and-int/lit8 v1, p1, 0x7f

    .line 16
    or-int/lit16 v1, v1, 0x80

    .line 18
    int-to-byte v1, v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 22
    ushr-int/lit8 p1, p1, 0x7

    .line 24
    goto :goto_0
.end method

.method public final o(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lou0;->a(II)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lou0;->n(I)V

    .line 8
    return-void
.end method

.method public final p(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lou0;->o(II)V

    .line 5
    invoke-virtual {p0, p2, p3}, Lou0;->h(J)V

    .line 8
    return-void
.end method

.method public final q([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lou0;->a:Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 6
    return-void
.end method

.method public final s(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lou0;->o(II)V

    .line 5
    invoke-virtual {p0, p2}, Lou0;->c(I)V

    .line 8
    return-void
.end method

.method public final t(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lou0;->o(II)V

    .line 5
    invoke-virtual {p0, p2}, Lou0;->n(I)V

    .line 8
    return-void
.end method

.method public final u(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Lou0;->r(I)I

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lou0;->t(II)V

    .line 8
    return-void
.end method
