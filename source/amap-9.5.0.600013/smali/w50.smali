.class public abstract Lw50;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Laf0;->b(Ljava/lang/String;)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lw50;->e()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Laf0;->b(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lw50;->c()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    :cond_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    long-to-int v1, v0

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    move-result-wide v2

    .line 13
    long-to-int v0, v2

    .line 14
    new-instance v2, Ljava/util/Random;

    .line 16
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 19
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 22
    move-result v2

    .line 23
    new-instance v3, Ljava/util/Random;

    .line 25
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 28
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    .line 31
    move-result v3

    .line 32
    invoke-static {v1}, Lbv;->a(I)[B

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0}, Lbv;->a(I)[B

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v2}, Lbv;->a(I)[B

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v3}, Lbv;->a(I)[B

    .line 47
    move-result-object v3

    .line 48
    const/16 v4, 0x10

    .line 50
    new-array v4, v4, [B

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x4

    .line 54
    invoke-static {v1, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-static {v0, v5, v4, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    const/16 v0, 0x8

    .line 62
    invoke-static {v2, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    const/16 v0, 0xc

    .line 67
    invoke-static {v3, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    const/4 v0, 0x2

    .line 71
    invoke-static {v4, v0}, Lxb;->e([BI)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "com.yunos.baseservice.clouduuid.CloudUUID"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getCloudUUID"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0

    .line 16
    new-array v1, v2, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-string v0, ""

    .line 28
    :goto_0
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "ro.aliyun.clouduuid"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Ltf0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string v0, "ro.sys.aliyun.clouduuid"

    .line 17
    invoke-static {v0, v1}, Ltf0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-static {}, Lw50;->d()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :cond_1
    return-object v0
.end method
