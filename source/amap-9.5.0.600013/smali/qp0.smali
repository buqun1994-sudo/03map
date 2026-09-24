.class public Lqp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lqp0;->a:[B

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lqp0;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lqp0;->a:[B

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lqp0;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lqp0;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x11

    .line 7
    if-ne v0, v1, :cond_2

    .line 9
    const-string v0, ":"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x6

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, v0

    .line 21
    if-ge v1, v2, :cond_0

    .line 23
    iget-object v2, p0, Lqp0;->a:[B

    .line 25
    aget-object v3, v0, v1

    .line 27
    const/16 v4, 0x10

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    .line 36
    move-result v3

    .line 37
    aput-byte v3, v2, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lqp0;->b:Ljava/lang/String;

    .line 45
    return-void

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 48
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 51
    throw v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 54
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 57
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    new-instance v0, Lbq0;

    .line 60
    const-string v1, "Mac.Mac"

    .line 62
    invoke-direct {v0, v1, p1}, Lbq0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    throw v0
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lqp0;->a:[B

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lqp0;->b:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x11

    .line 8
    new-array v0, v0, [C

    .line 10
    fill-array-data v0, :array_0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    const/4 v2, 0x6

    .line 15
    if-ge v1, v2, :cond_3

    .line 17
    iget-object v2, p0, Lqp0;->a:[B

    .line 19
    aget-byte v2, v2, v1

    .line 21
    invoke-static {v2}, Ljw0;->a(B)I

    .line 24
    move-result v2

    .line 25
    shr-int/lit8 v2, v2, 0x4

    .line 27
    iget-object v3, p0, Lqp0;->a:[B

    .line 29
    aget-byte v3, v3, v1

    .line 31
    invoke-static {v3}, Ljw0;->a(B)I

    .line 34
    move-result v3

    .line 35
    and-int/lit8 v3, v3, 0xf

    .line 37
    const/16 v4, 0x9

    .line 39
    if-le v2, v4, :cond_1

    .line 41
    add-int/lit8 v2, v2, 0x57

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x30

    .line 46
    :goto_1
    int-to-char v2, v2

    .line 47
    if-le v3, v4, :cond_2

    .line 49
    add-int/lit8 v3, v3, 0x57

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    add-int/lit8 v3, v3, 0x30

    .line 54
    :goto_2
    int-to-char v3, v3

    .line 55
    mul-int/lit8 v4, v1, 0x2

    .line 57
    add-int/2addr v4, v1

    .line 58
    aput-char v2, v0, v4

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 62
    aput-char v3, v0, v4

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v1, Ljava/lang/String;

    .line 69
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 72
    iput-object v1, p0, Lqp0;->b:Ljava/lang/String;

    .line 74
    return-object v1

    .line 75
    :array_0
    .array-data 2
        0x0s
        0x0s
        0x3as
        0x0s
        0x0s
        0x3as
        0x0s
        0x0s
        0x3as
        0x0s
        0x0s
        0x3as
        0x0s
        0x0s
        0x3as
        0x0s
        0x0s
    .end array-data
.end method
