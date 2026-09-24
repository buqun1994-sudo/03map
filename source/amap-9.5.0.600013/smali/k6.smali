.class public Lk6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6$c;,
        Lk6$b;,
        Lk6$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:I

.field public e:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AutoActivityLifecycle"

    .line 3
    iput-object v0, p0, Lk6;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk6;->b:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk6;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lk6;->d:I

    .line 7
    new-instance v0, Lk6$a;

    invoke-direct {v0, p0}, Lk6$a;-><init>(Lk6;)V

    iput-object v0, p0, Lk6;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public synthetic constructor <init>(Lk6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk6;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk6;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk6;->n(Landroid/app/Activity;I)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lk6;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lk6;->b:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static g()Lk6;
    .locals 1

    .line 1
    invoke-static {}, Lk6$c;->a()Lk6;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized c(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lk6;->c:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lk6$d;

    .line 20
    invoke-interface {v1, p1, p2}, Lk6$d;->onActivityLifecycleChanged(Landroid/app/Activity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public d(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lk6;->e(ZZ)V

    .line 5
    return-void
.end method

.method public e(ZZ)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 18
    const-string v1, "AutoActivityLifecycle"

    .line 20
    const-string v4, "exitApp isRestart = {?}, isLaunchAuto={?}"

    .line 22
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    if-eqz p1, :cond_4

    .line 27
    invoke-static {}, Lse;->c()Lse;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lse;->cleanup()Z

    .line 34
    invoke-virtual {p0}, Lk6;->f()V

    .line 37
    invoke-static {}, Lrv;->H()Lrv;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 45
    if-eqz p2, :cond_2

    .line 47
    invoke-static {}, Lse;->c()Lse;

    .line 50
    move-result-object p2

    .line 51
    const/16 v0, 0x2745

    .line 53
    invoke-virtual {p2, v0}, Lse;->getBooleanValue(I)Z

    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 59
    const-string p1, "channel disposed exit with launch auto"

    .line 61
    new-array p2, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    move-result-object p2

    .line 79
    if-nez p2, :cond_1

    .line 81
    const-string p2, "exitApp intent is null"

    .line 83
    new-array v0, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {v1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    new-instance p2, Landroid/content/ComponentName;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    const-string v4, "com.autonavi.auto.remote.fill.UsbFillActivity"

    .line 96
    invoke-direct {p2, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    move-result-object p2

    .line 103
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 105
    aput-object p2, v0, v2

    .line 107
    const-string v4, "exitApp intent={?}"

    .line 109
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const/high16 v0, 0x4000000

    .line 114
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, La7;->c()La7;

    .line 124
    move-result-object p1

    .line 125
    invoke-static {}, Lrv;->H()Lrv;

    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2}, Lrv;->y()Landroid/app/Application;

    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p1, p2, v3}, La7;->i(Landroid/content/Context;Z)V

    .line 136
    :goto_0
    invoke-static {}, Lzm;->d()Lzm;

    .line 139
    move-result-object p1

    .line 140
    sget-object p2, Lzm;->a0:Ljava/lang/String;

    .line 142
    invoke-virtual {p1, p2, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 145
    move-result p1

    .line 146
    new-array p2, v3, [Ljava/lang/Object;

    .line 148
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    move-result-object v0

    .line 152
    aput-object v0, p2, v2

    .line 154
    const-string v0, "exitApp killProcessInterface={?}"

    .line 156
    invoke-static {v1, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    if-eqz p1, :cond_3

    .line 161
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->killProcess()I

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {p0}, Lk6;->f()V

    .line 172
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk6;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lk6$b;

    .line 19
    invoke-static {v1}, Lk6$b;->a(Lk6$b;)Ljava/lang/ref/WeakReference;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/app/Activity;

    .line 29
    if-eqz v2, :cond_0

    .line 31
    const/4 v3, 0x2

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    invoke-static {v1}, Lk6$b;->b(Lk6$b;)I

    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const/4 v4, 0x0

    .line 43
    aput-object v1, v3, v4

    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v1

    .line 53
    const/4 v4, 0x1

    .line 54
    aput-object v1, v3, v4

    .line 56
    const-string v1, "AutoActivityLifecycle"

    .line 58
    const-string v4, "exitApp, activity = {?}, isFinishing = {?}"

    .line 60
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public h(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lk6;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 10
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk6;->k()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public j()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lk6;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lk6$b;

    .line 20
    invoke-virtual {v1}, Lk6$b;->c()I

    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x3

    .line 25
    if-ne v3, v4, :cond_0

    .line 27
    invoke-static {v1}, Lk6$b;->a(Lk6$b;)Ljava/lang/ref/WeakReference;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/app/Activity;

    .line 37
    const/4 v3, 0x1

    .line 38
    new-array v4, v3, [Ljava/lang/Object;

    .line 40
    aput-object v1, v4, v2

    .line 42
    const-string v5, "AutoActivityLifecycle"

    .line 44
    const-string v6, "in resumed actvity:{?}"

    .line 46
    invoke-static {v5, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    const-string v4, "com.autonavi.amapauto.business.activity.DIMActivity"

    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    aput-object v1, v3, v2

    .line 72
    const-string v1, "in resumed clazzName:{?}"

    .line 74
    invoke-static {v5, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    :goto_1
    return v3

    .line 79
    :cond_3
    return v2
.end method

.method public k()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lk6;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lk6$b;

    .line 20
    invoke-virtual {v1}, Lk6$b;->c()I

    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq v3, v4, :cond_1

    .line 27
    invoke-virtual {v1}, Lk6$b;->c()I

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x3

    .line 32
    if-eq v3, v4, :cond_1

    .line 34
    invoke-virtual {v1}, Lk6$b;->c()I

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x4

    .line 39
    if-ne v3, v4, :cond_0

    .line 41
    :cond_1
    invoke-static {v1}, Lk6$b;->a(Lk6$b;)Ljava/lang/ref/WeakReference;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/app/Activity;

    .line 51
    const/4 v3, 0x1

    .line 52
    new-array v4, v3, [Ljava/lang/Object;

    .line 54
    aput-object v1, v4, v2

    .line 56
    const-string v5, "AutoActivityLifecycle"

    .line 58
    const-string v6, "in resumed actvity:{?}"

    .line 60
    invoke-static {v5, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    const-string v4, "com.autonavi.amapauto.business.activity.DIMActivity"

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 81
    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    aput-object v1, v3, v2

    .line 85
    const-string v1, "in resumed clazzName:{?}"

    .line 87
    invoke-static {v5, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    return v3

    .line 92
    :cond_3
    return v2
.end method

.method public l(I)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AutoActivityLifecycle"

    .line 13
    const-string v4, "in isStarted displayId:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lk6;->b:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_3

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lk6$b;

    .line 36
    invoke-virtual {v4}, Lk6$b;->c()I

    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x2

    .line 41
    if-eq v5, v6, :cond_1

    .line 43
    invoke-virtual {v4}, Lk6$b;->c()I

    .line 46
    move-result v5

    .line 47
    const/4 v7, 0x3

    .line 48
    if-eq v5, v7, :cond_1

    .line 50
    invoke-virtual {v4}, Lk6$b;->c()I

    .line 53
    move-result v5

    .line 54
    const/4 v7, 0x4

    .line 55
    if-ne v5, v7, :cond_0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v4}, Lk6$b;->c()I

    .line 63
    move-result v4

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v4

    .line 68
    aput-object v4, v5, v3

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v4

    .line 74
    aput-object v4, v5, v0

    .line 76
    const-string v4, "not in isStarted lifecycleType:{?} displayId:{?}"

    .line 78
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    :goto_1
    invoke-static {v4}, Lk6$b;->a(Lk6$b;)Ljava/lang/ref/WeakReference;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/app/Activity;

    .line 92
    new-array v5, v6, [Ljava/lang/Object;

    .line 94
    aput-object v4, v5, v3

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v6

    .line 100
    aput-object v6, v5, v0

    .line 102
    const-string v6, "in isStarted activity:{?} displayId:{?}"

    .line 104
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    if-eqz v4, :cond_2

    .line 109
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 112
    move-result-object v5

    .line 113
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    .line 120
    move-result v5

    .line 121
    if-eq v5, p1, :cond_2

    .line 123
    new-array v5, v0, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 133
    aput-object v4, v5, v3

    .line 135
    const-string v4, "in isStarted clazzName:{?}"

    .line 137
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    return v0

    .line 142
    :cond_3
    return v3
.end method

.method public declared-synchronized m(Lk6$d;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lk6;->c:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lk6;->c:Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public final n(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk6;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lk6$b;

    .line 19
    invoke-virtual {v1, p1, p2}, Lk6$b;->e(Landroid/app/Activity;I)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    :cond_1
    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    const/4 v1, 0x0

    .line 29
    aput-object p1, v0, v1

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, p2}, Lk6;->p(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    aput-object v2, v0, v1

    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v0, v1

    .line 45
    const-string v1, "AutoActivityLifecycle"

    .line 47
    const-string v2, "{?}-->{?}@{?}"

    .line 49
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "-->"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0, p2}, Lk6;->p(I)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, p1, p2}, Lk6;->c(Landroid/app/Activity;I)V

    .line 86
    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk6;->d:I

    .line 3
    return-void
.end method

.method public final p(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    const-string p1, "unknown"

    return-object p1

    :pswitch_0
    const-string p1, "destroyed"

    return-object p1

    :pswitch_1
    const-string p1, "stopped"

    return-object p1

    :pswitch_2
    const-string p1, "paused"

    return-object p1

    :pswitch_3
    const-string p1, "resumed"

    return-object p1

    :pswitch_4
    const-string p1, "started"

    return-object p1

    :pswitch_5
    const-string p1, "created"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
