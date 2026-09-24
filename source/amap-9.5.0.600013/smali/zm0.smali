.class public Lzm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkj;
.implements Lnj;


# static fields
.field public static volatile z:Lzm0;


# instance fields
.field public a:Lap;

.field public b:Lym0;

.field public c:Z

.field public d:Landroid/os/HandlerThread;

.field public e:Landroid/os/Handler;

.field public f:Z

.field public g:Z

.field public h:Landroid/content/Context;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/util/List;

.field public w:Ljava/util/List;

.field public x:Ljava/util/Set;

.field public y:Lcn0$f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lzm0;->b:Lym0;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lzm0;->c:Z

    .line 10
    iput-boolean v0, p0, Lzm0;->f:Z

    .line 12
    iput-boolean v0, p0, Lzm0;->g:Z

    .line 14
    const-string v1, ""

    .line 16
    iput-object v1, p0, Lzm0;->i:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lzm0;->j:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lzm0;->l:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lzm0;->m:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lzm0;->n:Z

    .line 26
    const/4 v1, 0x1

    .line 27
    iput v1, p0, Lzm0;->o:I

    .line 29
    iput v0, p0, Lzm0;->p:I

    .line 31
    const/4 v2, 0x3

    .line 32
    iput v2, p0, Lzm0;->q:I

    .line 34
    iput v1, p0, Lzm0;->r:I

    .line 36
    iput-boolean v0, p0, Lzm0;->s:Z

    .line 38
    iput-boolean v0, p0, Lzm0;->t:Z

    .line 40
    iput-boolean v0, p0, Lzm0;->u:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object v0, p0, Lzm0;->v:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iput-object v0, p0, Lzm0;->w:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    .line 58
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    iput-object v0, p0, Lzm0;->x:Ljava/util/Set;

    .line 63
    new-instance v0, Lzm0$j;

    .line 65
    invoke-direct {v0, p0}, Lzm0$j;-><init>(Lzm0;)V

    .line 68
    iput-object v0, p0, Lzm0;->y:Lcn0$f;

    .line 70
    return-void
.end method

