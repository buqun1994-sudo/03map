.class public abstract Lyy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "AIQYgow456789+/3vnfXPHGFEDCBJRZhpxyz012umeWONMLKSaiqrstldVUTbjkc"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    const/4 v3, 0x2

    .line 9
    sub-int/2addr v2, v3

    .line 10
    if-ge v1, v2, :cond_0

    .line 12
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 14
    aget-byte v4, p0, v1

    .line 16
    shr-int/2addr v4, v3

    .line 17
    and-int/lit8 v4, v4, 0x3f

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 28
    aget-byte v4, p0, v1

    .line 30
    and-int/lit8 v4, v4, 0x3

    .line 32
    shl-int/lit8 v4, v4, 0x4

    .line 34
    add-int/lit8 v5, v1, 0x1

    .line 36
    aget-byte v6, p0, v5

    .line 38
    and-int/lit16 v6, v6, 0xf0

    .line 40
    shr-int/lit8 v6, v6, 0x4

    .line 42
    or-int/2addr v4, v6

    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 52
    aget-byte v4, p0, v5

    .line 54
    and-int/lit8 v4, v4, 0xf

    .line 56
    shl-int/lit8 v3, v4, 0x2

    .line 58
    add-int/lit8 v4, v1, 0x2

    .line 60
    aget-byte v5, p0, v4

    .line 62
    and-int/lit16 v5, v5, 0xc0

    .line 64
    shr-int/lit8 v5, v5, 0x6

    .line 66
    or-int/2addr v3, v5

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 70
    move-result v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 76
    aget-byte v3, p0, v4

    .line 78
    and-int/lit8 v3, v3, 0x3f

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 83
    move-result v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v1, v1, 0x3

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    array-length v2, p0

    .line 91
    if-nez v2, :cond_1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    array-length v2, p0

    .line 95
    sub-int/2addr v2, v1

    .line 96
    const-string v4, "="

    .line 98
    const/4 v5, 0x1

    .line 99
    if-ne v2, v5, :cond_2

    .line 101
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 103
    aget-byte v5, p0, v1

    .line 105
    shr-int/lit8 v3, v5, 0x2

    .line 107
    and-int/lit8 v3, v3, 0x3f

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 118
    aget-byte p0, p0, v1

    .line 120
    and-int/lit8 p0, p0, 0x3

    .line 122
    shl-int/lit8 p0, p0, 0x4

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    .line 127
    move-result p0

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    array-length v2, p0

    .line 139
    sub-int/2addr v2, v1

    .line 140
    if-ne v2, v3, :cond_3

    .line 142
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 144
    aget-byte v6, p0, v1

    .line 146
    shr-int/2addr v6, v3

    .line 147
    and-int/lit8 v6, v6, 0x3f

    .line 149
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 152
    move-result v2

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 158
    aget-byte v6, p0, v1

    .line 160
    and-int/lit8 v6, v6, 0x3

    .line 162
    shl-int/lit8 v6, v6, 0x4

    .line 164
    add-int/2addr v1, v5

    .line 165
    aget-byte v5, p0, v1

    .line 167
    and-int/lit16 v5, v5, 0xf0

    .line 169
    shr-int/lit8 v5, v5, 0x4

    .line 171
    or-int/2addr v5, v6

    .line 172
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 175
    move-result v2

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    sget-object v2, Lyy;->a:Ljava/lang/String;

    .line 181
    aget-byte p0, p0, v1

    .line 183
    and-int/lit8 p0, p0, 0xf

    .line 185
    shl-int/2addr p0, v3

    .line 186
    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    .line 189
    move-result p0

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 200
    return-object p0
.end method
