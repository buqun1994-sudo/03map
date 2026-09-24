.class public La7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7$d;,
        La7$c;,
        La7$b;
    }
.end annotation


# instance fields
.field public a:La7$c;

.field public final b:Ljava/util/List;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La7;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, La7;->c:Z

    .line 5
    iput-boolean v0, p0, La7;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(La7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La7;-><init>()V

    return-void
.end method

.method public static c()La7;
    .locals 1

    .line 1
    invoke-static {}, La7$d;->a()La7;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(La7$b;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    const-string v0, "AutoBackgroundWorker"

    .line 6
    const-string v1, "addWorkObserver, name:{?}"

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, La7$b;->b()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 18
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, La7;->b:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    const-string v0, "AutoBackgroundWorker"

    .line 3
    const-string v1, "doWork"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    iget-object v1, p0, La7;->b:Ljava/util/List;

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, La7$b;

    .line 36
    const-string v3, "AutoBackgroundWorker"

    .line 38
    const-string v4, "doWork, notify onWorkStart to: {?}"

    .line 40
    const/4 v5, 0x1

    .line 41
    new-array v5, v5, [Ljava/lang/Object;

    .line 43
    invoke-interface {v1}, La7$b;->b()Ljava/lang/String;

    .line 46
    move-result-object v6

    .line 47
    aput-object v6, v5, v2

    .line 49
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-interface {v1}, La7$b;->c()V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, La7;->a:La7$c;

    .line 58
    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0}, La7$c;->a()V

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string v0, "AutoBackgroundWorker"

    .line 66
    const-string v1, "doWork, mBackgroundWorker is null"

    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_1
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, La7;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public e()V
    .locals 8

    .line 1
    const-string v0, "AutoBackgroundWorker"

    .line 3
    const-string v1, "onBackgroundWorkFinish"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    monitor-enter p0

    .line 12
    const/4 v0, 0x1

    .line 13
    :try_start_0
    iput-boolean v0, p0, La7;->c:Z

    .line 15
    iput-boolean v2, p0, La7;->d:Z

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    iget-object v3, p0, La7;->b:Ljava/util/List;

    .line 21
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, La7$b;

    .line 41
    const-string v4, "AutoBackgroundWorker"

    .line 43
    const-string v5, "onBackgroundWorkFinish, notify onWorkFinished to: {?}"

    .line 45
    new-array v6, v0, [Ljava/lang/Object;

    .line 47
    invoke-interface {v3}, La7$b;->b()Ljava/lang/String;

    .line 50
    move-result-object v7

    .line 51
    aput-object v7, v6, v2

    .line 53
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-interface {v3}, La7$b;->a()V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v0
.end method

.method public declared-synchronized f(La7$b;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    const-string v0, "AutoBackgroundWorker"

    .line 6
    const-string v1, "removeWorkObserver, name:{?}"

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, La7$b;->b()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 18
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, La7;->b:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return-void
.end method

.method public g(La7$c;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "AutoBackgroundWorker"

    .line 9
    const-string v2, "setWorker, iBackgroundWorker:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, La7;->a:La7$c;

    .line 16
    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, La7;->i(Landroid/content/Context;Z)V

    .line 5
    return-void
.end method

.method public i(Landroid/content/Context;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p1, "AutoBackgroundWorker"

    .line 6
    const-string p2, "startAutoBackgroundWork context == null"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iget-boolean v1, p0, La7;->d:Z

    .line 17
    if-eqz v1, :cond_1

    .line 19
    const-string p1, "AutoBackgroundWorker"

    .line 21
    const-string p2, "startAutoBackgroundService, mIsWorkStarting"

    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string p1, "AutoBackgroundWorker"

    .line 28
    const-string p2, "startAutoBackgroundService, mIsWorkStarting"

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, La7;->d:Z

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    const-string v2, "AutoBackgroundWorker"

    .line 43
    const-string v3, "startAutoBackgroundService, isStartService:{?},targetSdkVersion:{?}"

    .line 45
    const/4 v4, 0x2

    .line 46
    new-array v4, v4, [Ljava/lang/Object;

    .line 48
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v5

    .line 52
    aput-object v5, v4, v0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 57
    move-result-object v5

    .line 58
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v4, v1

    .line 66
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v2, "AutoBackgroundWorker"

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v4, "startAutoBackgroundService, isStartService:"

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    const-string v4, ",targetSdkVersion:"

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 92
    move-result-object v4

    .line 93
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 108
    move-result-object v2

    .line 109
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 111
    const/16 v3, 0x1f

    .line 113
    if-lt v2, v3, :cond_3

    .line 115
    if-eqz p2, :cond_2

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, La7;->b()V

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    :goto_0
    new-instance p2, Landroid/content/Intent;

    .line 124
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 127
    new-instance v2, Landroid/content/ComponentName;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 132
    move-result-object v3

    .line 133
    const-string v4, "com.autonavi.amapauto.background.AutoBackgroundService"

    .line 135
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    :try_start_1
    invoke-static {}, Lzm;->d()Lzm;

    .line 144
    move-result-object v2

    .line 145
    const-string v3, "isNeedForegroundNotification"

    .line 147
    invoke-virtual {v2, v3, v1}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_4

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    const/16 v2, 0x1a

    .line 157
    if-lt v1, v2, :cond_4

    .line 159
    const-string v1, "AutoBackgroundWorker"

    .line 161
    const-string v2, "startAutoBackgroundService startForegroundService"

    .line 163
    new-array v3, v0, [Ljava/lang/Object;

    .line 165
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {p1, p2}, Lf00;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 171
    goto :goto_1

    .line 172
    :cond_4
    const-string v1, "AutoBackgroundWorker"

    .line 174
    const-string v2, "startAutoBackgroundService startService"

    .line 176
    new-array v3, v0, [Ljava/lang/Object;

    .line 178
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    goto :goto_1

    .line 185
    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    const-string p2, "AutoBackgroundWorker"

    .line 191
    const-string v1, "startAutoBackgroundService exception:"

    .line 193
    new-array v2, v0, [Ljava/lang/Object;

    .line 195
    invoke-static {p2, v1, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 198
    monitor-enter p0

    .line 199
    :try_start_2
    iput-boolean v0, p0, La7;->d:Z

    .line 201
    monitor-exit p0

    .line 202
    :goto_1
    return-void

    .line 203
    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    throw p1

    .line 206
    :catchall_1
    move-exception p1

    .line 207
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    throw p1
.end method
