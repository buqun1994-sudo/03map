.class public abstract Loc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lw70;

.field public static b:Lc80;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw70;

    .line 3
    invoke-direct {v0}, Lw70;-><init>()V

    .line 6
    sput-object v0, Loc;->a:Lw70;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized g()Lw70;
    .locals 4

    .line 1
    const-class v0, Loc;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Loc;->a:Lw70;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lw70;->isShutdown()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    :cond_0
    new-instance v1, Lw70;

    .line 16
    new-instance v2, Ld80;

    .line 18
    const-string v3, "Default"

    .line 20
    invoke-direct {v2, v3}, Ld80;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-direct {v1, v3, v2}, Lw70;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 27
    sput-object v1, Loc;->a:Lw70;

    .line 29
    :cond_1
    sget-object v1, Loc;->a:Lw70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0

    .line 35
    throw v1
.end method

.method public static declared-synchronized h()Lc80;
    .locals 2

    .line 1
    const-class v0, Loc;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Loc;->b:Lc80;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lc80;->isShutdown()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    :cond_0
    new-instance v1, Lc80;

    .line 16
    invoke-direct {v1}, Lc80;-><init>()V

    .line 19
    sput-object v1, Loc;->b:Lc80;

    .line 21
    :cond_1
    sget-object v1, Loc;->b:Lc80;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    .line 27
    throw v1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b(Ljava/lang/Object;)Lnc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Loc;->f()Lrq;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lrq;->a(Ljava/lang/Object;)Lnc;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1, p0}, Lnc;->s(Loc;)V

    .line 14
    :cond_0
    return-object p1
.end method

.method public c(Lec;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    const-string v0, "[NewProtocol] BaseProtocolConnection"

    .line 8
    const-string v1, "dispatchAutoMessage dispatchData null"

    .line 10
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lec;->e()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-static {}, Loc;->h()Lc80;

    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Loc$b;

    .line 26
    invoke-direct {v1, p0, p1}, Loc$b;-><init>(Loc;Lec;)V

    .line 29
    invoke-virtual {v0, v1}, Lc80;->execute(Ljava/lang/Runnable;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Loc;->g()Lw70;

    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Loc$c;

    .line 39
    invoke-direct {v1, p0, p1}, Loc$c;-><init>(Loc;Lec;)V

    .line 42
    invoke-virtual {v0, v1}, Lw70;->execute(Ljava/lang/Runnable;)V

    .line 45
    :goto_0
    return-void
.end method

.method public abstract d(Lec;)V
.end method

.method public abstract e(Lnc;)V
.end method

.method public abstract f()Lrq;
.end method

.method public abstract i(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Ljava/lang/reflect/Type;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.end method

.method public abstract j()V
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkNative;->getAlinkState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "[NewProtocol] BaseProtocolConnection"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p1, "receiveClientRequest alink\u8fde\u63a5\u6210\u529f\uff0c\u4e0d\u54cd\u5e94\u4e09\u65b9\u8bf7\u6c42\u8c03\u7528"

    .line 12
    new-array v0, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Loc;->b(Ljava/lang/Object;)Lnc;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-static {}, Ll30;->g()Ll30;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Ll30;->e(Lnc;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p1, "receiveClientRequest NULL procotolAction!"

    .line 34
    new-array v0, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void
.end method

.method public l(Lnc;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "[NewProtocol] BaseProtocolConnection"

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string p1, "sendDataToClient action null"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Lnc;->h()I

    .line 20
    move-result v3

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v2, v0

    .line 27
    const-string v0, "sendDataToClient actionId:{?}"

    .line 29
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Loc;->g()Lw70;

    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Loc$a;

    .line 38
    invoke-direct {v1, p0, p1}, Loc$a;-><init>(Loc;Lnc;)V

    .line 41
    invoke-virtual {v0, v1}, Lw70;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
