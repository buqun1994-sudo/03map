.class public Lwm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkj;
.implements Ldn0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwm0$c;
    }
.end annotation


# static fields
.field public static r:Ljava/lang/String; = "wm0"

.field public static volatile s:Lwm0;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Lum0$a;

.field public final n:Ljava/lang/String;

.field public o:I

.field public p:Landroid/content/Context;

.field public q:Lwm0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lwm0;->a:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lwm0;->b:Z

    .line 10
    iput-boolean v1, p0, Lwm0;->c:Z

    .line 12
    iput v0, p0, Lwm0;->d:I

    .line 14
    iput-boolean v1, p0, Lwm0;->e:Z

    .line 16
    iput-boolean v1, p0, Lwm0;->f:Z

    .line 18
    iput-boolean v1, p0, Lwm0;->g:Z

    .line 20
    const/16 v0, 0xa

    .line 22
    iput v0, p0, Lwm0;->h:I

    .line 24
    const/4 v2, 0x5

    .line 25
    iput v2, p0, Lwm0;->i:I

    .line 27
    iput v0, p0, Lwm0;->j:I

    .line 29
    const/16 v0, 0x14

    .line 31
    iput v0, p0, Lwm0;->k:I

    .line 33
    iput v0, p0, Lwm0;->l:I

    .line 35
    const-string v0, "c:sdfssnsdfis:sd22"

    .line 37
    iput-object v0, p0, Lwm0;->n:Ljava/lang/String;

    .line 39
    iput v1, p0, Lwm0;->o:I

    .line 41
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lwm0;->r:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic c(Lwm0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lwm0;->e:Z

    .line 3
    return p1
.end method

.method public static synthetic f(Lwm0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lwm0;->f:Z

    .line 3
    return p1
.end method

.method public static synthetic h(Lwm0;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwm0;->s(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic i(Lwm0;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwm0;->y(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic k(Lwm0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lwm0;->g:Z

    .line 3
    return p0
.end method

.method public static synthetic l(Lwm0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lwm0;->g:Z

    .line 3
    return p1
.end method

.method public static synthetic m(Lwm0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lwm0;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic n(Lwm0;)I
    .locals 0

    .line 1
    iget p0, p0, Lwm0;->o:I

    .line 3
    return p0
.end method

.method public static r(Lum0$a;)Lwm0;
    .locals 2

    .line 1
    sget-object v0, Lwm0;->s:Lwm0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lwm0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lwm0;->s:Lwm0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lwm0;

    .line 14
    invoke-direct {v1}, Lwm0;-><init>()V

    .line 17
    sput-object v1, Lwm0;->s:Lwm0;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lwm0;->s:Lwm0;

    .line 26
    invoke-virtual {v0, p0}, Lwm0;->w(Lum0$a;)V

    .line 29
    sget-object p0, Lwm0;->s:Lwm0;

    .line 31
    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 3
    invoke-virtual {p0, v0}, Lwm0;->s(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, v0}, Lwm0;->B(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lwm0;->b:Z

    .line 14
    return-void
.end method

.method public final B(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwm0;->q:Lwm0$c;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lwm0;->q:Lwm0$c;

    .line 11
    :cond_0
    return-void
.end method

.method public b(Landroid/net/NetworkInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    sget-object v0, Lwm0;->r:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    iget v3, p0, Lwm0;->o:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 15
    const-string v3, "onCountDown checkState = {?}"

    .line 17
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v0, p0, Lwm0;->o:I

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eqz v0, :cond_c

    .line 25
    const-string v3, "wifi"

    .line 27
    if-eq v0, v1, :cond_9

    .line 29
    const/4 v5, 0x3

    .line 30
    if-eq v0, v2, :cond_6

    .line 32
    const/4 v2, 0x4

    .line 33
    if-eq v0, v5, :cond_3

    .line 35
    if-eq v0, v2, :cond_0

    .line 37
    goto/16 :goto_0

    .line 39
    :cond_0
    iget-boolean v0, p0, Lwm0;->g:Z

    .line 41
    if-nez v0, :cond_2

    .line 43
    iget v0, p0, Lwm0;->k:I

    .line 45
    if-gez v0, :cond_1

    .line 47
    const/4 v0, 0x5

    .line 48
    invoke-virtual {p0, v0}, Lwm0;->z(I)V

    .line 51
    goto/16 :goto_0

    .line 53
    :cond_1
    sub-int/2addr v0, v1

    .line 54
    iput v0, p0, Lwm0;->k:I

    .line 56
    goto/16 :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x6

    .line 59
    invoke-virtual {p0, v0}, Lwm0;->z(I)V

    .line 62
    goto/16 :goto_0

    .line 64
    :cond_3
    iget-boolean v0, p0, Lwm0;->f:Z

    .line 66
    if-nez v0, :cond_5

    .line 68
    iget v0, p0, Lwm0;->j:I

    .line 70
    if-gez v0, :cond_4

    .line 72
    invoke-virtual {p0, v2}, Lwm0;->z(I)V

    .line 75
    goto/16 :goto_0

    .line 77
    :cond_4
    sub-int/2addr v0, v1

    .line 78
    iput v0, p0, Lwm0;->j:I

    .line 80
    invoke-virtual {p0}, Lwm0;->x()V

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    iput v2, p0, Lwm0;->o:I

    .line 86
    iput-boolean v4, p0, Lwm0;->g:Z

    .line 88
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 90
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 99
    goto :goto_0

    .line 100
    :cond_6
    iget-boolean v0, p0, Lwm0;->g:Z

    .line 102
    if-nez v0, :cond_8

    .line 104
    iget v0, p0, Lwm0;->l:I

    .line 106
    if-gez v0, :cond_7

    .line 108
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 110
    invoke-virtual {p0, v0}, Lwm0;->s(Landroid/content/Context;)V

    .line 113
    goto :goto_0

    .line 114
    :cond_7
    sub-int/2addr v0, v1

    .line 115
    iput v0, p0, Lwm0;->l:I

    .line 117
    goto :goto_0

    .line 118
    :cond_8
    iput v5, p0, Lwm0;->o:I

    .line 120
    invoke-virtual {p0}, Lwm0;->x()V

    .line 123
    goto :goto_0

    .line 124
    :cond_9
    iget-boolean v0, p0, Lwm0;->e:Z

    .line 126
    if-nez v0, :cond_b

    .line 128
    iget v0, p0, Lwm0;->i:I

    .line 130
    if-gez v0, :cond_a

    .line 132
    goto :goto_0

    .line 133
    :cond_a
    sub-int/2addr v0, v1

    .line 134
    iput v0, p0, Lwm0;->i:I

    .line 136
    invoke-virtual {p0}, Lwm0;->p()V

    .line 139
    goto :goto_0

    .line 140
    :cond_b
    iput v2, p0, Lwm0;->o:I

    .line 142
    iput-boolean v4, p0, Lwm0;->g:Z

    .line 144
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 146
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 152
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 155
    goto :goto_0

    .line 156
    :cond_c
    iget v0, p0, Lwm0;->d:I

    .line 158
    if-ne v0, v1, :cond_e

    .line 160
    iget v0, p0, Lwm0;->h:I

    .line 162
    if-gez v0, :cond_d

    .line 164
    invoke-virtual {p0, v2}, Lwm0;->z(I)V

    .line 167
    goto :goto_0

    .line 168
    :cond_d
    sub-int/2addr v0, v1

    .line 169
    iput v0, p0, Lwm0;->h:I

    .line 171
    goto :goto_0

    .line 172
    :cond_e
    iput v1, p0, Lwm0;->o:I

    .line 174
    invoke-virtual {p0}, Lwm0;->p()V

    .line 177
    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(I)V
    .locals 4

    .line 1
    sget-object v0, Lwm0;->r:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 13
    const-string v2, "onP2pStateChangedAction state = {?}"

    .line 15
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iput p1, p0, Lwm0;->d:I

    .line 20
    return-void
.end method

.method public o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    sget-object v0, Lwm0;->r:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "changeDeviceName"

    .line 8
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lwm0$a;

    .line 17
    invoke-direct {v1, p0}, Lwm0$a;-><init>(Lwm0;)V

    .line 20
    const-string v2, "c:sdfssnsdfis:sd22"

    .line 22
    invoke-virtual {v0, v2, v1}, Lxm0;->e(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 25
    return-void
.end method

.method public q(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lwm0;->b:Z

    .line 3
    if-nez v0, :cond_2

    .line 5
    const-string v0, "WIFI_DIRECT_FEATURE_STATE"

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1}, Lvm0;->c(Landroid/content/Context;Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v0

    .line 18
    const-string v2, "android.hardware.wifi.direct"

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lwm0;->a:I

    .line 29
    invoke-virtual {p0, p1}, Lwm0;->v(I)V

    .line 32
    iget p1, p0, Lwm0;->a:I

    .line 34
    invoke-virtual {p0, p1}, Lwm0;->t(I)V

    .line 37
    iput-boolean v1, p0, Lwm0;->b:Z

    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lwm0;->u(Landroid/content/Context;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput v0, p0, Lwm0;->a:I

    .line 46
    invoke-virtual {p0, v0}, Lwm0;->t(I)V

    .line 49
    iput-boolean v1, p0, Lwm0;->b:Z

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget p1, p0, Lwm0;->a:I

    .line 54
    invoke-virtual {p0, p1}, Lwm0;->t(I)V

    .line 57
    :goto_0
    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object p1, Lwm0;->r:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    const-string v2, "interruptCheckOperate"

    .line 8
    invoke-static {p1, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean p1, p0, Lwm0;->c:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iput-boolean v0, p0, Lwm0;->c:Z

    .line 17
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Ldn0;->f(Ldn0$b;)V

    .line 24
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ldn0;->h()V

    .line 31
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Lxm0;->E(Lkj;)V

    .line 38
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lxm0;->C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 46
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lxm0;->D()V

    .line 53
    :cond_0
    return-void
.end method

.method public final t(I)V
    .locals 4

    .line 1
    sget-object v0, Lwm0;->r:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 13
    const-string v2, "notifyState directState = {?}"

    .line 15
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lwm0;->m:Lum0$a;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lum0$a;->m(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public final u(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwm0;->q:Lwm0$c;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lwm0$c;

    .line 7
    invoke-direct {v0, p0}, Lwm0$c;-><init>(Lwm0;)V

    .line 10
    iput-object v0, p0, Lwm0;->q:Lwm0$c;

    .line 12
    invoke-virtual {v0}, Lwm0$c;->a()Landroid/content/IntentFilter;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    :cond_0
    return-void
.end method

.method public final v(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 3
    const-string v1, "WIFI_DIRECT_FEATURE_STATE"

    .line 5
    invoke-static {v0, v1, p1}, Lvm0;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    return-void
.end method

.method public w(Lum0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm0;->m:Lum0$a;

    .line 3
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lwm0$b;

    .line 7
    invoke-direct {v1, p0}, Lwm0$b;-><init>(Lwm0;)V

    .line 10
    invoke-virtual {v0, v1}, Lxm0;->m(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 13
    return-void
.end method

.method public final y(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lwm0;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lwm0;->p:Landroid/content/Context;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lwm0;->e:Z

    .line 11
    iput-boolean v0, p0, Lwm0;->f:Z

    .line 13
    iput-boolean v0, p0, Lwm0;->g:Z

    .line 15
    const/16 v1, 0xa

    .line 17
    iput v1, p0, Lwm0;->h:I

    .line 19
    const/4 v2, 0x5

    .line 20
    iput v2, p0, Lwm0;->i:I

    .line 22
    iput v1, p0, Lwm0;->j:I

    .line 24
    const/16 v1, 0x14

    .line 26
    iput v1, p0, Lwm0;->k:I

    .line 28
    iput v1, p0, Lwm0;->l:I

    .line 30
    iput v0, p0, Lwm0;->o:I

    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lwm0;->c:Z

    .line 35
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p0}, Lxm0;->t(Lkj;)V

    .line 42
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lxm0;->p(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, p0}, Ldn0;->c(Ldn0$b;)V

    .line 56
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ldn0;->g()V

    .line 63
    return-void
.end method

.method public final z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 3
    invoke-virtual {p0, v0}, Lwm0;->s(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lwm0;->p:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, v0}, Lwm0;->B(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0, p1}, Lwm0;->v(I)V

    .line 14
    invoke-virtual {p0, p1}, Lwm0;->t(I)V

    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lwm0;->b:Z

    .line 20
    return-void
.end method
