.class public Loh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:Ljava/lang/String; = "CustomMvwSession"

.field public static o:Loh;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lnh;

.field public c:Z

.field public d:Ldr;

.field public e:Z

.field public f:Landroid/content/Context;

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:Landroid/content/ServiceConnection;

.field public j:Lmh;

.field public k:Ljava/util/List;

.field public l:Z

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldr;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Loh;->a:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Loh;->c:Z

    .line 10
    iput-boolean v1, p0, Loh;->e:Z

    .line 12
    iput-object v0, p0, Loh;->f:Landroid/content/Context;

    .line 14
    new-instance v2, Ljava/lang/Object;

    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Loh;->g:Ljava/lang/Object;

    .line 21
    iput v1, p0, Loh;->h:I

    .line 23
    new-instance v2, Loh$a;

    .line 25
    invoke-direct {v2, p0}, Loh$a;-><init>(Loh;)V

    .line 28
    iput-object v2, p0, Loh;->i:Landroid/content/ServiceConnection;

    .line 30
    new-instance v2, Loh$b;

    .line 32
    invoke-direct {v2, p0}, Loh$b;-><init>(Loh;)V

    .line 35
    iput-object v2, p0, Loh;->j:Lmh;

    .line 37
    iput-object v0, p0, Loh;->k:Ljava/util/List;

    .line 39
    iput-boolean v1, p0, Loh;->l:Z

    .line 41
    iput v1, p0, Loh;->m:I

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 46
    move-result-object v0

    .line 47
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Loh;->a:Ljava/lang/String;

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Loh;->a:Ljava/lang/String;

    .line 62
    :goto_0
    sget-object v0, Loh;->n:Ljava/lang/String;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    const-string v3, "CustomMvwSession------------cliendId="

    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Loh;->a:Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Loh;->f:Landroid/content/Context;

    .line 85
    iput v1, p0, Loh;->h:I

    .line 87
    iput-object p2, p0, Loh;->d:Ldr;

    .line 89
    invoke-virtual {p0}, Loh;->k()V

    .line 92
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Loh;->n:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Loh;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Loh;->c:Z

    .line 3
    return-void
.end method

