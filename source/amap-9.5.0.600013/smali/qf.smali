.class public abstract Lqf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lf30;->C()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const-string v0, ""

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v0, ",23"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lah;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized b()Z
    .locals 5

    .line 1
    const-class v0, Lqf;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lqf;->a:I

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-gez v1, :cond_1

    .line 10
    new-instance v1, Lsd0;

    .line 12
    const-string v4, "auto_config"

    .line 14
    invoke-direct {v1, v4}, Lsd0;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v4, "EXTRA_TMC_DISPATCH_ENABLE"

    .line 19
    invoke-virtual {v1, v4, v3}, Lsd0;->c(Ljava/lang/String;Z)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    sput v1, Lqf;->a:I

    .line 30
    :cond_1
    sget v1, Lqf;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-ne v1, v3, :cond_2

    .line 34
    const/4 v2, 0x1

    .line 35
    :cond_2
    monitor-exit v0

    .line 36
    return v2

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0

    .line 39
    throw v1
.end method

.method public static declared-synchronized c(Z)V
    .locals 3

    .line 1
    const-class v0, Lqf;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    :try_start_0
    sput v1, Lqf;->a:I

    .line 11
    new-instance v1, Lsd0;

    .line 13
    const-string v2, "auto_config"

    .line 15
    invoke-direct {v1, v2}, Lsd0;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v2, "EXTRA_TMC_DISPATCH_ENABLE"

    .line 20
    invoke-virtual {v1, v2, p0}, Lsd0;->i(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0

    .line 27
    throw p0
.end method
