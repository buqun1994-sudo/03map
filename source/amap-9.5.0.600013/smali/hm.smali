.class public Lhm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhm$b;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhm$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhm;-><init>()V

    return-void
.end method

.method public static a()Lhm;
    .locals 1

    .line 1
    invoke-static {}, Lhm$b;->a()Lhm;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhm;->a:Z

    .line 3
    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lhm;->a:Z

    .line 3
    return-void
.end method

.method public declared-synchronized d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "FloatActionController"

    .line 4
    const-string v1, "AL\u5f00\u542f\u670d\u52a1\u60ac\u6d6e\u7a97 context\uff1a{?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string v3, "is null"

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v3, "not null"

    .line 16
    :goto_0
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 19
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    if-eqz p1, :cond_2

    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 26
    const-class v1, Lcom/autonavi/autofloat/FloatWindowService;

    .line 28
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    if-eqz p2, :cond_1

    .line 33
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 36
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 43
    const-string p2, "com.autonavi.autofloat.FloatActionController.startMonkServer(android.content.Context, android.os.Bundle) disallow an null context params"

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0

    .line 51
    throw p1
.end method

.method public declared-synchronized e(Landroid/content/Context;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "FloatActionController"

    .line 4
    const-string v1, "AL\u5173\u95ed\u670d\u52a1\u60ac\u6d6e\u7a97 context\uff1a{?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string v3, "is null"

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v3, "not null"

    .line 16
    :goto_0
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 19
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p1, :cond_1

    .line 24
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 26
    const-class v1, Lcom/autonavi/autofloat/FloatWindowService;

    .line 28
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    :try_start_2
    const-string v0, "FloatActionController"

    .line 38
    const-string v1, "stopMonkServer occur a SecurityException!"

    .line 40
    new-array v2, v4, [Ljava/lang/Object;

    .line 42
    invoke-static {v0, v1, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :goto_1
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 49
    const-string v0, "com.autonavi.autofloat.FloatActionController.startMonkServer(android.content.Context, android.os.Bundle) disallow an null context params"

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
.end method
