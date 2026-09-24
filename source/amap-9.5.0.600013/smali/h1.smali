.class public final Lh1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh1$a;
    }
.end annotation


# instance fields
.field public volatile a:Lh1$a;

.field public volatile b:Landroid/os/HandlerThread;

.field public c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lh1;->c:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lh1;->d:Z

    .line 17
    const-string v1, "com.autonavi.amapauto"

    .line 19
    iput-object v1, p0, Lh1;->f:Ljava/lang/String;

    .line 21
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, p0, Lh1;->g:Z

    .line 24
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    iput-object v3, p0, Lh1;->e:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lh1;->f:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 43
    iput-object v1, p0, Lh1;->f:Ljava/lang/String;

    .line 45
    :cond_0
    const-string p1, "CHECK_INVTAL = 5000"

    .line 47
    new-array v1, v2, [Ljava/lang/Object;

    .line 49
    const-string v3, "ActivityListener"

    .line 51
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/16 p1, 0x2bc

    .line 56
    invoke-static {p1}, Lib;->u(I)Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 62
    invoke-static {}, Lhm0;->l()Z

    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_1

    .line 68
    return-void

    .line 69
    :cond_1
    new-instance p1, Landroid/os/HandlerThread;

    .line 71
    const-string v1, "ActivityChangeListenerServiceThread"

    .line 73
    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 78
    iget-object p1, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 83
    iget-object p1, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 88
    new-instance p1, Lh1$a;

    .line 90
    iget-object v0, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 92
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p1, p0, v0}, Lh1$a;-><init>(Lh1;Landroid/os/Looper;)V

    .line 99
    iput-object p1, p0, Lh1;->a:Lh1$a;

    .line 101
    iget-object p1, p0, Lh1;->a:Lh1$a;

    .line 103
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    return-void
.end method

.method public static synthetic a(Lh1;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh1;->g()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lh1;)Lh1$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lh1;->a:Lh1$a;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lh1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lh1;->d:Z

    .line 3
    return p0
.end method

