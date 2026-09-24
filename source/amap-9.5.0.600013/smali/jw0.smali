.class public abstract Ljw0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 7
    :goto_0
    and-int/lit16 v0, v0, 0x80

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 14
    move-result v0

    .line 15
    shl-int/lit8 v1, v1, 0x7

    .line 17
    and-int/lit8 v2, v0, 0x7f

    .line 19
    or-int/2addr v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v1
.end method

.method public static c(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x7

    .line 7
    :goto_0
    and-int/lit8 v3, p1, -0x80

    .line 9
    if-eqz v3, :cond_0

    .line 11
    add-int/lit8 v3, v2, -0x1

    .line 13
    and-int/lit8 v4, p1, 0x7f

    .line 15
    int-to-byte v4, v4

    .line 16
    aput-byte v4, v0, v2

    .line 18
    ushr-int/lit8 p1, p1, 0x7

    .line 20
    move v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    and-int/lit8 p1, p1, 0x7f

    .line 24
    int-to-byte p1, p1

    .line 25
    aput-byte p1, v0, v2

    .line 27
    aget-byte p1, v0, v1

    .line 29
    or-int/lit16 p1, p1, 0x80

    .line 31
    int-to-byte p1, p1

    .line 32
    aput-byte p1, v0, v1

    .line 34
    :goto_1
    if-gt v2, v1, :cond_1

    .line 36
    aget-byte p1, v0, v2

    .line 38
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    return-void
.end method

.method public static d([B)[B
    .locals 7

    .line 1
    const/16 v0, 0x400

    .line 3
    new-array v1, v0, [B

    .line 5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 7
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 12
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    .line 17
    invoke-direct {v3, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    :goto_0
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 24
    move-result v5

    .line 25
    const/4 v6, -0x1

    .line 26
    if-eq v5, v6, :cond_0

    .line 28
    invoke-virtual {v3, v1, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 35
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 42
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 45
    return-object v0
.end method

.method public static e([B)[B
    .locals 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 8
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    .line 13
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    const/16 v2, 0x400

    .line 18
    new-array v3, v2, [B

    .line 20
    :goto_0
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    .line 24
    move-result v5

    .line 25
    const/4 v6, -0x1

    .line 26
    if-eq v5, v6, :cond_0

    .line 28
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 35
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 38
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 48
    return-object v1
.end method
