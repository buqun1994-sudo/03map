.class public Lg2;
.super Loc;
.source "SourceFile"


# instance fields
.field public final c:Landroid/os/RemoteCallbackList;

.field public d:Ljava/util/HashMap;

.field public e:Li2;

.field public final f:Lur$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loc;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    iput-object v0, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lg2;->d:Ljava/util/HashMap;

    .line 18
    new-instance v0, Li2;

    .line 20
    invoke-direct {v0}, Li2;-><init>()V

    .line 23
    iput-object v0, p0, Lg2;->e:Li2;

    .line 25
    new-instance v0, Lg2$a;

    .line 27
    invoke-direct {v0, p0}, Lg2$a;-><init>(Lg2;)V

    .line 30
    iput-object v0, p0, Lg2;->f:Lur$a;

    .line 32
    return-void
.end method

.method public static synthetic m(Lg2;Ljava/lang/String;Lwr;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg2;->o(Ljava/lang/String;Lwr;)V

    .line 4
    return-void
.end method

.method public static synthetic n(Lg2;Ljava/lang/String;Lwr;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg2;->p(Ljava/lang/String;Lwr;)V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public d(Lec;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_5

    .line 3
    instance-of v0, p1, Lo2;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto/16 :goto_3

    .line 9
    :cond_0
    new-instance v0, Li2$a;

    .line 11
    invoke-direct {v0}, Li2$a;-><init>()V

    .line 14
    invoke-virtual {v0}, Li2$a;->a()Li2$a;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lec;->d()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p1}, Lec;->a()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    check-cast p1, Lo2;

    .line 31
    invoke-interface {p1}, Lo2;->b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 40
    move-result v1

    .line 41
    iput v1, v0, Li2$a;->d:I

    .line 43
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 46
    move-result-object p1

    .line 47
    iput-object p1, v0, Li2$a;->j:Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0}, Li2$a;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_0
    const-string v0, "[NewProtocol] AidlJsonConnection"

    .line 57
    const-string v1, "AidlJsonConnection dispatchData dispatchString:{?}"

    .line 59
    const/4 v2, 0x1

    .line 60
    new-array v3, v2, [Ljava/lang/Object;

    .line 62
    const/4 v4, 0x0

    .line 63
    aput-object p1, v3, v4

    .line 65
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 74
    iget-object v0, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 76
    monitor-enter v0

    .line 77
    :try_start_0
    const-string v1, "[NewProtocol] AidlJsonConnection"

    .line 79
    const-string v3, "AidlJsonConnection dispatchData callbacks{?}"

    .line 81
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    iget-object v5, p0, Lg2;->d:Ljava/util/HashMap;

    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 89
    aput-object v5, v2, v4

    .line 91
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 96
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 99
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v2, 0x0

    .line 101
    :goto_1
    if-ge v2, v1, :cond_4

    .line 103
    :try_start_1
    iget-object v3, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 105
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lwr;

    .line 111
    if-eqz v3, :cond_3

    .line 113
    invoke-interface {v3, p1}, Lwr;->O(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    move-exception v3

    .line 118
    :try_start_2
    const-string v5, "[NewProtocol] AidlJsonConnection"

    .line 120
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 124
    new-array v7, v4, [Ljava/lang/Object;

    .line 126
    invoke-static {v5, v6, v3, v7}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 129
    goto :goto_2

    .line 130
    :catch_1
    move-exception v3

    .line 131
    const-string v5, "[NewProtocol] AidlJsonConnection"

    .line 133
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    move-result-object v6

    .line 137
    new-array v7, v4, [Ljava/lang/Object;

    .line 139
    invoke-static {v5, v6, v3, v7}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 142
    goto :goto_2

    .line 143
    :catch_2
    move-exception v3

    .line 144
    const-string v5, "[NewProtocol] AidlJsonConnection"

    .line 146
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    new-array v7, v4, [Ljava/lang/Object;

    .line 152
    invoke-static {v5, v6, v3, v7}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 155
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 160
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 163
    monitor-exit v0

    .line 164
    goto :goto_3

    .line 165
    :catchall_0
    move-exception p1

    .line 166
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    throw p1

    .line 168
    :cond_5
    :goto_3
    return-void
.end method

.method public e(Lnc;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lnc;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Li2$a;

    .line 5
    iget-object v0, v0, Li2$a;->k:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lg2;->d:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lwr;

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 22
    const-string v0, "[NewProtocol] AidlJsonConnection"

    .line 24
    const-string v2, "sendDataToClient cb = null id={?}"

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Lnc;->h()I

    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    aput-object p1, v3, v4

    .line 38
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v5, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 45
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 48
    iget-object v5, p0, Lg2;->e:Li2;

    .line 50
    invoke-virtual {v5, p1}, Li2;->b(Lnc;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    invoke-interface {v2, v5}, Lwr;->O(Ljava/lang/String;)V

    .line 57
    const-string v2, "[NewProtocol] AidlJsonConnection"

    .line 59
    const-string v6, "AidlJsonConnection doSendDataToClientAsynchronous protocolID:{?}, requestAuthor={?}, receicedJson:{?}"

    .line 61
    const/4 v7, 0x3

    .line 62
    new-array v7, v7, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lnc;->h()I

    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p1

    .line 72
    aput-object p1, v7, v4

    .line 74
    aput-object v0, v7, v3

    .line 76
    const/4 p1, 0x2

    .line 77
    aput-object v5, v7, p1

    .line 79
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 84
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception p1

    .line 91
    :try_start_3
    const-string v0, "[NewProtocol] AidlJsonConnection"

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    new-array v3, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {v0, v2, p1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :try_start_4
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    goto :goto_0

    .line 105
    :catch_1
    move-exception p1

    .line 106
    :try_start_5
    const-string v0, "[NewProtocol] AidlJsonConnection"

    .line 108
    const-string v2, "sendDataToClient IllegalStateException {?}"

    .line 110
    new-array v3, v3, [Ljava/lang/Object;

    .line 112
    aput-object p1, v3, v4

    .line 114
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 117
    :try_start_6
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 119
    goto :goto_0

    .line 120
    :catch_2
    move-exception p1

    .line 121
    :try_start_7
    const-string v0, "[NewProtocol] AidlJsonConnection"

    .line 123
    const-string v2, "sendDataToClient RemoteException {?}"

    .line 125
    new-array v3, v3, [Ljava/lang/Object;

    .line 127
    aput-object p1, v3, v4

    .line 129
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 132
    :try_start_8
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 134
    goto :goto_0

    .line 135
    :goto_1
    monitor-exit v1

    .line 136
    return-void

    .line 137
    :goto_2
    iget-object v0, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 139
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 142
    throw p1

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 145
    throw p1
.end method

.method public f()Lrq;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2;->e:Li2;

    .line 3
    return-object v0
.end method

.method public i(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 11

    .line 1
    const-string p2, "[NewProtocol] AidlJsonConnection"

    .line 3
    const-string v0, "[getSystemData] getCarEnterpriseUserInfo"

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p2, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 p2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 14
    const-string p1, "[NewProtocol] AidlJsonConnection"

    .line 16
    const-string v0, "getSystemData param model not be null"

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-object p2

    .line 24
    :cond_0
    const-string v0, "[NewProtocol] AidlJsonConnection"

    .line 26
    const-string v2, "dodispatchMessageAsynchronous dispatchData id:{?}"

    .line 28
    const/4 v3, 0x1

    .line 29
    new-array v4, v3, [Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 34
    move-result v5

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v5

    .line 39
    aput-object v5, v4, v1

    .line 41
    invoke-static {v0, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v2, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 49
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 52
    move-result v2

    .line 53
    move-object v5, p2

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_0
    if-ge v4, v2, :cond_7

    .line 57
    iget-object v5, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 59
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lwr;

    .line 65
    if-eqz v5, :cond_6

    .line 67
    new-instance v6, Li2$a;

    .line 69
    invoke-direct {v6}, Li2$a;-><init>()V

    .line 72
    const-string v7, "[NewProtocol] AidlJsonConnection"

    .line 74
    const-string v8, "convertDataToClient actionId:{?}"

    .line 76
    new-array v9, v3, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 81
    move-result v10

    .line 82
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v10

    .line 86
    aput-object v10, v9, v1

    .line 88
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 94
    move-result v7

    .line 95
    iput v7, v6, Li2$a;->d:I

    .line 97
    const-string v7, ""

    .line 99
    iput-object v7, v6, Li2$a;->b:Ljava/lang/String;

    .line 101
    const-string v7, ""

    .line 103
    iput-object v7, v6, Li2$a;->a:Ljava/lang/String;

    .line 105
    iput-boolean v3, v6, Li2$a;->c:Z

    .line 107
    const-string v7, "requestsync"

    .line 109
    iput-object v7, v6, Li2$a;->h:Ljava/lang/String;

    .line 111
    invoke-static {}, Lrv;->H()Lrv;

    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Lrv;->L()Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    iput-object v7, v6, Li2$a;->f:Ljava/lang/String;

    .line 121
    const/16 v7, 0xc8

    .line 123
    iput v7, v6, Li2$a;->i:I

    .line 125
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 128
    move-result-object v7

    .line 129
    iput-object v7, v6, Li2$a;->j:Lorg/json/JSONObject;

    .line 131
    invoke-virtual {v6}, Li2$a;->toString()Ljava/lang/String;

    .line 134
    move-result-object v6

    .line 135
    const-string v7, "[NewProtocol] AidlJsonConnection"

    .line 137
    const-string v8, "dodispatchMessageAsynchronous dispatchData id:{?}"

    .line 139
    new-array v9, v3, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 144
    move-result v10

    .line 145
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v10

    .line 149
    aput-object v10, v9, v1

    .line 151
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-interface {v5, v6}, Lwr;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v6

    .line 158
    const-string v7, "[NewProtocol] AidlJsonConnection"

    .line 160
    const-string v8, "[getSystemData]receivedSync responseJson:{?}"

    .line 162
    new-array v9, v3, [Ljava/lang/Object;

    .line 164
    aput-object v6, v9, v1

    .line 166
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-static {v6}, Li2$a;->b(Ljava/lang/String;)Li2$a;

    .line 172
    move-result-object v6

    .line 173
    if-nez v6, :cond_1

    .line 175
    const-string v5, "[NewProtocol] AidlJsonConnection"

    .line 177
    const-string v6, "[getSystemData]jsonModel == null"

    .line 179
    new-array v7, v1, [Ljava/lang/Object;

    .line 181
    invoke-static {v5, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    goto/16 :goto_2

    .line 186
    :cond_1
    iget-object v6, v6, Li2$a;->j:Lorg/json/JSONObject;

    .line 188
    if-nez v6, :cond_2

    .line 190
    const-string v5, "[NewProtocol] AidlJsonConnection"

    .line 192
    const-string v6, "[getSystemData]dataJson == null"

    .line 194
    new-array v7, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {v5, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    goto :goto_2

    .line 200
    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 203
    move-result v7

    .line 204
    const/16 v8, 0x772a

    .line 206
    if-eq v7, v8, :cond_4

    .line 208
    const v8, 0x1388f

    .line 211
    if-eq v7, v8, :cond_3

    .line 213
    move-object v6, p2

    .line 214
    goto :goto_1

    .line 215
    :cond_3
    const-class v7, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;

    .line 217
    invoke-static {v6, v7}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 223
    goto :goto_1

    .line 224
    :cond_4
    const-class v7, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;

    .line 226
    invoke-static {v6, v7}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    :goto_1
    if-eqz v6, :cond_5

    .line 234
    :try_start_1
    const-string p1, "[NewProtocol] AidlJsonConnection"

    .line 236
    new-instance p2, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, " resultModel from "

    .line 246
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object p2

    .line 256
    new-array v2, v1, [Ljava/lang/Object;

    .line 258
    invoke-static {p1, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 263
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 266
    monitor-exit v0

    .line 267
    return-object v6

    .line 268
    :catchall_0
    move-object p2, v6

    .line 269
    goto :goto_7

    .line 270
    :catch_0
    move-exception p1

    .line 271
    move-object p2, v6

    .line 272
    goto :goto_4

    .line 273
    :catch_1
    move-exception p1

    .line 274
    move-object p2, v6

    .line 275
    goto :goto_5

    .line 276
    :catch_2
    move-exception p1

    .line 277
    move-object p2, v6

    .line 278
    goto :goto_6

    .line 279
    :cond_5
    move-object v5, v6

    .line 280
    goto :goto_3

    .line 281
    :cond_6
    :goto_2
    move-object v5, p2

    .line 282
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 284
    goto/16 :goto_0

    .line 286
    :cond_7
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 288
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 291
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 292
    return-object v5

    .line 293
    :catch_3
    move-exception p1

    .line 294
    :goto_4
    :try_start_3
    const-string v2, "[NewProtocol] AidlJsonConnection"

    .line 296
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 299
    move-result-object v3

    .line 300
    new-array v1, v1, [Ljava/lang/Object;

    .line 302
    invoke-static {v2, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    :try_start_4
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 307
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 310
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 311
    return-object p2

    .line 312
    :catch_4
    move-exception p1

    .line 313
    :goto_5
    :try_start_5
    const-string v2, "[NewProtocol] AidlJsonConnection"

    .line 315
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 318
    move-result-object v3

    .line 319
    new-array v1, v1, [Ljava/lang/Object;

    .line 321
    invoke-static {v2, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 324
    :try_start_6
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 326
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 329
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 330
    return-object p2

    .line 331
    :catch_5
    move-exception p1

    .line 332
    :goto_6
    :try_start_7
    const-string v2, "[NewProtocol] AidlJsonConnection"

    .line 334
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 337
    move-result-object v3

    .line 338
    new-array v1, v1, [Ljava/lang/Object;

    .line 340
    invoke-static {v2, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 343
    :try_start_8
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 345
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 348
    monitor-exit v0

    .line 349
    return-object p2

    .line 350
    :catchall_1
    :goto_7
    iget-object p1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 352
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 355
    monitor-exit v0

    .line 356
    return-object p2

    .line 357
    :catchall_2
    move-exception p1

    .line 358
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 359
    throw p1
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Ljava/lang/String;Lwr;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 8
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 11
    iget-object v1, p0, Lg2;->d:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string p1, "[NewProtocol] AidlJsonConnection"

    .line 19
    const-string v0, " registerCallbackSafe cb={?} mCallbacksMap.size:{?}"

    .line 21
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object p2, v1, v2

    .line 27
    iget-object p2, p0, Lg2;->d:Ljava/util/HashMap;

    .line 29
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 32
    move-result p2

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p2

    .line 37
    const/4 v2, 0x1

    .line 38
    aput-object p2, v1, v2

    .line 40
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1

    .line 47
    :cond_0
    :goto_0
    return-void
.end method

.method public final p(Ljava/lang/String;Lwr;)V
    .locals 4

    .line 1
    const-string v0, "[NewProtocol] AidlJsonConnection"

    .line 3
    const-string v1, " unregisterCallbackSafe cb={?}"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p2, v2, v3

    .line 11
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p2, :cond_0

    .line 16
    iget-object v0, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lg2;->c:Landroid/os/RemoteCallbackList;

    .line 21
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 24
    iget-object p2, p0, Lg2;->d:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1

    .line 34
    :cond_0
    :goto_0
    return-void
.end method
