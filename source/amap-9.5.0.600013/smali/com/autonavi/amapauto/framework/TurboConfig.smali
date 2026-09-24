.class public Lcom/autonavi/amapauto/framework/TurboConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/framework/TurboConfig$b;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:Z

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->a:I

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->b:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->c:Z

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autonavi/amapauto/framework/TurboConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/framework/TurboConfig;-><init>()V

    return-void
.end method

.method public static c()Lcom/autonavi/amapauto/framework/TurboConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig$b;->a()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static native nativeEnableHook(Z)V
.end method

.method private static native nativeGetMainChannel()Ljava/lang/String;
.end method

.method private static native nativeGetOriginChannel()Ljava/lang/String;
.end method

.method private static native nativeGetString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetStringDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetStringFuncConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetStringUiConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetSubChannel()Ljava/lang/String;
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeSetConfigPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetDataPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetPlatform(Ljava/lang/String;)V
.end method

.method private static native nativeSetStoragePath(Ljava/lang/String;)V
.end method

.method private static native nativeSetString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeSetStringFuncConfig(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeSetSubChannel(Ljava/lang/String;)Z
.end method

.method private static native nativeSetUpdatePath(Ljava/lang/String;)V
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeEnableHook(Z)V

    .line 4
    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    return p2

    .line 8
    :cond_0
    const-string p2, "1"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_2

    .line 16
    const-string p2, "true"

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method

.method public d(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    return p2

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p1

    .line 13
    :catch_0
    return p2
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeGetMainChannel()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeGetOriginChannel()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->c:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeGetString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "getString not found "

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "TurboConfig"

    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-object v1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-object p2

    .line 8
    :cond_0
    return-object p1
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->c:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->a:I

    .line 9
    const-string v2, "TurboConfig"

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 16
    move-result v3

    .line 17
    if-ne v0, v3, :cond_1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->b:Ljava/util/concurrent/CountDownLatch;

    .line 21
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    const-wide/16 v4, 0x2

    .line 25
    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v3, "getStringFuncConfig wait timeout "

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v1

    .line 50
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeGetStringFuncConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    return-object p1

    .line 55
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v3, "getStringFuncConfig not found "

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-object p2

    .line 8
    :cond_0
    return-object p1
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeInit()Z

    .line 4
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->b:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->c:Z

    .line 3
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeSetPlatform(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->c:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeSetString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v0, "setString not found "

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string p2, "TurboConfig"

    .line 31
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return v1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->c:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeSetStringFuncConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v0, "setStringFuncConfig not found "

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string p2, "TurboConfig"

    .line 31
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return v1
.end method

.method public q(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/amapauto/framework/TurboConfig;->nativeSetSubChannel(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/framework/TurboConfig;->a:I

    .line 3
    return-void
.end method