.method public static synthetic c(Loh;Lnh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loh;->b:Lnh;

    .line 3
    return-void
.end method

.method public static synthetic d(Loh;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Loh;->e:Z

    .line 3
    return-void
.end method

.method public static synthetic e(Loh;ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Loh;->o(ZI)V

    .line 4
    return-void
.end method

.method public static synthetic f(Loh;I)V
    .locals 0

    .line 1
    iput p1, p0, Loh;->h:I

    .line 3
    return-void
.end method

.method public static synthetic g(Loh;)Ldr;
    .locals 0

    .line 1
    iget-object p0, p0, Loh;->d:Ldr;

    .line 3
    return-object p0
.end method

.method public static j(Landroid/content/Context;Ldr;)Loh;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Loh;->o:Loh;

    .line 7
    if-nez v0, :cond_1

    .line 9
    new-instance v0, Loh;

    .line 11
    invoke-direct {v0, p0, p1}, Loh;-><init>(Landroid/content/Context;Ldr;)V

    .line 14
    sput-object v0, Loh;->o:Loh;

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0, p1}, Loh;->m(Ldr;)V

    .line 20
    :goto_0
    sget-object p0, Loh;->o:Loh;

    .line 22
    return-object p0
.end method


# virtual methods
.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Loh;->g:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Loh;->k:Ljava/util/List;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Loh;->b:Lnh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v1, :cond_1

    .line 18
    :try_start_1
    iget v2, p0, Loh;->m:I

    .line 20
    if-nez v2, :cond_0

    .line 22
    iget-object v1, p0, Loh;->f:Landroid/content/Context;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Loh;->f:Landroid/content/Context;

    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 38
    move-result-object v1

    .line 39
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Loh;->b:Lnh;

    .line 43
    iget-object v3, p0, Loh;->a:Ljava/lang/String;

    .line 45
    iget-object v4, p0, Loh;->k:Ljava/util/List;

    .line 47
    iget-boolean v5, p0, Loh;->l:Z

    .line 49
    iget-object v7, p0, Loh;->j:Lmh;

    .line 51
    invoke-interface/range {v2 .. v7}, Lnh;->J(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lmh;)I

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v2, p0, Loh;->a:Ljava/lang/String;

    .line 57
    iget-object v3, p0, Loh;->k:Ljava/util/List;

    .line 59
    iget-boolean v4, p0, Loh;->l:Z

    .line 61
    iget-object v5, p0, Loh;->j:Lmh;

    .line 63
    invoke-interface {v1, v2, v3, v4, v5}, Lnh;->m0(Ljava/lang/String;Ljava/util/List;ZLmh;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    :try_start_2
    sget-object v1, Loh;->n:Ljava/lang/String;

    .line 69
    const-string v2, "Fail to start last background ivw"

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_0

    .line 75
    :catch_1
    sget-object v1, Loh;->n:Ljava/lang/String;

    .line 77
    const-string v2, "Fail to start last background ivw"

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    :goto_0
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw v1
.end method

.method public final i(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Loh;->f:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Landroid/content/Intent;

    .line 14
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result p1

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq p1, v3, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 33
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 35
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 37
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 39
    new-instance v1, Landroid/content/ComponentName;

    .line 41
    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/ComponentName;

    .line 50
    const-string v0, "com.iflytek.cutefly.speechclient"

    .line 52
    const-string v1, "com.iflytek.CustomMVWService"

    .line 54
    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    :goto_1
    return-object v2
.end method

.method public declared-synchronized k()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Loh;->c:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Loh;->b:Lnh;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Loh;->n:Ljava/lang/String;

    .line 14
    const-string v3, "service already connected"

    .line 16
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0, v1, v2}, Loh;->o(ZI)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v0, p0, Loh;->e:Z

    .line 25
    if-nez v0, :cond_2

    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 29
    const-string v3, "com.iflytek.CustomMVWService"

    .line 31
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v0}, Loh;->i(Landroid/content/Intent;)Landroid/content/Intent;

    .line 37
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    iput-boolean v1, p0, Loh;->e:Z

    .line 40
    iget-object v3, p0, Loh;->f:Landroid/content/Context;

    .line 42
    iget-object v4, p0, Loh;->i:Landroid/content/ServiceConnection;

    .line 44
    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 50
    sget-object v0, Loh;->n:Ljava/lang/String;

    .line 52
    const-string v3, "bindService failed"

    .line 54
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-boolean v2, p0, Loh;->e:Z

    .line 59
    iput-boolean v2, p0, Loh;->c:Z

    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-virtual {p0, v2, v0}, Loh;->o(ZI)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iput-boolean v2, p0, Loh;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_2
    sget-object v3, Loh;->n:Ljava/lang/String;

    .line 72
    const-string v4, "Custom MVW Bind service failed."

    .line 74
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    iput-boolean v2, p0, Loh;->c:Z

    .line 82
    iput-boolean v2, p0, Loh;->e:Z

    .line 84
    invoke-virtual {p0, v2, v1}, Loh;->o(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :cond_2
    :goto_0
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    monitor-exit p0

    .line 93
    throw v0
.end method

.method public l()I
    .locals 7

    .line 1
    sget-object v0, Loh;->n:Ljava/lang/String;

    .line 3
    const-string v1, "start release"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Loh;->g:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, p0, Loh;->k:Ljava/util/List;

    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Loh;->l:Z

    .line 17
    iput v2, p0, Loh;->m:I

    .line 19
    iget-boolean v3, p0, Loh;->c:Z

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v3, :cond_1

    .line 24
    iget-object v3, p0, Loh;->b:Lnh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-nez v3, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    iget-object v5, p0, Loh;->a:Ljava/lang/String;

    .line 31
    invoke-interface {v3, v5}, Lnh;->m1(Ljava/lang/String;)I

    .line 34
    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catch_0
    :try_start_2
    sget-object v3, Loh;->n:Ljava/lang/String;

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    const-string v6, "stop release mvw ret="

    .line 41
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v3, Loh;->n:Ljava/lang/String;

    .line 56
    const-string v4, "start unbindService"

    .line 58
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Loh;->f:Landroid/content/Context;

    .line 63
    iget-object v4, p0, Loh;->i:Landroid/content/ServiceConnection;

    .line 65
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 68
    iput-boolean v2, p0, Loh;->c:Z

    .line 70
    iput-object v1, p0, Loh;->b:Lnh;

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    sget-object v1, Loh;->n:Ljava/lang/String;

    .line 75
    const-string v2, "release return REMOTE_EXCEPTION"

    .line 77
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x1

    .line 81
    :goto_1
    monitor-exit v0

    .line 82
    return v2

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw v1
.end method

.method public m(Ldr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loh;->d:Ldr;

    .line 3
    return-void
.end method

.method public n(Ljava/util/List;Z)I
    .locals 10

    .line 1
    sget-object v0, Loh;->n:Ljava/lang/String;

    .line 3
    const-string v1, "startForegroundMvw------------>"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Loh;->g:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Loh;->b:Lnh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 17
    :try_start_1
    iget-object v1, p0, Loh;->f:Landroid/content/Context;

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object v1

    .line 23
    iget-object v4, p0, Loh;->f:Landroid/content/Context;

    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 32
    move-result-object v1

    .line 33
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 35
    iget-object v4, p0, Loh;->b:Lnh;

    .line 37
    iget-object v5, p0, Loh;->a:Ljava/lang/String;

    .line 39
    iget-object v9, p0, Loh;->j:Lmh;

    .line 41
    move-object v6, p1

    .line 42
    move v7, p2

    .line 43
    invoke-interface/range {v4 .. v9}, Lnh;->J(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lmh;)I

    .line 46
    move-result v1

    .line 47
    iput-object p1, p0, Loh;->k:Ljava/util/List;

    .line 49
    iput-boolean p2, p0, Loh;->l:Z

    .line 51
    iput v3, p0, Loh;->m:I

    .line 53
    sget-object v4, Loh;->n:Ljava/lang/String;

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    const-string v6, "startForegroundMvw1------------ret="

    .line 59
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    move v2, v1

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    :try_start_2
    sget-object v4, Loh;->n:Ljava/lang/String;

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    const-string v6, "startForegroundMvw3------------ret="

    .line 81
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Loh;->k:Ljava/util/List;

    .line 100
    iput-boolean p2, p0, Loh;->l:Z

    .line 102
    iput v3, p0, Loh;->m:I

    .line 104
    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    .line 106
    sget-object v4, Loh;->n:Ljava/lang/String;

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    const-string v6, "startForegroundMvw2------------ret="

    .line 112
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-object p1, p0, Loh;->k:Ljava/util/List;

    .line 131
    iput-boolean p2, p0, Loh;->l:Z

    .line 133
    iput v3, p0, Loh;->m:I

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    sget-object v1, Loh;->n:Ljava/lang/String;

    .line 138
    const-string v4, "startForegroundMvw4------------ret="

    .line 140
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object p1, p0, Loh;->k:Ljava/util/List;

    .line 145
    iput-boolean p2, p0, Loh;->l:Z

    .line 147
    iput v3, p0, Loh;->m:I

    .line 149
    iget-boolean p1, p0, Loh;->e:Z

    .line 151
    if-nez p1, :cond_1

    .line 153
    invoke-virtual {p0}, Loh;->k()V

    .line 156
    :cond_1
    :goto_0
    monitor-exit v0

    .line 157
    return v2

    .line 158
    :catchall_0
    move-exception p1

    .line 159
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    throw p1
.end method

.method public final o(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Loh;->d:Ldr;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Ldr;->b(ZI)V

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Loh;->h()V

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget p1, p0, Loh;->h:I

    .line 16
    const/4 p2, 0x5

    .line 17
    if-ge p1, p2, :cond_2

    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 21
    iput p1, p0, Loh;->h:I

    .line 23
    invoke-virtual {p0}, Loh;->k()V

    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public p()I
    .locals 5

    .line 1
    sget-object v0, Loh;->n:Ljava/lang/String;

    .line 3
    const-string v1, "start stop custom Mvw"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Loh;->g:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, p0, Loh;->k:Ljava/util/List;

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Loh;->l:Z

    .line 17
    iput v1, p0, Loh;->m:I

    .line 19
    iget-object v1, p0, Loh;->b:Lnh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    :try_start_1
    iget-object v3, p0, Loh;->a:Ljava/lang/String;

    .line 26
    invoke-interface {v1, v3}, Lnh;->m1(Ljava/lang/String;)I

    .line 29
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    move v2, v1

    .line 31
    :catch_0
    :try_start_2
    sget-object v1, Loh;->n:Ljava/lang/String;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    const-string v4, "stop mvw ret="

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    monitor-exit v0

    .line 51
    return v2

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v1
.end method
