.class public abstract Lxj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lxj;->c(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne v1, v0, :cond_0

    .line 20
    return v0

    .line 21
    :cond_0
    invoke-static {p0}, Lxj;->b(Landroid/app/Activity;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x18

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {p0}, Lwj;->a(Landroid/app/Activity;)Z

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 4
    invoke-static {}, Lgn;->b()Z

    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x320

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    move-result-object p0

    .line 21
    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 23
    if-gt p0, v2, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_0
    return v0

    .line 27
    :cond_1
    invoke-static {}, Lgn;->b()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 33
    return v3

    .line 34
    :cond_2
    invoke-static {}, Lse;->c()Lse;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lse;->a()Leq;

    .line 41
    move-result-object v1

    .line 42
    const/16 v4, 0x3b07

    .line 44
    invoke-interface {v1, v4}, Leq;->getStringValue(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_4

    .line 50
    const-string v4, "C04010181111"

    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 66
    move-result-object p0

    .line 67
    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 69
    if-ge p0, v2, :cond_4

    .line 71
    const/4 v0, 0x1

    .line 72
    :cond_4
    :goto_0
    return v0
.end method
