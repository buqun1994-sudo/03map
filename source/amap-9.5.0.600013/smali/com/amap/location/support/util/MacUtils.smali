.class public Lcom/amap/location/support/util/MacUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_MAC:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static longToMac(J)Ljava/lang/String;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    cmp-long v3, p0, v0

    .line 6
    if-ltz v3, :cond_1

    .line 8
    const-wide v0, 0xffffffffffffL

    .line 13
    cmp-long v3, p0, v0

    .line 15
    if-lez v3, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x6

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {p0, p1, v0, v1}, Lcom/amap/location/support/util/DataTypeUtils;->digital2bytes(JIZ)[B

    .line 23
    move-result-object p0

    .line 24
    const-string p1, ":"

    .line 26
    invoke-static {p0, v2, p1}, Lcom/amap/location/support/util/DataTypeUtils;->bytes2HexString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    return-object v2
.end method

.method public static macToLong(Ljava/lang/String;)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-eqz p0, :cond_6

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const-string v2, "[:|\\-]"

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    array-length v2, p0

    .line 19
    const/4 v3, 0x6

    .line 20
    if-eq v2, v3, :cond_1

    .line 22
    return-wide v0

    .line 23
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    array-length v3, p0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    :goto_0
    const/16 v6, 0x10

    .line 33
    if-ge v5, v3, :cond_4

    .line 35
    aget-object v7, p0, v5

    .line 37
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_3

    .line 43
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 46
    move-result v8

    .line 47
    const/4 v9, 0x2

    .line 48
    if-le v8, v9, :cond_2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v8, 0x1

    .line 52
    new-array v8, v8, [Ljava/lang/Object;

    .line 54
    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 57
    move-result v6

    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v6

    .line 62
    aput-object v6, v8, v4

    .line 64
    const-string v6, "%02x"

    .line 66
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :goto_1
    return-wide v0

    .line 77
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 80
    move-result p0

    .line 81
    const/16 v3, 0xc

    .line 83
    if-eq p0, v3, :cond_5

    .line 85
    return-wide v0

    .line 86
    :cond_5
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 93
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    :cond_6
    :goto_2
    return-wide v0
.end method
