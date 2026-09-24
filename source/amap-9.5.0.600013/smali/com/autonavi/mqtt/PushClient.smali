.class public Lcom/autonavi/mqtt/PushClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/mqtt/PushClient$PushCallback;
    }
.end annotation


# static fields
.field public static volatile c:Ljava/lang/Object;

.field public static d:Lcom/autonavi/mqtt/PushClient;

.field public static final e:Ljava/lang/String;


# instance fields
.field public a:Ldt;

.field public b:Lcom/autonavi/mqtt/PushClient$PushCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/mqtt/PushClient;->c:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "[mqtt] "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-class v1, Lcom/autonavi/mqtt/PushClient;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/mqtt/PushClient$a;

    .line 6
    invoke-direct {v0, p0}, Lcom/autonavi/mqtt/PushClient$a;-><init>(Lcom/autonavi/mqtt/PushClient;)V

    .line 9
    iput-object v0, p0, Lcom/autonavi/mqtt/PushClient;->b:Lcom/autonavi/mqtt/PushClient$PushCallback;

    .line 11
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->d:Lcom/autonavi/mqtt/PushClient;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 18
    const-string v2, " create PushClient instance"

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    sput-object p0, Lcom/autonavi/mqtt/PushClient;->d:Lcom/autonavi/mqtt/PushClient;

    .line 27
    iget-object v0, p0, Lcom/autonavi/mqtt/PushClient;->b:Lcom/autonavi/mqtt/PushClient$PushCallback;

    .line 29
    invoke-virtual {p0, v0}, Lcom/autonavi/mqtt/PushClient;->nativeregisterCallback(Ljava/lang/Object;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 35
    const-string v2, " warning:noimpl,PushClient instance has been created!"

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/mqtt/PushClient;)Ldt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/mqtt/PushClient;->a:Ldt;

    .line 3
    return-object p0
.end method

.method public static d()Lcom/autonavi/mqtt/PushClient;
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->d:Lcom/autonavi/mqtt/PushClient;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->c:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/autonavi/mqtt/PushClient;->d:Lcom/autonavi/mqtt/PushClient;

    .line 10
    if-nez v1, :cond_0

    .line 12
    sget-object v1, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 14
    const-string v2, " new PushClient()"

    .line 16
    const/4 v3, 0x0

    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    invoke-static {v1, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v1, Lcom/autonavi/mqtt/PushClient;

    .line 24
    invoke-direct {v1}, Lcom/autonavi/mqtt/PushClient;-><init>()V

    .line 27
    sput-object v1, Lcom/autonavi/mqtt/PushClient;->d:Lcom/autonavi/mqtt/PushClient;

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->d:Lcom/autonavi/mqtt/PushClient;

    .line 36
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, " Connectionlost(mainProc) begin"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/mqtt/PushClient;->nativeConnectionLost()V

    .line 14
    const-string v2, " Connectionlost(mainProc) end"

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, " ConnectionSuccess(mainProc) begin"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/mqtt/PushClient;->nativeConnectionSuccess()V

    .line 14
    const-string v2, " ConnectionSuccess(mainProc) end"

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/PushClient;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, " messageArrived(mainProc) begin"

    .line 8
    invoke-static {v0, v3, v2}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/mqtt/PushClient;->nativeMessageArrived(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result p1

    .line 15
    const-string p2, " messageArrived(mainProc) end"

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    invoke-static {v0, p2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return p1
.end method

.method public declared-synchronized f()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/mqtt/PushClient;->nativeProcessBind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/mqtt/PushClient;->nativeProcessUnbind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public h(Ldt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/mqtt/PushClient;->a:Ldt;

    .line 3
    return-void
.end method

.method public native nativeConnectionLost()V
.end method

.method public native nativeConnectionSuccess()V
.end method

.method public native nativeMainProcMqttBindTest(Ljava/lang/Object;)V
.end method

.method public native nativeMainProcMqttOpenLogTest()V
.end method

.method public native nativeMainProcMqttPublishMsg(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeMainProcMqttStartListenTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeMainProcMqttStopListenTest()V
.end method

.method public native nativeMainProcMqttUnBindTest()V
.end method

.method public native nativeMessageArrived(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeProcessBind()V
.end method

.method public native nativeProcessUnbind()V
.end method

.method public native nativeregisterCallback(Ljava/lang/Object;)V
.end method
