.class public Lww0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public b:Ljava/util/List;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    const/16 v1, 0x2800

    .line 8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 11
    iput-object v0, p0, Lww0;->a:Ljava/io/ByteArrayOutputStream;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    const/16 v1, 0x14

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    iput-object v0, p0, Lww0;->b:Ljava/util/List;

    .line 22
    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lww0;->c:J

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lww0;->a:Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lww0;->a:Ljava/io/ByteArrayOutputStream;

    .line 9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 12
    array-length v1, v0

    .line 13
    if-lez v1, :cond_0

    .line 15
    new-instance v1, Llp0;

    .line 17
    invoke-direct {v1}, Llp0;-><init>()V

    .line 20
    iput-object v0, v1, Llp0;->a:Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lww0;->b:Ljava/util/List;

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lww0;->b:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x5

    .line 34
    if-le v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lww0;->b:Ljava/util/List;

    .line 38
    invoke-virtual {p0, v0}, Lww0;->f(Ljava/util/List;)V

    .line 41
    iget-object v0, p0, Lww0;->b:Ljava/util/List;

    .line 43
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    :cond_0
    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, p1, v0}, Lww0;->c(II)V

    .line 9
    return-void
.end method

.method public final c(II)V
    .locals 4

    .line 1
    new-array v0, p2, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, p2, :cond_0

    .line 7
    mul-int/lit8 v3, v2, 0x8

    .line 9
    shr-int v3, p1, v3

    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 13
    int-to-byte v3, v3

    .line 14
    aput-byte v3, v0, v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lww0;->a:Ljava/io/ByteArrayOutputStream;

    .line 21
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    return-void
.end method

.method public d(IJ[F)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p0, p1, v2}, Lww0;->c(II)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lww0;->e(J)V

    .line 16
    invoke-virtual {p0, p2, p3}, Lww0;->e(J)V

    .line 19
    array-length p1, p4

    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {p0, p1, p2}, Lww0;->c(II)V

    .line 24
    array-length p1, p4

    .line 25
    const/4 p2, 0x0

    .line 26
    :goto_0
    if-ge p2, p1, :cond_0

    .line 28
    aget p3, p4, p2

    .line 30
    invoke-virtual {p0, p3}, Lww0;->b(F)V

    .line 33
    add-int/lit8 p2, p2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 43
    move-result-wide p1

    .line 44
    iget-wide p3, p0, Lww0;->c:J

    .line 46
    sub-long p3, p1, p3

    .line 48
    const-wide/16 v0, 0x3e8

    .line 50
    cmp-long v2, p3, v0

    .line 52
    if-ltz v2, :cond_1

    .line 54
    invoke-virtual {p0}, Lww0;->a()V

    .line 57
    iput-wide p1, p0, Lww0;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 64
    :cond_1
    :goto_1
    return-void
.end method

.method public final e(J)V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    mul-int/lit8 v4, v3, 0x8

    .line 11
    shr-long v4, p1, v4

    .line 13
    const-wide/16 v6, 0xff

    .line 15
    and-long/2addr v4, v6

    .line 16
    long-to-int v5, v4

    .line 17
    int-to-byte v4, v5

    .line 18
    aput-byte v4, v1, v3

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lww0;->a:Ljava/io/ByteArrayOutputStream;

    .line 25
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 28
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 12

    .line 1
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 3
    invoke-direct {v6}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v7

    .line 10
    if-lez v7, :cond_2

    .line 12
    new-array v8, v7, [I

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    :goto_0
    if-ge v9, v7, :cond_0

    .line 18
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Llp0;

    .line 24
    iget-object v1, v0, Llp0;->a:Ljava/lang/Object;

    .line 26
    check-cast v1, [B

    .line 28
    iget-wide v3, v0, Llp0;->b:J

    .line 30
    iget-wide v10, v0, Llp0;->c:J

    .line 32
    invoke-static {v6, v1}, Llx0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I

    .line 35
    move-result v5

    .line 36
    move-object v0, v6

    .line 37
    move-wide v1, v10

    .line 38
    invoke-static/range {v0 .. v5}, Llx0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;JJI)I

    .line 41
    move-result v0

    .line 42
    aput v0, v8, v9

    .line 44
    add-int/lit8 v9, v9, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v6, v8}, Lwp0;->c(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 50
    move-result p1

    .line 51
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getVersionName()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v6, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 58
    move-result v0

    .line 59
    invoke-static {}, Lew0;->b()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v6, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 66
    move-result v1

    .line 67
    invoke-static {v6}, Lwp0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 70
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 77
    move-result-wide v2

    .line 78
    invoke-static {v6, v2, v3}, Lwp0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 81
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 88
    move-result-wide v2

    .line 89
    invoke-static {v6, v2, v3}, Lwp0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 92
    invoke-static {v6, v0}, Lwp0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 95
    invoke-static {v6, p1}, Lwp0;->e(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 98
    if-lez v1, :cond_1

    .line 100
    invoke-static {v6, v1}, Lwp0;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 103
    :cond_1
    invoke-static {v6}, Lwp0;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 106
    move-result p1

    .line 107
    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 110
    :try_start_0
    invoke-virtual {v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 118
    :catch_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 122
    :cond_2
    :goto_1
    return-void
.end method
