.class final Lcom/google/protobuf/av;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/av$a;,
        Lcom/google/protobuf/av$e;,
        Lcom/google/protobuf/av$c;,
        Lcom/google/protobuf/av$b;,
        Lcom/google/protobuf/av$d;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/protobuf/av$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/av$e;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/google/protobuf/b;->a()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/google/protobuf/av$e;

    .line 15
    invoke-direct {v0}, Lcom/google/protobuf/av$e;-><init>()V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/google/protobuf/av$c;

    .line 21
    invoke-direct {v0}, Lcom/google/protobuf/av$c;-><init>()V

    .line 24
    :goto_0
    sput-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    .line 26
    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/av;->b(I)I

    move-result p0

    return p0
.end method

.method public static synthetic a(II)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/google/protobuf/av;->b(II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(III)I
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/av;->b(III)I

    move-result p0

    return p0
.end method

.method public static a(ILjava/nio/ByteBuffer;II)I
    .locals 1

    .line 19
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/av$b;->a(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static a(I[BII)I
    .locals 1

    .line 7
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/av$b;->a(I[BII)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 5

    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 10
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/av;->a(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    if-lt v2, v0, :cond_3

    return v2

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 14
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 16
    :cond_1
    new-instance p0, Lcom/google/protobuf/av$d;

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/av$d;-><init>(II)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static a(Ljava/lang/CharSequence;[BII)I
    .locals 1

    .line 17
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/av$b;->a(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/nio/ByteBuffer;III)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/av;->b(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/av$b;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/av$b;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 18
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/av$b;->a(Ljava/nio/ByteBuffer;II)Z

    move-result p0

    return p0
.end method

.method public static a([B)Z
    .locals 3

    .line 5
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/protobuf/av$b;->a([BII)Z

    move-result p0

    return p0
.end method

.method public static a([BII)Z
    .locals 1

    .line 6
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/av$b;->a([BII)Z

    move-result p0

    return p0
.end method

.method private static b(I)I
    .locals 1

    .line 1
    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private static b(II)I
    .locals 1

    .line 2
    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static b(III)I
    .locals 1

    .line 3
    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static synthetic b(Ljava/nio/ByteBuffer;II)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/av;->c(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private static b(Ljava/nio/ByteBuffer;III)I
    .locals 2

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p3, p0}, Lcom/google/protobuf/av;->b(III)I

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/protobuf/av;->b(II)I

    move-result p0

    return p0

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/av;->b(I)I

    move-result p0

    return p0
.end method

.method public static b([BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/av;->a:Lcom/google/protobuf/av$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/av$b;->b([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/nio/ByteBuffer;II)I
    .locals 6

    add-int/lit8 p2, p2, -0x7

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public static synthetic c([BII)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/av;->d([BII)I

    move-result p0

    return p0
.end method

.method private static d([BII)I
    .locals 3

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 3
    aget-byte v0, p0, v0

    .line 5
    sub-int/2addr p2, p1

    .line 6
    if-eqz p2, :cond_2

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p2, v1, :cond_1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne p2, v2, :cond_0

    .line 14
    aget-byte p2, p0, p1

    .line 16
    add-int/2addr p1, v1

    .line 17
    aget-byte p0, p0, p1

    .line 19
    invoke-static {v0, p2, p0}, Lcom/google/protobuf/av;->b(III)I

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 26
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 29
    throw p0

    .line 30
    :cond_1
    aget-byte p0, p0, p1

    .line 32
    invoke-static {v0, p0}, Lcom/google/protobuf/av;->b(II)I

    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_2
    invoke-static {v0}, Lcom/google/protobuf/av;->b(I)I

    .line 40
    move-result p0

    .line 41
    return p0
.end method
