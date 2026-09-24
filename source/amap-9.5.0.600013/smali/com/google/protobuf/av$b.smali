.class abstract Lcom/google/protobuf/av$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/nio/ByteBuffer;II)I
    .locals 6

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/av;->b(Ljava/nio/ByteBuffer;II)I

    .line 4
    move-result v0

    .line 5
    add-int/2addr p1, v0

    .line 6
    :goto_0
    if-lt p1, p2, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 15
    move-result p1

    .line 16
    if-gez p1, :cond_d

    .line 18
    const/16 v1, -0x20

    .line 20
    const/4 v2, -0x1

    .line 21
    const/16 v3, -0x41

    .line 23
    if-ge p1, v1, :cond_4

    .line 25
    if-lt v0, p2, :cond_1

    .line 27
    return p1

    .line 28
    :cond_1
    const/16 v1, -0x3e

    .line 30
    if-lt p1, v1, :cond_3

    .line 32
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 35
    move-result p1

    .line 36
    if-le p1, v3, :cond_2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    :goto_1
    return v2

    .line 43
    :cond_4
    const/16 v4, -0x10

    .line 45
    if-ge p1, v4, :cond_a

    .line 47
    add-int/lit8 v4, p2, -0x1

    .line 49
    if-lt v0, v4, :cond_5

    .line 51
    sub-int/2addr p2, v0

    .line 52
    invoke-static {p0, p1, v0, p2}, Lcom/google/protobuf/av;->a(Ljava/nio/ByteBuffer;III)I

    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_5
    add-int/lit8 v4, v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 62
    move-result v0

    .line 63
    if-gt v0, v3, :cond_9

    .line 65
    const/16 v5, -0x60

    .line 67
    if-ne p1, v1, :cond_6

    .line 69
    if-lt v0, v5, :cond_9

    .line 71
    :cond_6
    const/16 v1, -0x13

    .line 73
    if-ne p1, v1, :cond_7

    .line 75
    if-ge v0, v5, :cond_9

    .line 77
    :cond_7
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 80
    move-result p1

    .line 81
    if-le p1, v3, :cond_8

    .line 83
    goto :goto_2

    .line 84
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 86
    move p1, v4

    .line 87
    goto :goto_0

    .line 88
    :cond_9
    :goto_2
    return v2

    .line 89
    :cond_a
    add-int/lit8 v1, p2, -0x2

    .line 91
    if-lt v0, v1, :cond_b

    .line 93
    sub-int/2addr p2, v0

    .line 94
    invoke-static {p0, p1, v0, p2}, Lcom/google/protobuf/av;->a(Ljava/nio/ByteBuffer;III)I

    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_b
    add-int/lit8 v1, v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 104
    move-result v0

    .line 105
    if-gt v0, v3, :cond_c

    .line 107
    shl-int/lit8 p1, p1, 0x1c

    .line 109
    add-int/lit8 v0, v0, 0x70

    .line 111
    add-int/2addr p1, v0

    .line 112
    shr-int/lit8 p1, p1, 0x1e

    .line 114
    if-nez p1, :cond_c

    .line 116
    add-int/lit8 p1, v1, 0x1

    .line 118
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 121
    move-result v0

    .line 122
    if-gt v0, v3, :cond_c

    .line 124
    add-int/lit8 v0, p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 129
    move-result p1

    .line 130
    if-le p1, v3, :cond_d

    .line 132
    :cond_c
    return v2

    .line 133
    :cond_d
    :goto_3
    move p1, v0

    .line 134
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(ILjava/nio/ByteBuffer;II)I
    .locals 1

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/2addr p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/av$b;->a(I[BII)I

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/av$b;->b(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/av$b;->c(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public abstract a(I[BII)I
.end method

.method public abstract a(Ljava/lang/CharSequence;[BII)I
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/av;->a(Ljava/lang/CharSequence;[BII)I

    move-result p1

    sub-int/2addr p1, v0

    .line 12
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/av$b;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/av$b;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/av$b;->a(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a([BII)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/av$b;->a(I[BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public abstract b(ILjava/nio/ByteBuffer;II)I
.end method

.method public final b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/av$b;->b([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/av$b;->c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/av$b;->d(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract b([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method public final c(ILjava/nio/ByteBuffer;II)I
    .locals 6

    if-eqz p1, :cond_f

    if-lt p3, p4, :cond_0

    return p1

    :cond_0
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_3

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    add-int/lit8 p1, p3, 0x1

    .line 1
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_9

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-int/lit8 p1, p3, 0x1

    .line 2
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-lt p1, p4, :cond_4

    .line 3
    invoke-static {v0, p3}, Lcom/google/protobuf/av;->a(II)I

    move-result p1

    return p1

    :cond_4
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_5
    if-gt p1, v3, :cond_8

    const/16 v4, -0x60

    if-ne v0, v1, :cond_6

    if-lt p1, v4, :cond_8

    :cond_6
    const/16 v1, -0x13

    if-ne v0, v1, :cond_7

    if-ge p1, v4, :cond_8

    :cond_7
    add-int/lit8 p1, p3, 0x1

    .line 4
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1

    :cond_8
    return v2

    :cond_9
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_b

    add-int/lit8 p1, p3, 0x1

    .line 5
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-lt p1, p4, :cond_a

    .line 6
    invoke-static {v0, v1}, Lcom/google/protobuf/av;->a(II)I

    move-result p1

    return p1

    :cond_a
    const/4 p3, 0x0

    goto :goto_1

    :cond_b
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    :goto_1
    if-nez p3, :cond_d

    add-int/lit8 p3, p1, 0x1

    .line 7
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-lt p3, p4, :cond_c

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/av;->a(III)I

    move-result p1

    return p1

    :cond_c
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_d
    if-gt v1, v3, :cond_e

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_e

    if-gt p3, v3, :cond_e

    add-int/lit8 p3, p1, 0x1

    .line 9
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_f

    :cond_e
    return v2

    .line 10
    :cond_f
    :goto_2
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/av$b;->e(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public abstract c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public final c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    if-ge v2, v0, :cond_0

    .line 13
    :try_start_0
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_0

    add-int v3, v1, v2

    int-to-byte v4, v4

    .line 14
    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    add-int v0, v1, v2

    .line 15
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    add-int/2addr v1, v2

    :goto_1
    if-ge v2, v0, :cond_8

    .line 16
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_2

    int-to-byte v4, v4

    .line 17
    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_5

    :cond_2
    const/16 v5, 0x800

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 18
    :try_start_1
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 19
    invoke-virtual {p2, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v5

    goto/16 :goto_5

    :catch_0
    move v1, v5

    goto/16 :goto_6

    :cond_3
    const v5, 0xd800

    if-lt v4, v5, :cond_7

    const v5, 0xdfff

    if-ge v5, v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_6

    .line 20
    :try_start_2
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 21
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 22
    :try_start_3
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 23
    :try_start_4
    invoke-virtual {p2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 24
    :try_start_5
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 25
    invoke-virtual {p2, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    move v1, v4

    move v2, v5

    goto :goto_5

    :catch_1
    move v1, v4

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :catch_2
    :goto_2
    move v2, v5

    goto :goto_6

    .line 26
    :cond_6
    :goto_3
    :try_start_6
    new-instance v3, Lcom/google/protobuf/av$d;

    invoke-direct {v3, v2, v0}, Lcom/google/protobuf/av$d;-><init>(II)V

    throw v3
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_4
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 27
    :try_start_7
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 28
    :try_start_8
    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 29
    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 30
    :cond_8
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    return-void

    .line 31
    :catch_3
    :goto_6
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p2

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v0, p2

    .line 32
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed writing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final d(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    or-int v0, p2, p3

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 6
    move-result v1

    .line 7
    sub-int/2addr v1, p2

    .line 8
    sub-int/2addr v1, p3

    .line 9
    or-int/2addr v0, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ltz v0, :cond_b

    .line 14
    add-int v0, p2, p3

    .line 16
    new-array p3, p3, [C

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge p2, v0, :cond_1

    .line 21
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Lcom/google/protobuf/av$a;->a(B)Z

    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 36
    invoke-static {v4, p3, v3}, Lcom/google/protobuf/av$a;->a(B[CI)V

    .line 39
    move v3, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    move v8, v3

    .line 42
    :goto_2
    if-ge p2, v0, :cond_a

    .line 44
    add-int/lit8 v3, p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 49
    move-result p2

    .line 50
    invoke-static {p2}, Lcom/google/protobuf/av$a;->a(B)Z

    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_4

    .line 56
    add-int/lit8 v4, v8, 0x1

    .line 58
    invoke-static {p2, p3, v8}, Lcom/google/protobuf/av$a;->a(B[CI)V

    .line 61
    :goto_3
    if-ge v3, v0, :cond_3

    .line 63
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    move-result p2

    .line 67
    invoke-static {p2}, Lcom/google/protobuf/av$a;->a(B)Z

    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_2

    .line 73
    goto :goto_4

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 76
    add-int/lit8 v5, v4, 0x1

    .line 78
    invoke-static {p2, p3, v4}, Lcom/google/protobuf/av$a;->a(B[CI)V

    .line 81
    move v4, v5

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    :goto_4
    move p2, v3

    .line 84
    move v8, v4

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-static {p2}, Lcom/google/protobuf/av$a;->b(B)Z

    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_6

    .line 92
    if-ge v3, v0, :cond_5

    .line 94
    add-int/lit8 v4, v3, 0x1

    .line 96
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 99
    move-result v3

    .line 100
    add-int/lit8 v5, v8, 0x1

    .line 102
    invoke-static {p2, v3, p3, v8}, Lcom/google/protobuf/av$a;->a(BB[CI)V

    .line 105
    move p2, v4

    .line 106
    move v8, v5

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 111
    move-result-object p1

    .line 112
    throw p1

    .line 113
    :cond_6
    invoke-static {p2}, Lcom/google/protobuf/av$a;->c(B)Z

    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_8

    .line 119
    add-int/lit8 v4, v0, -0x1

    .line 121
    if-ge v3, v4, :cond_7

    .line 123
    add-int/lit8 v4, v3, 0x1

    .line 125
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 128
    move-result v3

    .line 129
    add-int/lit8 v5, v4, 0x1

    .line 131
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 134
    move-result v4

    .line 135
    add-int/lit8 v6, v8, 0x1

    .line 137
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/protobuf/av$a;->a(BBB[CI)V

    .line 140
    move p2, v5

    .line 141
    move v8, v6

    .line 142
    goto :goto_2

    .line 143
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 146
    move-result-object p1

    .line 147
    throw p1

    .line 148
    :cond_8
    add-int/lit8 v4, v0, -0x2

    .line 150
    if-ge v3, v4, :cond_9

    .line 152
    add-int/lit8 v4, v3, 0x1

    .line 154
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 157
    move-result v5

    .line 158
    add-int/lit8 v3, v4, 0x1

    .line 160
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 163
    move-result v6

    .line 164
    add-int/lit8 v9, v3, 0x1

    .line 166
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 169
    move-result v7

    .line 170
    add-int/lit8 v10, v8, 0x1

    .line 172
    move v3, p2

    .line 173
    move v4, v5

    .line 174
    move v5, v6

    .line 175
    move v6, v7

    .line 176
    move-object v7, p3

    .line 177
    invoke-static/range {v3 .. v8}, Lcom/google/protobuf/av$a;->a(BBBB[CI)V

    .line 180
    add-int/2addr v10, v2

    .line 181
    move p2, v9

    .line 182
    move v8, v10

    .line 183
    goto/16 :goto_2

    .line 185
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 188
    move-result-object p1

    .line 189
    throw p1

    .line 190
    :cond_a
    new-instance p1, Ljava/lang/String;

    .line 192
    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 195
    return-object p1

    .line 196
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 198
    const/4 v3, 0x3

    .line 199
    new-array v3, v3, [Ljava/lang/Object;

    .line 201
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 204
    move-result p1

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object p1

    .line 209
    aput-object p1, v3, v1

    .line 211
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object p1

    .line 215
    aput-object p1, v3, v2

    .line 217
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object p1

    .line 221
    const/4 p2, 0x2

    .line 222
    aput-object p1, v3, p2

    .line 224
    const-string p1, "buffer limit=%d, index=%d, limit=%d"

    .line 226
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    move-result-object p1

    .line 230
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 233
    throw v0
.end method
