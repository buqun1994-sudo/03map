.class public abstract Lib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()I
    .locals 7

    .line 1
    sget v0, Lib;->a:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lrv;->w()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const-string v2, "AutoVersion"

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 20
    const-string v4, "\\."

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    array-length v5, v4

    .line 27
    const/4 v6, 0x3

    .line 28
    if-lt v5, v6, :cond_1

    .line 30
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    aget-object v6, v4, v3

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    aget-object v6, v4, v1

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const/4 v6, 0x2

    .line 46
    aget-object v4, v4, v6

    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    move-result v4

    .line 59
    sput v4, Lib;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v4

    .line 63
    const-string v5, "getMajorVersion exception:"

    .line 65
    new-array v6, v3, [Ljava/lang/Object;

    .line 67
    invoke-static {v2, v5, v4, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-array v4, v1, [Ljava/lang/Object;

    .line 73
    aput-object v0, v4, v3

    .line 75
    const-string v5, "versionName:{?}"

    .line 77
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_2
    :goto_0
    sget v4, Lib;->a:I

    .line 82
    if-eqz v4, :cond_3

    .line 84
    new-array v0, v1, [Ljava/lang/Object;

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v1

    .line 90
    aput-object v1, v0, v3

    .line 92
    const-string v1, "getMajorVersion:{?}"

    .line 94
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget v0, Lib;->a:I

    .line 99
    return v0

    .line 100
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v3, "AutoVersion getMajorVersion Failed! versionName:"

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    throw v1
.end method

.method public static b()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1ae

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    invoke-static {}, Lib;->a()I

    .line 18
    move-result v0

    .line 19
    const/16 v2, 0x1b8

    .line 21
    if-ge v0, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public static c()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1cc

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    invoke-static {}, Lib;->a()I

    .line 18
    move-result v0

    .line 19
    const/16 v2, 0x1d6

    .line 21
    if-ge v0, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public static d()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1e0

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    invoke-static {}, Lib;->a()I

    .line 18
    move-result v0

    .line 19
    const/16 v2, 0x1ea

    .line 21
    if-ge v0, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public static e()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1f4

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    invoke-static {}, Lib;->a()I

    .line 18
    move-result v0

    .line 19
    const/16 v2, 0x1fe

    .line 21
    if-ge v0, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public static f()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x262

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    invoke-static {}, Lib;->a()I

    .line 18
    move-result v0

    .line 19
    const/16 v2, 0x26c

    .line 21
    if-ge v0, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public static g()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x28a

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    invoke-static {}, Lib;->a()I

    .line 18
    move-result v0

    .line 19
    const/16 v2, 0x294

    .line 21
    if-ge v0, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public static h()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1cc

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static i()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1d6

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static j()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1e0

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static k()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1ea

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static l()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1f4

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static m()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x1fe

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static n()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x208

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static o()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x212

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static p()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x226

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static q()Z
    .locals 2

    .line 1
    invoke-static {}, Lib;->a()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x258

    .line 7
    if-lt v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static r()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x2c6

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static s()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x2ee

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static t()Z
    .locals 3

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lib;->a()I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x32a

    .line 13
    if-lt v0, v2, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public static u(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lib;->a()I

    .line 4
    move-result v0

    .line 5
    if-lt v0, p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method
