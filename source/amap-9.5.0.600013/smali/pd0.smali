.class public Lpd0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Ljava/lang/String; = "pd0"

.field public static volatile n:Lpd0;


# instance fields
.field public a:Leg;

.field public b:Lbd0;

.field public c:Lcd0;

.field public d:Ljava/util/List;

.field public final e:Landroid/os/Handler;

.field public f:Z

.field public g:Ljava/lang/ref/WeakReference;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/content/BroadcastReceiver;

.field public l:Ljava/net/InetAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lpd0$b;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lpd0$b;-><init>(Lpd0;Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lpd0;->e:Landroid/os/Handler;

    .line 15
    const-string v0, ""

    .line 17
    iput-object v0, p0, Lpd0;->h:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lpd0;->i:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lpd0;->j:Ljava/lang/String;

    .line 23
    new-instance v0, Lpd0$c;

    .line 25
    invoke-direct {v0, p0}, Lpd0$c;-><init>(Lpd0;)V

    .line 28
    iput-object v0, p0, Lpd0;->k:Landroid/content/BroadcastReceiver;

    .line 30
    return-void
.end method

.method public static synthetic a(Lpd0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd0;->d:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lpd0;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lpd0;->d:Ljava/util/List;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Lpd0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd0;->e:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lpd0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpd0;->y()V

    .line 4
    return-void
.end method

.method public static synthetic e(Lpd0;)Ldg;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lpd0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lpd0;->f:Z

    .line 3
    return p0
.end method

.method public static synthetic g(Lpd0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpd0;->f:Z

    .line 3
    return p1
.end method

.method public static synthetic h(Lpd0;)Lt90;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lpd0;)Leg;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd0;->a:Leg;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lpd0;)Lbd0;
    .locals 0

    .line 1
    iget-object p0, p0, Lpd0;->b:Lbd0;

    .line 3
    return-object p0
.end method

.method public static synthetic k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lpd0;->m:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic l(Lpd0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpd0;->w()V

    .line 4
    return-void
.end method

.method public static synthetic m(Lpd0;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 3
    return-object p1
.end method

.method public static s()Lpd0;
    .locals 2

    .line 1
    sget-object v0, Lpd0;->n:Lpd0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lpd0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lpd0;->n:Lpd0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lpd0;

    .line 14
    invoke-direct {v1}, Lpd0;-><init>()V

    .line 17
    sput-object v1, Lpd0;->n:Lpd0;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lpd0;->n:Lpd0;

    .line 26
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpd0;->c:Lcd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lpd0;->c:Lcd0;

    .line 14
    :cond_0
    iget-object v0, p0, Lpd0;->c:Lcd0;

    .line 16
    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcd0;

    .line 20
    const/16 v1, 0x1618

    .line 22
    iget-object v2, p0, Lpd0;->e:Landroid/os/Handler;

    .line 24
    invoke-direct {v0, v1, v2}, Lcd0;-><init>(ILandroid/os/Handler;)V

    .line 27
    iput-object v0, p0, Lpd0;->c:Lcd0;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    :cond_1
    return-void
.end method

.method public declared-synchronized B()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lpd0;->a:Leg;

    .line 5
    invoke-virtual {p0}, Lpd0;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpd0;->i:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpd0;->h:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpd0;->j:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final q(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/net/InterfaceAddress;

    .line 31
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-eqz v1, :cond_1

    .line 37
    return-object v1

    .line 38
    :catch_0
    :cond_2
    return-object v0
.end method

.method public final declared-synchronized r()Ljava/net/InetAddress;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "hanwei"

    .line 4
    const-string v1, " getInetAddress begin--------------"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 22
    const-string v1, "hanwei"

    .line 24
    const-string v3, " getInetAddress begin11111--------------"

    .line 26
    new-array v4, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {v1, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/net/NetworkInterface;

    .line 37
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 40
    move-result-object v3

    .line 41
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 47
    const-string v4, "hanwei"

    .line 49
    const-string v5, " getInetAddress begin22222--------------"

    .line 51
    new-array v6, v2, [Ljava/lang/Object;

    .line 53
    invoke-static {v4, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/net/InetAddress;

    .line 62
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_1

    .line 68
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    const-string v6, "wlan0"

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 80
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    const-string v6, "mlan0"

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_1

    .line 92
    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_1

    .line 102
    const-string v0, "hanwei"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v3, " getIpAddress mInetAddress --> success --> "

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v3, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    new-array v3, v2, [Ljava/lang/Object;

    .line 125
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    .line 129
    return-object v4

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    :try_start_2
    const-string v1, "hanwei"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const-string v4, " getInetAddress Exception-------------->"

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    new-array v2, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {v1, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :cond_3
    monitor-exit p0

    .line 160
    const/4 v0, 0x0

    .line 161
    return-object v0

    .line 162
    :catchall_1
    move-exception v0

    .line 163
    monitor-exit p0

    .line 164
    throw v0
.end method

.method public declared-synchronized t(Z)Ljava/net/InetAddress;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "hanwei"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, " ----------------------------------------------------------------------- mInetAddress--> "

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v2, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 31
    if-nez v0, :cond_0

    .line 33
    const-string v0, "hanwei"

    .line 35
    const-string v1, " huo qu getIpAddress--> \u4e3anull--> "

    .line 37
    new-array v3, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lpd0;->r()Ljava/net/InetAddress;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 48
    const-string v0, "hanwei"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v3, " huo qu getIpAddress success--> "

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    new-array v3, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 76
    invoke-virtual {p0, v0}, Lpd0;->q(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 79
    move-result-object v0

    .line 80
    const-string v1, "hanwei"

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v4, " huo qu getIpAddress--> no null--> zu bo is -->  "

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    invoke-static {v1, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v0, :cond_2

    .line 106
    if-eqz p1, :cond_1

    .line 108
    monitor-exit p0

    .line 109
    return-object v0

    .line 110
    :cond_1
    :try_start_1
    iget-object p1, p0, Lpd0;->l:Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    .line 113
    return-object p1

    .line 114
    :cond_2
    const/4 p1, 0x0

    .line 115
    :try_start_2
    iput-object p1, p0, Lpd0;->l:Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    monitor-exit p0

    .line 118
    return-object p1

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    monitor-exit p0

    .line 121
    throw p1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lpd0;->t(Z)Ljava/net/InetAddress;

    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public v(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lpd0;->g:Ljava/lang/ref/WeakReference;

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lpd0;->h:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lpd0;->h:Ljava/lang/String;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lpd0;->j:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lpd0;->h:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lpd0;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 45
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lpd0;->k:Landroid/content/BroadcastReceiver;

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :catch_1
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpd0;->c:Lcd0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcd0;->interrupt()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lpd0;->c:Lcd0;

    .line 11
    :cond_0
    iget-object v0, p0, Lpd0;->b:Lbd0;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lbd0;->l()V

    .line 18
    :cond_1
    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lpd0;->g:Ljava/lang/ref/WeakReference;

    .line 4
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/content/Context;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v2, p0, Lpd0;->k:Landroid/content/BroadcastReceiver;

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    iget-object v1, p0, Lpd0;->g:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 24
    :cond_0
    iput-object v0, p0, Lpd0;->g:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_1
    iput-object v0, p0, Lpd0;->l:Ljava/net/InetAddress;

    .line 28
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    sget-object v0, Lpd0;->m:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-boolean v2, p0, Lpd0;->f:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "sendDisconnectMsg mIsConnect  = {?}"

    .line 17
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Lpd0;->f:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lpd0;->e:Landroid/os/Handler;

    .line 26
    const/16 v1, 0xcb

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    :cond_0
    return-void
.end method

.method public declared-synchronized z(Leg;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lpd0;->a:Leg;

    .line 4
    iget-object p1, p0, Lpd0;->b:Lbd0;

    .line 6
    if-nez p1, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p1, p0, Lpd0;->d:Ljava/util/List;

    .line 15
    new-instance p1, Lbd0;

    .line 17
    invoke-direct {p1}, Lbd0;-><init>()V

    .line 20
    iput-object p1, p0, Lpd0;->b:Lbd0;

    .line 22
    :cond_0
    iget-object p1, p0, Lpd0;->b:Lbd0;

    .line 24
    invoke-virtual {p1}, Lbd0;->k()V

    .line 27
    iget-object p1, p0, Lpd0;->b:Lbd0;

    .line 29
    new-instance v0, Lpd0$a;

    .line 31
    invoke-direct {v0, p0}, Lpd0$a;-><init>(Lpd0;)V

    .line 34
    invoke-virtual {p1, v0}, Lbd0;->j(Lbd0$b;)V

    .line 37
    invoke-virtual {p0}, Lpd0;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0

    .line 44
    throw p1
.end method
