.class public Lcom/autonavi/mqtt/PushServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/mqtt/PushServer$PushCallback;
    }
.end annotation


# static fields
.field public static volatile e:Ljava/lang/Object;

.field public static f:Lcom/autonavi/mqtt/PushServer;


# instance fields
.field public final a:I

.field public b:Z

.field public c:Let;

.field public d:Lcom/autonavi/mqtt/PushServer$PushCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "com.amapauto.mqttdemo.BuildConfig"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "DEBUG"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    const-string v2, "mqtt_jni"

    .line 28
    const-string v3, "openssl"

    .line 30
    if-eqz v1, :cond_0

    .line 32
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-static {v3}, Lt7;->i(Ljava/lang/String;)V

    .line 42
    invoke-static {v2}, Lt7;->i(Ljava/lang/String;)V

    .line 45
    :goto_1
    new-instance v1, Ljava/lang/Object;

    .line 47
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    sput-object v1, Lcom/autonavi/mqtt/PushServer;->e:Ljava/lang/Object;

    .line 52
    sput-object v0, Lcom/autonavi/mqtt/PushServer;->f:Lcom/autonavi/mqtt/PushServer;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/autonavi/mqtt/PushServer;->a:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/autonavi/mqtt/PushServer;->b:Z

    .line 10
    new-instance v1, Lcom/autonavi/mqtt/PushServer$a;

    .line 12
    invoke-direct {v1, p0}, Lcom/autonavi/mqtt/PushServer$a;-><init>(Lcom/autonavi/mqtt/PushServer;)V

    .line 15
    iput-object v1, p0, Lcom/autonavi/mqtt/PushServer;->d:Lcom/autonavi/mqtt/PushServer$PushCallback;

    .line 17
    invoke-virtual {p0, v1}, Lcom/autonavi/mqtt/PushServer;->nativeregisterCallback(Ljava/lang/Object;)V

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/mqtt/PushServer;->nativeSetOptInt(II)Z

    .line 24
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/mqtt/PushServer;)Let;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/mqtt/PushServer;->c:Let;

    .line 3
    return-object p0
.end method

.method public static declared-synchronized b()Lcom/autonavi/mqtt/PushServer;
    .locals 3

    .line 1
    const-class v0, Lcom/autonavi/mqtt/PushServer;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/autonavi/mqtt/PushServer;->f:Lcom/autonavi/mqtt/PushServer;

    .line 6
    if-nez v1, :cond_1

    .line 8
    sget-object v1, Lcom/autonavi/mqtt/PushServer;->e:Ljava/lang/Object;

    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lcom/autonavi/mqtt/PushServer;->f:Lcom/autonavi/mqtt/PushServer;

    .line 13
    if-nez v2, :cond_0

    .line 15
    new-instance v2, Lcom/autonavi/mqtt/PushServer;

    .line 17
    invoke-direct {v2}, Lcom/autonavi/mqtt/PushServer;-><init>()V

    .line 20
    sput-object v2, Lcom/autonavi/mqtt/PushServer;->f:Lcom/autonavi/mqtt/PushServer;

    .line 22
    :cond_0
    monitor-exit v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v2

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw v2

    .line 27
    :cond_1
    :goto_0
    sget-object v1, Lcom/autonavi/mqtt/PushServer;->f:Lcom/autonavi/mqtt/PushServer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    monitor-exit v0

    .line 33
    throw v1
.end method


# virtual methods
.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p4, p0, Lcom/autonavi/mqtt/PushServer;->b:Z

    .line 4
    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/mqtt/PushServer;->nativeRegisterFDObserver()V

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/autonavi/mqtt/PushServer;->nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/mqtt/PushServer;->nativePublishMessage(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public declared-synchronized e(Let;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/autonavi/mqtt/PushServer;->c:Let;
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

.method public declared-synchronized f(II)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/mqtt/PushServer;->nativeSetOptInt(II)Z

    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public declared-synchronized g(ILjava/lang/String;)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/mqtt/PushServer;->nativeSetOptString(ILjava/lang/String;)Z

    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public declared-synchronized h()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/mqtt/PushServer;->nativeunInit()V
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

.method public native nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native nativePublishMessage(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeRegisterFDObserver()V
.end method

.method public native nativeSetOptInt(II)Z
.end method

.method public native nativeSetOptString(ILjava/lang/String;)Z
.end method

.method public native nativeStart()Z
.end method

.method public native nativeregisterCallback(Ljava/lang/Object;)V
.end method

.method public native nativeunInit()V
.end method
