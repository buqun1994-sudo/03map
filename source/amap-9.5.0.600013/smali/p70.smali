.class public Lp70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static l:Z


# instance fields
.field public a:Lvs;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Landroid/util/SparseArray;

.field public e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

.field public f:Lys;

.field public volatile g:I

.field public h:Landroid/os/IBinder$DeathRecipient;

.field public i:Lws;

.field public j:Landroid/content/ServiceConnection;

.field public k:Lxs$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lp70;->b:Landroid/content/Context;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lp70;->c:Z

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iput-object v1, p0, Lp70;->d:Landroid/util/SparseArray;

    .line 17
    iput v0, p0, Lp70;->g:I

    .line 19
    new-instance v0, Lp70$a;

    .line 21
    invoke-direct {v0, p0}, Lp70$a;-><init>(Lp70;)V

    .line 24
    iput-object v0, p0, Lp70;->h:Landroid/os/IBinder$DeathRecipient;

    .line 26
    new-instance v0, Lp70$b;

    .line 28
    invoke-direct {v0, p0}, Lp70$b;-><init>(Lp70;)V

    .line 31
    iput-object v0, p0, Lp70;->i:Lws;

    .line 33
    new-instance v0, Lp70$c;

    .line 35
    invoke-direct {v0, p0}, Lp70$c;-><init>(Lp70;)V

    .line 38
    iput-object v0, p0, Lp70;->j:Landroid/content/ServiceConnection;

    .line 40
    new-instance v0, Lp70$d;

    .line 42
    invoke-direct {v0, p0}, Lp70$d;-><init>(Lp70;)V

    .line 45
    iput-object v0, p0, Lp70;->k:Lxs$a;

    .line 47
    iput-object p1, p0, Lp70;->b:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static synthetic a(Lp70;)Lvs;
    .locals 0

    .line 1
    iget-object p0, p0, Lp70;->a:Lvs;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lp70;Lvs;)Lvs;
    .locals 0

    .line 1
    iput-object p1, p0, Lp70;->a:Lvs;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Lp70;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lp70;->h:Landroid/os/IBinder$DeathRecipient;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lp70;)Lbt;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lp70;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp70;->m()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic f(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lp70;->l:Z

    .line 3
    return p0
.end method

.method public static synthetic g(Lp70;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lp70;Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 3
    return-object p1
.end method

.method public static synthetic i(Lp70;)Lys;
    .locals 0

    .line 1
    iget-object p0, p0, Lp70;->f:Lys;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lp70;Lys;)Lys;
    .locals 0

    .line 1
    iput-object p1, p0, Lp70;->f:Lys;

    .line 3
    return-object p1
.end method

.method public static synthetic k(Lp70;I)Lys;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lp70;->p(I)Lys;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public l(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I
    .locals 1

    .line 1
    iput-object p1, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 3
    iput-object p2, p0, Lp70;->f:Lys;

    .line 5
    invoke-virtual {p0}, Lp70;->q()I

    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 12
    const/4 p1, 0x2

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 17
    invoke-virtual {p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 20
    move-result p2

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p2

    .line 25
    const/4 v0, 0x0

    .line 26
    aput-object p2, p1, v0

    .line 28
    iget-object p2, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 30
    invoke-virtual {p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 33
    move-result p2

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p2

    .line 38
    const/4 v0, 0x1

    .line 39
    aput-object p2, p1, v0

    .line 41
    const-string p2, "[ALSimulate] ProtocolAidlControl"

    .line 43
    const-string v0, "addWaitingProtocol, protocolId={?}, callBackId={?}"

    .line 45
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 50
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public final m()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lp70;->a:Lvs;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 9
    iget-object v4, p0, Lp70;->b:Landroid/content/Context;

    .line 11
    if-nez v4, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v0

    .line 18
    iget-object v4, p0, Lp70;->b:Landroid/content/Context;

    .line 20
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    const/16 v5, 0x80

    .line 26
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    const-string v4, "com.autonavi.amapauto.protocol.apikey"

    .line 38
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v4, "authentication meta apikey = {?}"

    .line 44
    new-array v5, v1, [Ljava/lang/Object;

    .line 46
    aput-object v0, v5, v3

    .line 48
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-string v0, "AlSimulate"

    .line 53
    const-string v4, "authentication simulate apikey = {?}"

    .line 55
    new-array v5, v1, [Ljava/lang/Object;

    .line 57
    aput-object v0, v5, v3

    .line 59
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v4, p0, Lp70;->a:Lvs;

    .line 64
    invoke-interface {v4, v0}, Lvs;->x0(Ljava/lang/String;)Z

    .line 67
    move-result v0

    .line 68
    const-string v4, "authentication result = {?}"

    .line 70
    new-array v5, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    move-result-object v6

    .line 76
    aput-object v6, v5, v3

    .line 78
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    aput-object v0, v1, v3

    .line 87
    const-string v0, "authentication Exception {?}"

    .line 89
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    aput-object v0, v1, v3

    .line 98
    const-string v0, "authentication RemoteException {?}"

    .line 100
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    goto :goto_0

    .line 104
    :catch_2
    move-exception v0

    .line 105
    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    aput-object v0, v1, v3

    .line 109
    const-string v0, "authentication NameNotFoundException {?}"

    .line 111
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_1
    :goto_0
    return v3

    .line 115
    :cond_2
    :goto_1
    const/4 v4, 0x2

    .line 116
    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    aput-object v0, v4, v3

    .line 120
    iget-object v0, p0, Lp70;->b:Landroid/content/Context;

    .line 122
    aput-object v0, v4, v1

    .line 124
    const-string v0, "authentication protocolAidlInterface = {?} mContext = {?}"

    .line 126
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return v3
.end method

.method public n()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lp70;->b:Landroid/content/Context;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    aput-object v0, v1, v3

    .line 13
    const-string v0, "bindService mContext = {?}"

    .line 15
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return v3

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 21
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    const-string v4, "com.autonavi.amapauto.protocolService"

    .line 26
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    new-instance v4, Landroid/content/ComponentName;

    .line 31
    const-string v5, "com.autonavi.amapauto"

    .line 33
    const-string v6, "com.autonavi.amapauto.protocol.service.ProtocolService"

    .line 35
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    iget-object v4, p0, Lp70;->b:Landroid/content/Context;

    .line 43
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lp70;->j:Landroid/content/ServiceConnection;

    .line 49
    invoke-virtual {v4, v0, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Lp70;->c:Z

    .line 55
    const-string v4, "bindService = {?}"

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    move-result-object v0

    .line 63
    aput-object v0, v1, v3

    .line 65
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "bindService Exception"

    .line 72
    new-array v3, v3, [Ljava/lang/Object;

    .line 74
    invoke-static {v2, v1, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 77
    :goto_0
    iget-boolean v0, p0, Lp70;->c:Z

    .line 79
    return v0
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 19
    const-string v0, "[ALSimulate] ProtocolAidlControl"

    .line 21
    const-string v2, "clearWaitingProtocol, protocolId={?}"

    .line 23
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 29
    iput-object v0, p0, Lp70;->f:Lys;

    .line 31
    return-void
.end method

.method public final declared-synchronized p(I)Lys;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp70;->d:Landroid/util/SparseArray;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "[ALSimulate] ProtocolAidlControl"

    .line 8
    const-string v1, "getCallback callbackId = {?}"

    .line 10
    const/4 v2, 0x1

    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v3, v2, v4

    .line 20
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lp70;->d:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lys;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    return-object p1

    .line 33
    :cond_0
    monitor-exit p0

    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final declared-synchronized q()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lp70;->g:I

    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lp70;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public r()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lp70;->b:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    sget-boolean v0, Lp70;->l:Z

    .line 3
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp70;->a:Lvs;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final declared-synchronized u(ILys;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp70;->d:Landroid/util/SparseArray;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "[ALSimulate] ProtocolAidlControl"

    .line 8
    const-string v1, "putCallback callbackId = {?}"

    .line 10
    const/4 v2, 0x1

    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v3, v2, v4

    .line 20
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lp70;->d:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public v()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lp70;->a:Lvs;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v4, p0, Lp70;->b:Landroid/content/Context;

    .line 11
    if-nez v4, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v0, "registerCallback"

    .line 16
    new-array v4, v3, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :try_start_0
    const-string v0, "com.amapauto.autonavi.modelsimulate.client"

    .line 23
    iget-object v4, p0, Lp70;->a:Lvs;

    .line 25
    iget-object v5, p0, Lp70;->k:Lxs$a;

    .line 27
    invoke-interface {v4, v0, v5}, Lvs;->u0(Ljava/lang/String;Lxs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-array v4, v1, [Ljava/lang/Object;

    .line 34
    aput-object v0, v4, v3

    .line 36
    const-string v0, "UnsupportedOperationException RemoteException {?}"

    .line 38
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    new-array v4, v1, [Ljava/lang/Object;

    .line 45
    aput-object v0, v4, v3

    .line 47
    const-string v0, "registerCallback RemoteException {?}"

    .line 49
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_0
    return v1

    .line 53
    :cond_1
    :goto_1
    const/4 v4, 0x2

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    aput-object v0, v4, v3

    .line 58
    iget-object v0, p0, Lp70;->b:Landroid/content/Context;

    .line 60
    aput-object v0, v4, v1

    .line 62
    const-string v0, "registerCallback protocolAidlInterface = {?} mContext = {?}"

    .line 64
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return v3
.end method

.method public declared-synchronized w(I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lp70;->d:Landroid/util/SparseArray;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v2

    .line 12
    if-lez v2, :cond_0

    .line 14
    const-string v2, "[ALSimulate] ProtocolAidlControl"

    .line 16
    const-string v3, "cancelCallback callbackId = {?}"

    .line 18
    new-array v4, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v5

    .line 24
    aput-object v5, v4, v0

    .line 26
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v2, p0, Lp70;->d:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    const-string v2, "[ALSimulate] ProtocolAidlControl"

    .line 40
    const-string v3, "cancelCallback Exception"

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    aput-object p1, v1, v0

    .line 46
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw p1
.end method

.method public x(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "[ALSimulate] ProtocolAidlControl"

    .line 6
    const/4 v4, -0x1

    .line 7
    if-eqz p1, :cond_5

    .line 9
    if-eqz p2, :cond_5

    .line 11
    iget-object v5, p0, Lp70;->b:Landroid/content/Context;

    .line 13
    if-nez v5, :cond_0

    .line 15
    goto/16 :goto_1

    .line 17
    :cond_0
    new-array v5, v1, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    move-result-object v6

    .line 27
    aput-object v6, v5, v2

    .line 29
    const-string v6, "sendProtocolModelData,model={?}"

    .line 31
    invoke-static {v3, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lok0;->f()Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 43
    move-result v5

    .line 44
    const v6, 0x1869f

    .line 47
    if-eq v5, v6, :cond_1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Lok0;->d(Ljava/lang/String;)I

    .line 60
    move-result v5

    .line 61
    if-gez v5, :cond_1

    .line 63
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 65
    const/16 v7, 0x272c

    .line 67
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 70
    move-result v8

    .line 71
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 74
    move-result v9

    .line 75
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 82
    move-result-wide v11

    .line 83
    move-object v6, v0

    .line 84
    invoke-direct/range {v6 .. v12}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(IIILjava/lang/String;J)V

    .line 87
    invoke-interface {p2, v0}, Lys;->a(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)V

    .line 90
    const-string p1, "The server model does not exist"

    .line 92
    new-array p2, v2, [Ljava/lang/Object;

    .line 94
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return v4

    .line 98
    :cond_1
    iget-object v5, p0, Lp70;->a:Lvs;

    .line 100
    if-eqz v5, :cond_4

    .line 102
    :try_start_0
    iget-object v5, p0, Lp70;->e:Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 104
    if-ne p1, v5, :cond_2

    .line 106
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 109
    move-result v4

    .line 110
    :cond_2
    if-gtz v4, :cond_3

    .line 112
    invoke-virtual {p0}, Lp70;->q()I

    .line 115
    move-result v4

    .line 116
    :cond_3
    invoke-virtual {p0, v4, p2}, Lp70;->u(ILys;)V

    .line 119
    const-string p2, "com.amapauto.autonavi.modelsimulate.client"

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    move-result-wide v5

    .line 125
    invoke-virtual {p1, v4}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 128
    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v5, v6}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 134
    new-instance p2, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 136
    invoke-direct {p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;-><init>()V

    .line 139
    invoke-virtual {p2, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->t(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 142
    iget-object v5, p0, Lp70;->a:Lvs;

    .line 144
    invoke-interface {v5, p2}, Lvs;->Y0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)I

    .line 147
    const-string p2, "sendProtocolModelData moduleId = {?} callbackId = {?}"

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 154
    move-result p1

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object p1

    .line 159
    aput-object p1, v0, v2

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object p1

    .line 165
    aput-object p1, v0, v1

    .line 167
    invoke-static {v3, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 171
    :catch_0
    move-exception p1

    .line 172
    const-string p2, "sendProtocolModelData UnsupportedOperationException"

    .line 174
    new-array v0, v2, [Ljava/lang/Object;

    .line 176
    invoke-static {v3, p2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 179
    goto :goto_0

    .line 180
    :catch_1
    move-exception p1

    .line 181
    const-string p2, "sendProtocolModelData RemoteException"

    .line 183
    new-array v0, v2, [Ljava/lang/Object;

    .line 185
    invoke-static {v3, p2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 188
    :cond_4
    :goto_0
    return v4

    .line 189
    :cond_5
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 191
    aput-object p1, v0, v2

    .line 193
    aput-object p2, v0, v1

    .line 195
    const-string p1, "sendProtocolModelData model = {?} callback = {?}"

    .line 197
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return v4
.end method
