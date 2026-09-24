.class public Lz90;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Ljava/lang/String; = ""

.field public static volatile k:Lz90;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Lii;

.field public d:Landroid/content/Context;

.field public e:Z

.field public f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public g:Leg;

.field public h:Lum0$b;

.field public final i:Lcg;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "127.0.0.1"

    .line 6
    iput-object v0, p0, Lz90;->a:Ljava/lang/String;

    .line 8
    const/16 v0, 0x2211

    .line 10
    iput v0, p0, Lz90;->b:I

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lz90;->c:Lii;

    .line 15
    iput-object v0, p0, Lz90;->d:Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lz90;->e:Z

    .line 20
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    iput-object v1, p0, Lz90;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    new-instance v1, Lz90$a;

    .line 29
    invoke-direct {v1, p0}, Lz90$a;-><init>(Lz90;)V

    .line 32
    iput-object v1, p0, Lz90;->h:Lum0$b;

    .line 34
    new-instance v1, Lz90$h;

    .line 36
    invoke-direct {v1, p0}, Lz90$h;-><init>(Lz90;)V

    .line 39
    iput-object v1, p0, Lz90;->i:Lcg;

    .line 41
    invoke-static {}, Lrv;->H()Lrv;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lz90;->d:Landroid/content/Context;

    .line 51
    const-string v1, "RemoteControlLink~RemoteControlLink~RemoteControlLink~"

    .line 53
    new-array v2, v0, [Ljava/lang/Object;

    .line 55
    const-string v3, "RemoteControlLink"

    .line 57
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/16 v1, 0x3f9

    .line 62
    const/4 v2, 0x1

    .line 63
    :try_start_0
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    .line 66
    move-result v1

    .line 67
    const-string v4, "[RemoteControlLink]isOpenLinksdkLog:{?}"

    .line 69
    new-array v5, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v6

    .line 75
    aput-object v6, v5, v0

    .line 77
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Ldx;->c()Ldx;

    .line 83
    move-result-object v4

    .line 84
    iget-object v5, p0, Lz90;->d:Landroid/content/Context;

    .line 86
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v4, v5, v6, v1}, Ldx;->g(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 93
    invoke-static {}, Ldx;->c()Ldx;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1, v2}, Ldx;->i(Z)V

    .line 100
    iget-object v1, p0, Lz90;->d:Landroid/content/Context;

    .line 102
    invoke-virtual {p0, v1}, Lz90;->D(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    .line 109
    aput-object v1, v2, v0

    .line 111
    const-string v0, "Exception"

    .line 113
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lz90;->j:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lz90;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lz90;->d:Landroid/content/Context;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Lz90;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz90;->F()V

    .line 4
    return-void
.end method

.method public static synthetic d(Lz90;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lz90;->q(I)V

    .line 4
    return-void
.end method

.method public static synthetic e(Lz90;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lz90;->e:Z

    .line 3
    return p0
.end method

.method public static synthetic f(Lz90;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lz90;->e:Z

    .line 3
    return p1
.end method

.method public static h()V
    .locals 1

    .line 1
    sget-object v0, Lz90;->k:Lz90;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lz90;->k:Lz90;

    .line 7
    invoke-virtual {v0}, Lz90;->w()V

    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lz90;->k:Lz90;

    .line 13
    :cond_0
    return-void
.end method

.method public static j()Lz90;
    .locals 2

    .line 1
    sget-object v0, Lz90;->k:Lz90;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lz90;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lz90;->k:Lz90;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lz90;

    .line 14
    invoke-direct {v1}, Lz90;-><init>()V

    .line 17
    sput-object v1, Lz90;->k:Lz90;

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
    sget-object v0, Lz90;->k:Lz90;

    .line 26
    return-object v0
.end method

.method public static k(I)J
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p0, v1, :cond_0

    .line 5
    invoke-static {}, Luh0;->b()Luh0;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Luh0;->c()J

    .line 12
    move-result-wide v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-ne p0, v0, :cond_1

    .line 16
    invoke-static {}, Luh0;->b()Luh0;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Luh0;->a()J

    .line 23
    move-result-wide v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-wide/16 v2, 0x0

    .line 27
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p0

    .line 34
    aput-object p0, v0, v4

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    move-result-object p0

    .line 40
    aput-object p0, v0, v1

    .line 42
    const-string p0, "RemoteControlLink"

    .line 44
    const-string v1, "[getTrafficCount] type = {?},count = {?}"

    .line 46
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-wide v2
.end method

.method public static n()I
    .locals 4

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->e()Lum0;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lum0;->f()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v1, v2

    .line 23
    const-string v2, "RemoteControlLink"

    .line 25
    const-string v3, "getWifiDirectState = {?}"

    .line 27
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return v0
.end method

.method public static t()Z
    .locals 4

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->e()Lum0;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lum0;->h(Landroid/content/Context;)Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    .line 31
    const-string v2, "RemoteControlLink"

    .line 33
    const-string v3, "isLinkNetDevice = {?}"

    .line 35
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return v0
.end method

.method public static v(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "RemoteControlLink"

    .line 13
    const-string v3, "[netProxyState] state = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-nez p0, :cond_0

    .line 20
    invoke-static {}, Luh0;->b()Luh0;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Luh0;->g()V

    .line 27
    invoke-static {}, Lrv;->H()Lrv;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lrv;->I()Lxy;

    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 37
    const-string v0, "false"

    .line 39
    const-string v1, ""

    .line 41
    invoke-interface {p0, v0, v1, v1}, Lxy;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-ne p0, v0, :cond_1

    .line 47
    invoke-static {}, Luh0;->b()Luh0;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v0}, Luh0;->f(I)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x2

    .line 56
    if-ne p0, v0, :cond_2

    .line 58
    invoke-static {}, Luh0;->b()Luh0;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, v0}, Luh0;->f(I)V

    .line 65
    invoke-static {}, Lrv;->H()Lrv;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lrv;->I()Lxy;

    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_2

    .line 75
    sget-object v0, Lz90;->j:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 83
    sget-object v0, Lz90;->j:Ljava/lang/String;

    .line 85
    const-string v1, "8899"

    .line 87
    const-string v2, "true"

    .line 89
    invoke-interface {p0, v2, v0, v1}, Lxy;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "RemoteControlLink"

    .line 13
    const-string v2, "[setLinksdkLog]isOpen:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p1}, Ldz;->i(Z)V

    .line 21
    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlLink"

    .line 6
    const-string v2, "[RemoteControlLink] setOnBtStateChangeListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ldx;->c()Ldx;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ldx;->b()Lzc;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lz90;->i:Lcg;

    .line 21
    invoke-virtual {v0, v1}, Lzc;->t(Lcg;)V

    .line 24
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    new-instance v0, Lz90$f;

    .line 3
    invoke-direct {v0, p0}, Lz90$f;-><init>(Lz90;)V

    .line 6
    iput-object v0, p0, Lz90;->g:Leg;

    .line 8
    return-void
.end method

.method public final D(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lz90$b;

    .line 5
    invoke-direct {v1, p0, p1}, Lz90$b;-><init>(Lz90;Landroid/content/Context;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/Thread;

    .line 17
    new-instance v1, Lz90$d;

    .line 19
    invoke-direct {v1, p0}, Lz90$d;-><init>(Lz90;)V

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lz90;->F()V

    .line 32
    :goto_0
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->b()Lzc;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lzc;->x()V

    .line 12
    const/16 v0, 0x65

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1, v1}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyBluetoothConnectChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public G()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lz90;->c:Lii;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "RemoteControlLink"

    .line 11
    const-string v2, "stopHttpServer nanoHttpd = {?}"

    .line 13
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lz90;->c:Lii;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lf20;->n()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lz90;->c:Lii;

    .line 28
    invoke-virtual {v0}, Lf20;->y()V

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lz90;->c:Lii;

    .line 34
    :cond_1
    return-void
.end method

.method public H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz90;->c:Lii;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lf20;->i()V

    .line 9
    return-void
.end method

.method public I()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lz90$c;

    .line 5
    invoke-direct {v1, p0}, Lz90$c;-><init>(Lz90;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method public J()V
    .locals 7

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->f()Lpd0;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lpd0;->B()V

    .line 12
    const/4 v1, 0x0

    .line 13
    const/16 v2, 0x65

    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, ""

    .line 18
    const-string v5, ""

    .line 20
    const-string v6, ""

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public final K()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlLink"

    .line 6
    const-string v3, "unInitWifiDirect"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lz90;->u()Z

    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v3, v0

    .line 24
    const-string v0, "unInitWifiDirect with isWifiDirectEnable = {?}"

    .line 26
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Ldx;->c()Ldx;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ldx;->e()Lum0;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lum0;->l()Z

    .line 42
    :cond_0
    return-void
.end method

.method public L(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x4

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
    const/4 v2, 0x1

    .line 12
    aput-object p2, v1, v2

    .line 14
    const/4 v4, 0x2

    .line 15
    aput-object p3, v1, v4

    .line 17
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x3

    .line 22
    aput-object v5, v1, v6

    .line 24
    const-string v5, "RemoteControlLink"

    .line 26
    const-string v7, "wifiDirectConnectConfirm operate = {?},arg1 = {?},arg2 = {?},arg3 = {?}"

    .line 28
    invoke-static {v5, v7, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lym0;

    .line 35
    invoke-direct {p1}, Lym0;-><init>()V

    .line 38
    iput-object p2, p1, Lym0;->c:Ljava/lang/String;

    .line 40
    iput-object p3, p1, Lym0;->b:Ljava/lang/String;

    .line 42
    invoke-static {}, Ldx;->c()Ldx;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Ldx;->e()Lum0;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, p1}, Lum0;->m(Lym0;)V

    .line 53
    goto/16 :goto_0

    .line 55
    :cond_0
    if-ne p1, v2, :cond_1

    .line 57
    invoke-static {}, Ldx;->c()Ldx;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ldx;->e()Lum0;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lum0;->k()V

    .line 68
    goto/16 :goto_0

    .line 70
    :cond_1
    const/4 p3, 0x0

    .line 71
    if-ne p1, v4, :cond_2

    .line 73
    invoke-static {}, Ldx;->c()Ldx;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ldx;->e()Lum0;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p3, p4, v3}, Lum0;->b(Lym0;ZI)V

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    if-ne p1, v6, :cond_3

    .line 87
    invoke-virtual {p0, v4}, Lz90;->p(I)V

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    if-ne p1, v0, :cond_4

    .line 93
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-static {}, Ldx;->c()Ldx;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Ldx;->e()Lum0;

    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2, p1}, Lum0;->j(I)V

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 115
    aput-object p2, p1, v3

    .line 117
    const-string p2, "send onekeynavi error with arg1 = {?}"

    .line 119
    invoke-static {v5, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void

    .line 123
    :cond_4
    const/4 p2, 0x5

    .line 124
    if-ne p1, p2, :cond_5

    .line 126
    invoke-static {}, Ldx;->c()Ldx;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ldx;->e()Lum0;

    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, p3, p4, v2}, Lum0;->b(Lym0;ZI)V

    .line 137
    goto :goto_0

    .line 138
    :cond_5
    const/4 p2, 0x6

    .line 139
    if-ne p1, p2, :cond_6

    .line 141
    invoke-static {}, Ldx;->c()Ldx;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ldx;->e()Lum0;

    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, p4}, Lum0;->c(Z)V

    .line 152
    goto :goto_0

    .line 153
    :cond_6
    const/4 p2, 0x7

    .line 154
    if-ne p1, p2, :cond_8

    .line 156
    if-eqz p4, :cond_7

    .line 158
    invoke-virtual {p0}, Lz90;->r()V

    .line 161
    goto :goto_0

    .line 162
    :cond_7
    invoke-virtual {p0}, Lz90;->K()V

    .line 165
    goto :goto_0

    .line 166
    :cond_8
    const/16 p2, 0x8

    .line 168
    if-ne p1, p2, :cond_9

    .line 170
    invoke-virtual {p0}, Lz90;->z()V

    .line 173
    :cond_9
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
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
    const-string v1, "RemoteControlLink"

    .line 9
    const-string v2, "[RemoteControlLink] activeConnectBtClient:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Ldx;->c()Ldx;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ldx;->b()Lzc;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lz90;->i:Lcg;

    .line 24
    invoke-virtual {v0, v1}, Lzc;->t(Lcg;)V

    .line 27
    invoke-static {}, Ldx;->c()Ldx;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ldx;->b()Lzc;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lzc;->k(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public i()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->b()Lzc;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lzc;->l()Landroid/bluetooth/BluetoothAdapter;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->e()Lum0;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lum0;->e()Lym0;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, v0, Lym0;->c:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 24
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ldx;->c()Ldx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldx;->e()Lum0;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lum0;->e()Lym0;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 24
    return-object v0
.end method

.method public o()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lz90$e;

    .line 5
    invoke-direct {v1, p0}, Lz90$e;-><init>(Lz90;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz90;->c:Lii;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lf20;->n()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 14
    new-instance v1, Lz90$g;

    .line 16
    invoke-direct {v1, p0, p1}, Lz90$g;-><init>(Lz90;I)V

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    return-void
.end method

.method public final declared-synchronized q(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string p1, "RemoteControlLink"

    .line 4
    const-string v0, "initHttpServerInternal nanoHttpd = {?}"

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lz90;->c:Lii;

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 14
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lz90;->c:Lii;

    .line 19
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lf20;->n()Z

    .line 24
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz p1, :cond_0

    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance p1, Lii;

    .line 31
    const/16 v0, 0x2211

    .line 33
    invoke-direct {p1, v0}, Lii;-><init>(I)V

    .line 36
    iput-object p1, p0, Lz90;->c:Lii;

    .line 38
    const-string v0, "autoservice"

    .line 40
    new-instance v1, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;

    .line 42
    invoke-direct {v1}, Lcom/autonavi/amapauto/remotecontrol/server/LinkAutoServer;-><init>()V

    .line 45
    invoke-virtual {p1, v0, v1}, Lii;->B(Ljava/lang/String;Lvp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    iget-object p1, p0, Lz90;->c:Lii;

    .line 50
    invoke-virtual {p1}, Lf20;->v()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    :try_start_3
    const-string v0, "Exception"

    .line 57
    new-array v1, v3, [Ljava/lang/Object;

    .line 59
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p1

    .line 64
    const-string v0, "Exception"

    .line 66
    new-array v1, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v0, p1, v1}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public r()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlLink"

    .line 6
    const-string v3, "initWifiDirect"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lz90;->u()Z

    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v3, v0

    .line 24
    const-string v0, "initWifiDirect with isWifiDirectEnable = {?}"

    .line 26
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Ldx;->c()Ldx;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ldx;->e()Lum0;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lz90;->d:Landroid/content/Context;

    .line 41
    iget-object v2, p0, Lz90;->h:Lum0$b;

    .line 43
    invoke-virtual {v0, v1, v2}, Lum0;->g(Landroid/content/Context;Lum0$b;)Z

    .line 46
    :cond_0
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "RemoteControlLink"

    .line 4
    const-string v2, "[RemoteControlLink] initWifiServer"

    .line 6
    new-array v3, v0, [Ljava/lang/Object;

    .line 8
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ldx;->c()Ldx;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ldx;->f()Lpd0;

    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lz90;->g:Leg;

    .line 21
    invoke-virtual {v1, v2}, Lpd0;->z(Leg;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    const-string v2, "Exception"

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, v1, v0}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    :goto_0
    return-void
.end method

.method public final u()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlLink"

    .line 6
    const-string v3, "isWifiDirectEnable"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v1

    .line 15
    sget-object v3, Lzm;->w:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v3, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v3, v0

    .line 30
    const-string v0, "isWifiDirectEnable with funcOpen = {?}"

    .line 32
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return v1
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz90;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 8
    :cond_0
    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlLink"

    .line 6
    const-string v2, "[RemoteControlLink] setOnBtStateChangeListener"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ldx;->c()Ldx;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ldx;->b()Lzc;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lzc;->t(Lcg;)V

    .line 23
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz90;->g:Leg;

    .line 4
    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RemoteControlLink"

    .line 6
    const-string v2, "resetDirectOnBoot"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ldx;->c()Ldx;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ldx;->e()Lum0;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lz90;->d:Landroid/content/Context;

    .line 21
    invoke-virtual {v0, v1}, Lum0;->i(Landroid/content/Context;)V

    .line 24
    return-void
.end method
