.class public Ll30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls70;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll30$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Ls70;

.field public b:Ljava/util/concurrent/ConcurrentHashMap;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/16 v1, 0x13f1

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    sput-object v0, Ll30;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lt70;

    invoke-direct {v0}, Lt70;-><init>()V

    iput-object v0, p0, Ll30;->a:Ls70;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ll30;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll30;->c:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll30;->d:Ljava/util/List;

    .line 7
    invoke-virtual {p0}, Ll30;->j()V

    return-void
.end method

.method public synthetic constructor <init>(Ll30$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll30;-><init>()V

    return-void
.end method

.method public static final g()Ll30;
    .locals 1

    .line 1
    invoke-static {}, Ll30$b;->a()Ll30;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final h()I
    .locals 3

    .line 1
    :cond_0
    sget-object v0, Ll30;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v1

    .line 7
    const v2, 0x7fffffff

    .line 10
    if-lt v1, v2, :cond_1

    .line 12
    const/16 v2, 0x13f1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 17
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    return v2
.end method


# virtual methods
.method public a(Lec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll30;->a:Ls70;

    .line 3
    invoke-interface {v0, p1}, Ls70;->a(Lec;)V

    .line 6
    return-void
.end method

.method public b(I)Loc;
    .locals 1

    .line 1
    iget-object v0, p0, Ll30;->a:Ls70;

    .line 3
    invoke-interface {v0, p1}, Ls70;->b(I)Loc;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[NewProtocol] NewProtocolManager"

    .line 6
    const-string v2, "[getSystemData]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ll30;->a:Ls70;

    .line 13
    invoke-interface {v0, p1, p2}, Ls70;->c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public d(Loc;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Loc;->a()V

    .line 4
    iget-object v0, p0, Ll30;->a:Ls70;

    .line 6
    invoke-interface {v0, p1}, Ls70;->d(Loc;)V

    .line 9
    return-void
.end method

.method public e(Lnc;)V
    .locals 6

    .line 1
    const-string v0, "[NewProtocol] NewProtocolManager"

    .line 3
    const-string v1, "addCallAction action={?} protocolId:{?}"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p1, v2, v3

    .line 11
    invoke-virtual {p1}, Lnc;->h()I

    .line 14
    move-result v4

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x1

    .line 20
    aput-object v4, v2, v5

    .line 22
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lnc;->l()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lhm0;->k()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Lnc;->k()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_6

    .line 48
    invoke-static {}, Lse;->c()Lse;

    .line 51
    move-result-object v0

    .line 52
    const v1, 0xea61

    .line 55
    invoke-virtual {v0, v1}, Lse;->getOptionalValue(I)Leq$a;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 65
    const-string v0, "[NewProtocol] NewProtocolManager"

    .line 67
    const-string v1, "addCallAction isWakeupMainMapForFrontAction={?}"

    .line 69
    new-array v2, v5, [Ljava/lang/Object;

    .line 71
    invoke-static {}, Lrv;->H()Lrv;

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lrv;->V()Z

    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object v4

    .line 83
    aput-object v4, v2, v3

    .line 85
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lrv;->H()Lrv;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lrv;->V()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 98
    new-instance v0, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;

    .line 100
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;-><init>()V

    .line 103
    const/16 v1, 0x3e8

    .line 105
    iput v1, v0, Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;->b:I

    .line 107
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/RequestDisplayMoveFront;->notifyDisplayMoveFrontImpl(Lcom/autonavi/amapauto/jni/RequestMoveFrontParams;)Lcom/autonavi/amapauto/jni/ResponseMoveFrontParams;

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lse;->c()Lse;

    .line 114
    move-result-object v0

    .line 115
    const/16 v1, 0x2732

    .line 117
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    invoke-static {}, Lrv;->H()Lrv;

    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lrv;->X()V

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lrv;->H()Lrv;

    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lrv;->W()V

    .line 138
    :cond_3
    :goto_0
    sget-boolean v0, Li;->a:Z

    .line 140
    if-nez v0, :cond_4

    .line 142
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 145
    move-result v0

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    const/4 v0, 0x1

    .line 148
    :goto_1
    const-string v1, "[NewProtocol] NewProtocolManager"

    .line 150
    const-string v2, "addCallAction hasLoadReady:{?} "

    .line 152
    new-array v4, v5, [Ljava/lang/Object;

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    move-result-object v5

    .line 158
    aput-object v5, v4, v3

    .line 160
    invoke-static {v1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    if-nez v0, :cond_5

    .line 165
    invoke-virtual {p1}, Lnc;->h()I

    .line 168
    move-result v0

    .line 169
    const/16 v1, 0x300d

    .line 171
    if-eq v0, v1, :cond_5

    .line 173
    iget-object v0, p0, Ll30;->c:Ljava/util/List;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    iget-object v0, p0, Ll30;->c:Ljava/util/List;

    .line 180
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void

    .line 184
    :cond_5
    invoke-virtual {p0, p1}, Ll30;->o(Lnc;)V

    .line 187
    goto :goto_3

    .line 188
    :cond_6
    invoke-static {}, La7;->c()La7;

    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, La7;->d()Z

    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_a

    .line 198
    invoke-virtual {p1}, Lnc;->h()I

    .line 201
    move-result v0

    .line 202
    const/16 v1, 0x32d6

    .line 204
    if-eq v0, v1, :cond_9

    .line 206
    invoke-virtual {p1}, Lnc;->h()I

    .line 209
    move-result v0

    .line 210
    const/16 v1, 0x4eea

    .line 212
    if-eq v0, v1, :cond_9

    .line 214
    invoke-virtual {p1}, Lnc;->h()I

    .line 217
    move-result v0

    .line 218
    const v1, 0x138c3

    .line 221
    if-ne v0, v1, :cond_7

    .line 223
    goto :goto_2

    .line 224
    :cond_7
    invoke-virtual {p1}, Lnc;->h()I

    .line 227
    move-result v0

    .line 228
    const v1, 0x1869f

    .line 231
    if-ne v0, v1, :cond_8

    .line 233
    invoke-virtual {p0, p1}, Ll30;->o(Lnc;)V

    .line 236
    goto :goto_3

    .line 237
    :cond_8
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Ll30;->d:Ljava/util/List;

    .line 240
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Ll30;->d:Ljava/util/List;

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 248
    move-result v0

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {p1}, Lnc;->v()V

    .line 253
    const-string p1, "[NewProtocol] NewProtocolManager"

    .line 255
    const-string v1, "BackgroudService addCallAction backgroudService has no loaded size:{?}"

    .line 257
    new-array v2, v5, [Ljava/lang/Object;

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    move-result-object v0

    .line 263
    aput-object v0, v2, v3

    .line 265
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-static {}, La7;->c()La7;

    .line 271
    move-result-object p1

    .line 272
    invoke-static {}, Lrv;->H()Lrv;

    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p1, v0}, La7;->h(Landroid/content/Context;)V

    .line 283
    goto :goto_3

    .line 284
    :catchall_0
    move-exception p1

    .line 285
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    throw p1

    .line 287
    :cond_9
    :goto_2
    invoke-virtual {p0, p1}, Ll30;->o(Lnc;)V

    .line 290
    goto :goto_3

    .line 291
    :cond_a
    invoke-virtual {p0, p1}, Ll30;->o(Lnc;)V

    .line 294
    :goto_3
    return-void
.end method

.method public f(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "[NewProtocol] NewProtocolManager"

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Ll30;->c:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lnc;

    .line 24
    invoke-virtual {v2}, Lnc;->k()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v2}, Lnc;->h()I

    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    aput-object v2, v3, v0

    .line 43
    const-string v2, "clearWaitAction protocolId={?}"

    .line 45
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Ll30;->c:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 57
    const-string p1, "clearWaitAction all Action"

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_2
    return-void
.end method

.method public i()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "[NewProtocol] NewProtocolManager"

    .line 4
    const-string v1, "BackgroudService notifyBackgroudServiceLoadingFinish size:{?}"

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Ll30;->d:Ljava/util/List;

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    move-result v3

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 22
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    iget-object v1, p0, Ll30;->d:Ljava/util/List;

    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    iget-object v1, p0, Ll30;->d:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lnc;

    .line 54
    invoke-virtual {v2}, Lnc;->p()V

    .line 57
    invoke-virtual {p0, v2}, Ll30;->o(Lnc;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw v0
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll30;->l()V

    .line 4
    return-void
.end method

.method public k(Loc;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Loc;->j()V

    .line 4
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll30;->a:Ls70;

    .line 3
    const/16 v1, 0x14d

    .line 5
    invoke-interface {v0, v1}, Ls70;->b(I)Loc;

    .line 8
    return-void
.end method

.method public m(Lnc;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ll30;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p1}, Lnc;->i()I

    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Ll30;->d:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Ll30;->d:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v0

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const-string v1, "[NewProtocol] NewProtocolManager"

    .line 29
    const-string v2, "action:{?} after removeCallAction callAlRequestMap size={?} waitBackgroudLoadActionList size={?}"

    .line 31
    const/4 v3, 0x3

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object p1, v3, v4

    .line 37
    iget-object p1, p0, Ll30;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 47
    const/4 v4, 0x1

    .line 48
    aput-object p1, v3, v4

    .line 50
    const/4 p1, 0x2

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v0

    .line 55
    aput-object v0, v3, p1

    .line 57
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method

.method public n(Ljava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "[NewProtocol] NewProtocolManager"

    .line 9
    const-string v4, "responseALCallback resultData:{?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    instance-of v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 21
    iget v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->requestALId:I

    .line 23
    iget-object v5, p0, Ll30;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lc1;

    .line 35
    const/4 v6, 0x3

    .line 36
    new-array v6, v6, [Ljava/lang/Object;

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v7

    .line 42
    aput-object v7, v6, v2

    .line 44
    aput-object p1, v6, v0

    .line 46
    const/4 p1, 0x2

    .line 47
    aput-object v5, v6, p1

    .line 49
    const-string p1, "responseALCallback requestid:{?} resutlData:{?} actionCallback:{?}"

    .line 51
    invoke-static {v3, p1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    if-eqz v5, :cond_0

    .line 56
    :try_start_0
    invoke-interface {v5, v1}, Lc1;->a(Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    iget-object p1, p0, Ll30;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    new-array v1, v2, [Ljava/lang/Object;

    .line 78
    invoke-static {v3, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :goto_1
    iget-object v0, p0, Ll30;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    throw p1

    .line 92
    :cond_0
    :goto_2
    return-void
.end method

.method public final o(Lnc;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lnc;->m()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lnc;->i()I

    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 13
    invoke-static {}, Ll30;->h()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lnc;->u(I)V

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Lnc;->i()I

    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object v1, v0, v2

    .line 34
    const/4 v1, 0x1

    .line 35
    aput-object p1, v0, v1

    .line 37
    const-string v1, "[NewProtocol] NewProtocolManager"

    .line 39
    const-string v2, "zjz addCallAction requestid:{?} action:{?}"

    .line 41
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Ll30;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    invoke-virtual {p1}, Lnc;->i()I

    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p1}, Lnc;->w()V

    .line 60
    :cond_1
    invoke-virtual {p1}, Lnc;->d()V

    .line 63
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll30;->c:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnc;

    .line 19
    invoke-virtual {p0, v1}, Ll30;->o(Lnc;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Ll30;->c:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    return-void
.end method

.method public q(Z)V
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
    const-string v1, "[NewProtocol] NewProtocolManager"

    .line 13
    const-string v2, "updateReadyStatus hasReady:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Ll30;->p()V

    .line 23
    :cond_0
    return-void
.end method
