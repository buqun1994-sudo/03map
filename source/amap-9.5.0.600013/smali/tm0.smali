.class public Ltm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkj;
.implements Lrm0$a;
.implements Ldn0$b;
.implements Lnj;
.implements Lum0$a;


# static fields
.field public static volatile B:Ltm0;


# instance fields
.field public A:Lum0$b;

.field public a:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lym0;

.field public n:Lym0;

.field public o:Lym0;

.field public p:Lap;

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Ljava/util/List;

.field public w:Ljava/util/List;

.field public x:Ljava/util/Set;

.field public y:Ljava/util/Map;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ltm0;->c:Z

    .line 7
    const/4 v1, 0x3

    .line 8
    iput v1, p0, Ltm0;->d:I

    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, p0, Ltm0;->e:I

    .line 13
    iput-boolean v0, p0, Ltm0;->f:Z

    .line 15
    iput-boolean v0, p0, Ltm0;->g:Z

    .line 17
    iput-boolean v0, p0, Ltm0;->h:Z

    .line 19
    const-string v1, ""

    .line 21
    iput-object v1, p0, Ltm0;->i:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Ltm0;->j:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Ltm0;->k:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Ltm0;->l:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Ltm0;->m:Lym0;

    .line 32
    iput-object v1, p0, Ltm0;->n:Lym0;

    .line 34
    iput-object v1, p0, Ltm0;->o:Lym0;

    .line 36
    iput-boolean v0, p0, Ltm0;->q:Z

    .line 38
    const/16 v1, 0x9

    .line 40
    iput v1, p0, Ltm0;->r:I

    .line 42
    const/4 v1, -0x1

    .line 43
    iput v1, p0, Ltm0;->s:I

    .line 45
    iput v1, p0, Ltm0;->t:I

    .line 47
    iput-boolean v0, p0, Ltm0;->u:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iput-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iput-object v0, p0, Ltm0;->w:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    .line 65
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 68
    iput-object v0, p0, Ltm0;->x:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    .line 72
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    iput-object v0, p0, Ltm0;->y:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iput-object v0, p0, Ltm0;->z:Ljava/util/List;

    .line 84
    return-void
.end method

.method public static I()Ltm0;
    .locals 2

    .line 1
    sget-object v0, Ltm0;->B:Ltm0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Ltm0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Ltm0;->B:Ltm0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ltm0;

    .line 14
    invoke-direct {v1}, Ltm0;-><init>()V

    .line 17
    sput-object v1, Ltm0;->B:Ltm0;

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
    sget-object v0, Ltm0;->B:Ltm0;

    .line 26
    return-object v0
.end method

.method public static synthetic s(Ltm0;)Lym0;
    .locals 0

    .line 1
    iget-object p0, p0, Ltm0;->n:Lym0;

    .line 3
    return-object p0
.end method

.method public static synthetic t(Ltm0;Lym0;)Lym0;
    .locals 0

    .line 1
    iput-object p1, p0, Ltm0;->n:Lym0;

    .line 3
    return-object p1
.end method

