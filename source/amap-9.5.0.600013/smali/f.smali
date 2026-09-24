.class public abstract Lf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf$b;,
        Lf$c;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:I = 0x0

.field public static c:Z = false

.field public static d:Z = true

.field public static e:Lf$b;

.field public static f:Landroid/content/Context;

.field public static g:Landroid/content/BroadcastReceiver;

.field public static h:Ljava/util/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lf$b;-><init>(Lf$a;)V

    .line 7
    sput-object v0, Lf;->e:Lf$b;

    .line 9
    new-instance v0, Lf$a;

    .line 11
    invoke-direct {v0}, Lf$a;-><init>()V

    .line 14
    sput-object v0, Lf;->g:Landroid/content/BroadcastReceiver;

    .line 16
    sput-object v1, Lf;->h:Ljava/util/Calendar;

    .line 18
    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lf;->a:Z

    .line 3
    return v0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lf;->a:Z

    .line 3
    return p0
.end method

.method public static synthetic c()Lf$b;
    .locals 1

    .line 1
    sget-object v0, Lf;->e:Lf$b;

    .line 3
    return-object v0
.end method

.method public static synthetic d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lf;->f:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lf;->i(Ljava/lang/StringBuilder;J)V

    .line 4
    return-void
.end method

.method public static synthetic f(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lf;->n(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static varargs g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lf;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p2}, Lf;->r([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    sget-boolean v0, Lf;->d:Z

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lf$c;->a()Lf$c;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "ALLog"

    .line 23
    invoke-virtual {v0, v1, p1, p2}, Lf$c;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_1
    sget-object v0, Lf;->e:Lf$b;

    .line 28
    invoke-virtual {v0}, Lf$b;->d()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-static {}, Lf$c;->a()Lf$c;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p0, p1, p2}, Lf$c;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_2
    return-void
.end method

.method public static varargs h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p3}, Lf;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static i(Ljava/lang/StringBuilder;J)V
    .locals 2

    .line 1
    sget-object v0, Lf;->h:Ljava/util/Calendar;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lf;->h:Ljava/util/Calendar;

    .line 11
    :cond_0
    sget-object v0, Lf;->h:Ljava/util/Calendar;

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    sget-object p1, Lf;->h:Ljava/util/Calendar;

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, "-"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v0, Lf;->h:Ljava/util/Calendar;

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, p2

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    sget-object p1, Lf;->h:Ljava/util/Calendar;

    .line 47
    const/4 p2, 0x5

    .line 48
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string p1, " "

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object p2, Lf;->h:Ljava/util/Calendar;

    .line 62
    const/16 v0, 0xb

    .line 64
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 67
    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string p2, ":"

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v0, Lf;->h:Ljava/util/Calendar;

    .line 78
    const/16 v1, 0xc

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    sget-object p2, Lf;->h:Ljava/util/Calendar;

    .line 92
    const/16 v0, 0xd

    .line 94
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string p2, "."

    .line 103
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    sget-object p2, Lf;->h:Ljava/util/Calendar;

    .line 108
    const/16 v0, 0xe

    .line 110
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 113
    move-result p2

    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    return-void
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "/autolog/"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lf;->f:Landroid/content/Context;

    .line 7
    invoke-static {}, Lf;->m()Z

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 13
    new-instance p0, Landroid/content/IntentFilter;

    .line 15
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    const-string v0, "com.autonavi.amapauto.action_open_log"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v0, "com.autonavi.amapauto.action_close_log"

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    const/16 v1, 0x21

    .line 32
    if-lt v0, v1, :cond_0

    .line 34
    invoke-static {}, Lrv;->H()Lrv;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lf;->g:Landroid/content/BroadcastReceiver;

    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-static {v0, v1, p0, v2}, Lpg;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Lf;->g:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public static l()Z
    .locals 1

    .line 1
    sget-boolean v0, Lf;->d:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lf;->e:Lf$b;

    .line 7
    invoke-virtual {v0}, Lf$b;->d()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public static m()Z
    .locals 6

    .line 1
    sget v0, Lf;->b:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-boolean v0, Lf;->c:Z

    .line 7
    return v0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 11
    move-result v0

    .line 12
    sput v0, Lf;->b:I

    .line 14
    const-string v0, ""

    .line 16
    invoke-static {}, Lrv;->H()Lrv;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "activity"

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/app/ActivityManager;

    .line 32
    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_3

    .line 40
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 60
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 62
    sget v5, Lf;->b:I

    .line 64
    if-ne v4, v5, :cond_1

    .line 66
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 77
    sput-boolean v0, Lf;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Lf;->c:Z

    .line 83
    :cond_3
    :goto_1
    sget-boolean v0, Lf;->c:Z

    .line 85
    return v0
.end method

.method public static varargs n(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    return-void

    .line 10
    :cond_1
    invoke-static {p1}, Lf;->q(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    array-length v1, p2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    aget-object v2, p2, v1

    .line 25
    aget-object v3, p1, v1

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    array-length p2, p1

    .line 37
    if-ge v0, p2, :cond_3

    .line 39
    aget-object p2, p1, v0

    .line 41
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    return-void
.end method

.method public static o(Z)V
    .locals 2

    .line 1
    sput-boolean p0, Lf;->a:Z

    .line 3
    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lf;->e:Lf$b;

    .line 7
    invoke-static {p0}, Lf$b;->a(Lf$b;)V

    .line 10
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 20
    const-string v1, "com.autonavi.amapauto.action_open_log"

    .line 22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 36
    move-result-object p0

    .line 37
    new-instance v0, Landroid/content/Intent;

    .line 39
    const-string v1, "com.autonavi.amapauto.action_close_log"

    .line 41
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    :goto_0
    return-void
.end method

.method public static p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lf;->d:Z

    .line 3
    return-void
.end method

.method public static q(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "{?}"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ltz v2, :cond_0

    .line 16
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v4, v2, 0x3

    .line 25
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 28
    move-result v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    if-ge v4, v1, :cond_1

    .line 38
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    new-array p0, v3, [Ljava/lang/String;

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, [Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public static varargs r([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_0

    .line 6
    array-length v0, p0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    aget-object v3, p0, v2

    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v1, v2

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    return-object v1
.end method
