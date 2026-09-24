.class public abstract Lyb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:C

.field public static final b:C

.field public static final c:C

.field public static final d:C

.field public static final e:C

.field public static final f:C

.field public static final g:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "00000011"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    int-to-char v0, v0

    .line 9
    sput-char v0, Lyb;->a:C

    .line 11
    const-string v0, "00001111"

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    int-to-char v0, v0

    .line 18
    sput-char v0, Lyb;->b:C

    .line 20
    const-string v0, "00111111"

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 25
    move-result v0

    .line 26
    int-to-char v0, v0

    .line 27
    sput-char v0, Lyb;->c:C

    .line 29
    const-string v0, "11111100"

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 34
    move-result v0

    .line 35
    int-to-char v0, v0

    .line 36
    sput-char v0, Lyb;->d:C

    .line 38
    const-string v0, "11110000"

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 43
    move-result v0

    .line 44
    int-to-char v0, v0

    .line 45
    sput-char v0, Lyb;->e:C

    .line 47
    const-string v0, "11000000"

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 52
    move-result v0

    .line 53
    int-to-char v0, v0

    .line 54
    sput-char v0, Lyb;->f:C

    .line 56
    const/16 v0, 0x40

    .line 58
    new-array v0, v0, [C

    .line 60
    fill-array-data v0, :array_0

    .line 63
    sput-object v0, Lyb;->g:[C

    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    array-length v1, p0

    .line 4
    int-to-double v1, v1

    .line 5
    const-wide v3, 0x3ff570a3d70a3d71L    # 1.34

    .line 10
    mul-double v1, v1, v3

    .line 12
    double-to-int v1, v1

    .line 13
    add-int/lit8 v1, v1, 0x3

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    array-length v4, p0

    .line 22
    const/4 v5, 0x4

    .line 23
    if-ge v1, v4, :cond_6

    .line 25
    const/16 v4, 0x8

    .line 27
    rem-int/2addr v2, v4

    .line 28
    :goto_1
    if-ge v2, v4, :cond_5

    .line 30
    const/4 v6, 0x2

    .line 31
    if-eqz v2, :cond_3

    .line 33
    if-eq v2, v6, :cond_2

    .line 35
    const/4 v7, 0x6

    .line 36
    if-eq v2, v5, :cond_1

    .line 38
    if-eq v2, v7, :cond_0

    .line 40
    goto :goto_4

    .line 41
    :cond_0
    aget-byte v3, p0, v1

    .line 43
    sget-char v6, Lyb;->a:C

    .line 45
    and-int/2addr v3, v6

    .line 46
    int-to-char v3, v3

    .line 47
    shl-int/2addr v3, v5

    .line 48
    int-to-char v3, v3

    .line 49
    add-int/lit8 v6, v1, 0x1

    .line 51
    array-length v7, p0

    .line 52
    if-ge v6, v7, :cond_4

    .line 54
    aget-byte v6, p0, v6

    .line 56
    sget-char v7, Lyb;->e:C

    .line 58
    and-int/2addr v6, v7

    .line 59
    ushr-int/2addr v6, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    aget-byte v3, p0, v1

    .line 63
    sget-char v8, Lyb;->b:C

    .line 65
    and-int/2addr v3, v8

    .line 66
    int-to-char v3, v3

    .line 67
    shl-int/2addr v3, v6

    .line 68
    int-to-char v3, v3

    .line 69
    add-int/lit8 v6, v1, 0x1

    .line 71
    array-length v8, p0

    .line 72
    if-ge v6, v8, :cond_4

    .line 74
    aget-byte v6, p0, v6

    .line 76
    sget-char v8, Lyb;->f:C

    .line 78
    and-int/2addr v6, v8

    .line 79
    ushr-int/2addr v6, v7

    .line 80
    :goto_2
    or-int/2addr v3, v6

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    aget-byte v3, p0, v1

    .line 84
    sget-char v6, Lyb;->c:C

    .line 86
    and-int/2addr v3, v6

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    aget-byte v3, p0, v1

    .line 90
    sget-char v7, Lyb;->d:C

    .line 92
    and-int/2addr v3, v7

    .line 93
    int-to-char v3, v3

    .line 94
    ushr-int/2addr v3, v6

    .line 95
    :goto_3
    int-to-char v3, v3

    .line 96
    :cond_4
    :goto_4
    sget-object v6, Lyb;->g:[C

    .line 98
    aget-char v6, v6, v3

    .line 100
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    add-int/lit8 v2, v2, 0x6

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 112
    move-result p0

    .line 113
    rem-int/2addr p0, v5

    .line 114
    if-eqz p0, :cond_7

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 119
    move-result p0

    .line 120
    rem-int/2addr p0, v5

    .line 121
    sub-int/2addr v5, p0

    .line 122
    :goto_5
    if-lez v5, :cond_7

    .line 124
    const-string p0, "="

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    add-int/lit8 v5, v5, -0x1

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method
