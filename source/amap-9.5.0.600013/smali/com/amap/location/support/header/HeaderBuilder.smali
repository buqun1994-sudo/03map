.class public Lcom/amap/location/support/header/HeaderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkParam()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v2, "\u5fc5\u987b\u5728 HeaderBuildre \u4e2d\uff0c\u8bbe\u7f6e\u597d productId, productVerion"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "\uff0c \u4ee5\u53ca\u5176\u4ed6\u7684\u503c"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method public static createFb(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 13

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderBuilder;->checkParam()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 12
    move-result v1

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 20
    move-result v2

    .line 21
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 28
    move-result v4

    .line 29
    const/high16 v5, -0x80000000

    .line 31
    if-eqz v4, :cond_0

    .line 33
    const/high16 v3, -0x80000000

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 39
    move-result v3

    .line 40
    :goto_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 50
    const/high16 v4, -0x80000000

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 56
    move-result v4

    .line 57
    :goto_1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    invoke-static {v6}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_2

    .line 67
    const/high16 v6, -0x80000000

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 73
    move-result v6

    .line 74
    :goto_2
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getImsi()Ljava/lang/String;

    .line 77
    move-result-object v7

    .line 78
    invoke-static {v7}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_3

    .line 84
    const/high16 v7, -0x80000000

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 90
    move-result v7

    .line 91
    :goto_3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getBrand()Ljava/lang/String;

    .line 94
    move-result-object v8

    .line 95
    const/16 v9, 0x10

    .line 97
    if-eqz v8, :cond_4

    .line 99
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 102
    move-result v10

    .line 103
    if-le v10, v9, :cond_4

    .line 105
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    :cond_4
    invoke-static {v8}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_5

    .line 115
    const/high16 v8, -0x80000000

    .line 117
    goto :goto_4

    .line 118
    :cond_5
    invoke-virtual {p0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 121
    move-result v8

    .line 122
    :goto_4
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMode()Ljava/lang/String;

    .line 125
    move-result-object v10

    .line 126
    if-eqz v10, :cond_6

    .line 128
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 131
    move-result v11

    .line 132
    if-le v11, v9, :cond_6

    .line 134
    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    move-result-object v10

    .line 138
    :cond_6
    invoke-static {v10}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_7

    .line 144
    const/high16 v9, -0x80000000

    .line 146
    goto :goto_5

    .line 147
    :cond_7
    invoke-virtual {p0, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 150
    move-result v9

    .line 151
    :goto_5
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getLicense()Ljava/lang/String;

    .line 154
    move-result-object v10

    .line 155
    invoke-static {v10}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_8

    .line 161
    const/high16 v10, -0x80000000

    .line 163
    goto :goto_6

    .line 164
    :cond_8
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getLicense()Ljava/lang/String;

    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {p0, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 171
    move-result v10

    .line 172
    :goto_6
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getMapkey()Ljava/lang/String;

    .line 175
    move-result-object v11

    .line 176
    invoke-static {v11}, Lcom/amap/location/support/header/HeaderBuilder;->isEmpty(Ljava/lang/String;)Z

    .line 179
    move-result v11

    .line 180
    if-eqz v11, :cond_9

    .line 182
    const/high16 v11, -0x80000000

    .line 184
    goto :goto_7

    .line 185
    :cond_9
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getMapkey()Ljava/lang/String;

    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {p0, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    .line 192
    move-result v11

    .line 193
    :goto_7
    invoke-static {p0}, Lcom/amap/location/support/header/THeader;->startTHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 196
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 199
    move-result v12

    .line 200
    invoke-static {p0, v12}, Lcom/amap/location/support/header/THeader;->addProductId(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 203
    invoke-static {p0, v1}, Lcom/amap/location/support/header/THeader;->addPackageName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 206
    invoke-static {p0, v2}, Lcom/amap/location/support/header/THeader;->addProductVerion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 209
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 212
    move-result v1

    .line 213
    int-to-byte v1, v1

    .line 214
    invoke-static {p0, v1}, Lcom/amap/location/support/header/THeader;->addOsVer(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 217
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMacLong()J

    .line 220
    move-result-wide v1

    .line 221
    invoke-static {p0, v1, v2}, Lcom/amap/location/support/header/THeader;->addDeviceMac(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 224
    if-eq v3, v5, :cond_a

    .line 226
    invoke-static {p0, v3}, Lcom/amap/location/support/header/THeader;->addAdiu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 229
    :cond_a
    if-eq v4, v5, :cond_b

    .line 231
    invoke-static {p0, v4}, Lcom/amap/location/support/header/THeader;->addUtdid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 234
    :cond_b
    if-eq v6, v5, :cond_c

    .line 236
    invoke-static {p0, v6}, Lcom/amap/location/support/header/THeader;->addImei(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 239
    :cond_c
    if-eq v7, v5, :cond_d

    .line 241
    invoke-static {p0, v7}, Lcom/amap/location/support/header/THeader;->addImsi(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 244
    :cond_d
    if-eq v8, v5, :cond_e

    .line 246
    invoke-static {p0, v8}, Lcom/amap/location/support/header/THeader;->addBrand(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 249
    :cond_e
    if-eq v9, v5, :cond_f

    .line 251
    invoke-static {p0, v9}, Lcom/amap/location/support/header/THeader;->addModel(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 254
    :cond_f
    if-eq v10, v5, :cond_10

    .line 256
    invoke-static {p0, v10}, Lcom/amap/location/support/header/THeader;->addLicense(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 259
    :cond_10
    if-eq v11, v5, :cond_11

    .line 261
    invoke-static {p0, v11}, Lcom/amap/location/support/header/THeader;->addMapkey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 264
    :cond_11
    invoke-static {p0}, Lcom/amap/location/support/header/THeader;->endTHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 267
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return p0

    .line 269
    :catch_0
    return v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method
