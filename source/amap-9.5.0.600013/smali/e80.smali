.class public abstract Le80;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B)Ljava/lang/String;
    .locals 2

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ge v0, v1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "0"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    :cond_0
    return-object p0
.end method

.method public static b()[B
    .locals 9

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const-string v1, "ProtocolUtil.rzc"

    .line 10
    const-string v2, "makeHeartBeatPackage"

    .line 12
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    new-array v1, v0, [B

    .line 18
    fill-array-data v1, :array_0

    .line 21
    new-array v2, v0, [B

    .line 23
    fill-array-data v2, :array_1

    .line 26
    new-array v3, v0, [B

    .line 28
    fill-array-data v3, :array_2

    .line 31
    new-array v4, v0, [B

    .line 33
    fill-array-data v4, :array_3

    .line 36
    new-array v5, v0, [B

    .line 38
    fill-array-data v5, :array_4

    .line 41
    new-array v6, v0, [B

    .line 43
    fill-array-data v6, :array_5

    .line 46
    const/4 v0, 0x4

    .line 47
    new-array v7, v0, [B

    .line 49
    fill-array-data v7, :array_6

    .line 52
    new-array v8, v0, [B

    .line 54
    fill-array-data v8, :array_7

    .line 57
    invoke-static/range {v1 .. v8}, Le80;->f([B[B[B[B[B[B[B[B)[B

    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 1
        0x3t
        -0x10t
    .end array-data

    .line 68
    nop

    .line 69
    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 74
    nop

    .line 75
    :array_2
    .array-data 1
        0x0t
        0x64t
    .end array-data

    .line 80
    nop

    .line 81
    :array_3
    .array-data 1
        0x1t
        0x57t
    .end array-data

    .line 86
    nop

    .line 87
    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 92
    nop

    .line 93
    :array_5
    .array-data 1
        0x5at
        -0x5bt
    .end array-data

    .line 98
    nop

    .line 99
    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 105
    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static c(I)[B
    .locals 14

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "makeOpenOrCloseBackgroundMapPackage"

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const-string v3, "ProtocolUtil.rzc"

    .line 12
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    new-array v2, v0, [B

    .line 18
    fill-array-data v2, :array_0

    .line 21
    new-array v3, v0, [B

    .line 23
    fill-array-data v3, :array_1

    .line 26
    new-array v4, v0, [B

    .line 28
    fill-array-data v4, :array_2

    .line 31
    new-array v5, v0, [B

    .line 33
    fill-array-data v5, :array_3

    .line 36
    new-array v6, v0, [B

    .line 38
    fill-array-data v6, :array_4

    .line 41
    new-array v7, v0, [B

    .line 43
    fill-array-data v7, :array_5

    .line 46
    const/4 v10, 0x4

    .line 47
    new-array v8, v10, [B

    .line 49
    fill-array-data v8, :array_6

    .line 52
    new-array v9, v10, [B

    .line 54
    fill-array-data v9, :array_7

    .line 57
    new-array v11, v10, [B

    .line 59
    const/4 v12, 0x3

    .line 60
    const/4 v13, 0x1

    .line 61
    if-nez p0, :cond_1

    .line 63
    aput-byte v1, v11, v1

    .line 65
    aput-byte v1, v11, v13

    .line 67
    aput-byte v1, v11, v0

    .line 69
    aput-byte v1, v11, v12

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-ne p0, v13, :cond_2

    .line 74
    aput-byte v1, v11, v1

    .line 76
    aput-byte v1, v11, v13

    .line 78
    aput-byte v1, v11, v0

    .line 80
    aput-byte v13, v11, v12

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    aput-byte v1, v11, v1

    .line 85
    aput-byte v1, v11, v13

    .line 87
    aput-byte v1, v11, v0

    .line 89
    aput-byte v0, v11, v12

    .line 91
    :goto_0
    invoke-static/range {v2 .. v9}, Le80;->f([B[B[B[B[B[B[B[B)[B

    .line 94
    move-result-object p0

    .line 95
    const/16 v0, 0x14

    .line 97
    invoke-static {p0, v0, v11, v10}, Le80;->e([BI[BI)[B

    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    nop

    .line 103
    :array_0
    .array-data 1
        0x3t
        -0x10t
    .end array-data

    .line 108
    nop

    .line 109
    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 114
    nop

    .line 115
    :array_2
    .array-data 1
        0x1t
        0x2dt
    .end array-data

    .line 120
    nop

    .line 121
    :array_3
    .array-data 1
        0x2t
        0x53t
    .end array-data

    .line 126
    nop

    .line 127
    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 132
    nop

    .line 133
    :array_5
    .array-data 1
        0x5at
        -0x5bt
    .end array-data

    .line 138
    nop

    .line 139
    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 145
    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x4t
    .end array-data
.end method

.method public static d(I)[B
    .locals 14

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "makeOpenOrClosePartialMapPackage"

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const-string v3, "ProtocolUtil.rzc"

    .line 12
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    new-array v2, v0, [B

    .line 18
    fill-array-data v2, :array_0

    .line 21
    new-array v3, v0, [B

    .line 23
    fill-array-data v3, :array_1

    .line 26
    new-array v4, v0, [B

    .line 28
    fill-array-data v4, :array_2

    .line 31
    new-array v5, v0, [B

    .line 33
    fill-array-data v5, :array_3

    .line 36
    new-array v6, v0, [B

    .line 38
    fill-array-data v6, :array_4

    .line 41
    new-array v7, v0, [B

    .line 43
    fill-array-data v7, :array_5

    .line 46
    const/4 v10, 0x4

    .line 47
    new-array v8, v10, [B

    .line 49
    fill-array-data v8, :array_6

    .line 52
    new-array v9, v10, [B

    .line 54
    fill-array-data v9, :array_7

    .line 57
    new-array v11, v10, [B

    .line 59
    const/4 v12, 0x3

    .line 60
    const/4 v13, 0x1

    .line 61
    if-nez p0, :cond_1

    .line 63
    aput-byte v1, v11, v1

    .line 65
    aput-byte v1, v11, v13

    .line 67
    aput-byte v1, v11, v0

    .line 69
    aput-byte v1, v11, v12

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-ne p0, v13, :cond_2

    .line 74
    aput-byte v1, v11, v1

    .line 76
    aput-byte v1, v11, v13

    .line 78
    aput-byte v1, v11, v0

    .line 80
    aput-byte v13, v11, v12

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    aput-byte v1, v11, v1

    .line 85
    aput-byte v1, v11, v13

    .line 87
    aput-byte v1, v11, v0

    .line 89
    aput-byte v0, v11, v12

    .line 91
    :goto_0
    invoke-static/range {v2 .. v9}, Le80;->f([B[B[B[B[B[B[B[B)[B

    .line 94
    move-result-object p0

    .line 95
    const/16 v0, 0x14

    .line 97
    invoke-static {p0, v0, v11, v10}, Le80;->e([BI[BI)[B

    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    nop

    .line 103
    :array_0
    .array-data 1
        0x3t
        -0x10t
    .end array-data

    .line 108
    nop

    .line 109
    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 114
    nop

    .line 115
    :array_2
    .array-data 1
        0x1t
        0x2et
    .end array-data

    .line 120
    nop

    .line 121
    :array_3
    .array-data 1
        0x2t
        0x53t
    .end array-data

    .line 126
    nop

    .line 127
    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 132
    nop

    .line 133
    :array_5
    .array-data 1
        0x5at
        -0x5bt
    .end array-data

    .line 138
    nop

    .line 139
    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 145
    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x4t
    .end array-data
.end method

.method public static e([BI[BI)[B
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 3
    array-length v0, p0

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    goto :goto_2

    .line 7
    :cond_0
    add-int v0, p1, p3

    .line 9
    new-array v0, v0, [B

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    const/16 v3, 0x14

    .line 15
    if-ge v2, v3, :cond_1

    .line 17
    aget-byte v3, p0, v2

    .line 19
    aput-byte v3, v0, v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    if-ge v1, p3, :cond_2

    .line 26
    add-int p0, p1, v1

    .line 28
    aget-byte v2, p2, v1

    .line 30
    aput-byte v2, v0, p0

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    return-object v0

    .line 36
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static f([B[B[B[B[B[B[B[B)[B
    .locals 6

    .line 1
    const-string v0, "ProtocolUtil.rzc"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p0, :cond_4

    .line 7
    if-eqz p1, :cond_4

    .line 9
    if-eqz p2, :cond_4

    .line 11
    if-eqz p3, :cond_4

    .line 13
    if-eqz p4, :cond_4

    .line 15
    if-eqz p5, :cond_4

    .line 17
    if-eqz p6, :cond_4

    .line 19
    if-nez p7, :cond_0

    .line 21
    goto/16 :goto_1

    .line 23
    :cond_0
    array-length v3, p0

    .line 24
    const/4 v4, 0x2

    .line 25
    if-ne v3, v4, :cond_2

    .line 27
    array-length v3, p1

    .line 28
    if-ne v3, v4, :cond_2

    .line 30
    array-length v3, p2

    .line 31
    if-ne v3, v4, :cond_2

    .line 33
    array-length v3, p3

    .line 34
    if-ne v3, v4, :cond_2

    .line 36
    array-length v3, p4

    .line 37
    if-ne v3, v4, :cond_2

    .line 39
    array-length v3, p5

    .line 40
    if-ne v3, v4, :cond_2

    .line 42
    array-length v3, p6

    .line 43
    const/4 v5, 0x4

    .line 44
    if-ne v3, v5, :cond_2

    .line 46
    array-length v3, p7

    .line 47
    if-eq v3, v5, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v0, 0x14

    .line 52
    new-array v0, v0, [B

    .line 54
    aget-byte v1, p0, v2

    .line 56
    aput-byte v1, v0, v2

    .line 58
    const/4 v1, 0x1

    .line 59
    aget-byte p0, p0, v1

    .line 61
    aput-byte p0, v0, v1

    .line 63
    aget-byte p0, p1, v2

    .line 65
    aput-byte p0, v0, v4

    .line 67
    aget-byte p0, p1, v1

    .line 69
    const/4 p1, 0x3

    .line 70
    aput-byte p0, v0, p1

    .line 72
    aget-byte p0, p2, v2

    .line 74
    aput-byte p0, v0, v5

    .line 76
    const/4 p0, 0x5

    .line 77
    aget-byte p2, p2, v1

    .line 79
    aput-byte p2, v0, p0

    .line 81
    const/4 p0, 0x6

    .line 82
    aget-byte p2, p3, v2

    .line 84
    aput-byte p2, v0, p0

    .line 86
    const/4 p0, 0x7

    .line 87
    aget-byte p2, p3, v1

    .line 89
    aput-byte p2, v0, p0

    .line 91
    const/16 p0, 0x8

    .line 93
    aget-byte p2, p4, v2

    .line 95
    aput-byte p2, v0, p0

    .line 97
    const/16 p0, 0x9

    .line 99
    aget-byte p2, p4, v1

    .line 101
    aput-byte p2, v0, p0

    .line 103
    const/16 p0, 0xa

    .line 105
    aget-byte p2, p5, v2

    .line 107
    aput-byte p2, v0, p0

    .line 109
    const/16 p0, 0xb

    .line 111
    aget-byte p2, p5, v1

    .line 113
    aput-byte p2, v0, p0

    .line 115
    const/16 p0, 0xc

    .line 117
    aget-byte p2, p6, v2

    .line 119
    aput-byte p2, v0, p0

    .line 121
    const/16 p0, 0xd

    .line 123
    aget-byte p2, p6, v1

    .line 125
    aput-byte p2, v0, p0

    .line 127
    const/16 p0, 0xe

    .line 129
    aget-byte p2, p6, v4

    .line 131
    aput-byte p2, v0, p0

    .line 133
    const/16 p0, 0xf

    .line 135
    aget-byte p2, p6, p1

    .line 137
    aput-byte p2, v0, p0

    .line 139
    const/16 p0, 0x10

    .line 141
    aget-byte p2, p7, v2

    .line 143
    aput-byte p2, v0, p0

    .line 145
    const/16 p0, 0x11

    .line 147
    aget-byte p2, p7, v1

    .line 149
    aput-byte p2, v0, p0

    .line 151
    const/16 p0, 0x12

    .line 153
    aget-byte p2, p7, v4

    .line 155
    aput-byte p2, v0, p0

    .line 157
    const/16 p0, 0x13

    .line 159
    aget-byte p1, p7, p1

    .line 161
    aput-byte p1, v0, p0

    .line 163
    return-object v0

    .line 164
    :cond_2
    :goto_0
    sget-boolean p0, Lxj0;->a:Z

    .line 166
    if-eqz p0, :cond_3

    .line 168
    const-string p0, "packge head make error for length"

    .line 170
    new-array p1, v2, [Ljava/lang/Object;

    .line 172
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_3
    return-object v1

    .line 176
    :cond_4
    :goto_1
    sget-boolean p0, Lxj0;->a:Z

    .line 178
    if-eqz p0, :cond_5

    .line 180
    const-string p0, "packge head make error for null"

    .line 182
    new-array p1, v2, [Ljava/lang/Object;

    .line 184
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_5
    return-object v1
.end method

.method public static g(I)[B
    .locals 14

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "makeVedioStreamStatusPackage"

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const-string v3, "ProtocolUtil.rzc"

    .line 12
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    new-array v2, v0, [B

    .line 18
    fill-array-data v2, :array_0

    .line 21
    new-array v3, v0, [B

    .line 23
    fill-array-data v3, :array_1

    .line 26
    new-array v4, v0, [B

    .line 28
    fill-array-data v4, :array_2

    .line 31
    new-array v5, v0, [B

    .line 33
    fill-array-data v5, :array_3

    .line 36
    new-array v6, v0, [B

    .line 38
    fill-array-data v6, :array_4

    .line 41
    new-array v7, v0, [B

    .line 43
    fill-array-data v7, :array_5

    .line 46
    const/4 v10, 0x4

    .line 47
    new-array v8, v10, [B

    .line 49
    fill-array-data v8, :array_6

    .line 52
    new-array v9, v10, [B

    .line 54
    fill-array-data v9, :array_7

    .line 57
    new-array v11, v10, [B

    .line 59
    const/4 v12, 0x3

    .line 60
    const/4 v13, 0x1

    .line 61
    if-nez p0, :cond_1

    .line 63
    aput-byte v1, v11, v1

    .line 65
    aput-byte v1, v11, v13

    .line 67
    aput-byte v1, v11, v0

    .line 69
    aput-byte v1, v11, v12

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-ne p0, v13, :cond_2

    .line 74
    aput-byte v1, v11, v1

    .line 76
    aput-byte v1, v11, v13

    .line 78
    aput-byte v1, v11, v0

    .line 80
    aput-byte v13, v11, v12

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    aput-byte v1, v11, v1

    .line 85
    aput-byte v1, v11, v13

    .line 87
    aput-byte v1, v11, v0

    .line 89
    aput-byte v0, v11, v12

    .line 91
    :goto_0
    invoke-static/range {v2 .. v9}, Le80;->f([B[B[B[B[B[B[B[B)[B

    .line 94
    move-result-object p0

    .line 95
    const/16 v0, 0x14

    .line 97
    invoke-static {p0, v0, v11, v10}, Le80;->e([BI[BI)[B

    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    nop

    .line 103
    :array_0
    .array-data 1
        0x3t
        -0x10t
    .end array-data

    .line 108
    nop

    .line 109
    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 114
    nop

    .line 115
    :array_2
    .array-data 1
        0x1t
        0x2ft
    .end array-data

    .line 120
    nop

    .line 121
    :array_3
    .array-data 1
        0x4t
        0x8t
    .end array-data

    .line 126
    nop

    .line 127
    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 132
    nop

    .line 133
    :array_5
    .array-data 1
        0x5at
        -0x5bt
    .end array-data

    .line 138
    nop

    .line 139
    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 145
    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x4t
    .end array-data
.end method

.method public static h(Ljava/net/Socket;I)V
    .locals 5

    .line 1
    const-string v0, "ProtocolUtil.rzc"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_9

    .line 6
    sget-boolean v2, Lxj0;->a:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v3, "socket!=null sendType="

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    new-array v3, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eq p1, v3, :cond_7

    .line 36
    if-eq p1, v2, :cond_6

    .line 38
    const/4 v4, 0x3

    .line 39
    if-eq p1, v4, :cond_5

    .line 41
    const/4 v4, 0x5

    .line 42
    if-eq p1, v4, :cond_4

    .line 44
    const/4 v4, 0x6

    .line 45
    if-eq p1, v4, :cond_3

    .line 47
    const/16 v4, 0x8

    .line 49
    if-eq p1, v4, :cond_2

    .line 51
    const/16 v4, 0x9

    .line 53
    if-eq p1, v4, :cond_1

    .line 55
    const/4 p1, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v2}, Le80;->d(I)[B

    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v1}, Le80;->d(I)[B

    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-static {v2}, Le80;->c(I)[B

    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-static {v1}, Le80;->c(I)[B

    .line 75
    move-result-object p1

    .line 76
    goto :goto_0

    .line 77
    :cond_5
    invoke-static {v3}, Le80;->g(I)[B

    .line 80
    move-result-object p1

    .line 81
    sput-boolean v1, Lwg;->a:Z

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    invoke-static {v1}, Le80;->g(I)[B

    .line 87
    move-result-object p1

    .line 88
    sput-boolean v3, Lwg;->a:Z

    .line 90
    goto :goto_0

    .line 91
    :cond_7
    invoke-static {}, Le80;->b()[B

    .line 94
    move-result-object p1

    .line 95
    :goto_0
    if-eqz p1, :cond_a

    .line 97
    sget-boolean v4, Lxj0;->a:Z

    .line 99
    if-eqz v4, :cond_8

    .line 101
    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    aput-object v4, v2, v1

    .line 109
    array-length v4, p1

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v4

    .line 114
    aput-object v4, v2, v3

    .line 116
    const-string v3, "sendPackage dataSended = {?}, dataSended.length = {?}"

    .line 118
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_8
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 124
    move-result-object p0

    .line 125
    array-length v0, p1

    .line 126
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 132
    goto :goto_1

    .line 133
    :cond_9
    sget-boolean p0, Lxj0;->a:Z

    .line 135
    if-eqz p0, :cond_a

    .line 137
    const-string p0, "socket==null"

    .line 139
    new-array p1, v1, [Ljava/lang/Object;

    .line 141
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_a
    :goto_1
    return-void
.end method
