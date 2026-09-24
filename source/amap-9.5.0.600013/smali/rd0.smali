.class public abstract Lrd0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 4
    array-length v1, p0

    .line 5
    const/16 v2, 0x14

    .line 7
    if-ge v1, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    aget-byte p0, p0, v0

    .line 12
    sget-object v1, Lr00;->b:Lr00;

    .line 14
    invoke-virtual {v1}, Lr00;->b()B

    .line 17
    move-result v1

    .line 18
    if-ne p0, v1, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_1
    :goto_0
    return v0
.end method

.method public static b([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 4
    array-length v1, p0

    .line 5
    const/16 v2, 0x14

    .line 7
    if-ge v1, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lr00;->c:Lr00;

    .line 12
    invoke-virtual {v1}, Lr00;->b()B

    .line 15
    move-result v1

    .line 16
    aput-byte v1, p0, v0

    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    return v0
.end method
