.class Lcom/google/protobuf/am$c;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/protobuf/am;

.field private b:Lcom/google/protobuf/am$b;

.field private c:Lcom/google/protobuf/ByteString$f;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/am;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/am$c;->a:Lcom/google/protobuf/am;

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/am$c;->a()V

    .line 9
    return-void
.end method

.method private a([BII)I
    .locals 4

    move v0, p3

    :goto_0
    if-lez v0, :cond_2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/am$c;->b()V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/am$c;->c:Lcom/google/protobuf/ByteString$f;

    if-nez v1, :cond_0

    if-ne v0, p3, :cond_2

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/protobuf/am$c;->d:I

    iget v2, p0, Lcom/google/protobuf/am$c;->e:I

    sub-int/2addr v1, v2

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/protobuf/am$c;->c:Lcom/google/protobuf/ByteString$f;

    iget v3, p0, Lcom/google/protobuf/am$c;->e:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    add-int/2addr p2, v1

    .line 6
    :cond_1
    iget v2, p0, Lcom/google/protobuf/am$c;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/am$c;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, v0

    return p3
.end method

.method private a()V
    .locals 3

    .line 7
    new-instance v0, Lcom/google/protobuf/am$b;

    iget-object v1, p0, Lcom/google/protobuf/am$c;->a:Lcom/google/protobuf/am;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/am$b;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/am$1;)V

    iput-object v0, p0, Lcom/google/protobuf/am$c;->b:Lcom/google/protobuf/am$b;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/am$b;->a()Lcom/google/protobuf/ByteString$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/am$c;->c:Lcom/google/protobuf/ByteString$f;

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/am$c;->d:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/protobuf/am$c;->e:I

    .line 11
    iput v0, p0, Lcom/google/protobuf/am$c;->f:I

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/am$c;->c:Lcom/google/protobuf/ByteString$f;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/google/protobuf/am$c;->e:I

    .line 7
    iget v1, p0, Lcom/google/protobuf/am$c;->d:I

    .line 9
    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/google/protobuf/am$c;->f:I

    .line 13
    add-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/google/protobuf/am$c;->f:I

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/protobuf/am$c;->e:I

    .line 19
    iget-object v1, p0, Lcom/google/protobuf/am$c;->b:Lcom/google/protobuf/am$b;

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/am$b;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/protobuf/am$c;->b:Lcom/google/protobuf/am$b;

    .line 29
    invoke-virtual {v0}, Lcom/google/protobuf/am$b;->a()Lcom/google/protobuf/ByteString$f;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/google/protobuf/am$c;->c:Lcom/google/protobuf/ByteString$f;

    .line 35
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/google/protobuf/am$c;->d:I

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/google/protobuf/am$c;->c:Lcom/google/protobuf/ByteString$f;

    .line 45
    iput v0, p0, Lcom/google/protobuf/am$c;->d:I

    .line 47
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/am$c;->f:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/am$c;->e:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/am$c;->a:Lcom/google/protobuf/am;

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/am;->size()I

    .line 11
    move-result v1

    .line 12
    sub-int/2addr v1, v0

    .line 13
    return v1
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/protobuf/am$c;->f:I

    .line 3
    iget v0, p0, Lcom/google/protobuf/am$c;->e:I

    .line 5
    add-int/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/google/protobuf/am$c;->g:I

    .line 8
    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/am$c;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/am$c;->c:Lcom/google/protobuf/ByteString$f;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/google/protobuf/am$c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/am$c;->e:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/am$c;->a([BII)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/am$c;->a()V

    .line 5
    iget v0, p0, Lcom/google/protobuf/am$c;->g:I

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/am$c;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public skip(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-ltz v2, :cond_1

    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 10
    cmp-long v2, p1, v0

    .line 12
    if-lez v2, :cond_0

    .line 14
    move-wide p1, v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    long-to-int p2, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1, v0, p2}, Lcom/google/protobuf/am$c;->a([BII)I

    .line 21
    move-result p1

    .line 22
    int-to-long p1, p1

    .line 23
    return-wide p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 26
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 29
    throw p1
.end method
