.class public abstract Lim0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v0, "[100000215][1][%d]"

    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const v1, 0x5f5e1d7

    .line 20
    const/16 v2, 0xa

    .line 22
    const-string v3, "AUTO_NAVI"

    .line 24
    invoke-static {v3, v1, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static h(ILandroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    const-string v1, "type"

    .line 9
    if-eqz p0, :cond_1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p0, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "2*3"

    .line 17
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string p0, "4*3"

    .line 23
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_0
    if-nez p1, :cond_2

    .line 28
    return-void

    .line 29
    :cond_2
    const-string p0, "P00087"

    .line 31
    const-string p1, "B002"

    .line 33
    invoke-static {p0, p1, v0}, Lwe0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 36
    return-void
.end method

.method public static i(ILandroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    const-string v1, "status"

    .line 12
    if-eqz p0, :cond_3

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p0, v2, :cond_2

    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq p0, v2, :cond_1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p0

    .line 25
    sget p1, Ld90;->s:I

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p0

    .line 39
    sget p1, Ld90;->q:I

    .line 41
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p0

    .line 53
    sget p1, Ld90;->r:I

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_0
    const-string p0, "P00087"

    .line 64
    const-string p1, "B001"

    .line 66
    invoke-static {p0, p1, v0}, Lwe0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 69
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
