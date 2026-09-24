.class final Lcom/google/protobuf/d$a;
.super Lcom/google/protobuf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private final b:[B

.field private c:I

.field private final d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/d;-><init>(Lcom/google/protobuf/d$1;)V

    .line 5
    iput-boolean p2, p0, Lcom/google/protobuf/d$a;->a:Z

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/google/protobuf/d$a;->b:[B

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 20
    move-result v0

    .line 21
    add-int/2addr p2, v0

    .line 22
    iput p2, p0, Lcom/google/protobuf/d$a;->c:I

    .line 24
    iput p2, p0, Lcom/google/protobuf/d$a;->d:I

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 33
    move-result p1

    .line 34
    add-int/2addr p2, p1

    .line 35
    iput p2, p0, Lcom/google/protobuf/d$a;->e:I

    .line 37
    return-void
.end method

.method private A()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->b(I)V

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->C()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method private B()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/d$a;->b:[B

    .line 5
    add-int/lit8 v2, v0, 0x4

    .line 7
    iput v2, p0, Lcom/google/protobuf/d$a;->c:I

    .line 9
    aget-byte v2, v1, v0

    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 13
    add-int/lit8 v3, v0, 0x1

    .line 15
    aget-byte v3, v1, v3

    .line 17
    and-int/lit16 v3, v3, 0xff

    .line 19
    shl-int/lit8 v3, v3, 0x8

    .line 21
    or-int/2addr v2, v3

    .line 22
    add-int/lit8 v3, v0, 0x2

    .line 24
    aget-byte v3, v1, v3

    .line 26
    and-int/lit16 v3, v3, 0xff

    .line 28
    shl-int/lit8 v3, v3, 0x10

    .line 30
    or-int/2addr v2, v3

    .line 31
    add-int/lit8 v0, v0, 0x3

    .line 33
    aget-byte v0, v1, v0

    .line 35
    and-int/lit16 v0, v0, 0xff

    .line 37
    shl-int/lit8 v0, v0, 0x18

    .line 39
    or-int/2addr v0, v2

    .line 40
    return v0
.end method

.method private C()J
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/d$a;->b:[B

    .line 5
    add-int/lit8 v2, v0, 0x8

    .line 7
    iput v2, p0, Lcom/google/protobuf/d$a;->c:I

    .line 9
    aget-byte v2, v1, v0

    .line 11
    int-to-long v2, v2

    .line 12
    const-wide/16 v4, 0xff

    .line 14
    and-long/2addr v2, v4

    .line 15
    add-int/lit8 v6, v0, 0x1

    .line 17
    aget-byte v6, v1, v6

    .line 19
    int-to-long v6, v6

    .line 20
    and-long/2addr v6, v4

    .line 21
    const/16 v8, 0x8

    .line 23
    shl-long/2addr v6, v8

    .line 24
    or-long/2addr v2, v6

    .line 25
    add-int/lit8 v6, v0, 0x2

    .line 27
    aget-byte v6, v1, v6

    .line 29
    int-to-long v6, v6

    .line 30
    and-long/2addr v6, v4

    .line 31
    const/16 v8, 0x10

    .line 33
    shl-long/2addr v6, v8

    .line 34
    or-long/2addr v2, v6

    .line 35
    add-int/lit8 v6, v0, 0x3

    .line 37
    aget-byte v6, v1, v6

    .line 39
    int-to-long v6, v6

    .line 40
    and-long/2addr v6, v4

    .line 41
    const/16 v8, 0x18

    .line 43
    shl-long/2addr v6, v8

    .line 44
    or-long/2addr v2, v6

    .line 45
    add-int/lit8 v6, v0, 0x4

    .line 47
    aget-byte v6, v1, v6

    .line 49
    int-to-long v6, v6

    .line 50
    and-long/2addr v6, v4

    .line 51
    const/16 v8, 0x20

    .line 53
    shl-long/2addr v6, v8

    .line 54
    or-long/2addr v2, v6

    .line 55
    add-int/lit8 v6, v0, 0x5

    .line 57
    aget-byte v6, v1, v6

    .line 59
    int-to-long v6, v6

    .line 60
    and-long/2addr v6, v4

    .line 61
    const/16 v8, 0x28

    .line 63
    shl-long/2addr v6, v8

    .line 64
    or-long/2addr v2, v6

    .line 65
    add-int/lit8 v6, v0, 0x6

    .line 67
    aget-byte v6, v1, v6

    .line 69
    int-to-long v6, v6

    .line 70
    and-long/2addr v6, v4

    .line 71
    const/16 v8, 0x30

    .line 73
    shl-long/2addr v6, v8

    .line 74
    or-long/2addr v2, v6

    .line 75
    add-int/lit8 v0, v0, 0x7

    .line 77
    aget-byte v0, v1, v0

    .line 79
    int-to-long v0, v0

    .line 80
    and-long/2addr v0, v4

    .line 81
    const/16 v4, 0x38

    .line 83
    shl-long/2addr v0, v4

    .line 84
    or-long/2addr v0, v2

    .line 85
    return-wide v0
.end method

.method private D()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->e:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/16 v2, 0xa

    .line 8
    if-lt v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/d$a;->b:[B

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    add-int/lit8 v4, v1, 0x1

    .line 17
    aget-byte v1, v0, v1

    .line 19
    if-ltz v1, :cond_0

    .line 21
    iput v4, p0, Lcom/google/protobuf/d$a;->c:I

    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    move v1, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->E()V

    .line 31
    return-void
.end method

.method private E()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 4
    if-ge v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->y()B

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
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method

.method private F()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->g:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/d$a;->f:I

    .line 5
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/google/protobuf/d$a;->g:I

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->a()I

    .line 19
    move-result v1

    .line 20
    const v2, 0x7fffffff

    .line 23
    if-eq v1, v2, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->c()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    :cond_1
    iget v1, p0, Lcom/google/protobuf/d$a;->f:I

    .line 33
    iget v2, p0, Lcom/google/protobuf/d$a;->g:I

    .line 35
    if-ne v1, v2, :cond_2

    .line 37
    iput v0, p0, Lcom/google/protobuf/d$a;->g:I

    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 43
    move-result-object v0

    .line 44
    throw v0
.end method

.method private a(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/google/protobuf/d$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 90
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->f()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->o()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->t()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 96
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->r()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/d$a;->a(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->e()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 102
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->i()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 103
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 104
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->d()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 106
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->n()Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->b(I)V

    .line 109
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method private b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 42
    iget v0, p0, Lcom/google/protobuf/d$a;->e:I

    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private c(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/an<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->b(I)V

    .line 11
    iget v1, p0, Lcom/google/protobuf/d$a;->e:I

    .line 12
    iget v2, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v2, v0

    .line 13
    iput v2, p0, Lcom/google/protobuf/d$a;->e:I

    .line 14
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/an;->a()Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/an;->a(Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    invoke-interface {p1, v0}, Lcom/google/protobuf/an;->d(Ljava/lang/Object;)V

    .line 17
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    .line 18
    iput v1, p0, Lcom/google/protobuf/d$a;->e:I

    return-object v0

    .line 19
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 20
    iput v1, p0, Lcom/google/protobuf/d$a;->e:I

    .line 21
    throw p1
.end method

.method private c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private d(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/an<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/protobuf/d$a;->g:I

    .line 4
    iget v1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/d$a;->g:I

    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/an;->a()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p1, v1, p0, p2}, Lcom/google/protobuf/an;->a(Ljava/lang/Object;Lcom/google/protobuf/al;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/google/protobuf/an;->d(Ljava/lang/Object;)V

    .line 8
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    iget p2, p0, Lcom/google/protobuf/d$a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 9
    iput v0, p0, Lcom/google/protobuf/d$a;->g:I

    return-object v1

    .line 10
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 11
    iput v0, p0, Lcom/google/protobuf/d$a;->g:I

    .line 12
    throw p1
.end method

.method private d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->b(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->b(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private v()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/d$a;->e:I

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

.method private w()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/d$a;->e:I

    .line 5
    if-eq v1, v0, :cond_8

    .line 7
    iget-object v2, p0, Lcom/google/protobuf/d$a;->b:[B

    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 11
    aget-byte v0, v2, v0

    .line 13
    if-ltz v0, :cond_0

    .line 15
    iput v3, p0, Lcom/google/protobuf/d$a;->c:I

    .line 17
    return v0

    .line 18
    :cond_0
    sub-int/2addr v1, v3

    .line 19
    const/16 v4, 0x9

    .line 21
    if-ge v1, v4, :cond_1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->x()J

    .line 26
    move-result-wide v0

    .line 27
    long-to-int v1, v0

    .line 28
    return v1

    .line 29
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 31
    aget-byte v3, v2, v3

    .line 33
    shl-int/lit8 v3, v3, 0x7

    .line 35
    xor-int/2addr v0, v3

    .line 36
    if-gez v0, :cond_2

    .line 38
    xor-int/lit8 v0, v0, -0x80

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 43
    aget-byte v1, v2, v1

    .line 45
    shl-int/lit8 v1, v1, 0xe

    .line 47
    xor-int/2addr v0, v1

    .line 48
    if-ltz v0, :cond_4

    .line 50
    xor-int/lit16 v0, v0, 0x3f80

    .line 52
    :cond_3
    move v1, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 56
    aget-byte v3, v2, v3

    .line 58
    shl-int/lit8 v3, v3, 0x15

    .line 60
    xor-int/2addr v0, v3

    .line 61
    if-gez v0, :cond_5

    .line 63
    const v2, -0x1fc080

    .line 66
    xor-int/2addr v0, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_5
    add-int/lit8 v3, v1, 0x1

    .line 70
    aget-byte v1, v2, v1

    .line 72
    shl-int/lit8 v4, v1, 0x1c

    .line 74
    xor-int/2addr v0, v4

    .line 75
    const v4, 0xfe03f80

    .line 78
    xor-int/2addr v0, v4

    .line 79
    if-gez v1, :cond_3

    .line 81
    add-int/lit8 v1, v3, 0x1

    .line 83
    aget-byte v3, v2, v3

    .line 85
    if-gez v3, :cond_7

    .line 87
    add-int/lit8 v3, v1, 0x1

    .line 89
    aget-byte v1, v2, v1

    .line 91
    if-gez v1, :cond_3

    .line 93
    add-int/lit8 v1, v3, 0x1

    .line 95
    aget-byte v3, v2, v3

    .line 97
    if-gez v3, :cond_7

    .line 99
    add-int/lit8 v3, v1, 0x1

    .line 101
    aget-byte v1, v2, v1

    .line 103
    if-gez v1, :cond_3

    .line 105
    add-int/lit8 v1, v3, 0x1

    .line 107
    aget-byte v2, v2, v3

    .line 109
    if-ltz v2, :cond_6

    .line 111
    goto :goto_0

    .line 112
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 115
    move-result-object v0

    .line 116
    throw v0

    .line 117
    :cond_7
    :goto_0
    iput v1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 119
    return v0

    .line 120
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 123
    move-result-object v0

    .line 124
    throw v0
.end method

.method private x()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->y()B

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
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 28
    move-result-object v0

    .line 29
    throw v0
.end method

.method private y()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/d$a;->e:I

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/d$a;->b:[B

    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 11
    iput v2, p0, Lcom/google/protobuf/d$a;->c:I

    .line 13
    aget-byte v0, v1, v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method

.method private z()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->b(I)V

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->B()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method


# virtual methods
.method public a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/d$a;->f:I

    .line 3
    iget v2, p0, Lcom/google/protobuf/d$a;->g:I

    if-ne v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/an<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 14
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/d$a;->c(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 12
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 13
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/d$a;->c(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->b(I)V

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/protobuf/d$a;->b:[B

    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/av;->a([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/d$a;->b:[B

    iget v2, p0, Lcom/google/protobuf/d$a;->c:I

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/d$a;->c:I

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    instance-of v0, p1, Lcom/google/protobuf/i;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/i;

    .line 18
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->d(I)V

    .line 21
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 22
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_4

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/i;->addDouble(D)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/i;->addDouble(D)V

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 27
    :cond_2
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_1

    .line 30
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 31
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->d(I)V

    .line 34
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 35
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_4

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 37
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 38
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 40
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 42
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_6

    .line 43
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public a(Ljava/util/List;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/an<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 61
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    .line 62
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/d$a;->c(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 64
    :cond_1
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 66
    iput v1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 67
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 45
    instance-of v0, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->n()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 49
    :cond_1
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p2

    .line 51
    iget v1, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq p2, v1, :cond_0

    .line 52
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 53
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/d$a;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 55
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 57
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_2

    .line 58
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 59
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$a;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$a<",
            "TK;TV;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 68
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 69
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 70
    invoke-direct {p0, v1}, Lcom/google/protobuf/d$a;->b(I)V

    .line 71
    iget v2, p0, Lcom/google/protobuf/d$a;->e:I

    .line 72
    iget v3, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v3, v1

    .line 73
    iput v3, p0, Lcom/google/protobuf/d$a;->e:I

    .line 74
    :try_start_0
    iget-object v1, p2, Lcom/google/protobuf/MapEntryLite$a;->b:Ljava/lang/Object;

    .line 75
    iget-object v3, p2, Lcom/google/protobuf/MapEntryLite$a;->d:Ljava/lang/Object;

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 77
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iput v2, p0, Lcom/google/protobuf/d$a;->e:I

    return-void

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_2
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$a;->c:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$a;->d:Ljava/lang/Object;

    .line 82
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 83
    invoke-direct {p0, v4, v5, p3}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 84
    :cond_3
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$a;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/protobuf/d$a;->a(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 86
    :cond_4
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 87
    iput v2, p0, Lcom/google/protobuf/d$a;->e:I

    .line 88
    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    return v0
.end method

.method public b(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/an<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 4
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/d$a;->d(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 3
    invoke-static {}, Lcom/google/protobuf/ai;->a()Lcom/google/protobuf/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ai;->a(Ljava/lang/Class;)Lcom/google/protobuf/an;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/d$a;->d(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    instance-of v0, p1, Lcom/google/protobuf/n;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 7
    check-cast p1, Lcom/google/protobuf/n;

    .line 8
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/n;->addFloat(F)V

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 13
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_0

    .line 14
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->e(I)V

    .line 18
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 19
    :goto_0
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_9

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/n;->addFloat(F)V

    goto :goto_0

    .line 21
    :cond_4
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 24
    :cond_6
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 26
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_5

    .line 27
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 28
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 29
    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 30
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->e(I)V

    .line 31
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 32
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_9

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-void
.end method

.method public b(Ljava/util/List;Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/an<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 35
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    .line 36
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/d$a;->d(Lcom/google/protobuf/an;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 38
    :cond_1
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 40
    iput v1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 41
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    instance-of v0, p1, Lcom/google/protobuf/s;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/s;

    .line 24
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 26
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 27
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/d$a;->f(I)V

    goto :goto_2

    .line 30
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 33
    :cond_3
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 35
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_2

    .line 36
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 37
    :cond_4
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 39
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 40
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_5

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/protobuf/d$a;->f(I)V

    :goto_2
    return-void

    .line 43
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 44
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 46
    :cond_8
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 48
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_7

    .line 49
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public c()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    iget v1, p0, Lcom/google/protobuf/d$a;->g:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->a(I)V

    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->F()V

    return v1

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->a(I)V

    return v1

    :cond_4
    const/16 v0, 0x8

    .line 7
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->a(I)V

    return v1

    .line 8
    :cond_5
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->D()V

    return v1

    :cond_6
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->A()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    instance-of v0, p1, Lcom/google/protobuf/s;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/s;

    .line 15
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 17
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 18
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/d$a;->f(I)V

    goto :goto_2

    .line 21
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 24
    :cond_3
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 26
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_2

    .line 27
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 28
    :cond_4
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 30
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 31
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/protobuf/d$a;->f(I)V

    :goto_2
    return-void

    .line 34
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 35
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 37
    :cond_8
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 39
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_7

    .line 40
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public e()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->z()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/p;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/p;

    .line 5
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 8
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/d$a;->f(I)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 16
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_2

    .line 17
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 18
    :cond_4
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 20
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 21
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_5

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/protobuf/d$a;->f(I)V

    :goto_2
    return-void

    .line 24
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 25
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 27
    :cond_8
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_7

    .line 30
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public f()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/s;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/s;

    .line 5
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->d(I)V

    .line 8
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 9
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 14
    :cond_2
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 16
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_1

    .line 17
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 18
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 20
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->d(I)V

    .line 21
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 22
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_4

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 24
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 27
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_6

    .line 30
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/p;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 4
    check-cast p1, Lcom/google/protobuf/p;

    .line 5
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->addInt(I)V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 10
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_0

    .line 11
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 14
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->e(I)V

    .line 15
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 16
    :goto_0
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_9

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    .line 18
    :cond_4
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 21
    :cond_6
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 23
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_5

    .line 24
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 25
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 26
    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 27
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->e(I)V

    .line 28
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 29
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_9

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-void
.end method

.method public h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    return v0
.end method

.method public h(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/e;

    .line 5
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 7
    iget v3, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v3, p1

    .line 8
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v3, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/e;->addBoolean(Z)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/protobuf/d$a;->f(I)V

    goto :goto_4

    .line 11
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/e;->addBoolean(Z)V

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 14
    :cond_4
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 16
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_3

    .line 17
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 18
    :cond_5
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 20
    iget v3, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v3, v0

    .line 21
    :goto_2
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v3, :cond_7

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_7
    invoke-direct {p0, v3}, Lcom/google/protobuf/d$a;->f(I)V

    :goto_4
    return-void

    .line 24
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 25
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 27
    :cond_a
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_9

    .line 30
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public i()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/d$a;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->z()I

    move-result v0

    return v0
.end method

.method public j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/d$a;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->n()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 8
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_0

    .line 9
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public k()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$a;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/p;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/p;

    .line 4
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 6
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 12
    :cond_2
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 14
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_1

    .line 15
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 16
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 18
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 19
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 21
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 24
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 26
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_6

    .line 27
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d$a;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/p;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/p;

    .line 4
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 6
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 12
    :cond_2
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 14
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_1

    .line 15
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 16
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 18
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 19
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 21
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 24
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 26
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_6

    .line 27
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public n()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->b(I)V

    .line 5
    iget-boolean v1, p0, Lcom/google/protobuf/d$a;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/d$a;->b:[B

    iget v2, p0, Lcom/google/protobuf/d$a;->c:I

    .line 6
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/d$a;->b:[B

    iget v2, p0, Lcom/google/protobuf/d$a;->c:I

    .line 7
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 8
    :goto_0
    iget v2, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/d$a;->c:I

    return-object v1
.end method

.method public n(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p1, Lcom/google/protobuf/p;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Lcom/google/protobuf/p;

    .line 11
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->addInt(I)V

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 14
    :cond_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 16
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_0

    .line 17
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 18
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 20
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->e(I)V

    .line 21
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 22
    :goto_0
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_9

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    .line 24
    :cond_4
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 27
    :cond_6
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_5

    .line 30
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 31
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 32
    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->e(I)V

    .line 34
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 35
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_9

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-void
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    return v0
.end method

.method public o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/s;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/s;

    .line 5
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/d$a;->d(I)V

    .line 8
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 9
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 14
    :cond_2
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 16
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_1

    .line 17
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 18
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 20
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->d(I)V

    .line 21
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 22
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_4

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 24
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 27
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_6

    .line 30
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public p()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    return v0
.end method

.method public p(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/p;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/p;

    .line 5
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 8
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->s()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->addInt(I)V

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 13
    :cond_2
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 15
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_1

    .line 16
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 17
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 20
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_4

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 25
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 27
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_6

    .line 28
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public q()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->z()I

    move-result v0

    return v0
.end method

.method public q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/s;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/s;

    .line 5
    iget p1, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, p1

    .line 8
    :goto_0
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge p1, v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/s;->addLong(J)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/s;->addLong(J)V

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 13
    :cond_2
    iget p1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 15
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_1

    .line 16
    iput p1, p0, Lcom/google/protobuf/d$a;->c:I

    return-void

    .line 17
    :cond_3
    iget v0, p0, Lcom/google/protobuf/d$a;->f:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/protobuf/d$a;->c:I

    add-int/2addr v1, v0

    .line 20
    :goto_1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    if-ge v0, v1, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 25
    :cond_7
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    move-result v1

    .line 27
    iget v2, p0, Lcom/google/protobuf/d$a;->f:I

    if-eq v1, v2, :cond_6

    .line 28
    iput v0, p0, Lcom/google/protobuf/d$a;->c:I

    return-void
.end method

.method public r()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->A()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public s()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->w()I

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public t()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/d$a;->c(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/d$a;->u()J

    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public u()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/d$a;->c:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/d$a;->e:I

    .line 5
    if-eq v1, v0, :cond_b

    .line 7
    iget-object v2, p0, Lcom/google/protobuf/d$a;->b:[B

    .line 9
    add-int/lit8 v3, v0, 0x1

    .line 11
    aget-byte v0, v2, v0

    .line 13
    if-ltz v0, :cond_0

    .line 15
    iput v3, p0, Lcom/google/protobuf/d$a;->c:I

    .line 17
    int-to-long v0, v0

    .line 18
    return-wide v0

    .line 19
    :cond_0
    sub-int/2addr v1, v3

    .line 20
    const/16 v4, 0x9

    .line 22
    if-ge v1, v4, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/d$a;->x()J

    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 31
    aget-byte v3, v2, v3

    .line 33
    shl-int/lit8 v3, v3, 0x7

    .line 35
    xor-int/2addr v0, v3

    .line 36
    if-gez v0, :cond_2

    .line 38
    xor-int/lit8 v0, v0, -0x80

    .line 40
    :goto_0
    int-to-long v2, v0

    .line 41
    goto/16 :goto_4

    .line 43
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 45
    aget-byte v1, v2, v1

    .line 47
    shl-int/lit8 v1, v1, 0xe

    .line 49
    xor-int/2addr v0, v1

    .line 50
    if-ltz v0, :cond_3

    .line 52
    xor-int/lit16 v0, v0, 0x3f80

    .line 54
    int-to-long v0, v0

    .line 55
    move-wide v9, v0

    .line 56
    move v1, v3

    .line 57
    move-wide v2, v9

    .line 58
    goto/16 :goto_4

    .line 60
    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 62
    aget-byte v3, v2, v3

    .line 64
    shl-int/lit8 v3, v3, 0x15

    .line 66
    xor-int/2addr v0, v3

    .line 67
    if-gez v0, :cond_4

    .line 69
    const v2, -0x1fc080

    .line 72
    xor-int/2addr v0, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    int-to-long v3, v0

    .line 75
    add-int/lit8 v0, v1, 0x1

    .line 77
    aget-byte v1, v2, v1

    .line 79
    int-to-long v5, v1

    .line 80
    const/16 v1, 0x1c

    .line 82
    shl-long/2addr v5, v1

    .line 83
    xor-long/2addr v3, v5

    .line 84
    const-wide/16 v5, 0x0

    .line 86
    cmp-long v1, v3, v5

    .line 88
    if-ltz v1, :cond_5

    .line 90
    const-wide/32 v1, 0xfe03f80

    .line 93
    :goto_1
    xor-long v2, v3, v1

    .line 95
    move v1, v0

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 99
    aget-byte v0, v2, v0

    .line 101
    int-to-long v7, v0

    .line 102
    const/16 v0, 0x23

    .line 104
    shl-long/2addr v7, v0

    .line 105
    xor-long/2addr v3, v7

    .line 106
    cmp-long v0, v3, v5

    .line 108
    if-gez v0, :cond_6

    .line 110
    const-wide v5, -0x7f01fc080L

    .line 115
    :goto_2
    xor-long v2, v3, v5

    .line 117
    goto :goto_4

    .line 118
    :cond_6
    add-int/lit8 v0, v1, 0x1

    .line 120
    aget-byte v1, v2, v1

    .line 122
    int-to-long v7, v1

    .line 123
    const/16 v1, 0x2a

    .line 125
    shl-long/2addr v7, v1

    .line 126
    xor-long/2addr v3, v7

    .line 127
    cmp-long v1, v3, v5

    .line 129
    if-ltz v1, :cond_7

    .line 131
    const-wide v1, 0x3f80fe03f80L

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .line 139
    aget-byte v0, v2, v0

    .line 141
    int-to-long v7, v0

    .line 142
    const/16 v0, 0x31

    .line 144
    shl-long/2addr v7, v0

    .line 145
    xor-long/2addr v3, v7

    .line 146
    cmp-long v0, v3, v5

    .line 148
    if-gez v0, :cond_8

    .line 150
    const-wide v5, -0x1fc07f01fc080L

    .line 155
    goto :goto_2

    .line 156
    :cond_8
    add-int/lit8 v0, v1, 0x1

    .line 158
    aget-byte v1, v2, v1

    .line 160
    int-to-long v7, v1

    .line 161
    const/16 v1, 0x38

    .line 163
    shl-long/2addr v7, v1

    .line 164
    xor-long/2addr v3, v7

    .line 165
    const-wide v7, 0xfe03f80fe03f80L

    .line 170
    xor-long/2addr v3, v7

    .line 171
    cmp-long v1, v3, v5

    .line 173
    if-gez v1, :cond_a

    .line 175
    add-int/lit8 v1, v0, 0x1

    .line 177
    aget-byte v0, v2, v0

    .line 179
    int-to-long v7, v0

    .line 180
    cmp-long v0, v7, v5

    .line 182
    if-ltz v0, :cond_9

    .line 184
    goto :goto_3

    .line 185
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 188
    move-result-object v0

    .line 189
    throw v0

    .line 190
    :cond_a
    move v1, v0

    .line 191
    :goto_3
    move-wide v2, v3

    .line 192
    :goto_4
    iput v1, p0, Lcom/google/protobuf/d$a;->c:I

    .line 194
    return-wide v2

    .line 195
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 198
    move-result-object v0

    .line 199
    throw v0
.end method
