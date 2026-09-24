.class public Liu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Liu0;->a:[B

    .line 9
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liu0;->a:[B

    .line 3
    array-length v0, v0

    .line 4
    int-to-short v0, v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v0, p0, Liu0;->a:[B

    .line 10
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    return-void
.end method

.method public b([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Liu0;->a:[B

    .line 3
    return-void
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Liu0;->a:[B

    .line 3
    return-object v0
.end method

.method public d()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Liu0;->e()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p0, v0}, Liu0;->a(Ljava/nio/ByteBuffer;)V

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Liu0;->a:[B

    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0x2

    .line 6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lyv0;->a()Lyv0$b;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Liu0;->d()[B

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lyv0$b;->e([B)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