.method public static synthetic d(Lh1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lh1;->d:Z

    .line 3
    return p1
.end method

.method public static synthetic e(Lh1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lh1;->g:Z

    .line 3
    return p0
.end method

.method public static h(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/high16 v1, 0x10000

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const/4 p1, 0x0

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    const-string v1, "ActivityChangeManager"

    .line 19
    const-string v2, "occur an exception"

    .line 21
    invoke-static {v1, v2, p0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object v0, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 26
    :cond_0
    const/16 v0, 0x2bc

    .line 28
    invoke-static {v0}, Lib;->u(I)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lh1;->a:Lh1$a;

    .line 37
    iput-object v0, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 39
    :cond_1
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "ActivityListener"

    .line 3
    iget-object v1, p0, Lh1;->e:Ljava/lang/ref/WeakReference;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v2, p0, Lh1;->e:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/Context;

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Landroid/content/Intent;

    .line 28
    const-string v4, "android.intent.action.MAIN"

    .line 30
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v4, "android.intent.category.HOME"

    .line 35
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-static {v2, v3}, Lh1;->h(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v2

    .line 46
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 58
    iget-object v4, p0, Lh1;->c:Ljava/util/ArrayList;

    .line 60
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 62
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 69
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 71
    new-array v4, v1, [Ljava/lang/Object;

    .line 73
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    const-string v3, "ouccur a SecurityException exception~"

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v0, v3, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lh1;->c:Ljava/util/ArrayList;

    .line 87
    return-object v0
.end method

.method public i()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lh1;->e:Ljava/lang/ref/WeakReference;

    .line 3
    const-string v1, "ActivityListener"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lh1;->e:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/content/Context;

    .line 22
    const-string v3, "activity"

    .line 24
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/ActivityManager;

    .line 30
    const/4 v3, 0x1

    .line 31
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v4, " mActivityManager.getRunningTasks ocuur a Exception "

    .line 39
    new-array v5, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v1, v4, v0, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v4, p0, Lh1;->c:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v4

    .line 51
    if-gtz v4, :cond_0

    .line 53
    const-string v4, "homeNames==null || homeNames.size()<=0"

    .line 55
    new-array v5, v2, [Ljava/lang/Object;

    .line 57
    invoke-static {v1, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lh1;->g()Ljava/util/List;

    .line 63
    :cond_0
    iget-object v4, p0, Lh1;->c:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v4

    .line 69
    if-lez v4, :cond_3

    .line 71
    if-eqz v0, :cond_3

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    move-result v4

    .line 77
    if-lez v4, :cond_3

    .line 79
    const-string v4, "homeNames != null && homeNames.size() > 0"

    .line 81
    new-array v5, v2, [Ljava/lang/Object;

    .line 83
    invoke-static {v1, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    invoke-static {v4}, Ln10;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 95
    move-result-object v4

    .line 96
    if-nez v4, :cond_1

    .line 98
    const-string v0, "topActivity is null"

    .line 100
    new-array v3, v2, [Ljava/lang/Object;

    .line 102
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return v2

    .line 106
    :cond_1
    iget-object v4, p0, Lh1;->c:Ljava/util/ArrayList;

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 114
    invoke-static {v5}, Ln10;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_2

    .line 128
    const-string v0, "homeNames.contains(rti.get(0).topActivity.getPackageName())"

    .line 130
    new-array v4, v2, [Ljava/lang/Object;

    .line 132
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput-boolean v2, p0, Lh1;->g:Z

    .line 137
    return v3

    .line 138
    :cond_2
    const-string v3, "!  homeNames.contains(rti.get(0).topActivity.getPackageName())"

    .line 140
    new-array v4, v2, [Ljava/lang/Object;

    .line 142
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lh1;->f:Ljava/lang/String;

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 153
    invoke-static {v0}, Ln10;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v0

    .line 165
    iput-boolean v0, p0, Lh1;->g:Z

    .line 167
    return v2

    .line 168
    :cond_3
    const-string v3, "! (homeNames != null && homeNames.size() > 0)"

    .line 170
    new-array v4, v2, [Ljava/lang/Object;

    .line 172
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    if-eqz v0, :cond_4

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 180
    move-result v1

    .line 181
    if-lez v1, :cond_4

    .line 183
    iget-object v1, p0, Lh1;->f:Ljava/lang/String;

    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 191
    invoke-static {v0}, Ln10;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v0

    .line 203
    iput-boolean v0, p0, Lh1;->g:Z

    .line 205
    :cond_4
    return v2

    .line 206
    :cond_5
    const-string v0, "mContext==null || mContext.get()==null"

    .line 208
    new-array v3, v2, [Ljava/lang/Object;

    .line 210
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iput-boolean v2, p0, Lh1;->g:Z

    .line 215
    return v2
.end method

.method public j()V
    .locals 4

    .line 1
    invoke-static {}, Lhm0;->l()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 15
    const-string v2, "ActivityChangeManager"

    .line 17
    const-string v3, "onWidgetDisable isWidgetAdded:{?}"

    .line 19
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/16 v1, 0x2bc

    .line 24
    invoke-static {v1}, Lib;->u(I)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lh1;->f()V

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lh1;->a:Lh1$a;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const-string v2, "ActivityChangeManager"

    .line 11
    const-string v4, "onWidgetEnable mServiceHandler:{?}"

    .line 13
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lh1;->a:Lh1$a;

    .line 18
    if-nez v1, :cond_0

    .line 20
    new-instance v1, Landroid/os/HandlerThread;

    .line 22
    const-string v2, "ActivityChangeListenerServiceThread"

    .line 24
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object v1, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 29
    iget-object v1, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 34
    iget-object v0, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    new-instance v0, Lh1$a;

    .line 41
    iget-object v1, p0, Lh1;->b:Landroid/os/HandlerThread;

    .line 43
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, p0, v1}, Lh1$a;-><init>(Lh1;Landroid/os/Looper;)V

    .line 50
    iput-object v0, p0, Lh1;->a:Lh1$a;

    .line 52
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 54
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lh1;->c:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 13
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 15
    const/4 v1, 0x1

    .line 16
    const-wide/16 v2, 0x1388

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lh1;->a:Lh1$a;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 28
    :cond_1
    :goto_0
    return-void
.end method
