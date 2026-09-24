.class public Lcom/autonavi/link/transmit/proxy/LinkProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/autonavi/link/transmit/proxy/LinkProxy;

.field public static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public a:J

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    sput-object v0, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c()V

    .line 7
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->nativeConstruct()J

    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/autonavi/link/transmit/proxy/LinkProxy;->a:J

    .line 13
    return-void
.end method

.method public static declared-synchronized c()V
    .locals 3

    .line 1
    const-class v0, Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string v1, "TAG"

    .line 14
    const-string v2, "checkInit and find unload library"

    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    .line 26
    throw v1
.end method

.method public static declared-synchronized d()Lcom/autonavi/link/transmit/proxy/LinkProxy;
    .locals 2

    .line 1
    const-class v0, Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c()V

    .line 7
    sget-object v1, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c:Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 13
    invoke-direct {v1}, Lcom/autonavi/link/transmit/proxy/LinkProxy;-><init>()V

    .line 16
    sput-object v1, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c:Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 18
    :cond_0
    sget-object v1, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c:Lcom/autonavi/link/transmit/proxy/LinkProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    .line 24
    throw v1
.end method

.method public static declared-synchronized e()V
    .locals 3

    .line 1
    const-class v0, Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->f()V

    .line 17
    sget-object v1, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    .line 27
    throw v1
.end method

.method public static declared-synchronized f()V
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 3
    monitor-enter v0

    .line 4
    monitor-exit v0

    .line 5
    return-void
.end method

.method private native nativeAddConnection(JLcom/autonavi/link/transmit/inter/Connection;Lcom/autonavi/link/transmit/inter/LinkProxyError;)I
.end method

.method private native nativeCheckConnectId(JLjava/lang/String;)Z
.end method

.method private static native nativeConstruct()J
.end method

.method private static native nativeEnableLog(Z)V
.end method

.method private native nativeGetConnectId(J)Ljava/lang/String;
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeRemoveConnection(JLcom/autonavi/link/transmit/inter/Connection;)V
.end method


# virtual methods
.method public a(Lcom/autonavi/link/transmit/inter/Connection;Lcom/autonavi/link/transmit/inter/LinkProxyError;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c()V

    .line 4
    iget-wide v0, p0, Lcom/autonavi/link/transmit/proxy/LinkProxy;->a:J

    .line 6
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->nativeAddConnection(JLcom/autonavi/link/transmit/inter/Connection;Lcom/autonavi/link/transmit/inter/LinkProxyError;)I

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/autonavi/link/transmit/proxy/LinkProxy;->b:I

    .line 12
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c()V

    .line 4
    iget-wide v0, p0, Lcom/autonavi/link/transmit/proxy/LinkProxy;->a:J

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->nativeCheckConnectId(JLjava/lang/String;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c()V

    .line 4
    return-void
.end method

.method public h(Lcom/autonavi/link/transmit/inter/Connection;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->c()V

    .line 4
    iget-wide v0, p0, Lcom/autonavi/link/transmit/proxy/LinkProxy;->a:J

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->nativeRemoveConnection(JLcom/autonavi/link/transmit/inter/Connection;)V

    .line 9
    return-void
.end method
