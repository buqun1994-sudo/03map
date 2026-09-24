.class public Lru0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const p4, 0x7fffffff

    .line 7
    iput p4, p0, Lru0;->g:I

    .line 9
    iput p4, p0, Lru0;->i:I

    .line 11
    const/16 p4, 0x64

    .line 13
    iput p4, p0, Lru0;->k:I

    .line 15
    iput-object p1, p0, Lru0;->a:[B

    .line 17
    add-int/2addr p3, p2

    .line 18
    iput p3, p0, Lru0;->b:I

    .line 20
    iput p2, p0, Lru0;->d:I

    .line 22
    iput p2, p0, Lru0;->e:I

    .line 24
    return-void
.end method

.method public static b(I)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static c(II)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static d([BII)Lru0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lru0;->e([BIIZ)Lru0;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static e([BIIZ)Lru0;
    .locals 1

    .line 1
    new-instance v0, Lru0;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lru0;-><init>([BIIZ)V

    .line 6
    :try_start_0
    invoke-virtual {v0, p2}, Lru0;->g(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    throw p1
.end method

.method public static m(I)I
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static n(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget v0, p0, Lru0;->b:I

    .line 3
    iget v1, p0, Lru0;->c:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lru0;->b:I

    .line 8
    iget v1, p0, Lru0;->e:I

    .line 10
    sub-int v1, v0, v1

    .line 12
    iget v2, p0, Lru0;->g:I

    .line 14
    if-le v1, v2, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Lru0;->c:I

    .line 19
    sub-int/2addr v0, v1

    .line 20
    iput v0, p0, Lru0;->b:I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lru0;->c:I

    .line 26
    :goto_0
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget v0, p0, Lru0;->h:I

    .line 3
    iget v1, p0, Lru0;->d:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/16 v1, 0xa

    .line 8
    if-lt v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lru0;->C()V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lru0;->D()V

    .line 17
    :goto_0
    return-void
.end method

.method public final C()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 4
    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lru0;->a:[B

    .line 8
    iget v2, p0, Lru0;->d:I

    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 12
    iput v3, p0, Lru0;->d:I

    .line 14
    aget-byte v1, v1, v2

    .line 16
    if-ltz v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 24
    const-string v1, "malformed varint"

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public final D()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 4
    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lru0;->l()B

    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    const-string v1, "malformed varint"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lru0;->d:I

    .line 3
    iget v1, p0, Lru0;->e:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lru0;->o()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lru0;->f:I

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lru0;->h()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lru0;->f:I

    .line 17
    invoke-static {v0}, Lru0;->n(I)I

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    iget v0, p0, Lru0;->f:I

    .line 25
    return v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 28
    const-string v1, "zero tag"

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public g(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lru0;->a()I

    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    iget v0, p0, Lru0;->g:I

    .line 10
    if-gt p1, v0, :cond_0

    .line 12
    iput p1, p0, Lru0;->g:I

    .line 14
    invoke-virtual {p0}, Lru0;->A()V

    .line 17
    return v0

    .line 18
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 20
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 23
    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 26
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 29
    throw p1
.end method

.method public h()I
    .locals 5

    .line 1
    iget v0, p0, Lru0;->d:I

    .line 3
    iget v1, p0, Lru0;->b:I

    .line 5
    if-ne v1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lru0;->a:[B

    .line 10
    add-int/lit8 v3, v0, 0x1

    .line 12
    aget-byte v0, v2, v0

    .line 14
    if-ltz v0, :cond_1

    .line 16
    iput v3, p0, Lru0;->d:I

    .line 18
    return v0

    .line 19
    :cond_1
    sub-int/2addr v1, v3

    .line 20
    const/16 v4, 0x9

    .line 22
    if-ge v1, v4, :cond_2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 27
    aget-byte v3, v2, v3

    .line 29
    shl-int/lit8 v3, v3, 0x7

    .line 31
    xor-int/2addr v0, v3

    .line 32
    if-gez v0, :cond_3

    .line 34
    xor-int/lit8 v0, v0, -0x80

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 39
    aget-byte v1, v2, v1

    .line 41
    shl-int/lit8 v1, v1, 0xe

    .line 43
    xor-int/2addr v0, v1

    .line 44
    if-ltz v0, :cond_5

    .line 46
    xor-int/lit16 v0, v0, 0x3f80

    .line 48
    :cond_4
    move v1, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_5
    add-int/lit8 v1, v3, 0x1

    .line 52
    aget-byte v3, v2, v3

    .line 54
    shl-int/lit8 v3, v3, 0x15

    .line 56
    xor-int/2addr v0, v3

    .line 57
    if-gez v0, :cond_6

    .line 59
    const v2, -0x1fc080

    .line 62
    xor-int/2addr v0, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 66
    aget-byte v1, v2, v1

    .line 68
    shl-int/lit8 v4, v1, 0x1c

    .line 70
    xor-int/2addr v0, v4

    .line 71
    const v4, 0xfe03f80

    .line 74
    xor-int/2addr v0, v4

    .line 75
    if-gez v1, :cond_4

    .line 77
    add-int/lit8 v1, v3, 0x1

    .line 79
    aget-byte v3, v2, v3

    .line 81
    if-gez v3, :cond_7

    .line 83
    add-int/lit8 v3, v1, 0x1

    .line 85
    aget-byte v1, v2, v1

    .line 87
    if-gez v1, :cond_4

    .line 89
    add-int/lit8 v1, v3, 0x1

    .line 91
    aget-byte v3, v2, v3

    .line 93
    if-gez v3, :cond_7

    .line 95
    add-int/lit8 v3, v1, 0x1

    .line 97
    aget-byte v1, v2, v1

    .line 99
    if-gez v1, :cond_4

    .line 101
    add-int/lit8 v1, v3, 0x1

    .line 103
    aget-byte v2, v2, v3

    .line 105
    if-gez v2, :cond_7

    .line 107
    :goto_0
    invoke-virtual {p0}, Lru0;->j()J

    .line 110
    move-result-wide v0

    .line 111
    long-to-int v1, v0

    .line 112
    return v1

    .line 113
    :cond_7
    :goto_1
    iput v1, p0, Lru0;->d:I

    .line 115
    return v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lru0;->g:I

    .line 3
    invoke-virtual {p0}, Lru0;->A()V

    .line 6
    return-void
.end method

.method public j()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 6
    if-ge v2, v3, :cond_1

    .line 8
    invoke-virtual {p0}, Lru0;->l()B

    .line 11
    move-result v3

    .line 12
    and-int/lit8 v4, v3, 0x7f

    .line 14
    int-to-long v4, v4

    .line 15
    shl-long/2addr v4, v2

    .line 16
    or-long/2addr v0, v4

    .line 17
    and-int/lit16 v3, v3, 0x80

    .line 19
    if-nez v3, :cond_0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    const-string v1, "malformed varint"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget v0, p0, Lru0;->f:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 8
    const-string v0, "not expected tag"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public l()B
    .locals 3

    .line 1
    iget v0, p0, Lru0;->d:I

    .line 3
    iget v1, p0, Lru0;->b:I

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lru0;->a:[B

    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 11
    iput v2, p0, Lru0;->d:I

    .line 13
    aget-byte v0, v1, v0

    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    const-string v1, "length error"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Lru0;->d:I

    .line 3
    iget v1, p0, Lru0;->b:I

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public p(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lru0;->b(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 8
    if-eq v0, v1, :cond_4

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_3

    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq v0, v2, :cond_2

    .line 17
    if-eq v0, v3, :cond_1

    .line 19
    const/4 p1, 0x5

    .line 20
    if-ne v0, p1, :cond_0

    .line 22
    invoke-virtual {p0, v3}, Lru0;->s(I)V

    .line 25
    return v1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 28
    const-string v0, "invalidWireType"

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lru0;->z()V

    .line 39
    invoke-static {p1}, Lru0;->n(I)I

    .line 42
    move-result p1

    .line 43
    invoke-static {p1, v3}, Lru0;->c(II)I

    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lru0;->k(I)V

    .line 50
    return v1

    .line 51
    :cond_3
    invoke-virtual {p0}, Lru0;->h()I

    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lru0;->s(I)V

    .line 58
    return v1

    .line 59
    :cond_4
    const/16 p1, 0x8

    .line 61
    invoke-virtual {p0, p1}, Lru0;->s(I)V

    .line 64
    return v1

    .line 65
    :cond_5
    invoke-virtual {p0}, Lru0;->B()V

    .line 68
    return v1
.end method

.method public q()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lru0;->h()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget v1, p0, Lru0;->b:I

    .line 9
    iget v2, p0, Lru0;->d:I

    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gt v0, v1, :cond_0

    .line 14
    iget-object v1, p0, Lru0;->a:[B

    .line 16
    add-int v3, v2, v0

    .line 18
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 21
    move-result-object v1

    .line 22
    iget v2, p0, Lru0;->d:I

    .line 24
    add-int/2addr v2, v0

    .line 25
    iput v2, p0, Lru0;->d:I

    .line 27
    return-object v1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [B

    .line 31
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lru0;->h()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget v1, p0, Lru0;->b:I

    .line 9
    iget v2, p0, Lru0;->d:I

    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gt v0, v1, :cond_0

    .line 14
    add-int v1, v2, v0

    .line 16
    iput v1, p0, Lru0;->d:I

    .line 18
    new-instance v1, Ljava/lang/String;

    .line 20
    iget-object v3, p0, Lru0;->a:[B

    .line 22
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 27
    return-object v1

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 30
    const-string v0, ""

    .line 32
    return-object v0

    .line 33
    :cond_1
    if-gtz v0, :cond_2

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    const-string v1, "negative size"

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 45
    const-string v1, "trunk size"

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget v0, p0, Lru0;->d:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lru0;->d:I

    .line 6
    return-void
.end method

.method public t()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lru0;->x()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v4, v0, v2

    .line 9
    if-eqz v4, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lru0;->h()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public v()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lru0;->x()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public w()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lru0;->h()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lru0;->m(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public x()J
    .locals 11

    .line 1
    iget v0, p0, Lru0;->d:I

    .line 3
    iget v1, p0, Lru0;->b:I

    .line 5
    if-ne v1, v0, :cond_0

    .line 7
    goto/16 :goto_3

    .line 9
    :cond_0
    iget-object v2, p0, Lru0;->a:[B

    .line 11
    add-int/lit8 v3, v0, 0x1

    .line 13
    aget-byte v0, v2, v0

    .line 15
    if-ltz v0, :cond_1

    .line 17
    iput v3, p0, Lru0;->d:I

    .line 19
    int-to-long v0, v0

    .line 20
    return-wide v0

    .line 21
    :cond_1
    sub-int/2addr v1, v3

    .line 22
    const/16 v4, 0x9

    .line 24
    if-ge v1, v4, :cond_2

    .line 26
    goto/16 :goto_3

    .line 28
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 30
    aget-byte v3, v2, v3

    .line 32
    shl-int/lit8 v3, v3, 0x7

    .line 34
    xor-int/2addr v0, v3

    .line 35
    if-gez v0, :cond_3

    .line 37
    xor-int/lit8 v0, v0, -0x80

    .line 39
    :goto_0
    int-to-long v2, v0

    .line 40
    goto/16 :goto_4

    .line 42
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 44
    aget-byte v1, v2, v1

    .line 46
    shl-int/lit8 v1, v1, 0xe

    .line 48
    xor-int/2addr v0, v1

    .line 49
    if-ltz v0, :cond_4

    .line 51
    xor-int/lit16 v0, v0, 0x3f80

    .line 53
    int-to-long v0, v0

    .line 54
    move-wide v9, v0

    .line 55
    move v1, v3

    .line 56
    move-wide v2, v9

    .line 57
    goto/16 :goto_4

    .line 59
    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 61
    aget-byte v3, v2, v3

    .line 63
    shl-int/lit8 v3, v3, 0x15

    .line 65
    xor-int/2addr v0, v3

    .line 66
    if-gez v0, :cond_5

    .line 68
    const v2, -0x1fc080

    .line 71
    xor-int/2addr v0, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    int-to-long v3, v0

    .line 74
    add-int/lit8 v0, v1, 0x1

    .line 76
    aget-byte v1, v2, v1

    .line 78
    int-to-long v5, v1

    .line 79
    const/16 v1, 0x1c

    .line 81
    shl-long/2addr v5, v1

    .line 82
    xor-long/2addr v3, v5

    .line 83
    const-wide/16 v5, 0x0

    .line 85
    cmp-long v1, v3, v5

    .line 87
    if-ltz v1, :cond_6

    .line 89
    const-wide/32 v1, 0xfe03f80

    .line 92
    :goto_1
    xor-long v2, v3, v1

    .line 94
    move v1, v0

    .line 95
    goto :goto_4

    .line 96
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 98
    aget-byte v0, v2, v0

    .line 100
    int-to-long v7, v0

    .line 101
    const/16 v0, 0x23

    .line 103
    shl-long/2addr v7, v0

    .line 104
    xor-long/2addr v3, v7

    .line 105
    cmp-long v0, v3, v5

    .line 107
    if-gez v0, :cond_7

    .line 109
    const-wide v5, -0x7f01fc080L

    .line 114
    :goto_2
    xor-long v2, v3, v5

    .line 116
    goto :goto_4

    .line 117
    :cond_7
    add-int/lit8 v0, v1, 0x1

    .line 119
    aget-byte v1, v2, v1

    .line 121
    int-to-long v7, v1

    .line 122
    const/16 v1, 0x2a

    .line 124
    shl-long/2addr v7, v1

    .line 125
    xor-long/2addr v3, v7

    .line 126
    cmp-long v1, v3, v5

    .line 128
    if-ltz v1, :cond_8

    .line 130
    const-wide v1, 0x3f80fe03f80L

    .line 135
    goto :goto_1

    .line 136
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 138
    aget-byte v0, v2, v0

    .line 140
    int-to-long v7, v0

    .line 141
    const/16 v0, 0x31

    .line 143
    shl-long/2addr v7, v0

    .line 144
    xor-long/2addr v3, v7

    .line 145
    cmp-long v0, v3, v5

    .line 147
    if-gez v0, :cond_9

    .line 149
    const-wide v5, -0x1fc07f01fc080L

    .line 154
    goto :goto_2

    .line 155
    :cond_9
    add-int/lit8 v0, v1, 0x1

    .line 157
    aget-byte v1, v2, v1

    .line 159
    int-to-long v7, v1

    .line 160
    const/16 v1, 0x38

    .line 162
    shl-long/2addr v7, v1

    .line 163
    xor-long/2addr v3, v7

    .line 164
    const-wide v7, 0xfe03f80fe03f80L

    .line 169
    xor-long/2addr v3, v7

    .line 170
    cmp-long v1, v3, v5

    .line 172
    if-gez v1, :cond_a

    .line 174
    add-int/lit8 v1, v0, 0x1

    .line 176
    aget-byte v0, v2, v0

    .line 178
    int-to-long v7, v0

    .line 179
    cmp-long v0, v7, v5

    .line 181
    if-gez v0, :cond_b

    .line 183
    :goto_3
    invoke-virtual {p0}, Lru0;->j()J

    .line 186
    move-result-wide v0

    .line 187
    return-wide v0

    .line 188
    :cond_a
    move v1, v0

    .line 189
    :cond_b
    move-wide v2, v3

    .line 190
    :goto_4
    iput v1, p0, Lru0;->d:I

    .line 192
    return-wide v2
.end method

.method public y()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lru0;->x()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public z()V
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lru0;->f()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lru0;->p(I)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    :cond_1
    return-void
.end method
