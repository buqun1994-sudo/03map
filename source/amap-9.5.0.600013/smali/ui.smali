.class public abstract Lui;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lni;

.field public static final b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lui;->b:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lni;
    .locals 2

    .line 1
    const-class v0, Lui;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lui;->a:Lni;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    if-eqz p0, :cond_1

    .line 12
    :try_start_1
    invoke-static {p0}, Lui;->c(Landroid/content/Context;)Lni;

    .line 15
    move-result-object p0

    .line 16
    sput-object p0, Lui;->a:Lni;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :cond_1
    monitor-exit v0

    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method

.method public static b(Lni;)J
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 3
    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0}, Lni;->e()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    aput-object v2, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0}, Lni;->b()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 20
    invoke-virtual {p0}, Lni;->a()J

    .line 23
    move-result-wide v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 31
    const/4 v1, 0x3

    .line 32
    invoke-virtual {p0}, Lni;->d()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    aput-object v2, v0, v1

    .line 38
    const/4 v1, 0x4

    .line 39
    invoke-virtual {p0}, Lni;->c()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    aput-object p0, v0, v1

    .line 45
    const-string p0, "%s%s%s%s%s"

    .line 47
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Laf0;->b(Ljava/lang/String;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/zip/Adler32;

    .line 59
    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 62
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 72
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    .line 75
    move-result-wide v0

    .line 76
    return-wide v0

    .line 77
    :cond_0
    const-wide/16 v0, 0x0

    .line 79
    return-wide v0
.end method

.method public static c(Landroid/content/Context;)Lni;
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 3
    sget-object v0, Lui;->b:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0}, Lpi0;->f(Landroid/content/Context;)Lpi0;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lpi0;->d()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Laf0;->b(Ljava/lang/String;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 20
    const-string v2, "\n"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    :cond_0
    new-instance v2, Lni;

    .line 41
    invoke-direct {v2}, Lni;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    move-result-wide v3

    .line 48
    invoke-static {p0}, Lw50;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    invoke-static {p0}, Lw50;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v2, v5}, Lni;->h(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, v5}, Lni;->i(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v3, v4}, Lni;->g(J)V

    .line 65
    invoke-virtual {v2, p0}, Lni;->j(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, v1}, Lni;->k(Ljava/lang/String;)V

    .line 71
    invoke-static {v2}, Lui;->b(Lni;)J

    .line 74
    move-result-wide v3

    .line 75
    invoke-virtual {v2, v3, v4}, Lni;->f(J)V

    .line 78
    monitor-exit v0

    .line 79
    return-object v2

    .line 80
    :cond_1
    monitor-exit v0

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 86
    return-object p0
.end method
