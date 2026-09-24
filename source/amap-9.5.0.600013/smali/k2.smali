.class public Lk2;
.super Loc;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Landroid/os/RemoteCallbackList;

.field public e:Ljava/util/HashMap;

.field public f:Lm2;

.field public g:Ljava/util/List;

.field public h:Lvs$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lk2;->c:Z

    .line 7
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 9
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 12
    iput-object v0, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object v0, p0, Lk2;->e:Ljava/util/HashMap;

    .line 21
    new-instance v0, Lm2;

    .line 23
    invoke-direct {v0}, Lm2;-><init>()V

    .line 26
    iput-object v0, p0, Lk2;->f:Lm2;

    .line 28
    new-instance v0, Lk2$a;

    .line 30
    invoke-direct {v0, p0}, Lk2$a;-><init>(Lk2;)V

    .line 33
    iput-object v0, p0, Lk2;->h:Lvs$a;

    .line 35
    return-void
.end method

.method public static synthetic m(Lk2;Ljava/lang/String;Lxs;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk2;->z(Ljava/lang/String;Lxs;)V

    .line 4
    return-void
.end method

.method public static synthetic n(Lk2;Ljava/lang/String;Lxs;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk2;->w(Ljava/lang/String;Lxs;)V

    .line 4
    return-void
.end method

.method public static synthetic o(Lk2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lk2;->g:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic p(Lk2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lk2;->g:Ljava/util/List;

    .line 3
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lnc;
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 3
    invoke-virtual {p0, p1}, Lk2;->q(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lnc;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d(Lec;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 3
    instance-of v0, p1, Lo2;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lec;->a()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 18
    const-string v2, "[NewProtocol] AidlModelConnection"

    .line 20
    const-string v4, "AidlModelConnection doDispatchMessageAsynchronous dispatchData = {?}"

    .line 22
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    move-object v1, p1

    .line 26
    check-cast v1, Lo2;

    .line 28
    invoke-interface {v1}, Lo2;->b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 34
    invoke-static {}, Li;->b()Z

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 40
    sget-boolean v4, Li;->a:Z

    .line 42
    if-eqz v4, :cond_2

    .line 44
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget p1, p1, Lec;->c:I

    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string p1, ""

    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 66
    :cond_2
    const/4 p1, 0x2

    .line 67
    new-array p1, p1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 72
    move-result v4

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v4

    .line 77
    aput-object v4, p1, v3

    .line 79
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 82
    move-result-object v3

    .line 83
    aput-object v3, p1, v0

    .line 85
    const-string v0, "doDispatchMessageAsynchronous dispatchData protocolID:{?}, protocolModel.toJsonObject() = {?}"

    .line 87
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v1}, Lk2;->x(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)Z

    .line 93
    :cond_3
    :goto_0
    return-void
.end method

.method public e(Lnc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk2;->f:Lm2;

    .line 3
    invoke-virtual {v0, p1}, Lm2;->b(Lnc;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Li;->b()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    sget-boolean v1, Li;->a:Z

    .line 17
    if-eqz v1, :cond_1

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {p1}, Lnc;->i()I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, ""

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 43
    :cond_1
    const/4 v1, 0x2

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lnc;->h()I

    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 54
    const/4 v2, 0x0

    .line 55
    aput-object p1, v1, v2

    .line 57
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 60
    move-result-object p1

    .line 61
    const/4 v2, 0x1

    .line 62
    aput-object p1, v1, v2

    .line 64
    const-string p1, "[NewProtocol] AidlModelConnection"

    .line 66
    const-string v2, "AidlModelConnection doSendDataToClientAsynchronous id:{?} protocolModel:{?}"

    .line 68
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    instance-of p1, v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 73
    if-eqz p1, :cond_2

    .line 75
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 77
    invoke-virtual {p0, v0}, Lk2;->u(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)Z

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0, v0}, Lk2;->v(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)Z

    .line 84
    :cond_3
    :goto_0
    return-void
.end method

.method public f()Lrq;
    .locals 1

    .line 1
    iget-object v0, p0, Lk2;->f:Lm2;

    .line 3
    return-object v0
.end method

.method public i(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    const-string v0, "[NewProtocol] AidlModelConnection"

    .line 6
    const-string v1, "[getSystemData] getCarEnterpriseUserInfo"

    .line 8
    invoke-static {v0, v1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance p2, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 13
    invoke-direct {p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;-><init>()V

    .line 16
    invoke-virtual {p2, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->t(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 19
    invoke-virtual {p0, p2}, Lk2;->t(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->s()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 30
    move-result-object p1

    .line 31
    :goto_0
    return-object p1
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public q(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lnc;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loc;->b(Ljava/lang/Object;)Lnc;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lk2;->g:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public final s(Lxs;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk2;->e:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    if-ne v2, p1, :cond_0

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public declared-synchronized t(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/protocol/service/ProtocolService;->a()Lcom/autonavi/amapauto/protocol/service/ProtocolService;

    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lk2;->r()Ljava/util/List;

    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_2

    .line 16
    const-string v2, "[NewProtocol] AidlModelConnection"

    .line 18
    const-string v3, "[getSystemDataBySync] getCarEnterpriseUserInfo"

    .line 20
    new-array v4, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lk2;->r()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lws;

    .line 45
    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v3, p1}, Lws;->T(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 50
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v3, :cond_0

    .line 53
    move-object v0, v3

    .line 54
    :cond_1
    monitor-exit p0

    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    const-string v2, "[NewProtocol] AidlModelConnection"

    .line 61
    const-string v3, "[getSystemDataBySync]RemoteException = {?}"

    .line 63
    const/4 v4, 0x1

    .line 64
    new-array v4, v4, [Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    aput-object p1, v4, v1

    .line 72
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_2
    const-string p1, "[NewProtocol] AidlModelConnection"

    .line 77
    const-string v2, "[getSystemDataBySync] getCarEnterpriseUserInfo getSystemData() is null"

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    .line 85
    return-object v0

    .line 86
    :goto_0
    monitor-exit p0

    .line 87
    throw p1
.end method

.method public declared-synchronized u(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v4

    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_2

    .line 18
    iget-boolean v4, p0, Lk2;->c:Z

    .line 20
    if-nez v4, :cond_0

    .line 22
    goto/16 :goto_7

    .line 24
    :cond_0
    iget-object v4, p0, Lk2;->e:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lxs;

    .line 36
    if-nez v4, :cond_1

    .line 38
    const-string v0, "[NewProtocol] AidlModelConnection"

    .line 40
    const-string v1, "modelCallbackFail cb = null id={?}"

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p1

    .line 52
    aput-object p1, v2, v3

    .line 54
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    monitor-exit p0

    .line 58
    return v3

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p1, v5}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    iget-object v5, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 68
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 71
    invoke-interface {v4, p1}, Lxs;->e1(Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    const-string v4, "[NewProtocol] AidlModelConnection"

    .line 76
    const-string v5, "modelCallbackFail id={?} callbackid={?} version=={?}"

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 83
    move-result v6

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v6

    .line 88
    aput-object v6, v1, v3

    .line 90
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 93
    move-result v6

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v6

    .line 98
    aput-object v6, v1, v2

    .line 100
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 103
    move-result p1

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object p1

    .line 108
    aput-object p1, v1, v0

    .line 110
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :try_start_4
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 115
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    goto :goto_5

    .line 119
    :catch_0
    move-exception p1

    .line 120
    const/4 v0, 0x1

    .line 121
    goto :goto_0

    .line 122
    :catch_1
    move-exception p1

    .line 123
    const/4 v0, 0x1

    .line 124
    goto :goto_1

    .line 125
    :catch_2
    move-exception p1

    .line 126
    const/4 v0, 0x1

    .line 127
    goto :goto_3

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    goto :goto_6

    .line 130
    :catch_3
    move-exception p1

    .line 131
    const/4 v0, 0x0

    .line 132
    :goto_0
    :try_start_5
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 134
    const-string v4, "sendModelData Exception {?}"

    .line 136
    new-array v2, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    aput-object p1, v2, v3

    .line 144
    invoke-static {v1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    :try_start_6
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 149
    goto :goto_2

    .line 150
    :catch_4
    move-exception p1

    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_1
    :try_start_7
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 154
    const-string v4, "modelCallbackFail IllegalStateException {?}"

    .line 156
    new-array v2, v2, [Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    aput-object p1, v2, v3

    .line 164
    invoke-static {v1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 167
    :try_start_8
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 169
    :goto_2
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 172
    goto :goto_4

    .line 173
    :catch_5
    move-exception p1

    .line 174
    const/4 v0, 0x0

    .line 175
    :goto_3
    :try_start_9
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 177
    const-string v4, "modelCallbackFail RemoteException {?}"

    .line 179
    new-array v2, v2, [Ljava/lang/Object;

    .line 181
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    aput-object p1, v2, v3

    .line 187
    invoke-static {v1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 190
    :try_start_a
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 192
    goto :goto_2

    .line 193
    :goto_4
    move v2, v0

    .line 194
    :goto_5
    monitor-exit p0

    .line 195
    return v2

    .line 196
    :goto_6
    :try_start_b
    iget-object v0, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 198
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 201
    throw p1

    .line 202
    :catchall_1
    move-exception p1

    .line 203
    goto :goto_8

    .line 204
    :cond_2
    :goto_7
    if-eqz p1, :cond_3

    .line 206
    const-string v4, "[NewProtocol] AidlModelConnection"

    .line 208
    const-string v5, "modelCallbackFail mPackageName={?} hasBinded={?} id={?}"

    .line 210
    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 215
    move-result-object v6

    .line 216
    aput-object v6, v1, v3

    .line 218
    iget-boolean v6, p0, Lk2;->c:Z

    .line 220
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    move-result-object v6

    .line 224
    aput-object v6, v1, v2

    .line 226
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 229
    move-result p1

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    move-result-object p1

    .line 234
    aput-object p1, v1, v0

    .line 236
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 239
    goto :goto_9

    .line 240
    :goto_8
    monitor-exit p0

    .line 241
    throw p1

    .line 242
    :cond_3
    :goto_9
    monitor-exit p0

    .line 243
    return v3
.end method

.method public declared-synchronized v(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v4

    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_2

    .line 18
    iget-boolean v4, p0, Lk2;->c:Z

    .line 20
    if-nez v4, :cond_0

    .line 22
    goto/16 :goto_7

    .line 24
    :cond_0
    iget-object v4, p0, Lk2;->e:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lxs;

    .line 36
    if-nez v4, :cond_1

    .line 38
    const-string v0, "[NewProtocol] AidlModelConnection"

    .line 40
    const-string v1, "modelCallbackSuccess cb = null id={?}"

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p1

    .line 52
    aput-object p1, v2, v3

    .line 54
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    monitor-exit p0

    .line 58
    return v3

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p1, v5}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    iget-object v5, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 68
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 71
    new-instance v5, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 73
    invoke-direct {v5}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;-><init>()V

    .line 76
    invoke-virtual {v5, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->t(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 79
    invoke-interface {v4, v5}, Lxs;->E(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    const-string v4, "[NewProtocol] AidlModelConnection"

    .line 84
    const-string v5, "modelCallbackSuccess id={?} callbackid={?} version=={?}"

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 91
    move-result v6

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v6

    .line 96
    aput-object v6, v1, v3

    .line 98
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 101
    move-result v6

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v6

    .line 106
    aput-object v6, v1, v2

    .line 108
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 111
    move-result p1

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object p1

    .line 116
    aput-object p1, v1, v0

    .line 118
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 123
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    goto :goto_5

    .line 127
    :catch_0
    move-exception p1

    .line 128
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 130
    :catch_1
    move-exception p1

    .line 131
    const/4 v0, 0x1

    .line 132
    goto :goto_1

    .line 133
    :catch_2
    move-exception p1

    .line 134
    const/4 v0, 0x1

    .line 135
    goto :goto_3

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    goto :goto_6

    .line 138
    :catch_3
    move-exception p1

    .line 139
    const/4 v0, 0x0

    .line 140
    :goto_0
    :try_start_5
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 142
    const-string v4, "sendModelData Exception {?}"

    .line 144
    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    aput-object p1, v2, v3

    .line 152
    invoke-static {v1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    :try_start_6
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 157
    goto :goto_2

    .line 158
    :catch_4
    move-exception p1

    .line 159
    const/4 v0, 0x0

    .line 160
    :goto_1
    :try_start_7
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 162
    const-string v4, "modelCallbackSuccess IllegalStateException {?}"

    .line 164
    new-array v2, v2, [Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    aput-object p1, v2, v3

    .line 172
    invoke-static {v1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    :try_start_8
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 177
    :goto_2
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 180
    goto :goto_4

    .line 181
    :catch_5
    move-exception p1

    .line 182
    const/4 v0, 0x0

    .line 183
    :goto_3
    :try_start_9
    const-string v1, "[NewProtocol] AidlModelConnection"

    .line 185
    const-string v4, "modelCallbackSuccess RemoteException {?}"

    .line 187
    new-array v2, v2, [Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    aput-object p1, v2, v3

    .line 195
    invoke-static {v1, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 198
    :try_start_a
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 200
    goto :goto_2

    .line 201
    :goto_4
    move v2, v0

    .line 202
    :goto_5
    monitor-exit p0

    .line 203
    return v2

    .line 204
    :goto_6
    :try_start_b
    iget-object v0, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 206
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 209
    throw p1

    .line 210
    :catchall_1
    move-exception p1

    .line 211
    goto :goto_8

    .line 212
    :cond_2
    :goto_7
    if-eqz p1, :cond_3

    .line 214
    const-string v4, "[NewProtocol] AidlModelConnection"

    .line 216
    const-string v5, "modelCallbackSuccess mPackageName={?} hasBinded={?} id={?}"

    .line 218
    new-array v1, v1, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 223
    move-result-object v6

    .line 224
    aput-object v6, v1, v3

    .line 226
    iget-boolean v6, p0, Lk2;->c:Z

    .line 228
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 231
    move-result-object v6

    .line 232
    aput-object v6, v1, v2

    .line 234
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 237
    move-result p1

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    move-result-object p1

    .line 242
    aput-object p1, v1, v0

    .line 244
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 247
    goto :goto_9

    .line 248
    :goto_8
    monitor-exit p0

    .line 249
    throw p1

    .line 250
    :cond_3
    :goto_9
    monitor-exit p0

    .line 251
    return v3
.end method

.method public final declared-synchronized w(Ljava/lang/String;Lxs;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 6
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 9
    iget-object v0, p0, Lk2;->e:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "[NewProtocol] AidlModelConnection"

    .line 16
    const-string v0, " registerCallbackSafe cb={?} mCallbacksMap.size:{?}"

    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p2, v1, v2

    .line 24
    iget-object p2, p0, Lk2;->e:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 29
    move-result p2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p2

    .line 34
    const/4 v2, 0x1

    .line 35
    aput-object p2, v1, v2

    .line 37
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    .line 45
    return-void
.end method

.method public declared-synchronized x(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)Z
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p1, :cond_4

    .line 7
    :try_start_0
    iget-boolean v3, p0, Lk2;->c:Z

    .line 9
    if-nez v3, :cond_0

    .line 11
    goto/16 :goto_2

    .line 13
    :cond_0
    const-string v3, "[NewProtocol] AidlModelConnection"

    .line 15
    const-string v4, "sendModelData model ID={?}"

    .line 17
    new-array v5, v1, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 22
    move-result v6

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v6

    .line 27
    aput-object v6, v5, v2

    .line 29
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v3, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 34
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_0
    if-ge v4, v3, :cond_3

    .line 42
    iget-object v6, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 44
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lxs;

    .line 50
    if-eqz v6, :cond_2

    .line 52
    invoke-virtual {p0, v6}, Lk2;->s(Lxs;)Ljava/lang/String;

    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    move-result-object v8

    .line 64
    invoke-static {v7, v8}, Lqk0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    move-result v8

    .line 68
    if-nez v8, :cond_1

    .line 70
    const-string v6, "[NewProtocol] AidlModelConnection"

    .line 72
    const-string v7, "sendModelData ID={?} {?} is not found in client models"

    .line 74
    new-array v8, v0, [Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 79
    move-result v9

    .line 80
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v9

    .line 84
    aput-object v9, v8, v2

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 93
    move-result-object v9

    .line 94
    aput-object v9, v8, v1

    .line 96
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p1, v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 103
    new-instance v8, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 105
    invoke-direct {v8}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;-><init>()V

    .line 108
    invoke-virtual {v8, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->t(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    const-string v9, "[NewProtocol] AidlModelConnection"

    .line 113
    const-string v10, "sendModelData to client:{?}"

    .line 115
    new-array v11, v1, [Ljava/lang/Object;

    .line 117
    aput-object v7, v11, v2

    .line 119
    invoke-static {v9, v10, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-interface {v6, v8}, Lxs;->C0(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const/4 v5, 0x1

    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception v6

    .line 128
    :try_start_2
    const-string v7, "[NewProtocol] AidlModelConnection"

    .line 130
    const-string v8, "sendModelData ID={?} Exception {?}"

    .line 132
    new-array v9, v0, [Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 137
    move-result v10

    .line 138
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v10

    .line 142
    aput-object v10, v9, v2

    .line 144
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 148
    aput-object v6, v9, v1

    .line 150
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    goto :goto_1

    .line 154
    :catch_1
    move-exception v6

    .line 155
    const-string v7, "[NewProtocol] AidlModelConnection"

    .line 157
    const-string v8, "sendModelData ID={?} RemoteException {?}"

    .line 159
    new-array v9, v0, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 164
    move-result v10

    .line 165
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v10

    .line 169
    aput-object v10, v9, v2

    .line 171
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 174
    move-result-object v6

    .line 175
    aput-object v6, v9, v1

    .line 177
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_3
    iget-object p1, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 186
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    monitor-exit p0

    .line 190
    return v5

    .line 191
    :cond_4
    :goto_2
    :try_start_3
    const-string v3, "[NewProtocol] AidlModelConnection"

    .line 193
    const-string v4, "sendModelData model={?}, hasBinded={?}"

    .line 195
    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    aput-object p1, v0, v2

    .line 199
    iget-boolean p1, p0, Lk2;->c:Z

    .line 201
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 204
    move-result-object p1

    .line 205
    aput-object p1, v0, v1

    .line 207
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    monitor-exit p0

    .line 211
    return v2

    .line 212
    :catchall_0
    move-exception p1

    .line 213
    monitor-exit p0

    .line 214
    throw p1
.end method

.method public declared-synchronized y(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lk2;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final declared-synchronized z(Ljava/lang/String;Lxs;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "[NewProtocol] AidlModelConnection"

    .line 4
    const-string v1, " unregisterCallbackSafe cb={?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object p2, v2, v3

    .line 12
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    if-eqz p2, :cond_0

    .line 17
    iget-object v0, p0, Lk2;->d:Landroid/os/RemoteCallbackList;

    .line 19
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 22
    iget-object p2, p0, Lk2;->e:Ljava/util/HashMap;

    .line 24
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method
