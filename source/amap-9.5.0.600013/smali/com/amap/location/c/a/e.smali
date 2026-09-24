.class public Lcom/amap/location/c/a/e;
.super Lcom/amap/location/c/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x1400

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/c/a/a;-><init>(I)V

    .line 6
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a([B[BLjava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/location/c/c/b;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/amap/location/c/a/a;->a()Lcom/amap/location/c/a/a;

    .line 4
    iget-object v2, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-static {v2, p1}, Lcom/amap/location/c/d/a/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I

    move-result p1

    .line 5
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 6
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/c/c/b;

    .line 7
    iget-object v6, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-virtual {v5}, Lcom/amap/location/c/c/b;->b()[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amap/location/c/d/a/h;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I

    move-result v6

    .line 8
    iget-object v7, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-virtual {v5}, Lcom/amap/location/c/c/b;->a()I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v7, v5, v6}, Lcom/amap/location/c/d/a/h;->a(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-static {p3, v2}, Lcom/amap/location/c/d/a/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p3

    if-eqz p2, :cond_2

    .line 10
    iget-object v1, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-static {v1, p2}, Lcom/amap/location/c/d/a/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I

    move-result v3

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-static {p2, p1, v3, p3}, Lcom/amap/location/c/d/a/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;III)I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-virtual {p2, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 13
    iget-object p1, p0, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    invoke-virtual {p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "UploadBufferBuilder"

    .line 14
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public b()[B
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-super/range {p0 .. p0}, Lcom/amap/location/c/a/a;->a()Lcom/amap/location/c/a/a;

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 8
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 15
    move-result v5

    .line 16
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 18
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 25
    move-result v6

    .line 26
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 28
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 35
    move-result v8

    .line 36
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 38
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 45
    move-result v9

    .line 46
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 48
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v1, v2}, Lcom/amap/location/c/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 59
    move-result v10

    .line 60
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 62
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getImsi()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v1, v2}, Lcom/amap/location/c/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 73
    move-result v11

    .line 74
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMacString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/amap/location/support/bean/wifi/AmapWifi;->macToLong(Ljava/lang/String;)J

    .line 81
    move-result-wide v12

    .line 82
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 84
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getManufacturer()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 91
    move-result v14

    .line 92
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 94
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMode()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 101
    move-result v15

    .line 102
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 104
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getLicense()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 111
    move-result v16

    .line 112
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 114
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getMapkey()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Lcom/amap/location/c/a/c;->createString(Ljava/lang/CharSequence;)I

    .line 121
    move-result v17

    .line 122
    iget-object v3, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 124
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 127
    move-result v4

    .line 128
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 131
    move-result v0

    .line 132
    int-to-byte v7, v0

    .line 133
    invoke-static/range {v3 .. v17}, Lcom/amap/location/support/header/THeader;->createTHeader(Lcom/google/flatbuffers/FlatBufferBuilder;BIIBIIIIJIIII)I

    .line 136
    move-result v0

    .line 137
    iget-object v2, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 139
    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 142
    iget-object v0, v1, Lcom/amap/location/c/a/a;->a:Lcom/amap/location/c/a/c;

    .line 144
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    .line 147
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v2, "UploadBufferBuilder"

    .line 152
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0
.end method
