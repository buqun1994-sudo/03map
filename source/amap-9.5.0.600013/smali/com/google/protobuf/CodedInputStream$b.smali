.class final Lcom/google/protobuf/CodedInputStream$b;
.super Lcom/google/protobuf/CodedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/nio/ByteBuffer;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:J

.field private o:J


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$e;)V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->h:I

    .line 4
    iput p2, p0, Lcom/google/protobuf/CodedInputStream$b;->f:I

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$b;->a:Ljava/lang/Iterable;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$b;->b:Ljava/util/Iterator;

    .line 7
    iput-boolean p3, p0, Lcom/google/protobuf/CodedInputStream$b;->d:Z

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    iput p1, p0, Lcom/google/protobuf/CodedInputStream$b;->k:I

    if-nez p2, :cond_0

    .line 9
    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 11
    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 12
    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 13
    iput-wide p1, p0, Lcom/google/protobuf/CodedInputStream$b;->n:J

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->b()V

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/google/protobuf/CodedInputStream$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStream$b;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private a(II)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p2, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    iget-object p2, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 19
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget-object p2, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    throw p1
.end method

.method private a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->b()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private a([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->e()I

    move-result v0

    if-gt p3, v0, :cond_2

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->a()V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    sub-int v4, p3, v0

    add-int/2addr v4, p2

    int-to-long v5, v4

    int-to-long v9, v1

    move-object v4, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/au;->a(J[BJJ)V

    sub-int/2addr v0, v1

    .line 9
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gtz p3, :cond_4

    if-nez p3, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 11
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$b;->b:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    .line 11
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    .line 13
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 15
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 17
    sub-long/2addr v2, v4

    .line 18
    long-to-int v3, v2

    .line 19
    add-int/2addr v1, v3

    .line 20
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    .line 22
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 29
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 31
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 36
    move-result v0

    .line 37
    int-to-long v0, v0

    .line 38
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 40
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    .line 42
    invoke-static {v0}, Lcom/google/protobuf/au;->a(Ljava/nio/ByteBuffer;)J

    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->n:J

    .line 48
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 50
    add-long/2addr v2, v0

    .line 51
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 53
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 55
    add-long/2addr v2, v0

    .line 56
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 58
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 60
    add-long/2addr v2, v0

    .line 61
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 63
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->f:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->g:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->f:I

    .line 8
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->k:I

    .line 10
    sub-int v1, v0, v1

    .line 12
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->h:I

    .line 14
    if-le v1, v2, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$b;->g:I

    .line 19
    sub-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->f:I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->g:I

    .line 26
    :goto_0
    return-void
.end method

.method private d()V
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
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

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

.method private e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->f:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-long v0, v0

    .line 7
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 12
    add-long/2addr v0, v2

    .line 13
    long-to-int v1, v0

    .line 14
    return v1
.end method

.method private f()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 3
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->i:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method

.method public enableAliasing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$b;->e:Z

    .line 3
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->h:I

    .line 3
    const v1, 0x7fffffff

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, -0x1

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->getTotalBytesRead()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public getLastTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->i:I

    .line 3
    return v0
.end method

.method public getTotalBytesRead()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$b;->k:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-long v0, v0

    .line 7
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 9
    add-long/2addr v0, v2

    .line 10
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 12
    sub-long/2addr v0, v2

    .line 13
    long-to-int v1, v0

    .line 14
    return v1
.end method

.method public isAtEnd()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    .line 3
    int-to-long v0, v0

    .line 4
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 6
    add-long/2addr v0, v2

    .line 7
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->f:I

    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v4, v0, v2

    .line 15
    if-nez v4, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$b;->h:I

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->c()V

    .line 6
    return-void
.end method

.method public pushLimit(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->getTotalBytesRead()I

    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->h:I

    .line 10
    if-gt p1, v0, :cond_0

    .line 12
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$b;->h:I

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->c()V

    .line 17
    return v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 26
    move-result-object p1

    .line 27
    throw p1
.end method

.method public readBool()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

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

.method public readByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->readRawBytes(I)[B

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 7
    int-to-long v8, v0

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    .line 11
    move-result-wide v1

    .line 12
    cmp-long v3, v8, v1

    .line 14
    if-gtz v3, :cond_1

    .line 16
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->d:Z

    .line 18
    if-nez v1, :cond_0

    .line 20
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->e:Z

    .line 22
    if-eqz v1, :cond_0

    .line 24
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 26
    add-long/2addr v0, v8

    .line 27
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 29
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->n:J

    .line 31
    sub-long v4, v0, v2

    .line 33
    sub-long/2addr v4, v8

    .line 34
    long-to-int v5, v4

    .line 35
    sub-long/2addr v0, v2

    .line 36
    long-to-int v1, v0

    .line 37
    invoke-direct {p0, v5, v1}, Lcom/google/protobuf/CodedInputStream$b;->a(II)Ljava/nio/ByteBuffer;

    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_0
    new-array v0, v0, [B

    .line 44
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 46
    const-wide/16 v4, 0x0

    .line 48
    move-object v3, v0

    .line 49
    move-wide v6, v8

    .line 50
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/au;->a(J[BJJ)V

    .line 53
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 55
    add-long/2addr v1, v8

    .line 56
    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :cond_1
    if-lez v0, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->e()I

    .line 68
    move-result v1

    .line 69
    if-gt v0, v1, :cond_2

    .line 71
    new-array v1, v0, [B

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$b;->a([BII)V

    .line 77
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :cond_2
    if-nez v0, :cond_3

    .line 84
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    .line 86
    return-object v0

    .line 87
    :cond_3
    if-gez v0, :cond_4

    .line 89
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 92
    move-result-object v0

    .line 93
    throw v0

    .line 94
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 97
    move-result-object v0

    .line 98
    throw v0
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 7
    int-to-long v8, v0

    .line 8
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 10
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 12
    sub-long/2addr v1, v3

    .line 13
    cmp-long v5, v8, v1

    .line 15
    if-gtz v5, :cond_1

    .line 17
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->d:Z

    .line 19
    if-eqz v1, :cond_0

    .line 21
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$b;->e:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->n:J

    .line 27
    sub-long/2addr v3, v1

    .line 28
    long-to-int v1, v3

    .line 29
    add-int/2addr v0, v1

    .line 30
    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/CodedInputStream$b;->a(II)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    .line 37
    move-result-object v0

    .line 38
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 40
    add-long/2addr v1, v8

    .line 41
    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 43
    return-object v0

    .line 44
    :cond_0
    new-array v0, v0, [B

    .line 46
    const-wide/16 v5, 0x0

    .line 48
    move-wide v1, v3

    .line 49
    move-object v3, v0

    .line 50
    move-wide v4, v5

    .line 51
    move-wide v6, v8

    .line 52
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/au;->a(J[BJJ)V

    .line 55
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 57
    add-long/2addr v1, v8

    .line 58
    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 60
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_1
    if-lez v0, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->e()I

    .line 70
    move-result v1

    .line 71
    if-gt v0, v1, :cond_2

    .line 73
    new-array v1, v0, [B

    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$b;->a([BII)V

    .line 79
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :cond_2
    if-nez v0, :cond_3

    .line 86
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 88
    return-object v0

    .line 89
    :cond_3
    if-gez v0, :cond_4

    .line 91
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 94
    move-result-object v0

    .line 95
    throw v0

    .line 96
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 99
    move-result-object v0

    .line 100
    throw v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/protobuf/Parser<",
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

    .line 7
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 9
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 10
    invoke-static {p1, p3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    .line 11
    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-object p2

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 3
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 4
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    .line 5
    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/Parser<",
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

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    .line 11
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->pushLimit(I)I

    move-result v0

    .line 13
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 14
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    .line 16
    iget p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->popLimit(I)V

    return-object p1

    .line 18
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->pushLimit(I)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 5
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    .line 7
    iget p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->popLimit(I)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v4, v0, v2

    .line 9
    if-nez v4, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->a()V

    .line 14
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 16
    const-wide/16 v2, 0x1

    .line 18
    add-long/2addr v2, v0

    .line 19
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 21
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(J)B

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public readRawBytes(I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 3
    int-to-long v7, p1

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    .line 7
    move-result-wide v0

    .line 8
    cmp-long v2, v7, v0

    .line 10
    if-gtz v2, :cond_0

    .line 12
    new-array p1, p1, [B

    .line 14
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 16
    const-wide/16 v3, 0x0

    .line 18
    move-object v2, p1

    .line 19
    move-wide v5, v7

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/au;->a(J[BJJ)V

    .line 23
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 25
    add-long/2addr v0, v7

    .line 26
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 28
    return-object p1

    .line 29
    :cond_0
    if-ltz p1, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->e()I

    .line 34
    move-result v0

    .line 35
    if-gt p1, v0, :cond_1

    .line 37
    new-array v0, p1, [B

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, v0, v1, p1}, Lcom/google/protobuf/CodedInputStream$b;->a([BII)V

    .line 43
    return-object v0

    .line 44
    :cond_1
    if-gtz p1, :cond_3

    .line 46
    if-nez p1, :cond_2

    .line 48
    sget-object p1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 50
    return-object p1

    .line 51
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 59
    move-result-object p1

    .line 60
    throw p1
.end method

.method public readRawLittleEndian32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x4

    .line 7
    cmp-long v4, v0, v2

    .line 9
    if-ltz v4, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 13
    add-long/2addr v2, v0

    .line 14
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 16
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(J)B

    .line 19
    move-result v2

    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 22
    const-wide/16 v3, 0x1

    .line 24
    add-long/2addr v3, v0

    .line 25
    invoke-static {v3, v4}, Lcom/google/protobuf/au;->a(J)B

    .line 28
    move-result v3

    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 31
    shl-int/lit8 v3, v3, 0x8

    .line 33
    or-int/2addr v2, v3

    .line 34
    const-wide/16 v3, 0x2

    .line 36
    add-long/2addr v3, v0

    .line 37
    invoke-static {v3, v4}, Lcom/google/protobuf/au;->a(J)B

    .line 40
    move-result v3

    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 43
    shl-int/lit8 v3, v3, 0x10

    .line 45
    or-int/2addr v2, v3

    .line 46
    const-wide/16 v3, 0x3

    .line 48
    add-long/2addr v0, v3

    .line 49
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(J)B

    .line 52
    move-result v0

    .line 53
    and-int/lit16 v0, v0, 0xff

    .line 55
    shl-int/lit8 v0, v0, 0x18

    .line 57
    or-int/2addr v0, v2

    .line 58
    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 62
    move-result v0

    .line 63
    and-int/lit16 v0, v0, 0xff

    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 68
    move-result v1

    .line 69
    and-int/lit16 v1, v1, 0xff

    .line 71
    shl-int/lit8 v1, v1, 0x8

    .line 73
    or-int/2addr v0, v1

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 77
    move-result v1

    .line 78
    and-int/lit16 v1, v1, 0xff

    .line 80
    shl-int/lit8 v1, v1, 0x10

    .line 82
    or-int/2addr v0, v1

    .line 83
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 86
    move-result v1

    .line 87
    and-int/lit16 v1, v1, 0xff

    .line 89
    shl-int/lit8 v1, v1, 0x18

    .line 91
    or-int/2addr v0, v1

    .line 92
    return v0
.end method

.method public readRawLittleEndian64()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x38

    .line 7
    const/16 v3, 0x30

    .line 9
    const/16 v4, 0x28

    .line 11
    const/16 v5, 0x20

    .line 13
    const/16 v6, 0x18

    .line 15
    const/16 v7, 0x10

    .line 17
    const/16 v8, 0x8

    .line 19
    const-wide/16 v9, 0xff

    .line 21
    const-wide/16 v11, 0x8

    .line 23
    cmp-long v13, v0, v11

    .line 25
    if-ltz v13, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 29
    add-long/2addr v11, v0

    .line 30
    iput-wide v11, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 32
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(J)B

    .line 35
    move-result v11

    .line 36
    int-to-long v11, v11

    .line 37
    and-long/2addr v11, v9

    .line 38
    const-wide/16 v13, 0x1

    .line 40
    add-long/2addr v13, v0

    .line 41
    invoke-static {v13, v14}, Lcom/google/protobuf/au;->a(J)B

    .line 44
    move-result v13

    .line 45
    int-to-long v13, v13

    .line 46
    and-long/2addr v13, v9

    .line 47
    shl-long/2addr v13, v8

    .line 48
    or-long/2addr v11, v13

    .line 49
    const-wide/16 v13, 0x2

    .line 51
    add-long/2addr v13, v0

    .line 52
    invoke-static {v13, v14}, Lcom/google/protobuf/au;->a(J)B

    .line 55
    move-result v8

    .line 56
    int-to-long v13, v8

    .line 57
    and-long/2addr v13, v9

    .line 58
    shl-long v7, v13, v7

    .line 60
    or-long/2addr v7, v11

    .line 61
    const-wide/16 v11, 0x3

    .line 63
    add-long/2addr v11, v0

    .line 64
    invoke-static {v11, v12}, Lcom/google/protobuf/au;->a(J)B

    .line 67
    move-result v11

    .line 68
    int-to-long v11, v11

    .line 69
    and-long/2addr v11, v9

    .line 70
    shl-long/2addr v11, v6

    .line 71
    or-long v6, v7, v11

    .line 73
    const-wide/16 v11, 0x4

    .line 75
    add-long/2addr v11, v0

    .line 76
    invoke-static {v11, v12}, Lcom/google/protobuf/au;->a(J)B

    .line 79
    move-result v8

    .line 80
    int-to-long v11, v8

    .line 81
    and-long/2addr v11, v9

    .line 82
    shl-long/2addr v11, v5

    .line 83
    or-long v5, v6, v11

    .line 85
    const-wide/16 v7, 0x5

    .line 87
    add-long/2addr v7, v0

    .line 88
    invoke-static {v7, v8}, Lcom/google/protobuf/au;->a(J)B

    .line 91
    move-result v7

    .line 92
    int-to-long v7, v7

    .line 93
    and-long/2addr v7, v9

    .line 94
    shl-long/2addr v7, v4

    .line 95
    or-long v4, v5, v7

    .line 97
    const-wide/16 v6, 0x6

    .line 99
    add-long/2addr v6, v0

    .line 100
    invoke-static {v6, v7}, Lcom/google/protobuf/au;->a(J)B

    .line 103
    move-result v6

    .line 104
    int-to-long v6, v6

    .line 105
    and-long/2addr v6, v9

    .line 106
    shl-long/2addr v6, v3

    .line 107
    or-long v3, v4, v6

    .line 109
    const-wide/16 v5, 0x7

    .line 111
    add-long/2addr v0, v5

    .line 112
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(J)B

    .line 115
    move-result v0

    .line 116
    int-to-long v0, v0

    .line 117
    and-long/2addr v0, v9

    .line 118
    shl-long/2addr v0, v2

    .line 119
    or-long/2addr v0, v3

    .line 120
    return-wide v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 124
    move-result v0

    .line 125
    int-to-long v0, v0

    .line 126
    and-long/2addr v0, v9

    .line 127
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 130
    move-result v11

    .line 131
    int-to-long v11, v11

    .line 132
    and-long/2addr v11, v9

    .line 133
    shl-long/2addr v11, v8

    .line 134
    or-long/2addr v0, v11

    .line 135
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 138
    move-result v8

    .line 139
    int-to-long v11, v8

    .line 140
    and-long/2addr v11, v9

    .line 141
    shl-long v7, v11, v7

    .line 143
    or-long/2addr v0, v7

    .line 144
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 147
    move-result v7

    .line 148
    int-to-long v7, v7

    .line 149
    and-long/2addr v7, v9

    .line 150
    shl-long v6, v7, v6

    .line 152
    or-long/2addr v0, v6

    .line 153
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 156
    move-result v6

    .line 157
    int-to-long v6, v6

    .line 158
    and-long/2addr v6, v9

    .line 159
    shl-long v5, v6, v5

    .line 161
    or-long/2addr v0, v5

    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 165
    move-result v5

    .line 166
    int-to-long v5, v5

    .line 167
    and-long/2addr v5, v9

    .line 168
    shl-long v4, v5, v4

    .line 170
    or-long/2addr v0, v4

    .line 171
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 174
    move-result v4

    .line 175
    int-to-long v4, v4

    .line 176
    and-long/2addr v4, v9

    .line 177
    shl-long v3, v4, v3

    .line 179
    or-long/2addr v0, v3

    .line 180
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

    .line 183
    move-result v3

    .line 184
    int-to-long v3, v3

    .line 185
    and-long/2addr v3, v9

    .line 186
    shl-long v2, v3, v2

    .line 188
    or-long/2addr v0, v2

    .line 189
    return-wide v0
.end method

.method public readRawVarint32()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 3
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 5
    cmp-long v4, v2, v0

    .line 7
    if-nez v4, :cond_0

    .line 9
    goto/16 :goto_0

    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 13
    add-long v4, v0, v2

    .line 15
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(J)B

    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_1

    .line 21
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 23
    add-long/2addr v4, v2

    .line 24
    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 26
    return v0

    .line 27
    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 29
    iget-wide v8, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 31
    sub-long/2addr v6, v8

    .line 32
    const-wide/16 v8, 0xa

    .line 34
    cmp-long v1, v6, v8

    .line 36
    if-gez v1, :cond_2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    add-long v6, v4, v2

    .line 41
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 44
    move-result v1

    .line 45
    shl-int/lit8 v1, v1, 0x7

    .line 47
    xor-int/2addr v0, v1

    .line 48
    if-gez v0, :cond_3

    .line 50
    xor-int/lit8 v0, v0, -0x80

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    add-long v4, v6, v2

    .line 55
    invoke-static {v6, v7}, Lcom/google/protobuf/au;->a(J)B

    .line 58
    move-result v1

    .line 59
    shl-int/lit8 v1, v1, 0xe

    .line 61
    xor-int/2addr v0, v1

    .line 62
    if-ltz v0, :cond_5

    .line 64
    xor-int/lit16 v0, v0, 0x3f80

    .line 66
    :cond_4
    move-wide v6, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    add-long v6, v4, v2

    .line 70
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 73
    move-result v1

    .line 74
    shl-int/lit8 v1, v1, 0x15

    .line 76
    xor-int/2addr v0, v1

    .line 77
    if-gez v0, :cond_6

    .line 79
    const v1, -0x1fc080

    .line 82
    xor-int/2addr v0, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    add-long v4, v6, v2

    .line 86
    invoke-static {v6, v7}, Lcom/google/protobuf/au;->a(J)B

    .line 89
    move-result v1

    .line 90
    shl-int/lit8 v6, v1, 0x1c

    .line 92
    xor-int/2addr v0, v6

    .line 93
    const v6, 0xfe03f80

    .line 96
    xor-int/2addr v0, v6

    .line 97
    if-gez v1, :cond_4

    .line 99
    add-long v6, v4, v2

    .line 101
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 104
    move-result v1

    .line 105
    if-gez v1, :cond_7

    .line 107
    add-long v4, v6, v2

    .line 109
    invoke-static {v6, v7}, Lcom/google/protobuf/au;->a(J)B

    .line 112
    move-result v1

    .line 113
    if-gez v1, :cond_4

    .line 115
    add-long v6, v4, v2

    .line 117
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 120
    move-result v1

    .line 121
    if-gez v1, :cond_7

    .line 123
    add-long v4, v6, v2

    .line 125
    invoke-static {v6, v7}, Lcom/google/protobuf/au;->a(J)B

    .line 128
    move-result v1

    .line 129
    if-gez v1, :cond_4

    .line 131
    add-long v6, v4, v2

    .line 133
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 136
    move-result v1

    .line 137
    if-gez v1, :cond_7

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64SlowPath()J

    .line 142
    move-result-wide v0

    .line 143
    long-to-int v1, v0

    .line 144
    return v1

    .line 145
    :cond_7
    :goto_1
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 147
    return v0
.end method

.method public readRawVarint64()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 3
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 5
    cmp-long v4, v2, v0

    .line 7
    if-nez v4, :cond_0

    .line 9
    goto/16 :goto_4

    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 13
    add-long v4, v0, v2

    .line 15
    invoke-static {v0, v1}, Lcom/google/protobuf/au;->a(J)B

    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_1

    .line 21
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 23
    add-long/2addr v4, v2

    .line 24
    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 26
    int-to-long v0, v0

    .line 27
    return-wide v0

    .line 28
    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 30
    iget-wide v8, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 32
    sub-long/2addr v6, v8

    .line 33
    const-wide/16 v8, 0xa

    .line 35
    cmp-long v1, v6, v8

    .line 37
    if-gez v1, :cond_2

    .line 39
    goto/16 :goto_4

    .line 41
    :cond_2
    add-long v6, v4, v2

    .line 43
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 46
    move-result v1

    .line 47
    shl-int/lit8 v1, v1, 0x7

    .line 49
    xor-int/2addr v0, v1

    .line 50
    if-gez v0, :cond_3

    .line 52
    xor-int/lit8 v0, v0, -0x80

    .line 54
    :goto_0
    int-to-long v0, v0

    .line 55
    goto/16 :goto_5

    .line 57
    :cond_3
    add-long v4, v6, v2

    .line 59
    invoke-static {v6, v7}, Lcom/google/protobuf/au;->a(J)B

    .line 62
    move-result v1

    .line 63
    shl-int/lit8 v1, v1, 0xe

    .line 65
    xor-int/2addr v0, v1

    .line 66
    if-ltz v0, :cond_5

    .line 68
    xor-int/lit16 v0, v0, 0x3f80

    .line 70
    int-to-long v0, v0

    .line 71
    :cond_4
    :goto_1
    move-wide v6, v4

    .line 72
    goto/16 :goto_5

    .line 74
    :cond_5
    add-long v6, v4, v2

    .line 76
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 79
    move-result v1

    .line 80
    shl-int/lit8 v1, v1, 0x15

    .line 82
    xor-int/2addr v0, v1

    .line 83
    if-gez v0, :cond_6

    .line 85
    const v1, -0x1fc080

    .line 88
    xor-int/2addr v0, v1

    .line 89
    goto :goto_0

    .line 90
    :cond_6
    int-to-long v0, v0

    .line 91
    add-long v4, v6, v2

    .line 93
    invoke-static {v6, v7}, Lcom/google/protobuf/au;->a(J)B

    .line 96
    move-result v6

    .line 97
    int-to-long v6, v6

    .line 98
    const/16 v8, 0x1c

    .line 100
    shl-long/2addr v6, v8

    .line 101
    xor-long/2addr v0, v6

    .line 102
    const-wide/16 v6, 0x0

    .line 104
    cmp-long v8, v0, v6

    .line 106
    if-ltz v8, :cond_7

    .line 108
    const-wide/32 v2, 0xfe03f80

    .line 111
    :goto_2
    xor-long/2addr v0, v2

    .line 112
    goto :goto_1

    .line 113
    :cond_7
    add-long v8, v4, v2

    .line 115
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 118
    move-result v4

    .line 119
    int-to-long v4, v4

    .line 120
    const/16 v10, 0x23

    .line 122
    shl-long/2addr v4, v10

    .line 123
    xor-long/2addr v0, v4

    .line 124
    cmp-long v4, v0, v6

    .line 126
    if-gez v4, :cond_8

    .line 128
    const-wide v2, -0x7f01fc080L

    .line 133
    :goto_3
    xor-long/2addr v0, v2

    .line 134
    move-wide v6, v8

    .line 135
    goto :goto_5

    .line 136
    :cond_8
    add-long v4, v8, v2

    .line 138
    invoke-static {v8, v9}, Lcom/google/protobuf/au;->a(J)B

    .line 141
    move-result v8

    .line 142
    int-to-long v8, v8

    .line 143
    const/16 v10, 0x2a

    .line 145
    shl-long/2addr v8, v10

    .line 146
    xor-long/2addr v0, v8

    .line 147
    cmp-long v8, v0, v6

    .line 149
    if-ltz v8, :cond_9

    .line 151
    const-wide v2, 0x3f80fe03f80L

    .line 156
    goto :goto_2

    .line 157
    :cond_9
    add-long v8, v4, v2

    .line 159
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 162
    move-result v4

    .line 163
    int-to-long v4, v4

    .line 164
    const/16 v10, 0x31

    .line 166
    shl-long/2addr v4, v10

    .line 167
    xor-long/2addr v0, v4

    .line 168
    cmp-long v4, v0, v6

    .line 170
    if-gez v4, :cond_a

    .line 172
    const-wide v2, -0x1fc07f01fc080L

    .line 177
    goto :goto_3

    .line 178
    :cond_a
    add-long v4, v8, v2

    .line 180
    invoke-static {v8, v9}, Lcom/google/protobuf/au;->a(J)B

    .line 183
    move-result v8

    .line 184
    int-to-long v8, v8

    .line 185
    const/16 v10, 0x38

    .line 187
    shl-long/2addr v8, v10

    .line 188
    xor-long/2addr v0, v8

    .line 189
    const-wide v8, 0xfe03f80fe03f80L

    .line 194
    xor-long/2addr v0, v8

    .line 195
    cmp-long v8, v0, v6

    .line 197
    if-gez v8, :cond_4

    .line 199
    add-long/2addr v2, v4

    .line 200
    invoke-static {v4, v5}, Lcom/google/protobuf/au;->a(J)B

    .line 203
    move-result v4

    .line 204
    int-to-long v4, v4

    .line 205
    cmp-long v8, v4, v6

    .line 207
    if-gez v8, :cond_b

    .line 209
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64SlowPath()J

    .line 212
    move-result-wide v0

    .line 213
    return-wide v0

    .line 214
    :cond_b
    move-wide v6, v2

    .line 215
    :goto_5
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 217
    return-wide v0
.end method

.method public readRawVarint64SlowPath()J
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
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawByte()B

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

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    int-to-long v8, v0

    .line 8
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 10
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 12
    sub-long/2addr v1, v3

    .line 13
    cmp-long v5, v8, v1

    .line 15
    if-gtz v5, :cond_0

    .line 17
    new-array v0, v0, [B

    .line 19
    const-wide/16 v5, 0x0

    .line 21
    move-wide v1, v3

    .line 22
    move-object v3, v0

    .line 23
    move-wide v4, v5

    .line 24
    move-wide v6, v8

    .line 25
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/au;->a(J[BJJ)V

    .line 28
    new-instance v1, Ljava/lang/String;

    .line 30
    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 37
    add-long/2addr v2, v8

    .line 38
    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 40
    return-object v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->e()I

    .line 46
    move-result v1

    .line 47
    if-gt v0, v1, :cond_1

    .line 49
    new-array v1, v0, [B

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$b;->a([BII)V

    .line 55
    new-instance v0, Ljava/lang/String;

    .line 57
    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 62
    return-object v0

    .line 63
    :cond_1
    if-nez v0, :cond_2

    .line 65
    const-string v0, ""

    .line 67
    return-object v0

    .line 68
    :cond_2
    if-gez v0, :cond_3

    .line 70
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 73
    move-result-object v0

    .line 74
    throw v0

    .line 75
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 78
    move-result-object v0

    .line 79
    throw v0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    int-to-long v1, v0

    .line 8
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$b;->o:J

    .line 10
    iget-wide v5, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 12
    sub-long/2addr v3, v5

    .line 13
    cmp-long v7, v1, v3

    .line 15
    if-gtz v7, :cond_0

    .line 17
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 19
    sub-long/2addr v5, v3

    .line 20
    long-to-int v3, v5

    .line 21
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$b;->c:Ljava/nio/ByteBuffer;

    .line 23
    invoke-static {v4, v3, v0}, Lcom/google/protobuf/av;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 29
    add-long/2addr v3, v1

    .line 30
    iput-wide v3, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 32
    return-object v0

    .line 33
    :cond_0
    if-ltz v0, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->e()I

    .line 38
    move-result v1

    .line 39
    if-gt v0, v1, :cond_1

    .line 41
    new-array v1, v0, [B

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, v1, v2, v0}, Lcom/google/protobuf/CodedInputStream$b;->a([BII)V

    .line 47
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/av;->b([BII)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :cond_1
    if-nez v0, :cond_2

    .line 54
    const-string v0, ""

    .line 56
    return-object v0

    .line 57
    :cond_2
    if-gtz v0, :cond_3

    .line 59
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 62
    move-result-object v0

    .line 63
    throw v0

    .line 64
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 67
    move-result-object v0

    .line 68
    throw v0
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->isAtEnd()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->i:I

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$b;->i:I

    .line 17
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->i:I

    .line 25
    return v0

    .line 26
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 29
    move-result-object v0

    .line 30
    throw v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint64()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$b;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8
    return-void
.end method

.method public resetSizeCounter()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    .line 3
    int-to-long v0, v0

    .line 4
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 6
    add-long/2addr v0, v2

    .line 7
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 9
    sub-long/2addr v0, v2

    .line 10
    long-to-int v1, v0

    .line 11
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$b;->k:I

    .line 13
    return-void
.end method

.method public skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$b;->skipRawBytes(I)V

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->skipMessage()V

    .line 5
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->skipRawBytes(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->skipRawBytes(I)V

    return v1

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->d()V

    return v1
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian32()I

    move-result v0

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 15
    :cond_2
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$b;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 18
    invoke-static {p1, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedInputStream$b;->checkLastTagWas(I)V

    .line 20
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    return v1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 23
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    return v1

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readRawLittleEndian64()J

    move-result-wide v2

    .line 25
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 26
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 27
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readInt64()J

    move-result-wide v2

    .line 28
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 29
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public skipMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$b;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$b;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$b;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_2

    .line 3
    int-to-long v0, p1

    .line 4
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$b;->f:I

    .line 6
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$b;->j:I

    .line 8
    sub-int/2addr v2, v3

    .line 9
    int-to-long v2, v2

    .line 10
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 12
    sub-long/2addr v2, v4

    .line 13
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$b;->m:J

    .line 15
    add-long/2addr v2, v4

    .line 16
    cmp-long v4, v0, v2

    .line 18
    if-gtz v4, :cond_2

    .line 20
    :goto_0
    if-lez p1, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 28
    cmp-long v4, v0, v2

    .line 30
    if-nez v4, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->a()V

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$b;->f()J

    .line 38
    move-result-wide v0

    .line 39
    long-to-int v1, v0

    .line 40
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result v0

    .line 44
    sub-int/2addr p1, v0

    .line 45
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 47
    int-to-long v3, v0

    .line 48
    add-long/2addr v1, v3

    .line 49
    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$b;->l:J

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    if-gez p1, :cond_3

    .line 55
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 58
    move-result-object p1

    .line 59
    throw p1

    .line 60
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method
