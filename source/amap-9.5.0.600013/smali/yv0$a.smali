.class public Lyv0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:[I

.field public static final d:[I

.field public static final e:Lyv0$a;

.field public static final f:Lyv0$a;

.field public static final g:Lyv0$a;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 3
    new-array v1, v0, [I

    .line 5
    sput-object v1, Lyv0$a;->c:[I

    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-static {}, Lyv0$b;->d()[C

    .line 16
    move-result-object v4

    .line 17
    array-length v4, v4

    .line 18
    if-ge v3, v4, :cond_0

    .line 20
    sget-object v4, Lyv0$a;->c:[I

    .line 22
    invoke-static {}, Lyv0$b;->d()[C

    .line 25
    move-result-object v5

    .line 26
    aget-char v5, v5, v3

    .line 28
    aput v3, v4, v5

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v3, Lyv0$a;->c:[I

    .line 35
    const/16 v4, 0x3d

    .line 37
    const/4 v5, -0x2

    .line 38
    aput v5, v3, v4

    .line 40
    new-array v0, v0, [I

    .line 42
    sput-object v0, Lyv0$a;->d:[I

    .line 44
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_1
    invoke-static {}, Lyv0$b;->f()[C

    .line 51
    move-result-object v2

    .line 52
    array-length v2, v2

    .line 53
    if-ge v0, v2, :cond_1

    .line 55
    sget-object v2, Lyv0$a;->d:[I

    .line 57
    invoke-static {}, Lyv0$b;->f()[C

    .line 60
    move-result-object v3

    .line 61
    aget-char v3, v3, v0

    .line 63
    aput v0, v2, v3

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    sget-object v0, Lyv0$a;->d:[I

    .line 70
    aput v5, v0, v4

    .line 72
    new-instance v0, Lyv0$a;

    .line 74
    invoke-direct {v0, v1, v1}, Lyv0$a;-><init>(ZZ)V

    .line 77
    sput-object v0, Lyv0$a;->e:Lyv0$a;

    .line 79
    new-instance v0, Lyv0$a;

    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-direct {v0, v2, v1}, Lyv0$a;-><init>(ZZ)V

    .line 85
    sput-object v0, Lyv0$a;->f:Lyv0$a;

    .line 87
    new-instance v0, Lyv0$a;

    .line 89
    invoke-direct {v0, v1, v2}, Lyv0$a;-><init>(ZZ)V

    .line 92
    sput-object v0, Lyv0$a;->g:Lyv0$a;

    .line 94
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lyv0$a;->a:Z

    .line 6
    iput-boolean p2, p0, Lyv0$a;->b:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lyv0$a;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lyv0$a;->d:[I

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lyv0$a;->c:[I

    .line 10
    :goto_0
    sub-int v1, p3, p2

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 15
    return v2

    .line 16
    :cond_1
    const/4 v3, -0x1

    .line 17
    const/4 v4, 0x2

    .line 18
    if-ge v1, v4, :cond_3

    .line 20
    iget-boolean p1, p0, Lyv0$a;->b:Z

    .line 22
    if-eqz p1, :cond_2

    .line 24
    aget p1, v0, v2

    .line 26
    if-ne p1, v3, :cond_2

    .line 28
    return v2

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string p2, "Input byte[] should at least have 2 bytes for base64 bytes"

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_3
    iget-boolean v5, p0, Lyv0$a;->b:Z

    .line 39
    const/16 v6, 0x3d

    .line 41
    const/4 v7, 0x1

    .line 42
    if-eqz v5, :cond_7

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_1
    if-ge p2, p3, :cond_6

    .line 47
    add-int/lit8 v5, p2, 0x1

    .line 49
    aget-byte p2, p1, p2

    .line 51
    and-int/lit16 p2, p2, 0xff

    .line 53
    if-ne p2, v6, :cond_4

    .line 55
    sub-int/2addr p3, v5

    .line 56
    add-int/2addr p3, v7

    .line 57
    sub-int/2addr v1, p3

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    aget p2, v0, p2

    .line 61
    if-ne p2, v3, :cond_5

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 65
    :cond_5
    move p2, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_6
    :goto_2
    sub-int/2addr v1, v4

    .line 68
    goto :goto_3

    .line 69
    :cond_7
    add-int/lit8 p2, p3, -0x1

    .line 71
    aget-byte p2, p1, p2

    .line 73
    if-ne p2, v6, :cond_9

    .line 75
    sub-int/2addr p3, v4

    .line 76
    aget-byte p1, p1, p3

    .line 78
    if-ne p1, v6, :cond_8

    .line 80
    const/4 v2, 0x2

    .line 81
    goto :goto_3

    .line 82
    :cond_8
    const/4 v2, 0x1

    .line 83
    :cond_9
    :goto_3
    if-nez v2, :cond_a

    .line 85
    and-int/lit8 p1, v1, 0x3

    .line 87
    if-eqz p1, :cond_a

    .line 89
    rsub-int/lit8 v2, p1, 0x4

    .line 91
    :cond_a
    add-int/lit8 v1, v1, 0x3

    .line 93
    div-int/lit8 v1, v1, 0x4

    .line 95
    mul-int/lit8 v1, v1, 0x3

    .line 97
    sub-int/2addr v1, v2

    .line 98
    return v1
.end method

.method public final b([BII[B)I
    .locals 10

    .line 1
    iget-boolean v0, p0, Lyv0$a;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lyv0$a;->d:[I

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lyv0$a;->c:[I

    .line 10
    :goto_0
    const/16 v1, 0x12

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/16 v4, 0x12

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_1
    const/4 v6, 0x6

    .line 18
    const/16 v7, 0x10

    .line 20
    if-ge p2, p3, :cond_7

    .line 22
    add-int/lit8 v8, p2, 0x1

    .line 24
    aget-byte p2, p1, p2

    .line 26
    and-int/lit16 p2, p2, 0xff

    .line 28
    aget p2, v0, p2

    .line 30
    if-gez p2, :cond_5

    .line 32
    const/4 v9, -0x2

    .line 33
    if-ne p2, v9, :cond_3

    .line 35
    if-ne v4, v6, :cond_1

    .line 37
    if-eq v8, p3, :cond_2

    .line 39
    add-int/lit8 p2, v8, 0x1

    .line 41
    aget-byte v2, p1, v8

    .line 43
    const/16 v8, 0x3d

    .line 45
    if-ne v2, v8, :cond_2

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move p2, v8

    .line 49
    :goto_2
    if-eq v4, v1, :cond_2

    .line 51
    goto :goto_4

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p2, "Input byte array has wrong 4-byte ending unit"

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    :cond_3
    iget-boolean p2, p0, Lyv0$a;->b:Z

    .line 62
    if-eqz p2, :cond_4

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string p4, "Illegal base64 character "

    .line 74
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v8, v8, -0x1

    .line 79
    aget-byte p1, p1, v8

    .line 81
    invoke-static {p1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p2

    .line 96
    :cond_5
    shl-int/2addr p2, v4

    .line 97
    or-int/2addr p2, v3

    .line 98
    add-int/lit8 v4, v4, -0x6

    .line 100
    if-gez v4, :cond_6

    .line 102
    add-int/lit8 v3, v5, 0x1

    .line 104
    shr-int/lit8 v4, p2, 0x10

    .line 106
    int-to-byte v4, v4

    .line 107
    aput-byte v4, p4, v5

    .line 109
    add-int/lit8 v4, v3, 0x1

    .line 111
    shr-int/lit8 v5, p2, 0x8

    .line 113
    int-to-byte v5, v5

    .line 114
    aput-byte v5, p4, v3

    .line 116
    add-int/lit8 v5, v4, 0x1

    .line 118
    int-to-byte p2, p2

    .line 119
    aput-byte p2, p4, v4

    .line 121
    const/4 v3, 0x0

    .line 122
    const/16 v4, 0x12

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move v3, p2

    .line 126
    :goto_3
    move p2, v8

    .line 127
    goto :goto_1

    .line 128
    :cond_7
    :goto_4
    if-ne v4, v6, :cond_8

    .line 130
    add-int/lit8 v1, v5, 0x1

    .line 132
    shr-int/lit8 v2, v3, 0x10

    .line 134
    int-to-byte v2, v2

    .line 135
    aput-byte v2, p4, v5

    .line 137
    move v5, v1

    .line 138
    goto :goto_5

    .line 139
    :cond_8
    if-nez v4, :cond_9

    .line 141
    add-int/lit8 v1, v5, 0x1

    .line 143
    shr-int/lit8 v2, v3, 0x10

    .line 145
    int-to-byte v2, v2

    .line 146
    aput-byte v2, p4, v5

    .line 148
    add-int/lit8 v5, v1, 0x1

    .line 150
    shr-int/lit8 v2, v3, 0x8

    .line 152
    int-to-byte v2, v2

    .line 153
    aput-byte v2, p4, v1

    .line 155
    goto :goto_5

    .line 156
    :cond_9
    const/16 p4, 0xc

    .line 158
    if-eq v4, p4, :cond_d

    .line 160
    :goto_5
    if-ge p2, p3, :cond_c

    .line 162
    iget-boolean p4, p0, Lyv0$a;->b:Z

    .line 164
    if-eqz p4, :cond_b

    .line 166
    add-int/lit8 p4, p2, 0x1

    .line 168
    aget-byte p2, p1, p2

    .line 170
    aget p2, v0, p2

    .line 172
    if-gez p2, :cond_a

    .line 174
    move p2, p4

    .line 175
    goto :goto_5

    .line 176
    :cond_a
    move p2, p4

    .line 177
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string p4, "Input byte array has incorrect ending byte at "

    .line 186
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 196
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    throw p1

    .line 200
    :cond_c
    return v5

    .line 201
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 203
    const-string p2, "Last unit does not have enough valid bits"

    .line 205
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    throw p1
.end method

.method public c([B)[B
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lyv0$a;->a([BII)I

    .line 6
    move-result v0

    .line 7
    new-array v2, v0, [B

    .line 9
    array-length v3, p1

    .line 10
    invoke-virtual {p0, p1, v1, v3, v2}, Lyv0$a;->b([BII[B)I

    .line 13
    move-result p1

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    return-object v2
.end method
