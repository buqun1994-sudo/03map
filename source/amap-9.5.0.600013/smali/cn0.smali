.class public Lcn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkj;
.implements Ldn0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn0$f;
    }
.end annotation


# static fields
.field public static volatile A:Lcn0; = null

.field public static x:Ljava/lang/String; = "cn0"

.field public static y:Ljava/util/List;

.field public static z:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:I

.field public w:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcn0;->y:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lcn0;->z:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcn0;->a:I

    .line 7
    iput v0, p0, Lcn0;->b:I

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcn0;->c:Z

    .line 12
    iput-boolean v1, p0, Lcn0;->d:Z

    .line 14
    iput-boolean v1, p0, Lcn0;->e:Z

    .line 16
    iput v0, p0, Lcn0;->f:I

    .line 18
    iput-boolean v1, p0, Lcn0;->g:Z

    .line 20
    iput-boolean v1, p0, Lcn0;->h:Z

    .line 22
    iput-boolean v1, p0, Lcn0;->i:Z

    .line 24
    iput-boolean v1, p0, Lcn0;->j:Z

    .line 26
    iput-boolean v1, p0, Lcn0;->k:Z

    .line 28
    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lcn0;->l:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 31
    const-string v2, ""

    .line 33
    iput-object v2, p0, Lcn0;->m:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcn0;->n:Ljava/lang/String;

    .line 37
    const/16 v3, 0xa

    .line 39
    iput v3, p0, Lcn0;->o:I

    .line 41
    const/4 v4, 0x5

    .line 42
    iput v4, p0, Lcn0;->p:I

    .line 44
    iput v3, p0, Lcn0;->q:I

    .line 46
    const/16 v3, 0x14

    .line 48
    iput v3, p0, Lcn0;->r:I

    .line 50
    iput v3, p0, Lcn0;->s:I

    .line 52
    const/16 v3, 0x1e

    .line 54
    iput v3, p0, Lcn0;->t:I

    .line 56
    iput-object v2, p0, Lcn0;->u:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcn0;->v:I

    .line 60
    iput-object p1, p0, Lcn0;->w:Landroid/content/Context;

    .line 62
    const-string v2, "WIFI_DIRECT_FEATURE_STATE"

    .line 64
    invoke-static {p1, v2, v0}, Lbn0;->b(Landroid/content/Context;Ljava/lang/String;I)I

    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcn0;->a:I

    .line 70
    const-string v0, "WIFI_DIRECT_SERVER_TYPE"

    .line 72
    invoke-static {p1, v0, v1}, Lbn0;->b(Landroid/content/Context;Ljava/lang/String;I)I

    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcn0;->b:I

    .line 78
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn0;->x:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic c(Lcn0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn0;->g:Z

    .line 3
    return p1
.end method

.method public static synthetic f(Lcn0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn0;->h:Z

    .line 3
    return p1
.end method

.method public static synthetic h(Lcn0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn0;->j:Z

    .line 3
    return p1
.end method

.method public static synthetic i(Lcn0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn0;->k:Z

    .line 3
    return p1
.end method

.method public static synthetic k(Lcn0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn0;->m:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcn0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn0;->m:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic m(Lcn0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn0;->n:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcn0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn0;->n:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic p(Lcn0;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn0;->E(II)V

    .line 4
    return-void
.end method

.method public static synthetic q(Lcn0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn0;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic r(Lcn0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn0;->c:Z

    .line 3
    return p1
.end method

.method public static synthetic s(Lcn0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn0;->z()V

    .line 4
    return-void
.end method

.method public static w(Landroid/content/Context;)Lcn0;
    .locals 2

    .line 1
    sget-object v0, Lcn0;->A:Lcn0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcn0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcn0;->A:Lcn0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcn0;

    .line 14
    invoke-direct {v1, p0}, Lcn0;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Lcn0;->A:Lcn0;

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
    sget-object p0, Lcn0;->A:Lcn0;

    .line 26
    return-object p0
.end method


# virtual methods
.method public A(Lcn0$f;)V
    .locals 2

    .line 1
    sget-object v0, Lcn0;->z:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcn0;->y:Ljava/util/List;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final B()V
    .locals 3

    .line 1
    sget-object v0, Lcn0;->x:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "requestConnectionInfo "

    .line 8
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcn0$e;

    .line 17
    invoke-direct {v1, p0}, Lcn0$e;-><init>(Lcn0;)V

    .line 20
    invoke-virtual {v0, v1}, Lxm0;->w(Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)Z

    .line 23
    return-void
.end method

.method public final C(II)V
    .locals 2

    .line 1
    iput p2, p0, Lcn0;->b:I

    .line 3
    iput p1, p0, Lcn0;->a:I

    .line 5
    iget-object v0, p0, Lcn0;->w:Landroid/content/Context;

    .line 7
    const-string v1, "WIFI_DIRECT_FEATURE_STATE"

    .line 9
    invoke-static {v0, v1, p1}, Lbn0;->d(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    iget-object p1, p0, Lcn0;->w:Landroid/content/Context;

    .line 14
    const-string v0, "WIFI_DIRECT_SERVER_TYPE"

    .line 16
    invoke-static {p1, v0, p2}, Lbn0;->d(Landroid/content/Context;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcn0$b;

    .line 7
    invoke-direct {v1, p0}, Lcn0$b;-><init>(Lcn0;)V

    .line 10
    invoke-virtual {v0, v1}, Lxm0;->m(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 13
    return-void
.end method

.method public final E(II)V
    .locals 4

    .line 1
    sget-object v0, Lcn0;->x:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

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
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object v2, v1, v3

    .line 20
    const-string v2, "stopCheckOperateWithResult directState = {?},serverType = {?}"

    .line 22
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcn0;->x()V

    .line 28
    iget-object v0, p0, Lcn0;->w:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, v0}, Lcn0;->H(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcn0;->C(II)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcn0;->y(II)V

    .line 39
    iput-boolean v3, p0, Lcn0;->d:Z

    .line 41
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn0;->x()V

    .line 4
    iget-object v0, p0, Lcn0;->w:Landroid/content/Context;

    .line 6
    invoke-virtual {p0, v0}, Lcn0;->H(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn0;->d:Z

    .line 12
    return-void
.end method

.method public final G()V
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
    return-void
.end method

.method public final H(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Landroid/net/NetworkInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcn0;->x:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const-string v2, "onConnectionInfoChangedAction networkInfo = {?}"

    .line 11
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget v0, p0, Lcn0;->v:I

    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcn0;->v()V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcn0;->B()V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3

    .line 1
    sget-object v0, Lcn0;->x:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const-string v2, "onThisDeviceChangedAction {?}"

    .line 11
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lcn0;->l:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 16
    iget-object p1, p0, Lcn0;->u:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcn0;->l:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 26
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcn0;->u:Ljava/lang/String;

    .line 30
    :cond_0
    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    sget-object v0, Lcn0;->x:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    iget v3, p0, Lcn0;->v:I

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
    iget v0, p0, Lcn0;->v:I

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eqz v0, :cond_13

    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq v0, v1, :cond_c

    .line 28
    if-eq v0, v2, :cond_9

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x5

    .line 32
    if-eq v0, v3, :cond_6

    .line 34
    if-eq v0, v4, :cond_3

    .line 36
    if-eq v0, v5, :cond_0

    .line 38
    goto/16 :goto_2

    .line 40
    :cond_0
    iget v0, p0, Lcn0;->t:I

    .line 42
    if-gez v0, :cond_1

    .line 44
    const/4 v0, 0x6

    .line 45
    invoke-virtual {p0, v0, v2}, Lcn0;->E(II)V

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sub-int/2addr v0, v1

    .line 50
    iput v0, p0, Lcn0;->t:I

    .line 52
    :goto_0
    iget-boolean v0, p0, Lcn0;->j:Z

    .line 54
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p0}, Lcn0;->v()V

    .line 59
    goto/16 :goto_2

    .line 61
    :cond_2
    iget-boolean v0, p0, Lcn0;->k:Z

    .line 63
    if-eqz v0, :cond_16

    .line 65
    invoke-virtual {p0}, Lcn0;->z()V

    .line 68
    goto/16 :goto_2

    .line 70
    :cond_3
    iget-boolean v0, p0, Lcn0;->i:Z

    .line 72
    if-nez v0, :cond_5

    .line 74
    iget v0, p0, Lcn0;->r:I

    .line 76
    if-gez v0, :cond_4

    .line 78
    invoke-virtual {p0}, Lcn0;->G()V

    .line 81
    invoke-virtual {p0, v5, v1}, Lcn0;->E(II)V

    .line 84
    goto/16 :goto_2

    .line 86
    :cond_4
    sub-int/2addr v0, v1

    .line 87
    iput v0, p0, Lcn0;->r:I

    .line 89
    goto/16 :goto_2

    .line 91
    :cond_5
    iput v5, p0, Lcn0;->v:I

    .line 93
    invoke-virtual {p0}, Lcn0;->v()V

    .line 96
    goto/16 :goto_2

    .line 98
    :cond_6
    iget-boolean v0, p0, Lcn0;->h:Z

    .line 100
    if-nez v0, :cond_8

    .line 102
    iget v0, p0, Lcn0;->q:I

    .line 104
    if-gez v0, :cond_7

    .line 106
    invoke-virtual {p0, v4, v1}, Lcn0;->E(II)V

    .line 109
    goto/16 :goto_2

    .line 111
    :cond_7
    sub-int/2addr v0, v1

    .line 112
    iput v0, p0, Lcn0;->q:I

    .line 114
    invoke-virtual {p0}, Lcn0;->D()V

    .line 117
    goto/16 :goto_2

    .line 119
    :cond_8
    iput v5, p0, Lcn0;->v:I

    .line 121
    invoke-virtual {p0}, Lcn0;->v()V

    .line 124
    goto/16 :goto_2

    .line 126
    :cond_9
    iget-boolean v0, p0, Lcn0;->i:Z

    .line 128
    if-nez v0, :cond_b

    .line 130
    iget v0, p0, Lcn0;->s:I

    .line 132
    if-gez v0, :cond_a

    .line 134
    invoke-virtual {p0}, Lcn0;->x()V

    .line 137
    goto :goto_2

    .line 138
    :cond_a
    sub-int/2addr v0, v1

    .line 139
    iput v0, p0, Lcn0;->s:I

    .line 141
    goto :goto_2

    .line 142
    :cond_b
    iput v3, p0, Lcn0;->v:I

    .line 144
    invoke-virtual {p0}, Lcn0;->D()V

    .line 147
    goto :goto_2

    .line 148
    :cond_c
    iget-object v0, p0, Lcn0;->l:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 150
    if-nez v0, :cond_d

    .line 152
    goto :goto_1

    .line 153
    :cond_d
    iget-boolean v2, p0, Lcn0;->g:Z

    .line 155
    if-nez v2, :cond_e

    .line 157
    goto :goto_1

    .line 158
    :cond_e
    iget v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 160
    if-ne v2, v3, :cond_f

    .line 162
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_10

    .line 170
    iget-object v0, p0, Lcn0;->l:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 172
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 174
    const-string v2, "SDNFINSIsdnfi:sdfssnis:sd22s"

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_f

    .line 182
    goto :goto_1

    .line 183
    :cond_f
    const/4 v4, 0x1

    .line 184
    :cond_10
    :goto_1
    if-nez v4, :cond_12

    .line 186
    iget v0, p0, Lcn0;->p:I

    .line 188
    if-gez v0, :cond_11

    .line 190
    invoke-virtual {p0, v3, v1}, Lcn0;->E(II)V

    .line 193
    goto :goto_2

    .line 194
    :cond_11
    sub-int/2addr v0, v1

    .line 195
    iput v0, p0, Lcn0;->p:I

    .line 197
    invoke-virtual {p0}, Lcn0;->u()V

    .line 200
    goto :goto_2

    .line 201
    :cond_12
    iput v3, p0, Lcn0;->v:I

    .line 203
    invoke-virtual {p0}, Lcn0;->D()V

    .line 206
    goto :goto_2

    .line 207
    :cond_13
    iget v0, p0, Lcn0;->f:I

    .line 209
    if-ne v0, v1, :cond_15

    .line 211
    iget v0, p0, Lcn0;->o:I

    .line 213
    if-gez v0, :cond_14

    .line 215
    invoke-virtual {p0, v2, v1}, Lcn0;->E(II)V

    .line 218
    goto :goto_2

    .line 219
    :cond_14
    sub-int/2addr v0, v1

    .line 220
    iput v0, p0, Lcn0;->o:I

    .line 222
    goto :goto_2

    .line 223
    :cond_15
    iput v1, p0, Lcn0;->v:I

    .line 225
    invoke-virtual {p0}, Lcn0;->u()V

    .line 228
    :cond_16
    :goto_2
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn0;->f:I

    .line 3
    return-void
.end method

.method public o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public t(Lcn0$f;)V
    .locals 2

    .line 1
    sget-object v0, Lcn0;->z:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcn0;->y:Ljava/util/List;

    .line 10
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 16
    sget-object v1, Lcn0;->y:Ljava/util/List;

    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_1
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public final u()V
    .locals 3

    .line 1
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcn0$a;

    .line 7
    invoke-direct {v1, p0}, Lcn0$a;-><init>(Lcn0;)V

    .line 10
    const-string v2, "SDNFINSIsdnfi:sdfssnis:sd22s"

    .line 12
    invoke-virtual {v0, v2, v1}, Lxm0;->e(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 15
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn0;->j:Z

    .line 4
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcn0$c;

    .line 10
    invoke-direct {v1, p0}, Lcn0$c;-><init>(Lcn0;)V

    .line 13
    invoke-virtual {v0, v1}, Lxm0;->i(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 16
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    sget-object v0, Lcn0;->x:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "interruptCheckOperate"

    .line 8
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v0, p0, Lcn0;->e:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iput-boolean v1, p0, Lcn0;->e:Z

    .line 17
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Ldn0;->f(Ldn0$b;)V

    .line 24
    invoke-static {}, Ldn0;->e()Ldn0;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ldn0;->h()V

    .line 31
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lxm0;->E(Lkj;)V

    .line 38
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lxm0;->C(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 46
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 53
    iget-object v0, p0, Lcn0;->u:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lcn0;->u:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2, v1}, Lxm0;->e(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 70
    :cond_0
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lxm0;->D()V

    .line 77
    :cond_1
    return-void
.end method

.method public final y(II)V
    .locals 9

    .line 1
    sget-object v0, Lcn0;->z:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcn0;->y:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    sget-object p1, Lcn0;->x:Ljava/lang/String;

    .line 15
    const-string p2, "notifyState with empty"

    .line 17
    new-array v1, v2, [Ljava/lang/Object;

    .line 19
    invoke-static {p1, p2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v1, Lcn0;->y:Ljava/util/List;

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    move-result v1

    .line 30
    new-array v1, v1, [Lcn0$f;

    .line 32
    sget-object v3, Lcn0;->y:Ljava/util/List;

    .line 34
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Lcn0$f;

    .line 40
    array-length v3, v1

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_0
    if-ge v4, v3, :cond_2

    .line 44
    aget-object v5, v1, v4

    .line 46
    if-nez v5, :cond_1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object v6, Lcn0;->x:Ljava/lang/String;

    .line 51
    const-string v7, "notifyListener with listener"

    .line 53
    new-array v8, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {v6, v7, v8}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-interface {v5, p1, p2}, Lcn0$f;->a(II)V

    .line 61
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p1
.end method

.method public final z()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn0;->k:Z

    .line 4
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcn0$d;

    .line 10
    invoke-direct {v1, p0}, Lcn0$d;-><init>(Lcn0;)V

    .line 13
    invoke-virtual {v0, v1}, Lxm0;->u(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 16
    return-void
.end method