.method public static synthetic u(Ltm0;ILym0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ltm0;->T(ILym0;)V

    .line 4
    return-void
.end method

.method public static synthetic v(Ltm0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltm0;->u:Z

    .line 3
    return p1
.end method

.method public static synthetic w(Ltm0;Lap;)Lap;
    .locals 0

    .line 1
    iput-object p1, p0, Ltm0;->p:Lap;

    .line 3
    return-object p1
.end method


# virtual methods
.method public final A(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltm0;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3
    invoke-virtual {p0, v0, p1}, Ltm0;->z(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 6
    return-void
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltm0;->x:Ljava/util/Set;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 8
    :cond_0
    iget-object v0, p0, Ltm0;->y:Ljava/util/Map;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    :cond_1
    return-void
.end method

.method public C(Lym0;ZI)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltm0;->m:Lym0;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_1

    .line 9
    iput-object p1, p0, Ltm0;->n:Lym0;

    .line 11
    iput-object v0, p0, Ltm0;->m:Lym0;

    .line 13
    invoke-virtual {p0, p1}, Ltm0;->D(Lym0;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-nez p3, :cond_2

    .line 19
    iget-object p1, p1, Lym0;->g:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Ltm0;->y(Ljava/lang/String;)V

    .line 24
    :cond_2
    iput-object v0, p0, Ltm0;->m:Lym0;

    .line 26
    :goto_0
    return-void
.end method

.method public D(Lym0;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lym0;->b:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Len0;->v(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Ltm0;->z:Ljava/util/List;

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eqz v0, :cond_5

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Ltm0;->z:Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_4

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lym0;

    .line 43
    iget-object v3, p1, Lym0;->b:Ljava/lang/String;

    .line 45
    iget-object v4, v2, Lym0;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 53
    iput-object v2, p0, Ltm0;->n:Lym0;

    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Ltm0;->E(Z)V

    .line 59
    return-void

    .line 60
    :cond_4
    invoke-virtual {p0, v1, p1}, Ltm0;->T(ILym0;)V

    .line 63
    return-void

    .line 64
    :cond_5
    :goto_0
    invoke-virtual {p0, v1, p1}, Ltm0;->T(ILym0;)V

    .line 67
    return-void
.end method

.method public final E(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Ltm0;->n:Lym0;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v2

    .line 13
    const/4 v4, 0x1

    .line 14
    aput-object v2, v1, v4

    .line 16
    const-string v2, "WifiDirectClientHelper"

    .line 18
    const-string v5, "connectToServerDevice device = {?},isInvited = {?}"

    .line 20
    invoke-static {v2, v5, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 25
    invoke-virtual {p0, v3, v1}, Ltm0;->T(ILym0;)V

    .line 28
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 30
    iget v1, v1, Lym0;->a:I

    .line 32
    const/16 v2, 0x3c

    .line 34
    if-ne v1, v4, :cond_0

    .line 36
    iput v2, p0, Ltm0;->s:I

    .line 38
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Ltm0;->n:Lym0;

    .line 44
    iget-object v0, v0, Lym0;->h:Ljava/lang/String;

    .line 46
    new-instance v1, Ltm0$c;

    .line 48
    invoke-direct {v1, p0}, Ltm0$c;-><init>(Ltm0;)V

    .line 51
    invoke-virtual {p1, v0, v3, v1}, Lxm0;->h(Ljava/lang/String;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    if-ne v1, v0, :cond_2

    .line 57
    iget-object v0, p0, Ltm0;->b:Landroid/content/Context;

    .line 59
    invoke-static {v0}, Lrm0;->q(Landroid/content/Context;)I

    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x3

    .line 64
    if-ne v0, v1, :cond_1

    .line 66
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 69
    move-result-object p1

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lxm0;->C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 74
    iput v2, p0, Ltm0;->s:I

    .line 76
    iget-object p1, p0, Ltm0;->b:Landroid/content/Context;

    .line 78
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 80
    iget-object v2, v1, Lym0;->c:Ljava/lang/String;

    .line 82
    iget-object v1, v1, Lym0;->d:Ljava/lang/String;

    .line 84
    invoke-static {p1, v2, v1}, Lrm0;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 90
    const/4 p1, -0x1

    .line 91
    iput p1, p0, Ltm0;->s:I

    .line 93
    iput-object v0, p0, Ltm0;->n:Lym0;

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Ltm0;->n:Lym0;

    .line 98
    iput v4, v0, Lym0;->a:I

    .line 100
    invoke-virtual {p0, p1}, Ltm0;->E(Z)V

    .line 103
    :cond_2
    :goto_0
    return-void
.end method

.method public F(Lym0;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "WifiDirectClientHelper"

    .line 11
    const-string v2, "disConnect: mCurrentConnectedDevice = {?}"

    .line 13
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-boolean v0, p0, Ltm0;->c:Z

    .line 18
    if-nez v0, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    iget v0, v0, Lym0;->a:I

    .line 27
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_1

    .line 30
    iget-object p1, p0, Ltm0;->b:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lrm0;->m(Landroid/content/Context;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-ne v0, p1, :cond_2

    .line 38
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public G(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Ltm0;->h:Z

    .line 3
    iget-object p1, p0, Ltm0;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 14
    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Ltm0;->n:Lym0;

    .line 18
    if-nez p1, :cond_0

    .line 20
    iget-object p1, p0, Ltm0;->m:Lym0;

    .line 22
    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Ltm0;->S()Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Ltm0;->Y()V

    .line 33
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm0;->A:Lum0$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lum0$b;->f()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Len0;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ltm0;->i:Ljava/lang/String;

    .line 15
    :cond_0
    iget-object v0, p0, Ltm0;->i:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-static {}, Len0;->l()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Ltm0;->i:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Ltm0;->A:Lum0$b;

    .line 31
    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v1}, Lum0$b;->f()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Len0;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    :cond_1
    return-void
.end method

.method public J()Lym0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectClientHelper"

    .line 6
    const-string v2, "getLocalDevice"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v0, p0, Ltm0;->c:Z

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Ltm0;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 19
    if-nez v0, :cond_1

    .line 21
    return-object v1

    .line 22
    :cond_1
    invoke-static {v0}, Len0;->e(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 28
    iget-object v1, p0, Ltm0;->i:Ljava/lang/String;

    .line 30
    iput-object v1, v0, Lym0;->b:Ljava/lang/String;

    .line 32
    :cond_2
    return-object v0
.end method

.method public K()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltm0;->u:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Ltm0;->e:I

    .line 7
    const/4 v1, 0x6

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Ltm0;->A(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    iget v0, p0, Ltm0;->e:I

    .line 18
    return v0
.end method

.method public L(Landroid/content/Context;Lum0$b;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Ltm0;->c:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "WifiDirectClientHelper"

    .line 15
    const-string v4, "init with hasInited = {?}"

    .line 17
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v1, p0, Ltm0;->c:Z

    .line 22
    if-eqz v1, :cond_0

    .line 24
    return v3

    .line 25
    :cond_0
    iput-boolean v0, p0, Ltm0;->c:Z

    .line 27
    iput-object p1, p0, Ltm0;->b:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Ltm0;->A:Lum0$b;

    .line 31
    invoke-static {p0}, Lwm0;->r(Lum0$a;)Lwm0;

    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1}, Lwm0;->q(Landroid/content/Context;)V

    .line 38
    return v0
.end method

.method public final M()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltm0;->A:Lum0$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Ltm0;->v:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Lum0$b;->f()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v0, v2}, Len0;->g(Ljava/util/List;Ljava/lang/String;I)V

    .line 15
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Ltm0;->i:Ljava/lang/String;

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Ltm0;->d:I

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ltm0;->q:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ltm0;->g:Z

    .line 10
    iput-boolean v0, p0, Ltm0;->h:Z

    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Ltm0;->o:Lym0;

    .line 15
    iput-object v1, p0, Ltm0;->m:Lym0;

    .line 17
    iput-object v1, p0, Ltm0;->n:Lym0;

    .line 19
    const-string v1, ""

    .line 21
    iput-object v1, p0, Ltm0;->l:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Ltm0;->u:Z

    .line 25
    const/16 v0, 0x9

    .line 27
    iput v0, p0, Ltm0;->r:I

    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Ltm0;->t:I

    .line 32
    invoke-virtual {p0}, Ltm0;->H()V

    .line 35
    invoke-virtual {p0}, Ltm0;->P()V

    .line 38
    invoke-virtual {p0}, Ltm0;->M()V

    .line 41
    invoke-virtual {p0}, Ltm0;->O()V

    .line 44
    invoke-virtual {p0}, Ltm0;->Q()V

    .line 47
    invoke-static {p0}, Lrm0;->k(Lrm0$a;)V

    .line 50
    iget-object v0, p0, Ltm0;->b:Landroid/content/Context;

    .line 52
    invoke-static {v0}, Lrm0;->A(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Ldn0;->c(Ldn0$b;)V

    .line 62
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ldn0;->g()V

    .line 69
    return-void
.end method

.method public final O()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltm0;->A:Lum0$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Ltm0;->w:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Lum0$b;->f()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v1, v0, v2}, Len0;->g(Ljava/util/List;Ljava/lang/String;I)V

    .line 15
    :cond_0
    return-void
.end method

.method public final P()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltm0;->A:Lum0$b;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Lum0$b;->d()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    invoke-static {v0}, Len0;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Ltm0;->j:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Ltm0;->A:Lum0$b;

    .line 24
    invoke-interface {v0}, Lum0$b;->b()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 34
    invoke-static {v0}, Len0;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Ltm0;->j:Ljava/lang/String;

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Len0;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Ltm0;->j:Ljava/lang/String;

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Len0;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Ltm0;->j:Ljava/lang/String;

    .line 58
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v1, "A:"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Ltm0;->j:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ":"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Ltm0;->i:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Ltm0;->k:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final Q()V
    .locals 2

    .line 1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lxm0;->t(Lkj;)V

    .line 8
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Ltm0;->b:Landroid/content/Context;

    .line 14
    invoke-virtual {v0, v1}, Lxm0;->p(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public R(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lh30;->e()Lh30;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lh30;->f(Landroid/content/Context;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final S()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltm0;->h:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Ltm0;->f:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_1
    return v1
.end method

.method public final T(ILym0;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Ltm0;->U(ILym0;I)V

    .line 5
    return-void
.end method

.method public final U(ILym0;I)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Ltm0;->d:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v1, v2

    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object p2, v1, v2

    .line 23
    const-string v3, "WifiDirectClientHelper"

    .line 25
    const-string v4, "notifyConnectState oldState = {?},newState = {?},device = {?}"

    .line 27
    invoke-static {v3, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget v1, p0, Ltm0;->d:I

    .line 32
    if-eq p1, v1, :cond_5

    .line 34
    if-ne p1, v2, :cond_0

    .line 36
    invoke-virtual {p0}, Ltm0;->W()V

    .line 39
    invoke-virtual {p0}, Ltm0;->g0()V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-ne p1, v0, :cond_1

    .line 45
    invoke-virtual {p0}, Ltm0;->b0()V

    .line 48
    const/4 v1, -0x1

    .line 49
    iput v1, p0, Ltm0;->t:I

    .line 51
    :cond_1
    :goto_0
    invoke-static {p2}, Lym0;->c(Lym0;)Lym0;

    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_2

    .line 57
    iget v1, p2, Lym0;->a:I

    .line 59
    if-ne v1, v2, :cond_2

    .line 61
    iget-object v1, p2, Lym0;->c:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 69
    iget-object v1, p2, Lym0;->c:Ljava/lang/String;

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 74
    move-result v1

    .line 75
    const/16 v3, 0xa

    .line 77
    if-le v1, v3, :cond_2

    .line 79
    iget-object v1, p2, Lym0;->c:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p2, Lym0;->c:Ljava/lang/String;

    .line 87
    :cond_2
    if-ne p1, v0, :cond_4

    .line 89
    int-to-long v0, p3

    .line 90
    iput-wide v0, p2, Lym0;->i:J

    .line 92
    iget p3, p2, Lym0;->a:I

    .line 94
    if-ne p3, v2, :cond_3

    .line 96
    invoke-static {}, Lrm0;->o()Ljava/lang/String;

    .line 99
    move-result-object p3

    .line 100
    iput-object p3, p2, Lym0;->b:Ljava/lang/String;

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-static {}, Len0;->k()Ljava/lang/String;

    .line 106
    move-result-object p3

    .line 107
    iput-object p3, p2, Lym0;->b:Ljava/lang/String;

    .line 109
    :cond_4
    :goto_1
    iget-object p3, p0, Ltm0;->A:Lum0$b;

    .line 111
    invoke-interface {p3, p1, p2}, Lum0$b;->h(ILym0;)V

    .line 114
    iput p1, p0, Ltm0;->d:I

    .line 116
    :cond_5
    return-void
.end method

.method public V(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lh30;->e()Lh30;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lh30;->h(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Ltm0;->B()V

    .line 11
    invoke-static {}, Luh0;->b()Luh0;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Luh0;->d()V

    .line 18
    return-void
.end method

.method public final W()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    const-string v1, "WifiDirectClientHelper"

    .line 11
    const-string v3, "saveConnectFeatureCode device = {?}"

    .line 13
    invoke-static {v1, v3, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 18
    if-eqz v0, :cond_2

    .line 20
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 30
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Ltm0;->i:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 43
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 45
    iget-object v1, v1, Lym0;->b:Ljava/lang/String;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 55
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 57
    iget-object v1, v1, Lym0;->b:Ljava/lang/String;

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 64
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 66
    iget-object v1, v1, Lym0;->b:Ljava/lang/String;

    .line 68
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 73
    iget-object v1, p0, Ltm0;->A:Lum0$b;

    .line 75
    invoke-interface {v1}, Lum0$b;->f()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1, v2}, Len0;->s(Ljava/util/List;Ljava/lang/String;I)Z

    .line 82
    :cond_2
    return-void
.end method

.method public X(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltm0;->c:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ltm0;->p:Lap;

    .line 8
    if-nez v0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    invoke-interface {v0, p1}, Lap;->a(I)V

    .line 14
    return-void
.end method

.method public final Y()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Ltm0;->u:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "WifiDirectClientHelper"

    .line 15
    const-string v2, "start startDiscoveryPeers mChangeNameSuccess = {?}"

    .line 17
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Ltm0;->u:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ltm0$a;

    .line 30
    invoke-direct {v1, p0}, Ltm0$a;-><init>(Ltm0;)V

    .line 33
    invoke-virtual {v0, v1}, Lxm0;->m(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ltm0$b;

    .line 39
    invoke-direct {v0, p0}, Ltm0$b;-><init>(Ltm0;)V

    .line 42
    invoke-virtual {p0, v0}, Ltm0;->A(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 45
    :goto_0
    return-void
.end method

.method public final Z()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const-string v2, "WifiDirectClientHelper"

    .line 11
    const-string v4, "startHandShake with mCurrentConnectedDevice = {?}"

    .line 13
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Ltm0;->b0()V

    .line 19
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 21
    if-nez v1, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Ltm0;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 26
    invoke-static {v1}, Len0;->e(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 32
    new-instance v1, Lym0;

    .line 34
    invoke-direct {v1}, Lym0;-><init>()V

    .line 37
    iget-object v2, p0, Ltm0;->i:Ljava/lang/String;

    .line 39
    iput-object v2, v1, Lym0;->b:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Ltm0;->j:Ljava/lang/String;

    .line 43
    iput-object v2, v1, Lym0;->c:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Ltm0;->k:Ljava/lang/String;

    .line 47
    iput-object v2, v1, Lym0;->g:Ljava/lang/String;

    .line 49
    :cond_1
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 51
    iget v2, v2, Lym0;->a:I

    .line 53
    const/4 v4, 0x2

    .line 54
    if-ne v2, v4, :cond_2

    .line 56
    invoke-static {p0, v1, v3}, Len0;->u(Lnj;Lym0;Z)Lap;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Ltm0;->p:Lap;

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-ne v2, v0, :cond_3

    .line 65
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 68
    move-result-object v0

    .line 69
    new-instance v2, Ltm0$e;

    .line 71
    invoke-direct {v2, p0, v1}, Ltm0$e;-><init>(Ltm0;Lym0;)V

    .line 74
    invoke-virtual {v0, v2}, Lxm0;->x(Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)Z

    .line 77
    :cond_3
    :goto_0
    return-void
.end method

.method public a()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const-string v2, "WifiDirectClientHelper"

    .line 11
    const-string v4, "onDisconnect add BlackDevices with {?}"

    .line 13
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v1, v1, Lym0;->g:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 32
    iget-object v1, v1, Lym0;->g:Ljava/lang/String;

    .line 34
    aput-object v1, v0, v3

    .line 36
    invoke-static {v2, v4, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Ltm0;->x:Ljava/util/Set;

    .line 41
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 43
    iget-object v1, v1, Lym0;->g:Ljava/lang/String;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 50
    const/4 v1, 0x4

    .line 51
    const/4 v2, 0x3

    .line 52
    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lym0;

    .line 56
    invoke-direct {v0}, Lym0;-><init>()V

    .line 59
    invoke-virtual {p0, v2, v0, v1}, Ltm0;->U(ILym0;I)V

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, v2, v0, v1}, Ltm0;->U(ILym0;I)V

    .line 66
    :goto_0
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 68
    invoke-virtual {p0, v0}, Ltm0;->F(Lym0;)V

    .line 71
    return-void
.end method

.method public a0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectClientHelper"

    .line 6
    const-string v2, "stopConnectToDevice"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v0, p0, Ltm0;->c:Z

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Ltm0;->n:Lym0;

    .line 23
    if-eqz v0, :cond_3

    .line 25
    iget v1, v0, Lym0;->a:I

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-ne v1, v2, :cond_2

    .line 31
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v3}, Lxm0;->c(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Ltm0;->b:Landroid/content/Context;

    .line 41
    iget-object v0, v0, Lym0;->c:Ljava/lang/String;

    .line 43
    invoke-static {v1, v0}, Lrm0;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 46
    :goto_0
    const/4 v0, 0x3

    .line 47
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 49
    invoke-virtual {p0, v0, v1}, Ltm0;->T(ILym0;)V

    .line 52
    const/4 v0, -0x1

    .line 53
    iput v0, p0, Ltm0;->s:I

    .line 55
    iput-object v3, p0, Ltm0;->n:Lym0;

    .line 57
    iput-object v3, p0, Ltm0;->m:Lym0;

    .line 59
    :cond_3
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
    const-string v2, "WifiDirectClientHelper"

    .line 9
    const-string v3, "onConnectionInfoChangedAction = {?}"

    .line 11
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 23
    if-eqz p1, :cond_0

    .line 25
    iput-object v1, p0, Ltm0;->n:Lym0;

    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Ltm0;->n:Lym0;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    iget v2, p1, Lym0;->a:I

    .line 34
    if-ne v2, v0, :cond_1

    .line 36
    iput-object p1, p0, Ltm0;->o:Lym0;

    .line 38
    iput-object v1, p0, Ltm0;->n:Lym0;

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Lym0;

    .line 43
    invoke-direct {p1}, Lym0;-><init>()V

    .line 46
    iput-object p1, p0, Ltm0;->o:Lym0;

    .line 48
    iput v0, p1, Lym0;->a:I

    .line 50
    :goto_0
    invoke-virtual {p0}, Ltm0;->Z()V

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 56
    if-eqz p1, :cond_3

    .line 58
    iget v2, p1, Lym0;->a:I

    .line 60
    if-ne v2, v0, :cond_3

    .line 62
    iput-object v1, p0, Ltm0;->n:Lym0;

    .line 64
    const/4 v0, 0x3

    .line 65
    invoke-virtual {p0, v0, p1}, Ltm0;->T(ILym0;)V

    .line 68
    iput-object v1, p0, Ltm0;->o:Lym0;

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object p1, p0, Ltm0;->n:Lym0;

    .line 73
    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {p0}, Ltm0;->a0()V

    .line 78
    :cond_4
    :goto_1
    iget-object p1, p0, Ltm0;->m:Lym0;

    .line 80
    if-nez p1, :cond_6

    .line 82
    iget-object p1, p0, Ltm0;->n:Lym0;

    .line 84
    if-nez p1, :cond_6

    .line 86
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 88
    if-nez p1, :cond_6

    .line 90
    invoke-virtual {p0}, Ltm0;->S()Z

    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_5

    .line 96
    invoke-virtual {p0}, Ltm0;->Y()V

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    iget-object p1, p0, Ltm0;->b:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Lrm0;->z(Landroid/content/Context;)Z

    .line 105
    :cond_6
    :goto_2
    return-void
.end method

.method public final b0()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Ltm0;->p:Lap;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "WifiDirectClientHelper"

    .line 11
    const-string v2, "stopHandShake with mHeartBeatControlInterface = {?}"

    .line 13
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Ltm0;->p:Lap;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lap;->e()V

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Ltm0;->p:Lap;

    .line 26
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c0()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Ltm0;->c:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "WifiDirectClientHelper"

    .line 15
    const-string v4, "unInit with hasInited = {?}"

    .line 17
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v1, p0, Ltm0;->c:Z

    .line 22
    if-eqz v1, :cond_2

    .line 24
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p0}, Ldn0;->f(Ldn0$b;)V

    .line 31
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ldn0;->h()V

    .line 38
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_1

    .line 43
    iget v1, v1, Lym0;->a:I

    .line 45
    const/4 v4, 0x2

    .line 46
    if-ne v1, v4, :cond_0

    .line 48
    iget-object v1, p0, Ltm0;->b:Landroid/content/Context;

    .line 50
    invoke-static {v1}, Lrm0;->m(Landroid/content/Context;)Z

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-ne v1, v0, :cond_1

    .line 56
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v2}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 63
    :cond_1
    :goto_0
    invoke-static {v2}, Lwm0;->r(Lum0$a;)Lwm0;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lwm0;->A()V

    .line 70
    invoke-virtual {p0}, Ltm0;->d0()V

    .line 73
    invoke-static {p0}, Lrm0;->B(Lrm0$a;)V

    .line 76
    iget-object v1, p0, Ltm0;->b:Landroid/content/Context;

    .line 78
    invoke-static {v1}, Lrm0;->D(Landroid/content/Context;)V

    .line 81
    iput-object v2, p0, Ltm0;->b:Landroid/content/Context;

    .line 83
    iput-boolean v3, p0, Ltm0;->q:Z

    .line 85
    iput-boolean v3, p0, Ltm0;->g:Z

    .line 87
    iput-object v2, p0, Ltm0;->n:Lym0;

    .line 89
    iput-object v2, p0, Ltm0;->m:Lym0;

    .line 91
    iput-object v2, p0, Ltm0;->o:Lym0;

    .line 93
    const-string v1, ""

    .line 95
    iput-object v1, p0, Ltm0;->i:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Ltm0;->A:Lum0$b;

    .line 99
    iget-object v1, p0, Ltm0;->v:Ljava/util/List;

    .line 101
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 104
    iget-object v1, p0, Ltm0;->x:Ljava/util/Set;

    .line 106
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 109
    iget-object v1, p0, Ltm0;->y:Ljava/util/Map;

    .line 111
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v1, p0, Ltm0;->z:Ljava/util/List;

    .line 116
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    invoke-virtual {p0}, Ltm0;->b0()V

    .line 122
    iput-boolean v3, p0, Ltm0;->c:Z

    .line 124
    return v0

    .line 125
    :cond_2
    return v3
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
    const-string v1, "WifiDirectClientHelper"

    .line 9
    const-string v2, "onThisDeviceChangedAction {?}"

    .line 11
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Ltm0;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Ltm0;->A(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 20
    return-void
.end method

.method public final d0()V
    .locals 2

    .line 1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lxm0;->C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 9
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lxm0;->E(Lkj;)V

    .line 16
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lxm0;->D()V

    .line 23
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Ltm0;->r:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "WifiDirectClientHelper"

    .line 15
    const-string v3, "onCountDown mDiscoveryTimeCountDown = {?}"

    .line 17
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v1, p0, Ltm0;->s:I

    .line 22
    const/4 v2, -0x1

    .line 23
    if-lez v1, :cond_0

    .line 25
    sub-int/2addr v1, v0

    .line 26
    iput v1, p0, Ltm0;->s:I

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-nez v1, :cond_2

    .line 31
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 33
    if-nez v1, :cond_1

    .line 35
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {p0}, Ltm0;->a0()V

    .line 42
    :cond_1
    iput v2, p0, Ltm0;->s:I

    .line 44
    :cond_2
    :goto_0
    iget v1, p0, Ltm0;->t:I

    .line 46
    if-lez v1, :cond_3

    .line 48
    sub-int/2addr v1, v0

    .line 49
    iput v1, p0, Ltm0;->t:I

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    if-nez v1, :cond_5

    .line 54
    iget v1, p0, Ltm0;->d:I

    .line 56
    const/4 v3, 0x2

    .line 57
    if-ne v1, v3, :cond_4

    .line 59
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 61
    invoke-virtual {p0, v1}, Ltm0;->F(Lym0;)V

    .line 64
    :cond_4
    iput v2, p0, Ltm0;->t:I

    .line 66
    :cond_5
    :goto_1
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 68
    if-nez v1, :cond_e

    .line 70
    iget-object v1, p0, Ltm0;->m:Lym0;

    .line 72
    if-nez v1, :cond_e

    .line 74
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 76
    if-eqz v1, :cond_6

    .line 78
    goto :goto_3

    .line 79
    :cond_6
    iget v1, p0, Ltm0;->r:I

    .line 81
    const/16 v2, 0xa

    .line 83
    if-gtz v1, :cond_c

    .line 85
    if-nez v1, :cond_7

    .line 87
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 90
    move-result-object v1

    .line 91
    new-instance v3, Ltm0$f;

    .line 93
    invoke-direct {v3, p0}, Ltm0$f;-><init>(Ltm0;)V

    .line 96
    invoke-virtual {v1, v3}, Lxm0;->C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 99
    const-string v1, ""

    .line 101
    iput-object v1, p0, Ltm0;->l:Ljava/lang/String;

    .line 103
    :cond_7
    invoke-virtual {p0}, Ltm0;->S()Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_b

    .line 109
    iget v1, p0, Ltm0;->r:I

    .line 111
    add-int/lit8 v3, v1, 0x14

    .line 113
    if-nez v3, :cond_8

    .line 115
    iput v2, p0, Ltm0;->r:I

    .line 117
    goto :goto_2

    .line 118
    :cond_8
    const/4 v3, -0x3

    .line 119
    if-eq v1, v3, :cond_9

    .line 121
    add-int/2addr v1, v2

    .line 122
    add-int/2addr v1, v0

    .line 123
    if-nez v1, :cond_a

    .line 125
    :cond_9
    iget-object v1, p0, Ltm0;->b:Landroid/content/Context;

    .line 127
    invoke-static {v1}, Lrm0;->z(Landroid/content/Context;)Z

    .line 130
    :cond_a
    iget v1, p0, Ltm0;->r:I

    .line 132
    sub-int/2addr v1, v0

    .line 133
    iput v1, p0, Ltm0;->r:I

    .line 135
    goto :goto_2

    .line 136
    :cond_b
    iput v2, p0, Ltm0;->r:I

    .line 138
    goto :goto_2

    .line 139
    :cond_c
    if-ne v1, v2, :cond_d

    .line 141
    invoke-virtual {p0}, Ltm0;->Y()V

    .line 144
    iget v1, p0, Ltm0;->r:I

    .line 146
    sub-int/2addr v1, v0

    .line 147
    iput v1, p0, Ltm0;->r:I

    .line 149
    goto :goto_2

    .line 150
    :cond_d
    sub-int/2addr v1, v0

    .line 151
    iput v1, p0, Ltm0;->r:I

    .line 153
    :goto_2
    return-void

    .line 154
    :cond_e
    :goto_3
    const/16 v0, 0x9

    .line 156
    iput v0, p0, Ltm0;->r:I

    .line 158
    return-void
.end method

.method public e0(Lym0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Ltm0;->f0(Lym0;Z)V

    .line 5
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f0(Lym0;Z)V
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
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v0, v3

    .line 14
    const-string v2, "WifiDirectClientHelper"

    .line 16
    const-string v4, "unbindDevice device = {?},fromUser = {?}"

    .line 18
    invoke-static {v2, v4, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-eqz p1, :cond_3

    .line 23
    iget-object v0, p1, Lym0;->b:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p1, Lym0;->c:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltm0;->l:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 38
    iget-object v2, p1, Lym0;->b:Ljava/lang/String;

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 48
    iget-object v2, p1, Lym0;->b:Ljava/lang/String;

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 55
    iget-object v2, p0, Ltm0;->A:Lum0$b;

    .line 57
    invoke-interface {v2}, Lum0$b;->f()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-static {v0, v2, v1}, Len0;->s(Ljava/util/List;Ljava/lang/String;I)Z

    .line 64
    :cond_1
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 66
    if-eqz v0, :cond_3

    .line 68
    iget-object v1, p1, Lym0;->b:Ljava/lang/String;

    .line 70
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Ltm0;->p:Lap;

    .line 80
    if-eqz v0, :cond_3

    .line 82
    if-eqz p2, :cond_2

    .line 84
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 86
    iput-boolean v3, p1, Lym0;->f:Z

    .line 88
    invoke-interface {v0}, Lap;->c()V

    .line 91
    const/4 p1, 0x5

    .line 92
    iput p1, p0, Ltm0;->t:I

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Ltm0;->F(Lym0;)V

    .line 98
    :cond_3
    :goto_0
    return-void
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
    const-string v2, "WifiDirectClientHelper"

    .line 13
    const-string v3, "onP2pDiscoveryChangedAction {?}"

    .line 15
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-ne p1, v0, :cond_0

    .line 20
    iget-object p1, p0, Ltm0;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 26
    const/4 v0, 0x3

    .line 27
    if-ne p1, v0, :cond_0

    .line 29
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 31
    if-nez p1, :cond_0

    .line 33
    iget-object p1, p0, Ltm0;->n:Lym0;

    .line 35
    if-nez p1, :cond_0

    .line 37
    iget-object p1, p0, Ltm0;->m:Lym0;

    .line 39
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Ltm0;->S()Z

    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Ltm0;->Y()V

    .line 50
    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const-string v2, "WifiDirectClientHelper"

    .line 11
    const-string v4, "updateBlackListWithConnectDevice device = {?}"

    .line 13
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 18
    if-eqz v1, :cond_4

    .line 20
    iget-object v1, v1, Lym0;->b:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 31
    iget-object v4, v1, Lym0;->b:Ljava/lang/String;

    .line 33
    iget-object v1, v1, Lym0;->c:Ljava/lang/String;

    .line 35
    new-array v5, v0, [Ljava/lang/Object;

    .line 37
    iget-object v6, p0, Ltm0;->x:Ljava/util/Set;

    .line 39
    aput-object v6, v5, v3

    .line 41
    const-string v6, "updateBlackListWithConnectDevice start mBlackDevices = {?}"

    .line 43
    invoke-static {v2, v6, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v5, p0, Ltm0;->x:Ljava/util/Set;

    .line 48
    if-eqz v5, :cond_3

    .line 50
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 56
    iget-object v5, p0, Ltm0;->x:Ljava/util/Set;

    .line 58
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v5

    .line 62
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/lang/String;

    .line 74
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_2

    .line 80
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const-string v7, ":"

    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 89
    move-result v7

    .line 90
    add-int/2addr v7, v0

    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_1

    .line 101
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Ltm0;->x:Ljava/util/Set;

    .line 109
    aput-object v1, v0, v3

    .line 111
    const-string v1, "updateBlackListWithConnectDevice end mBlackDevices = {?}"

    .line 113
    invoke-static {v2, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_4
    :goto_1
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 6
    invoke-virtual {p0, v0, p1}, Ltm0;->T(ILym0;)V

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x3

    .line 11
    if-ne p1, v1, :cond_2

    .line 13
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 15
    if-eqz v0, :cond_3

    .line 17
    iget-object v0, v0, Lym0;->b:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 25
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 27
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 29
    iget-object v2, v2, Lym0;->b:Ljava/lang/String;

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 39
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 41
    iget-object v2, v2, Lym0;->b:Ljava/lang/String;

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Ltm0;->v:Ljava/util/List;

    .line 48
    iget-object v2, p0, Ltm0;->A:Lum0$b;

    .line 50
    invoke-interface {v2}, Lum0$b;->f()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {v0, v2, v3}, Len0;->s(Ljava/util/List;Ljava/lang/String;I)Z

    .line 58
    :cond_1
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 60
    invoke-virtual {p0, v1, v0, p1}, Ltm0;->U(ILym0;I)V

    .line 63
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 65
    invoke-virtual {p0, p1}, Ltm0;->F(Lym0;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-ne p1, v0, :cond_3

    .line 71
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 73
    if-eqz v0, :cond_3

    .line 75
    iget-object v0, v0, Lym0;->g:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Ltm0;->x:Ljava/util/Set;

    .line 85
    iget-object v2, p0, Ltm0;->o:Lym0;

    .line 87
    iget-object v2, v2, Lym0;->g:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 94
    invoke-virtual {p0, v1, v0, p1}, Ltm0;->U(ILym0;I)V

    .line 97
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 99
    invoke-virtual {p0, p1}, Ltm0;->F(Lym0;)V

    .line 102
    :cond_3
    :goto_0
    return-void
.end method

.method public j(I)V
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
    const-string v2, "WifiDirectClientHelper"

    .line 13
    const-string v3, "onP2pStateChangedAction {?}"

    .line 15
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne p1, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    iget v1, p1, Lym0;->a:I

    .line 28
    if-ne v1, v0, :cond_1

    .line 30
    const/4 v0, 0x3

    .line 31
    invoke-virtual {p0, v0, p1}, Ltm0;->T(ILym0;)V

    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Ltm0;->o:Lym0;

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method

.method public l(ZLjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

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
    const/4 v1, 0x1

    .line 12
    aput-object p2, v0, v1

    .line 14
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 19
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 21
    const/4 v3, 0x3

    .line 22
    aput-object v1, v0, v3

    .line 24
    const-string v1, "WifiDirectClientHelper"

    .line 26
    const-string v4, "onWifiDirectConnectChanged isConnected = {?},ssid = {?}\uff0cmConnectDevice = {?},mCurrentConnectedDevice = {?}"

    .line 28
    invoke-static {v1, v4, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 36
    if-nez p1, :cond_4

    .line 38
    iget-object p1, p0, Ltm0;->n:Lym0;

    .line 40
    if-eqz p1, :cond_0

    .line 42
    iget v1, p1, Lym0;->a:I

    .line 44
    if-ne v1, v2, :cond_0

    .line 46
    iput-object p1, p0, Ltm0;->o:Lym0;

    .line 48
    iput-object v0, p0, Ltm0;->n:Lym0;

    .line 50
    :cond_0
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 52
    if-nez p1, :cond_1

    .line 54
    new-instance p1, Lym0;

    .line 56
    invoke-direct {p1}, Lym0;-><init>()V

    .line 59
    iput-object p1, p0, Ltm0;->o:Lym0;

    .line 61
    iput v2, p1, Lym0;->a:I

    .line 63
    iput-object p2, p1, Lym0;->c:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Ltm0;->n:Lym0;

    .line 67
    :cond_1
    invoke-virtual {p0}, Ltm0;->Z()V

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 73
    if-eqz p1, :cond_4

    .line 75
    iget p2, p1, Lym0;->a:I

    .line 77
    if-ne p2, v2, :cond_4

    .line 79
    iget-boolean p2, p1, Lym0;->f:Z

    .line 81
    if-eqz p2, :cond_3

    .line 83
    iget-object p1, p1, Lym0;->c:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_3

    .line 91
    iget-object p1, p0, Ltm0;->b:Landroid/content/Context;

    .line 93
    iget-object p2, p0, Ltm0;->o:Lym0;

    .line 95
    iget-object p2, p2, Lym0;->c:Ljava/lang/String;

    .line 97
    invoke-static {p1, p2}, Lrm0;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 100
    :cond_3
    iput-object v0, p0, Ltm0;->n:Lym0;

    .line 102
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 104
    invoke-virtual {p0, v3, p1}, Ltm0;->T(ILym0;)V

    .line 107
    iput-object v0, p0, Ltm0;->o:Lym0;

    .line 109
    invoke-virtual {p0}, Ltm0;->S()Z

    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_4

    .line 115
    invoke-virtual {p0}, Ltm0;->Y()V

    .line 118
    :cond_4
    :goto_0
    return-void
.end method

.method public m(I)V
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
    const-string v2, "WifiDirectClientHelper"

    .line 13
    const-string v4, "onWifiDirectClientCheckStateChanged state = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Ltm0;->A:Lum0$b;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v1, p1}, Lum0$b;->c(I)V

    .line 25
    :cond_0
    const/4 v1, 0x5

    .line 26
    const/4 v4, 0x6

    .line 27
    if-ne p1, v1, :cond_1

    .line 29
    iput-boolean v0, p0, Ltm0;->f:Z

    .line 31
    const/4 p1, 0x2

    .line 32
    new-array p1, p1, [Ljava/lang/Object;

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v1

    .line 38
    aput-object v1, p1, v3

    .line 40
    iget-boolean v1, p0, Ltm0;->f:Z

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v1

    .line 46
    aput-object v1, p1, v0

    .line 48
    const-string v0, "change state = {?},mScanErrorDevice = {?}"

    .line 50
    invoke-static {v2, v0, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const/4 p1, 0x6

    .line 54
    :cond_1
    iput p1, p0, Ltm0;->e:I

    .line 56
    if-ne p1, v4, :cond_2

    .line 58
    invoke-virtual {p0}, Ltm0;->N()V

    .line 61
    :cond_2
    return-void
.end method

.method public n(Ljava/lang/String;Lym0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltm0;->o:Lym0;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p2, Lym0;->c:Ljava/lang/String;

    .line 8
    iput-object v2, v0, Lym0;->c:Ljava/lang/String;

    .line 10
    iget-object v2, p2, Lym0;->b:Ljava/lang/String;

    .line 12
    iput-object v2, v0, Lym0;->b:Ljava/lang/String;

    .line 14
    iput-object p1, v0, Lym0;->h:Ljava/lang/String;

    .line 16
    iget-object p1, p2, Lym0;->j:Ljava/lang/String;

    .line 18
    iput-object p1, v0, Lym0;->j:Ljava/lang/String;

    .line 20
    iget-object p1, p2, Lym0;->k:Ljava/lang/String;

    .line 22
    iput-object p1, v0, Lym0;->k:Ljava/lang/String;

    .line 24
    const/4 p1, 0x2

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    .line 27
    iget-object v0, p2, Lym0;->b:Ljava/lang/String;

    .line 29
    aput-object v0, p1, v1

    .line 31
    const/4 v0, 0x1

    .line 32
    iget-object p2, p2, Lym0;->k:Ljava/lang/String;

    .line 34
    aput-object p2, p1, v0

    .line 36
    const-string p2, "WifiDirectClientHelper"

    .line 38
    const-string v0, "onConnectStart receive real featureCode = {?},version = {?}"

    .line 40
    invoke-static {p2, v0, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    iget-object p1, p0, Ltm0;->o:Lym0;

    .line 45
    invoke-virtual {p0, v1, p1}, Ltm0;->T(ILym0;)V

    .line 48
    iget-object p1, p0, Ltm0;->p:Lap;

    .line 50
    if-eqz p1, :cond_1

    .line 52
    invoke-interface {p1}, Lap;->d()V

    .line 55
    :cond_1
    return-void
.end method

.method public o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "WifiDirectClientHelper"

    .line 9
    const-string v4, "onPeersChangedAction peers = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Ltm0;->m:Lym0;

    .line 16
    if-nez v1, :cond_f

    .line 18
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 20
    if-nez v1, :cond_f

    .line 22
    iget-object v1, p0, Ltm0;->o:Lym0;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    goto/16 :goto_1

    .line 28
    :cond_0
    iget-object v1, p0, Ltm0;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 30
    const/4 v4, 0x3

    .line 31
    if-eqz v1, :cond_1

    .line 33
    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 35
    if-eq v1, v4, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    .line 48
    move-result-object p1

    .line 49
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 54
    iget-object v5, p0, Ltm0;->l:Ljava/lang/String;

    .line 56
    aput-object v5, p1, v2

    .line 58
    const-string v5, "start check p2plist and mLastUnbindDisplayName = {?}"

    .line 60
    invoke-static {v3, v5, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Ltm0;->n:Lym0;

    .line 66
    iput-object p1, p0, Ltm0;->m:Lym0;

    .line 68
    iget-object v5, p0, Ltm0;->z:Ljava/util/List;

    .line 70
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v1

    .line 77
    const/4 v5, -0x1

    .line 78
    move-object v6, p1

    .line 79
    const/4 v7, -0x1

    .line 80
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_b

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v8

    .line 90
    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 92
    invoke-static {v8}, Len0;->n(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 95
    move-result-object v9

    .line 96
    const/4 v10, 0x2

    .line 97
    new-array v11, v10, [Ljava/lang/Object;

    .line 99
    aput-object v8, v11, v2

    .line 101
    aput-object v9, v11, v0

    .line 103
    const-string v12, "start check p2plist device = {?},wifiDirectDevice = {?}"

    .line 105
    invoke-static {v3, v12, v11}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    if-nez v9, :cond_4

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget v11, v9, Lym0;->a:I

    .line 113
    if-eq v11, v0, :cond_5

    .line 115
    if-eq v11, v10, :cond_5

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    if-ne v11, v0, :cond_6

    .line 120
    iget v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 122
    if-eq v8, v4, :cond_6

    .line 124
    goto :goto_0

    .line 125
    :cond_6
    if-ne v11, v10, :cond_7

    .line 127
    iget-object v8, v9, Lym0;->g:Ljava/lang/String;

    .line 129
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 132
    move-result v10

    .line 133
    sub-int/2addr v10, v0

    .line 134
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    .line 137
    move-result v8

    .line 138
    invoke-static {v8}, Len0;->o(C)Z

    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_7

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    new-array v8, v0, [Ljava/lang/Object;

    .line 147
    aput-object v9, v8, v2

    .line 149
    const-string v10, "on peers change wifiDirectDevice = {?}"

    .line 151
    invoke-static {v3, v10, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    new-array v8, v0, [Ljava/lang/Object;

    .line 156
    iget-object v10, p0, Ltm0;->x:Ljava/util/Set;

    .line 158
    aput-object v10, v8, v2

    .line 160
    const-string v10, "on peers change mBlackDevices = {?}"

    .line 162
    invoke-static {v3, v10, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v8, p0, Ltm0;->x:Ljava/util/Set;

    .line 167
    iget-object v10, v9, Lym0;->g:Ljava/lang/String;

    .line 169
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_8

    .line 175
    goto :goto_0

    .line 176
    :cond_8
    iget-object v8, p0, Ltm0;->v:Ljava/util/List;

    .line 178
    iget-object v10, v9, Lym0;->b:Ljava/lang/String;

    .line 180
    invoke-interface {v8, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 183
    move-result v8

    .line 184
    if-le v8, v7, :cond_9

    .line 186
    iput-object v9, p0, Ltm0;->n:Lym0;

    .line 188
    move v7, v8

    .line 189
    :cond_9
    iget-object v8, v9, Lym0;->b:Ljava/lang/String;

    .line 191
    iget-object v10, p0, Ltm0;->i:Ljava/lang/String;

    .line 193
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v8

    .line 197
    if-eqz v8, :cond_a

    .line 199
    iget-object v8, p0, Ltm0;->l:Ljava/lang/String;

    .line 201
    iget-object v10, v9, Lym0;->c:Ljava/lang/String;

    .line 203
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_a

    .line 209
    new-array v8, v0, [Ljava/lang/Object;

    .line 211
    aput-object v9, v8, v2

    .line 213
    const-string v10, "new inviteDevice = {?}"

    .line 215
    invoke-static {v3, v10, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iput-object v9, p0, Ltm0;->m:Lym0;

    .line 220
    :cond_a
    iget-object v8, p0, Ltm0;->z:Ljava/util/List;

    .line 222
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    if-nez v6, :cond_3

    .line 227
    iget-object v8, p0, Ltm0;->w:Ljava/util/List;

    .line 229
    iget-object v10, v9, Lym0;->b:Ljava/lang/String;

    .line 231
    invoke-interface {v8, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 234
    move-result v8

    .line 235
    if-eq v8, v5, :cond_3

    .line 237
    move-object v6, v9

    .line 238
    goto/16 :goto_0

    .line 240
    :cond_b
    iget-object v1, p0, Ltm0;->n:Lym0;

    .line 242
    if-eqz v1, :cond_c

    .line 244
    iput-object p1, p0, Ltm0;->m:Lym0;

    .line 246
    invoke-virtual {p0, v2}, Ltm0;->E(Z)V

    .line 249
    goto :goto_1

    .line 250
    :cond_c
    iget-object p1, p0, Ltm0;->m:Lym0;

    .line 252
    if-eqz p1, :cond_d

    .line 254
    new-array v0, v0, [Ljava/lang/Object;

    .line 256
    aput-object p1, v0, v2

    .line 258
    const-string p1, "on peers change mInviteDevice = {?}"

    .line 260
    invoke-static {v3, p1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object p1, p0, Ltm0;->A:Lum0$b;

    .line 265
    if-eqz p1, :cond_f

    .line 267
    iget-object v0, p0, Ltm0;->m:Lym0;

    .line 269
    invoke-interface {p1, v0}, Lum0$b;->g(Lym0;)V

    .line 272
    goto :goto_1

    .line 273
    :cond_d
    if-eqz v6, :cond_e

    .line 275
    new-array p1, v0, [Ljava/lang/Object;

    .line 277
    aput-object v6, p1, v2

    .line 279
    const-string v0, "on peers change myAmapPeerDevice = {?}"

    .line 281
    invoke-static {v3, v0, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iput-object v6, p0, Ltm0;->m:Lym0;

    .line 286
    iget-object p1, p0, Ltm0;->A:Lum0$b;

    .line 288
    if-eqz p1, :cond_f

    .line 290
    invoke-interface {p1, v6}, Lum0$b;->a(Lym0;)V

    .line 293
    goto :goto_1

    .line 294
    :cond_e
    iget-boolean p1, p0, Ltm0;->g:Z

    .line 296
    if-eqz p1, :cond_f

    .line 298
    iget-object p1, p0, Ltm0;->A:Lum0$b;

    .line 300
    if-eqz p1, :cond_f

    .line 302
    iput-boolean v0, p0, Ltm0;->q:Z

    .line 304
    iget-object v0, p0, Ltm0;->z:Ljava/util/List;

    .line 306
    invoke-interface {p1, v0}, Lum0$b;->e(Ljava/util/List;)V

    .line 309
    :cond_f
    :goto_1
    return-void
.end method

.method public p(Lym0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Lym0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ltm0;->f0(Lym0;Z)V

    .line 5
    return-void
.end method

.method public x(Lym0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ltm0;->c:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const-string v2, "WifiDirectClientHelper"

    .line 14
    const-string v3, "addMyAmapDevice device = {?}"

    .line 16
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    if-eqz p1, :cond_3

    .line 21
    iget-object v1, p1, Lym0;->b:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 29
    iget-object v1, p1, Lym0;->b:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Len0;->v(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Ltm0;->w:Ljava/util/List;

    .line 40
    if-eqz v1, :cond_3

    .line 42
    iget-object v2, p1, Lym0;->b:Ljava/lang/String;

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v1, p0, Ltm0;->w:Ljava/util/List;

    .line 53
    iget-object p1, p1, Lym0;->b:Ljava/lang/String;

    .line 55
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Ltm0;->A:Lum0$b;

    .line 60
    if-eqz p1, :cond_3

    .line 62
    iget-object v1, p0, Ltm0;->w:Ljava/util/List;

    .line 64
    invoke-interface {p1}, Lum0$b;->f()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v1, p1, v0}, Len0;->s(Ljava/util/List;Ljava/lang/String;I)Z

    .line 71
    :cond_3
    :goto_0
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltm0;->y:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Ltm0;->y:Ljava/util/Map;

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v2, v3, :cond_1

    .line 29
    iget-object v0, p0, Ltm0;->x:Ljava/util/Set;

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v0

    .line 39
    add-int/2addr v0, v1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Ltm0;->y:Ljava/util/Map;

    .line 46
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    return-void
.end method

.method public final z(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WifiDirectClientHelper"

    .line 6
    const-string v3, "start changeDeviceName"

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Ltm0;->k:Ljava/lang/String;

    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 16
    aput-object v1, v4, v0

    .line 18
    const-string v5, "newDeviceName = {?}"

    .line 20
    invoke-static {v2, v5, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    if-eqz p1, :cond_1

    .line 25
    new-array v4, v3, [Ljava/lang/Object;

    .line 27
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 29
    aput-object v5, v4, v0

    .line 31
    const-string v0, "oldDeviceName = {?}"

    .line 33
    invoke-static {v2, v0, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Len0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 54
    iput-boolean v3, p0, Ltm0;->u:Z

    .line 56
    if-eqz p2, :cond_0

    .line 58
    invoke-interface {p2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance p1, Ltm0$d;

    .line 64
    invoke-direct {p1, p0, p2}, Ltm0$d;-><init>(Ltm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 67
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2, v1, p1}, Lxm0;->e(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 74
    return-void
.end method