.method public static synthetic A(Lzm0;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3
    return-object p0
.end method

.method public static synthetic B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic C(Lzm0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->B0(I)V

    .line 4
    return-void
.end method

.method public static synthetic D(Lzm0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->N0(I)V

    .line 4
    return-void
.end method

.method public static synthetic E(Lzm0;Lap;)Lap;
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0;->a:Lap;

    .line 3
    return-object p1
.end method

.method public static synthetic F(Lzm0;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzm0;->O0(J)V

    .line 4
    return-void
.end method

.method public static synthetic G(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzm0;->k0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 4
    return-void
.end method

.method public static synthetic H(Lzm0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm0;->l:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic I(Lzm0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0;->l:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic J(Lzm0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm0;->m:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic K(Lzm0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0;->m:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic L(Lzm0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm0;->u:Z

    .line 3
    return p0
.end method

.method public static synthetic M(Lzm0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzm0;->u:Z

    .line 3
    return p1
.end method

.method public static synthetic N(Lzm0;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic O(Lzm0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->R0(Z)V

    .line 4
    return-void
.end method

.method public static synthetic P(Lzm0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->x0(I)V

    .line 4
    return-void
.end method

.method public static synthetic Q(Lzm0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm0;->c1()V

    .line 4
    return-void
.end method

.method public static synthetic R(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lzm0;->V0(ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 4
    return-void
.end method

.method public static synthetic S(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lzm0;->U0(ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 4
    return-void
.end method

.method public static synthetic T(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->Q0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic U(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->S0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic V(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->l0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic W(Lzm0;IZI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lzm0;->z0(IZI)V

    .line 4
    return-void
.end method

.method public static synthetic X(Lzm0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzm0;->s:Z

    .line 3
    return p1
.end method

.method public static synthetic Y(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->E0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic Z(Lzm0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->p0(I)V

    .line 4
    return-void
.end method

.method public static synthetic a0(Lzm0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm0;->Y0()V

    .line 4
    return-void
.end method

.method public static synthetic b0(Lzm0;Lym0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzm0;->i0(Lym0;I)V

    .line 4
    return-void
.end method

.method public static synthetic c0(Lzm0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm0;->W0()V

    .line 4
    return-void
.end method

.method public static synthetic d0(Lzm0;Lym0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->o0(Lym0;)V

    .line 4
    return-void
.end method

.method public static synthetic e(Lzm0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic e0(Lzm0;Lym0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzm0;->i1(Lym0;Z)V

    .line 4
    return-void
.end method

.method public static synthetic l(Lzm0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm0;->w0()V

    .line 4
    return-void
.end method

.method public static synthetic m(Lzm0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm0;->j:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static r0()Lzm0;
    .locals 2

    .line 1
    sget-object v0, Lzm0;->z:Lzm0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lzm0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lzm0;->z:Lzm0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lzm0;

    .line 14
    invoke-direct {v1}, Lzm0;-><init>()V

    .line 17
    sput-object v1, Lzm0;->z:Lzm0;

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
    sget-object v0, Lzm0;->z:Lzm0;

    .line 26
    return-object v0
.end method

.method public static synthetic s(Lzm0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0;->j:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic t(Lzm0;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm0;->q:I

    .line 3
    return p0
.end method

.method public static synthetic u(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->F0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic v(Lzm0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->g0(Z)V

    .line 4
    return-void
.end method

.method public static synthetic w(Lzm0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm0;->t0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic x(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->Z0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic y(Lzm0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm0;->s0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic z(Lzm0;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm0;->p:I

    .line 3
    return p0
.end method


# virtual methods
.method public final A0(IZI)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object p2

    .line 16
    aput-object p2, v0, p1

    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p2

    .line 23
    aput-object p2, v0, p1

    .line 25
    const/4 p1, 0x3

    .line 26
    const/4 p2, 0x0

    .line 27
    aput-object p2, v0, p1

    .line 29
    const-string p1, "WifiDirectServerHelper"

    .line 31
    const-string p2, "notifyOperateStateInternal operateType = {?},success = {?},reason = {?},observer = {?}"

    .line 33
    invoke-static {p1, p2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public final B0(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "WifiDirectServerHelper"

    .line 13
    const-string v3, "releaseSignalInternal period = {?}"

    .line 15
    invoke-static {v1, v3, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p0, v0}, Lzm0;->h0(I)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lzm0$g;

    .line 27
    invoke-direct {v0, p0}, Lzm0$g;-><init>(Lzm0;)V

    .line 30
    invoke-virtual {p0, p1, v2, v0}, Lzm0;->T0(IZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final C0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0x15

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    return-void
.end method

.method public final D0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0x14

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    return-void
.end method

.method public final E0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lzm0$o;

    .line 7
    invoke-direct {v1, p0, p1}, Lzm0$o;-><init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 10
    invoke-virtual {v0, v1}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 13
    return-void
.end method

.method public final F0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lzm0;->G0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;Z)V

    .line 5
    return-void
.end method

.method public final G0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-nez p2, :cond_0

    .line 4
    iget p2, p0, Lzm0;->q:I

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p2, v1, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lzm0;->E0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 12
    iget p2, p0, Lzm0;->q:I

    .line 14
    if-nez p2, :cond_1

    .line 16
    invoke-virtual {p0, v0}, Lzm0;->x0(I)V

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lzm0;->Z0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 22
    invoke-virtual {p0}, Lzm0;->s0()Z

    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x0

    .line 27
    if-nez p1, :cond_2

    .line 29
    invoke-virtual {p0, v0, p2}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0, p2}, Lzm0;->Q0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 36
    :goto_0
    return-void
.end method

.method public final H0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "requestConnectionInfo "

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lzm0$q;

    .line 17
    invoke-direct {v1, p0}, Lzm0$q;-><init>(Lzm0;)V

    .line 20
    invoke-virtual {v0, v1}, Lxm0;->w(Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)Z

    .line 23
    return-void
.end method

.method public final I0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lzm0;->Z0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 5
    invoke-virtual {p0, p1}, Lzm0;->P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 8
    return-void
.end method

.method public final J0()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lzm0;->w:Ljava/util/List;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    iget-object v1, p0, Lzm0;->b:Lym0;

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v1, v0, v3

    .line 14
    const-string v1, "WifiDirectServerHelper"

    .line 16
    const-string v4, "saveConnectFeatureCode clientList = {?},add device = {?}"

    .line 18
    invoke-static {v1, v4, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lzm0;->b:Lym0;

    .line 23
    if-eqz v0, :cond_3

    .line 25
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 33
    iget-object v0, p0, Lzm0;->w:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lym0;

    .line 51
    iget-object v4, p0, Lzm0;->b:Lym0;

    .line 53
    iget-object v4, v4, Lym0;->b:Ljava/lang/String;

    .line 55
    iget-object v5, v1, Lym0;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 63
    iget-object v0, p0, Lzm0;->b:Lym0;

    .line 65
    iget-object v0, v0, Lym0;->c:Ljava/lang/String;

    .line 67
    iput-object v0, v1, Lym0;->c:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    move-result-wide v4

    .line 73
    iput-wide v4, v1, Lym0;->i:J

    .line 75
    const/4 v2, 0x1

    .line 76
    :cond_1
    if-nez v2, :cond_2

    .line 78
    iget-object v0, p0, Lzm0;->b:Lym0;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    move-result-wide v1

    .line 84
    iput-wide v1, v0, Lym0;->i:J

    .line 86
    iget-object v0, p0, Lzm0;->w:Ljava/util/List;

    .line 88
    iget-object v1, p0, Lzm0;->b:Lym0;

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lzm0;->x:Ljava/util/Set;

    .line 95
    iget-object v1, p0, Lzm0;->b:Lym0;

    .line 97
    iget-object v1, v1, Lym0;->b:Ljava/lang/String;

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    iget-object v0, p0, Lzm0;->h:Landroid/content/Context;

    .line 104
    iget-object v1, p0, Lzm0;->w:Ljava/util/List;

    .line 106
    invoke-static {v0, v1}, Len0;->r(Landroid/content/Context;Ljava/util/List;)V

    .line 109
    :cond_3
    return-void
.end method

.method public final K0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lzm0;->C0()V

    .line 9
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 11
    mul-int/lit16 p1, p1, 0x3e8

    .line 13
    int-to-long v1, p1

    .line 14
    const/16 p1, 0x15

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    return-void
.end method

.method public final L0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lzm0;->D0()V

    .line 9
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 11
    mul-int/lit16 p1, p1, 0x3e8

    .line 13
    int-to-long v1, p1

    .line 14
    const/16 p1, 0x14

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    return-void
.end method

.method public final declared-synchronized M0(III)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, p2}, Lzm0;->A0(IZI)V

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    iput p2, p1, Landroid/os/Message;->what:I

    .line 17
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 19
    iget-object p2, p0, Lzm0;->e:Landroid/os/Handler;

    .line 21
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_0
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

.method public final N0(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0x16

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 13
    mul-int/lit16 p1, p1, 0x3e8

    .line 15
    int-to-long v2, p1

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    return-void
.end method

.method public final O0(J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const/4 p2, 0x1

    .line 7
    new-array p2, p2, [Ljava/lang/Object;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    aput-object p1, p2, v0

    .line 16
    const-string p1, "WifiDirectServerHelper"

    .line 18
    const-string v0, "sleep error {?}"

    .line 20
    invoke-static {p1, v0, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :goto_0
    return-void
.end method

.method public final P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "start startDiscoveryPeers"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lzm0$m;

    .line 17
    invoke-direct {v1, p0, p1}, Lzm0$m;-><init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 20
    invoke-virtual {v0, v1}, Lxm0;->m(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 23
    return-void
.end method

.method public final Q0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    iget-object v3, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 21
    if-eqz v3, :cond_2

    .line 23
    invoke-static {v3}, Len0;->n(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v1, v0

    .line 31
    :goto_2
    if-eqz v1, :cond_3

    .line 33
    new-instance v0, Lzm0$c;

    .line 35
    invoke-direct {v0, p0, p1}, Lzm0$c;-><init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 38
    invoke-virtual {p0, v2, v0}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    invoke-virtual {p0, p1}, Lzm0;->P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 45
    :goto_3
    return-void
.end method

.method public final R0(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lzm0;->a1()V

    .line 6
    :cond_0
    iget-object p1, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Lzm0;->E0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p1}, Len0;->n(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v2, v1, [Ljava/lang/Object;

    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object p1, v2, v3

    .line 25
    iget-object v3, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 27
    const/4 v4, 0x1

    .line 28
    aput-object v3, v2, v4

    .line 30
    const-string v3, "WifiDirectServerHelper"

    .line 32
    const-string v5, "startHandShake with directDevice = {?} && p2pdevice = {?}"

    .line 34
    invoke-static {v3, v5, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    if-nez p1, :cond_2

    .line 39
    invoke-virtual {p0, v0}, Lzm0;->E0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lzm0;->i:Ljava/lang/String;

    .line 45
    iput-object v0, p1, Lym0;->b:Ljava/lang/String;

    .line 47
    iget v0, p0, Lzm0;->p:I

    .line 49
    const/4 v2, 0x3

    .line 50
    if-ne v0, v2, :cond_3

    .line 52
    invoke-static {p0, p1, v4}, Len0;->u(Lnj;Lym0;Z)Lap;

    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lzm0;->a:Lap;

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    if-ne v0, v1, :cond_4

    .line 61
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lzm0$l;

    .line 67
    invoke-direct {v1, p0, p1}, Lzm0$l;-><init>(Lzm0;Lym0;)V

    .line 70
    invoke-virtual {v0, v1}, Lxm0;->x(Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)Z

    .line 73
    :cond_4
    :goto_0
    return-void
.end method

.method public final S0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    .line 1
    iget v0, p0, Lzm0;->p:I

    .line 3
    const/16 v1, 0x78

    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 10
    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 22
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v2}, Lzm0;->q0(I)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v1}, Lzm0;->N0(I)V

    .line 38
    iget v0, p0, Lzm0;->p:I

    .line 40
    if-ne v0, v2, :cond_1

    .line 42
    invoke-virtual {p0, p1}, Lzm0;->P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lzm0;->l0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_0
    new-instance v0, Lzm0$d;

    .line 52
    invoke-direct {v0, p0, p1}, Lzm0$d;-><init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 55
    invoke-virtual {p0, v2, v0}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lzm0;->l:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_7

    .line 67
    iget-object v0, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 69
    const/4 v3, 0x1

    .line 70
    if-eqz v0, :cond_6

    .line 72
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_6

    .line 80
    iget-object v0, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 82
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v3}, Lzm0;->q0(I)Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {p0, v1}, Lzm0;->N0(I)V

    .line 98
    iget v0, p0, Lzm0;->p:I

    .line 100
    if-ne v0, v2, :cond_5

    .line 102
    invoke-virtual {p0, p1}, Lzm0;->P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {p0, p1}, Lzm0;->l0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    :goto_1
    new-instance v0, Lzm0$e;

    .line 112
    invoke-direct {v0, p0, p1}, Lzm0$e;-><init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 115
    invoke-virtual {p0, v3, v0}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    invoke-virtual {p0, v1}, Lzm0;->N0(I)V

    .line 122
    iget v0, p0, Lzm0;->p:I

    .line 124
    if-ne v0, v2, :cond_8

    .line 126
    invoke-virtual {p0, p1}, Lzm0;->P0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 129
    goto :goto_2

    .line 130
    :cond_8
    invoke-virtual {p0, p1}, Lzm0;->l0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 133
    :goto_2
    return-void
.end method

.method public final declared-synchronized T0(IZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "WifiDirectServerHelper"

    .line 4
    const-string v1, "startServerDiscovery period = {?},needChoose = {?},mConnectState = {?}\uff0cactionListener = {?}"

    .line 6
    const/4 v2, 0x4

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 23
    iget v3, p0, Lzm0;->q:I

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x2

    .line 30
    aput-object v3, v2, v5

    .line 32
    const/4 v3, 0x3

    .line 33
    aput-object p3, v2, v3

    .line 35
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget v0, p0, Lzm0;->q:I

    .line 40
    if-ne v0, v5, :cond_1

    .line 42
    if-eqz p3, :cond_0

    .line 44
    invoke-interface {p3}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_1
    if-gtz p1, :cond_3

    .line 51
    if-eqz p3, :cond_2

    .line 53
    :try_start_1
    invoke-interface {p3, v4}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_2
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    if-nez p2, :cond_6

    .line 61
    :try_start_2
    invoke-virtual {p0}, Lzm0;->t0()Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_5

    .line 67
    invoke-virtual {p0, p1}, Lzm0;->L0(I)V

    .line 70
    if-eqz p3, :cond_4

    .line 72
    invoke-interface {p3}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 75
    :cond_4
    invoke-virtual {p0, v0}, Lzm0;->I0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :cond_5
    :try_start_3
    invoke-virtual {p0, p1}, Lzm0;->L0(I)V

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    invoke-virtual {p0, p2}, Lzm0;->g0(Z)V

    .line 87
    invoke-virtual {p0}, Lzm0;->s0()Z

    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_9

    .line 93
    invoke-virtual {p0}, Lzm0;->t0()Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_7

    .line 99
    goto :goto_1

    .line 100
    :cond_7
    invoke-virtual {p0, p1}, Lzm0;->K0(I)V

    .line 103
    :goto_0
    iget-object p1, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 105
    if-nez p1, :cond_8

    .line 107
    invoke-virtual {p0, v4, v0}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 110
    :cond_8
    invoke-virtual {p0, p2, p3, v3}, Lzm0;->U0(ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :cond_9
    :goto_1
    :try_start_4
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 118
    move-result-object p2

    .line 119
    new-instance v1, Lzm0$s;

    .line 121
    invoke-direct {v1, p0}, Lzm0$s;-><init>(Lzm0;)V

    .line 124
    invoke-virtual {p2, v1}, Lxm0;->y(Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)Z

    .line 127
    if-eqz p3, :cond_a

    .line 129
    invoke-interface {p3}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 132
    :cond_a
    invoke-virtual {p0, v0}, Lzm0;->I0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 135
    invoke-virtual {p0, p1}, Lzm0;->K0(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p0

    .line 142
    throw p1
.end method

.method public final U0(ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "startServerDiscoveryRemoveGroup"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lzm0$a;

    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lzm0$a;-><init>(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 16
    invoke-virtual {p0, v0}, Lzm0;->E0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 19
    return-void
.end method

.method public final V0(ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 1

    .line 1
    new-instance v0, Lzm0$b;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lzm0$b;-><init>(Lzm0;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 6
    invoke-virtual {p0, v0}, Lzm0;->Z0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 9
    return-void
.end method

.method public final W0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectServerHelper"

    .line 6
    const-string v3, "stopConnectToDeviceInternal"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-virtual {p0, v1}, Lzm0;->h0(I)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3

    .line 18
    iget v2, p0, Lzm0;->q:I

    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v2, v3, :cond_0

    .line 23
    invoke-virtual {p0, v1, v0, v0}, Lzm0;->z0(IZI)V

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v2, p0, Lzm0;->j:Ljava/lang/String;

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 35
    iget-object v2, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 37
    if-eqz v2, :cond_1

    .line 39
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lzm0;->j:Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lzm0;->b1()V

    .line 52
    invoke-virtual {p0}, Lzm0;->X0()V

    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-virtual {p0, v2}, Lzm0;->x0(I)V

    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p0, v1, v2, v0}, Lzm0;->z0(IZI)V

    .line 63
    :cond_1
    const-string v0, ""

    .line 65
    iput-object v0, p0, Lzm0;->j:Ljava/lang/String;

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v1, v0, v0}, Lzm0;->z0(IZI)V

    .line 71
    :cond_3
    :goto_0
    return-void
.end method

.method public X0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "stopDiscoveryDevices "

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x3

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p0, v2, v0, v1}, Lzm0;->M0(III)V

    .line 17
    return-void
.end method

.method public final Y0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectServerHelper"

    .line 6
    const-string v3, "stopDiscoveryDevicesInternal"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v1}, Lzm0;->h0(I)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 18
    iget v2, p0, Lzm0;->q:I

    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v2, v3, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, v0}, Lzm0;->g0(Z)V

    .line 27
    invoke-virtual {p0}, Lzm0;->t0()Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0, v2}, Lzm0;->Z0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 37
    :cond_1
    invoke-virtual {p0, v1, v1, v0}, Lzm0;->z0(IZI)V

    .line 40
    :cond_2
    return-void
.end method

.method public final Z0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "start stopDiscoveryPeers"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lzm0$n;

    .line 17
    invoke-direct {v1, p0, p1}, Lzm0$n;-><init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 20
    invoke-virtual {v0, v1}, Lxm0;->C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 23
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 3
    const-string v1, "onDisconnect"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    const-string v3, "WifiDirectServerHelper"

    .line 13
    invoke-static {v3, v1, v0, v2}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    iget v0, p0, Lzm0;->q:I

    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lzm0;->a1()V

    .line 24
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lzm0$i;

    .line 30
    invoke-direct {v1, p0}, Lzm0$i;-><init>(Lzm0;)V

    .line 33
    invoke-virtual {v0, v1}, Lxm0;->w(Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public final a1()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "stopHandShake"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lzm0;->a:Lap;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lap;->e()V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lzm0;->a:Lap;

    .line 21
    :cond_0
    return-void
.end method

.method public b(Landroid/net/NetworkInfo;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v2, "WifiDirectServerHelper"

    .line 9
    const-string v3, "onConnectionInfoChangedAction {?}"

    .line 11
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 17
    move-result v1

    .line 18
    iput-boolean v1, p0, Lzm0;->n:Z

    .line 20
    iget v1, p0, Lzm0;->p:I

    .line 22
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x2

    .line 24
    if-ne v1, v3, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 32
    iget p1, p0, Lzm0;->q:I

    .line 34
    if-eq p1, v3, :cond_5

    .line 36
    invoke-virtual {p0, v0}, Lzm0;->R0(Z)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, v2}, Lzm0;->x0(I)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 47
    move-result p1

    .line 48
    const/4 v1, 0x0

    .line 49
    if-nez p1, :cond_4

    .line 51
    iget-boolean p1, p0, Lzm0;->u:Z

    .line 53
    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p0}, Lzm0;->t0()Z

    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_2

    .line 61
    invoke-virtual {p0}, Lzm0;->s0()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 67
    :cond_2
    invoke-virtual {p0, v1, v0}, Lzm0;->j0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;Z)V

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget p1, p0, Lzm0;->q:I

    .line 73
    if-ne p1, v3, :cond_5

    .line 75
    invoke-virtual {p0, v2}, Lzm0;->x0(I)V

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v1}, Lxm0;->z(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 86
    invoke-virtual {p0}, Lzm0;->H0()V

    .line 89
    :cond_5
    :goto_0
    return-void
.end method

.method public b1()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectServerHelper"

    .line 6
    const-string v2, "stopReleaseSignal"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2, v0, v1}, Lzm0;->M0(III)V

    .line 17
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    invoke-static {}, Ldv;->a()Ldv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ldv;->b(I)V

    .line 8
    return-void
.end method

.method public final c1()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectServerHelper"

    .line 6
    const-string v3, "stopReleaseSignalInternal"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-virtual {p0, v1}, Lzm0;->h0(I)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    iget v2, p0, Lzm0;->q:I

    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v2, v3, :cond_0

    .line 23
    invoke-virtual {p0, v1, v0, v0}, Lzm0;->z0(IZI)V

    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lzm0;->D0()V

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p0, v2}, Lzm0;->F0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p0, v1, v2, v0}, Lzm0;->z0(IZI)V

    .line 38
    :cond_1
    return-void
.end method

.method public d(Landroid/net/wifi/p2p/WifiP2pDevice;)V
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
    const-string v1, "WifiDirectServerHelper"

    .line 9
    const-string v2, "onThisDeviceChangedAction {?}"

    .line 11
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 16
    iget v0, p0, Lzm0;->p:I

    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_0

    .line 21
    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 23
    const/4 v0, 0x3

    .line 24
    if-ne p1, v0, :cond_0

    .line 26
    new-instance p1, Lzm0$r;

    .line 28
    invoke-direct {p1, p0}, Lzm0$r;-><init>(Lzm0;)V

    .line 31
    invoke-virtual {p0, v1, p1}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method public final d1(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public final e1(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x9

    return p1

    :cond_1
    const/16 p1, 0x8

    return p1
.end method

.method public f(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lzm0;->q0(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lzm0;->l:Ljava/lang/String;

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    iget-object v2, p0, Lzm0;->m:Ljava/lang/String;

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v2, v1, v4

    .line 18
    const/4 v2, 0x2

    .line 19
    aput-object v0, v1, v2

    .line 21
    const/4 v2, 0x3

    .line 22
    iget-object v5, p0, Lzm0;->i:Ljava/lang/String;

    .line 24
    aput-object v5, v1, v2

    .line 26
    const/4 v2, 0x4

    .line 27
    iget-object v5, p0, Lzm0;->j:Ljava/lang/String;

    .line 29
    aput-object v5, v1, v2

    .line 31
    const-string v2, "WifiDirectServerHelper"

    .line 33
    const-string v5, "changeDeviceName mSSID = {?},mPassword = {?},newDeviceName = {?},mFeatureCode = {?},mInviteFeatureCode = {?}"

    .line 35
    invoke-static {v2, v5, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    if-nez p1, :cond_1

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4

    .line 46
    if-eqz p2, :cond_0

    .line 48
    invoke-interface {p2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    if-ne p1, v4, :cond_4

    .line 54
    iget-object p1, p0, Lzm0;->m:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_2

    .line 62
    iget-object p1, p0, Lzm0;->l:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 76
    :cond_2
    if-eqz p2, :cond_3

    .line 78
    invoke-interface {p2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 81
    :cond_3
    return-void

    .line 82
    :cond_4
    iget-object p1, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 84
    if-eqz p1, :cond_6

    .line 86
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Len0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    new-array v1, v4, [Ljava/lang/Object;

    .line 94
    aput-object p1, v1, v3

    .line 96
    const-string v3, "oldDeviceName = {?}"

    .line 98
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_6

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 113
    if-eqz p2, :cond_5

    .line 115
    invoke-interface {p2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 118
    :cond_5
    return-void

    .line 119
    :cond_6
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v0, p2}, Lxm0;->e(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 126
    return-void
.end method

.method public declared-synchronized f1()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "WifiDirectServerHelper"

    .line 4
    const-string v1, "unInit with hasInit = {?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    iget-boolean v4, p0, Lzm0;->f:Z

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    aput-object v4, v3, v5

    .line 18
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-boolean v0, p0, Lzm0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_0

    .line 25
    monitor-exit p0

    .line 26
    return v5

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :try_start_1
    invoke-static {v0}, Lcn0;->w(Landroid/content/Context;)Lcn0;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcn0;->F()V

    .line 35
    invoke-virtual {p0}, Lzm0;->g1()V

    .line 38
    invoke-virtual {p0}, Lzm0;->h1()V

    .line 41
    iget-object v1, p0, Lzm0;->v:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    iget-object v1, p0, Lzm0;->w:Ljava/util/List;

    .line 48
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 51
    iget-object v1, p0, Lzm0;->x:Ljava/util/Set;

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 56
    iput-object v0, p0, Lzm0;->b:Lym0;

    .line 58
    const/4 v1, 0x3

    .line 59
    iput v1, p0, Lzm0;->q:I

    .line 61
    iput-object v0, p0, Lzm0;->h:Landroid/content/Context;

    .line 63
    const-string v0, ""

    .line 65
    iput-object v0, p0, Lzm0;->i:Ljava/lang/String;

    .line 67
    const-string v0, ""

    .line 69
    iput-object v0, p0, Lzm0;->j:Ljava/lang/String;

    .line 71
    iput-boolean v5, p0, Lzm0;->f:Z

    .line 73
    iput-boolean v5, p0, Lzm0;->g:Z

    .line 75
    iput-boolean v5, p0, Lzm0;->c:Z

    .line 77
    iput-boolean v5, p0, Lzm0;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    .line 80
    return v2

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    monitor-exit p0

    .line 83
    throw v0
.end method

.method public g(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "WifiDirectServerHelper"

    .line 13
    const-string v3, "onP2pDiscoveryChangedAction {?}"

    .line 15
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iput p1, p0, Lzm0;->r:I

    .line 20
    if-ne p1, v0, :cond_0

    .line 22
    iget-boolean p1, p0, Lzm0;->s:Z

    .line 24
    if-nez p1, :cond_0

    .line 26
    const/16 p1, 0xa

    .line 28
    invoke-virtual {p0, p1}, Lzm0;->N0(I)V

    .line 31
    :cond_0
    return-void
.end method

.method public final g0(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lzm0;->t:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 20
    const-string v1, "WifiDirectServerHelper"

    .line 22
    const-string v3, "changeDiscoveryMode mDiscoveryMode = {?},discoveryMode = {?}"

    .line 24
    invoke-static {v1, v3, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-boolean v0, p0, Lzm0;->t:Z

    .line 29
    if-eq v0, p1, :cond_1

    .line 31
    iput-boolean p1, p0, Lzm0;->t:Z

    .line 33
    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lzm0;->C0()V

    .line 38
    :cond_0
    iget-boolean p1, p0, Lzm0;->t:Z

    .line 40
    xor-int/2addr p1, v2

    .line 41
    invoke-virtual {p0, p1}, Lzm0;->y0(I)V

    .line 44
    :cond_1
    return-void
.end method

.method public final g1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lzm0;->e:Landroid/os/Handler;

    .line 11
    :cond_0
    iget-object v0, p0, Lzm0;->d:Landroid/os/HandlerThread;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 18
    iput-object v1, p0, Lzm0;->d:Landroid/os/HandlerThread;

    .line 20
    :cond_1
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h0(I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lzm0;->f:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, v1, v1}, Lzm0;->A0(IZI)V

    .line 9
    return v1

    .line 10
    :cond_0
    iget v0, p0, Lzm0;->o:I

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Lzm0;->d1(I)I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lzm0;->A0(IZI)V

    .line 22
    return v1

    .line 23
    :cond_1
    iget-boolean v3, p0, Lzm0;->g:Z

    .line 25
    if-nez v3, :cond_2

    .line 27
    invoke-virtual {p0, p1, v1, v1}, Lzm0;->A0(IZI)V

    .line 30
    return v1

    .line 31
    :cond_2
    const/4 v3, 0x6

    .line 32
    if-eq v0, v3, :cond_3

    .line 34
    invoke-virtual {p0, v0}, Lzm0;->d1(I)I

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, p1, v1, v0}, Lzm0;->A0(IZI)V

    .line 41
    return v1

    .line 42
    :cond_3
    iget-object v0, p0, Lzm0;->h:Landroid/content/Context;

    .line 44
    invoke-static {v0}, Lrm0;->v(Landroid/content/Context;)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 50
    invoke-virtual {p0, p1, v1, v3}, Lzm0;->A0(IZI)V

    .line 53
    return v1

    .line 54
    :cond_4
    iget-object v0, p0, Lzm0;->h:Landroid/content/Context;

    .line 56
    invoke-static {v0}, Lrm0;->s(Landroid/content/Context;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_5

    .line 62
    const/4 v0, 0x7

    .line 63
    invoke-virtual {p0, p1, v1, v0}, Lzm0;->A0(IZI)V

    .line 66
    return v1

    .line 67
    :cond_5
    return v2
.end method

.method public final declared-synchronized h1()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "WifiDirectServerHelper"

    .line 4
    const-string v1, "unInitWifiDirectObserver with mHasInitDirectObserver = {?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    iget-boolean v3, p0, Lzm0;->c:Z

    .line 11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 18
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-boolean v0, p0, Lzm0;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 35
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lxm0;->C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 42
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lxm0;->E(Lkj;)V

    .line 49
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lxm0;->D()V

    .line 56
    iput-boolean v4, p0, Lzm0;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p0

    .line 62
    throw v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final i0(Lym0;I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v0, v3

    .line 14
    const-string v2, "WifiDirectServerHelper"

    .line 16
    const-string v4, "connectToDeviceInternal connectDevice = {?},timeOut = {?}"

    .line 18
    invoke-static {v2, v4, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-virtual {p0, v0}, Lzm0;->h0(I)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 28
    if-eqz p1, :cond_1

    .line 30
    iget-object v2, p1, Lym0;->b:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-boolean v3, p0, Lzm0;->s:Z

    .line 41
    iget-object p1, p1, Lym0;->b:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lzm0;->j:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v1}, Lzm0;->x0(I)V

    .line 48
    invoke-virtual {p0}, Lzm0;->D0()V

    .line 51
    invoke-virtual {p0, v1}, Lzm0;->g0(Z)V

    .line 54
    new-instance p1, Lzm0$h;

    .line 56
    invoke-direct {p1, p0}, Lzm0$h;-><init>(Lzm0;)V

    .line 59
    invoke-virtual {p0, p2, v1, p1}, Lzm0;->T0(IZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1, v1}, Lzm0;->z0(IZI)V

    .line 66
    :cond_2
    :goto_1
    return-void
.end method

.method public final i1(Lym0;Z)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v3, v1, v4

    .line 14
    const-string v3, "WifiDirectServerHelper"

    .line 16
    const-string v5, "unbindDeviceInternal device = {?},fromUser = {?}"

    .line 18
    invoke-static {v3, v5, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const/4 v1, 0x7

    .line 22
    invoke-virtual {p0, v1}, Lzm0;->h0(I)Z

    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_8

    .line 28
    if-eqz p1, :cond_7

    .line 30
    iget-object v5, p1, Lym0;->b:Ljava/lang/String;

    .line 32
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 38
    goto/16 :goto_1

    .line 40
    :cond_0
    iget-object v5, p0, Lzm0;->w:Ljava/util/List;

    .line 42
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v5

    .line 46
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v6

    .line 50
    const/4 v7, 0x0

    .line 51
    if-eqz v6, :cond_2

    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lym0;

    .line 59
    iget-object v8, v6, Lym0;->b:Ljava/lang/String;

    .line 61
    iget-object v9, p1, Lym0;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object v6, v7

    .line 71
    :goto_0
    if-eqz v6, :cond_3

    .line 73
    new-array v5, v0, [Ljava/lang/Object;

    .line 75
    iget-object v8, p0, Lzm0;->w:Ljava/util/List;

    .line 77
    aput-object v8, v5, v2

    .line 79
    aput-object v6, v5, v4

    .line 81
    const-string v8, "removeDevice clientList = {?},remove device = {?}"

    .line 83
    invoke-static {v3, v8, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v5, p0, Lzm0;->w:Ljava/util/List;

    .line 88
    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v5, p0, Lzm0;->x:Ljava/util/Set;

    .line 93
    iget-object v6, v6, Lym0;->b:Ljava/lang/String;

    .line 95
    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v5, p0, Lzm0;->h:Landroid/content/Context;

    .line 100
    iget-object v6, p0, Lzm0;->w:Ljava/util/List;

    .line 102
    invoke-static {v5, v6}, Len0;->r(Landroid/content/Context;Ljava/util/List;)V

    .line 105
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    aput-object p1, v0, v2

    .line 109
    iget-object v5, p0, Lzm0;->j:Ljava/lang/String;

    .line 111
    aput-object v5, v0, v4

    .line 113
    const-string v5, "unbindDevice unbindDevice = {?},mInviteFeatureCode = {?}"

    .line 115
    invoke-static {v3, v5, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p1, Lym0;->b:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lzm0;->j:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v0

    .line 126
    const-string v3, ""

    .line 128
    if-eqz v0, :cond_4

    .line 130
    iput-object v3, p0, Lzm0;->j:Ljava/lang/String;

    .line 132
    :cond_4
    iget-object v0, p0, Lzm0;->b:Lym0;

    .line 134
    if-eqz v0, :cond_5

    .line 136
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_5

    .line 144
    iget-object v0, p0, Lzm0;->b:Lym0;

    .line 146
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 148
    iget-object p1, p1, Lym0;->b:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_5

    .line 156
    iget-object p1, p0, Lzm0;->a:Lap;

    .line 158
    if-eqz p1, :cond_5

    .line 160
    if-eqz p2, :cond_5

    .line 162
    invoke-virtual {p0}, Lzm0;->D0()V

    .line 165
    iget-object p1, p0, Lzm0;->a:Lap;

    .line 167
    invoke-interface {p1}, Lap;->c()V

    .line 170
    :cond_5
    if-nez p2, :cond_6

    .line 172
    iput-object v3, p0, Lzm0;->j:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lzm0;->D0()V

    .line 177
    invoke-virtual {p0, v7, v4}, Lzm0;->G0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;Z)V

    .line 180
    goto :goto_2

    .line 181
    :cond_6
    const/4 p1, 0x3

    .line 182
    invoke-virtual {p0, p1, v7}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 185
    invoke-virtual {p0, v1, v4, v2}, Lzm0;->z0(IZI)V

    .line 188
    goto :goto_2

    .line 189
    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    .line 191
    invoke-virtual {p0, v1, v2, v2}, Lzm0;->z0(IZI)V

    .line 194
    :cond_8
    :goto_2
    return-void
.end method

.method public j(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "WifiDirectServerHelper"

    .line 13
    const-string v1, "onP2pStateChangedAction {?}"

    .line 15
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public final j0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    const/4 p2, 0x3

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lzm0;->k0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 9
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method

.method public final k0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .locals 1

    .line 1
    new-instance v0, Lzm0$p;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lzm0$p;-><init>(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 6
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lxm0;->B(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 14
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lxm0;->i(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 21
    return-void
.end method

.method public final l0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2

    .line 1
    iget v0, p0, Lzm0;->p:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lzm0;->u:Z

    .line 10
    invoke-virtual {p0, p1, v0}, Lzm0;->j0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;Z)V

    .line 13
    return-void
.end method

.method public final m0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p1, ""

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string v0, "DIRECT-"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    const/4 v0, 0x7

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    :cond_1
    return-object p1
.end method

.method public n(Ljava/lang/String;Lym0;)V
    .locals 2

    .line 1
    invoke-static {}, Lsm0;->b()Lsm0;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "8721"

    .line 7
    iget-object p2, p2, Lym0;->l:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1, v1, p2}, Lsm0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ldv;->a()Ldv;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Ldv;->c(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public n0(II)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v2, v1, v3

    .line 18
    const-string v2, "WifiDirectServerHelper"

    .line 20
    const-string v4, "dealWifiDirectStateNotify directState = {?},serverType = {?}"

    .line 22
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iput p1, p0, Lzm0;->o:I

    .line 27
    iput p2, p0, Lzm0;->p:I

    .line 29
    const/4 p2, 0x6

    .line 30
    if-ne p1, p2, :cond_1

    .line 32
    iget-object p1, p0, Lzm0;->h:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lcn0;->w(Landroid/content/Context;)Lcn0;

    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lzm0;->y:Lcn0$f;

    .line 40
    invoke-virtual {p1, p2}, Lcn0;->A(Lcn0$f;)V

    .line 43
    new-instance p1, Ljava/io/File;

    .line 45
    const-string p2, "/sdcard/test_direct_normal.txt"

    .line 47
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 56
    iput v0, p0, Lzm0;->p:I

    .line 58
    :cond_0
    invoke-virtual {p0}, Lzm0;->v0()Z

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-ne p1, v3, :cond_2

    .line 64
    iget-object p1, p0, Lzm0;->h:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Lcn0;->w(Landroid/content/Context;)Lcn0;

    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lzm0;->y:Lcn0$f;

    .line 72
    invoke-virtual {p1, p2}, Lcn0;->t(Lcn0$f;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lzm0;->h:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Lcn0;->w(Landroid/content/Context;)Lcn0;

    .line 81
    move-result-object p1

    .line 82
    iget-object p2, p0, Lzm0;->y:Lcn0$f;

    .line 84
    invoke-virtual {p1, p2}, Lcn0;->A(Lcn0$f;)V

    .line 87
    iput-boolean v3, p0, Lzm0;->g:Z

    .line 89
    :goto_0
    return-void
.end method

.method public o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lzm0;->t:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 14
    aput-object p1, v0, v1

    .line 16
    const-string v3, "WifiDirectServerHelper"

    .line 18
    const-string v4, "mDiscoveryMode = {?}\uff0cpeers = {?}"

    .line 20
    invoke-static {v3, v4, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-boolean v0, p0, Lzm0;->t:Z

    .line 25
    if-eqz v0, :cond_5

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lzm0;->v:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p1

    .line 57
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 69
    invoke-static {v0}, Len0;->e(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_3

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object v3, p0, Lzm0;->v:Ljava/util/List;

    .line 78
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    if-nez v2, :cond_2

    .line 83
    iget-object v3, p0, Lzm0;->x:Ljava/util/Set;

    .line 85
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 87
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 93
    const/4 v2, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iget-object p1, p0, Lzm0;->v:Ljava/util/List;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 100
    :cond_5
    return-void
.end method

.method public final o0(Lym0;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string p1, "WifiDirectServerHelper"

    .line 9
    const-string v3, "disconnectDeviceInternal device = {?}"

    .line 11
    invoke-static {p1, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/4 p1, 0x6

    .line 15
    invoke-virtual {p0, p1}, Lzm0;->h0(I)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    iget v1, p0, Lzm0;->q:I

    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq v1, v3, :cond_0

    .line 26
    invoke-virtual {p0, p1, v2, v2}, Lzm0;->z0(IZI)V

    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lzm0;->D0()V

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1}, Lzm0;->Z0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 37
    invoke-virtual {p0, v1}, Lzm0;->E0(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 40
    invoke-virtual {p0, p1, v0, v2}, Lzm0;->z0(IZI)V

    .line 43
    :cond_1
    return-void
.end method

.method public p(Lym0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lzm0;->w:Ljava/util/List;

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
    const/4 v2, 0x1

    .line 12
    const-string v3, "WifiDirectServerHelper"

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lym0;

    .line 23
    iget-object v5, v1, Lym0;->b:Ljava/lang/String;

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_0

    .line 31
    iget-object v1, v1, Lym0;->b:Ljava/lang/String;

    .line 33
    iget-object v5, p1, Lym0;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 41
    const-string v0, "in mConnectedDevicesHistory"

    .line 43
    new-array v1, v4, [Ljava/lang/Object;

    .line 45
    invoke-static {v3, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-nez v0, :cond_2

    .line 53
    iget-object v1, p0, Lzm0;->j:Ljava/lang/String;

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lzm0;->j:Ljava/lang/String;

    .line 63
    iget-object v5, p1, Lym0;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 71
    const-string v0, "invite device"

    .line 73
    new-array v1, v4, [Ljava/lang/Object;

    .line 75
    invoke-static {v3, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v2, v0

    .line 80
    :goto_1
    if-eqz v2, :cond_4

    .line 82
    iput-object p1, p0, Lzm0;->b:Lym0;

    .line 84
    iget-object p1, p0, Lzm0;->a:Lap;

    .line 86
    if-eqz p1, :cond_3

    .line 88
    invoke-interface {p1, v4}, Lap;->b(I)V

    .line 91
    :cond_3
    const/4 p1, 0x2

    .line 92
    invoke-virtual {p0, p1}, Lzm0;->x0(I)V

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iget-object p1, p0, Lzm0;->a:Lap;

    .line 98
    if-eqz p1, :cond_5

    .line 100
    const/4 v0, 0x3

    .line 101
    invoke-interface {p1, v0}, Lap;->b(I)V

    .line 104
    :cond_5
    :goto_2
    return-void
.end method

.method public final p0(I)V
    .locals 5

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
    const-string v2, "WifiDirectServerHelper"

    .line 13
    const-string v4, "discoveryDevicesInternal period = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v3}, Lzm0;->h0(I)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lzm0$f;

    .line 26
    invoke-direct {v1, p0}, Lzm0$f;-><init>(Lzm0;)V

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Lzm0;->T0(IZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 32
    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    return-void
.end method

.method public final q0(I)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eqz p1, :cond_8

    .line 5
    const-string v2, ":"

    .line 7
    const-string v3, ""

    .line 9
    if-eq p1, v0, :cond_6

    .line 11
    if-eq p1, v1, :cond_4

    .line 13
    const/4 v4, 0x3

    .line 14
    if-eq p1, v4, :cond_0

    .line 16
    goto/16 :goto_0

    .line 18
    :cond_0
    iget-object v4, p0, Lzm0;->k:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 20
    if-nez v4, :cond_1

    .line 22
    goto/16 :goto_0

    .line 24
    :cond_1
    iget-object v3, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_2

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Lzm0;->i:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 55
    goto/16 :goto_0

    .line 57
    :cond_2
    iget v2, p0, Lzm0;->p:I

    .line 59
    if-ne v2, v1, :cond_3

    .line 61
    invoke-virtual {p0, v1}, Lzm0;->q0(I)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    goto/16 :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0, v0}, Lzm0;->q0(I)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    goto/16 :goto_0

    .line 73
    :cond_4
    iget-object p1, p0, Lzm0;->j:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result p1

    .line 79
    const/4 v0, 0x0

    .line 80
    const-string v1, "M:"

    .line 82
    if-nez p1, :cond_5

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    throw v0

    .line 93
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    throw v0

    .line 102
    :cond_6
    iget-object v4, p0, Lzm0;->m:Ljava/lang/String;

    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_9

    .line 110
    iget-object v4, p0, Lzm0;->l:Ljava/lang/String;

    .line 112
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_9

    .line 118
    iget-object v3, p0, Lzm0;->j:Ljava/lang/String;

    .line 120
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_7

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    iget-object v4, p0, Lzm0;->l:Ljava/lang/String;

    .line 133
    invoke-virtual {p0, v4}, Lzm0;->m0(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v4, p0, Lzm0;->m:Ljava/lang/String;

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, p0, Lzm0;->j:Ljava/lang/String;

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {}, Len0;->j()C

    .line 159
    move-result v2

    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v3

    .line 167
    goto :goto_0

    .line 168
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    iget-object v4, p0, Lzm0;->l:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v4}, Lzm0;->m0(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v4, p0, Lzm0;->m:Ljava/lang/String;

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Lzm0;->i:Ljava/lang/String;

    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {}, Len0;->j()C

    .line 201
    move-result v2

    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v3

    .line 209
    goto :goto_0

    .line 210
    :cond_8
    const/4 v2, 0x4

    .line 211
    invoke-static {v2}, Len0;->m(I)Ljava/lang/String;

    .line 214
    move-result-object v3

    .line 215
    :cond_9
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 217
    const/4 v2, 0x0

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    move-result-object p1

    .line 222
    aput-object p1, v1, v2

    .line 224
    aput-object v3, v1, v0

    .line 226
    const-string p1, "WifiDirectServerHelper"

    .line 228
    const-string v0, "getDeviceName reason = {?},name = {?}"

    .line 230
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return-object v3
.end method

.method public r(Lym0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lzm0;->i1(Lym0;Z)V

    .line 5
    return-void
.end method

.method public final s0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/16 v1, 0x15

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final t0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/16 v1, 0x14

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final u0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "DirectServerMessageThread"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object v0, p0, Lzm0;->d:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    new-instance v0, Lzm0$k;

    .line 15
    iget-object v1, p0, Lzm0;->d:Landroid/os/HandlerThread;

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lzm0$k;-><init>(Lzm0;Landroid/os/Looper;)V

    .line 24
    iput-object v0, p0, Lzm0;->e:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public declared-synchronized v0()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lzm0;->v:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lzm0;->q:I

    .line 10
    iget-object v0, p0, Lzm0;->i:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Len0;->l()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lzm0;->i:Ljava/lang/String;

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lzm0;->n:Z

    .line 27
    const-string v1, ""

    .line 29
    iput-object v1, p0, Lzm0;->j:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    .line 32
    iput v1, p0, Lzm0;->r:I

    .line 34
    iget-object v2, p0, Lzm0;->h:Landroid/content/Context;

    .line 36
    invoke-static {v2}, Len0;->f(Landroid/content/Context;)Ljava/util/List;

    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lzm0;->w:Ljava/util/List;

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
    if-eqz v3, :cond_1

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lym0;

    .line 58
    iget-object v4, p0, Lzm0;->x:Ljava/util/Set;

    .line 60
    iget-object v3, v3, Lym0;->b:Ljava/lang/String;

    .line 62
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v2, "WifiDirectServerHelper"

    .line 68
    const-string v3, "init getClientList = {?}"

    .line 70
    new-array v4, v1, [Ljava/lang/Object;

    .line 72
    iget-object v5, p0, Lzm0;->w:Ljava/util/List;

    .line 74
    aput-object v5, v4, v0

    .line 76
    invoke-static {v2, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lzm0;->b:Lym0;

    .line 82
    invoke-virtual {p0}, Lzm0;->u0()V

    .line 85
    iput-boolean v1, p0, Lzm0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    .line 88
    return v1

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    monitor-exit p0

    .line 91
    throw v0
.end method

.method public final declared-synchronized w0()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "WifiDirectServerHelper"

    .line 4
    const-string v1, "initWifiDirectObserver with mHasInitDirectObserver = {?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    iget-boolean v4, p0, Lzm0;->c:Z

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    aput-object v4, v3, v5

    .line 18
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-boolean v0, p0, Lzm0;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Lzm0;->e:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    if-nez v0, :cond_1

    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_2
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lxm0;->t(Lkj;)V

    .line 40
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lzm0;->h:Landroid/content/Context;

    .line 46
    iget-object v3, p0, Lzm0;->e:Landroid/os/Handler;

    .line 48
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v1, v3}, Lxm0;->q(Landroid/content/Context;Landroid/os/Looper;)V

    .line 55
    iput-boolean v2, p0, Lzm0;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    .line 61
    throw v0
.end method

.method public final x0(I)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    aput-object v3, v1, v2

    .line 8
    iget v4, p0, Lzm0;->q:I

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x1

    .line 15
    aput-object v4, v1, v5

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v4

    .line 21
    const/4 v6, 0x2

    .line 22
    aput-object v4, v1, v6

    .line 24
    const-string v4, "WifiDirectServerHelper"

    .line 26
    const-string v7, "notifyConnectState observer = {?} state = {?},newState = {?}"

    .line 28
    invoke-static {v4, v7, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const-string v1, ""

    .line 33
    if-ne p1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lzm0;->a1()V

    .line 38
    iput-object v3, p0, Lzm0;->b:Lym0;

    .line 40
    iput-object v1, p0, Lzm0;->j:Ljava/lang/String;

    .line 42
    :cond_0
    iget v4, p0, Lzm0;->q:I

    .line 44
    if-eq v4, p1, :cond_3

    .line 46
    if-ne p1, v6, :cond_1

    .line 48
    iput-object v1, p0, Lzm0;->j:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lzm0;->J0()V

    .line 53
    invoke-virtual {p0}, Lzm0;->D0()V

    .line 56
    iget-boolean v0, p0, Lzm0;->t:Z

    .line 58
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0, v2}, Lzm0;->g0(Z)V

    .line 63
    invoke-virtual {p0}, Lzm0;->C0()V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    if-ne p1, v0, :cond_2

    .line 69
    if-ne v4, v6, :cond_2

    .line 71
    invoke-virtual {p0, v0, v3}, Lzm0;->f0(ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 74
    invoke-static {}, Ldv;->a()Ldv;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v5}, Ldv;->b(I)V

    .line 81
    :cond_2
    :goto_0
    iput p1, p0, Lzm0;->q:I

    .line 83
    throw v3

    .line 84
    :cond_3
    return-void
.end method

.method public final y0(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "WifiDirectServerHelper"

    .line 13
    const-string v1, "notifyDiscoveryStateChanged state = {?}"

    .line 15
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public final z0(IZI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lzm0;->A0(IZI)V

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p3}, Lzm0;->e1(I)I

    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lzm0;->A0(IZI)V

    .line 15
    :goto_0
    return-void
.end method
