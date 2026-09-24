.class public Lcom/amap/location/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 6

    const-class v0, Lcom/amap/location/sdk/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/amap/location/sdk/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_0
    :try_start_1
    invoke-static {v3}, Lcom/amap/location/support/app/MessageCenter;->setMainProcess(Z)V

    .line 4
    invoke-static {p0}, Lcom/amap/location/d/d;->a(Landroid/content/Context;)V

    .line 5
    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initContext(Ljava/lang/Object;)V

    .line 6
    sput-boolean v2, Lcom/amap/location/support/AmapContext;->DEBUG:Z

    .line 7
    new-instance v3, Lcom/amap/location/d/b/c;

    invoke-direct {v3}, Lcom/amap/location/d/b/c;-><init>()V

    invoke-static {v3}, Lcom/amap/location/support/AmapContext;->initHandlerThreadManager(Lcom/amap/location/support/handler/HandlerThreadManager;)V

    const-string v3, "sdcard/"

    const-string v4, "sdcard/"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 9
    invoke-virtual {p0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 10
    :try_start_3
    invoke-static {v5}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    invoke-static {v3, v4}, Lcom/amap/location/support/AmapContext;->initWorkPath(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.autonavi.minimap"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 13
    :try_start_5
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_2
    const-string p0, "16.12.00.104"

    .line 14
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setProductVersion(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_remote"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    move-object p0, v3

    :goto_3
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setProcessName(Ljava/lang/String;)V

    const-string p0, "16.12.00.104"

    .line 16
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setVersionName(Ljava/lang/String;)V

    const-string p0, "1612"

    .line 17
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setVersionCode(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/amap/location/sdk/c/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setCollVersion(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p0

    if-gez p0, :cond_3

    .line 20
    invoke-static {v2}, Lcom/amap/location/support/header/HeaderConfig;->setProductId(B)V

    const-string p0, "ABKLWEH8H9LH09NLB5CCAGHK78BYZ89"

    .line 21
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setLicense(Ljava/lang/String;)V

    :cond_3
    const-string p0, "com.autonavi.amapauto"

    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "com.autonavi.amapautolite"

    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x3

    .line 24
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setProductId(B)V

    const-string p0, "CB255E082A5B433B911D9DF8D6B1141A"

    .line 25
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setLicense(Ljava/lang/String;)V

    :cond_5
    const-string p0, "com.aveiro.papago"

    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "774314DB1EEB63768A0A590D7897CD42"

    .line 27
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setLicense(Ljava/lang/String;)V

    const/16 p0, 0xf

    .line 28
    invoke-static {p0}, Lcom/amap/location/support/header/HeaderConfig;->setProductId(B)V

    .line 29
    :cond_6
    new-instance p0, Lcom/amap/location/d/c/a;

    invoke-direct {p0}, Lcom/amap/location/d/c/a;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initPlatformStatus(Lcom/amap/location/support/common/IPlatformStatus;)V

    .line 30
    new-instance p0, Lcom/amap/location/d/c$a;

    invoke-direct {p0}, Lcom/amap/location/d/c$a;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/amap/location/d/c$a;->b:Z

    .line 32
    new-instance v2, Lcom/amap/location/d/c;

    invoke-direct {v2, p0}, Lcom/amap/location/d/c;-><init>(Lcom/amap/location/d/c$a;)V

    invoke-static {v2}, Lcom/amap/location/support/header/HeaderConfig;->setDeviceInfoImpl(Lcom/amap/location/support/device/IDeviceInfo;)V

    .line 33
    new-instance p0, Lcom/amap/location/j/a;

    invoke-direct {p0}, Lcom/amap/location/j/a;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initSecurity(Lcom/amap/location/support/security/INativeAbility;)V

    .line 34
    new-instance p0, Lcom/amap/location/d/d/a;

    invoke-direct {p0}, Lcom/amap/location/d/d/a;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initKeyValueStorerManager(Lcom/amap/location/support/storage/IKeyValueStorerManager;)V

    .line 35
    new-instance p0, Lcom/amap/location/d/a/c;

    invoke-direct {p0}, Lcom/amap/location/d/a/c;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initDB(Lcom/amap/location/support/db/IDbManager;)V

    .line 36
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result p0

    const/16 v2, 0x1c

    if-lt p0, v2, :cond_7

    .line 37
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result p0

    if-eqz p0, :cond_7

    const-wide/16 v2, 0x2ee0

    .line 38
    sput-wide v2, Lcom/amap/location/signal/b;->a:J

    .line 39
    :cond_7
    new-instance p0, Lcom/amap/location/signal/impl/a/f;

    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/f;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initSignalProvider(Lcom/amap/location/support/signal/ISignalProvider;)V

    .line 40
    new-instance p0, Lcom/amap/location/signal/a;

    invoke-direct {p0}, Lcom/amap/location/signal/a;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initSignalManager(Lcom/amap/location/support/signal/ISignalManager;)V

    .line 41
    invoke-static {}, Lcom/amap/location/sdk/e/c;->a()V

    .line 42
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p0

    if-nez p0, :cond_8

    .line 43
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/location/sdk/e/c;->a(Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/amap/location/sdk/e/c;->a(Z)V

    .line 45
    :cond_8
    invoke-static {}, Lcom/amap/location/sdk/f/a;->a()Lcom/amap/location/sdk/f/a;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initManuFeedback(Lcom/amap/location/support/feedback/IManuFeedback;)V

    .line 46
    sput-boolean v1, Lcom/amap/location/sdk/a;->a:Z

    const-string p0, "sdkinit"

    const-string p1, "sdk init end"

    .line 47
    invoke-static {p0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/os/Looper;Z)V
    .locals 2

    const-class v0, Lcom/amap/location/sdk/a;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-boolean v1, Lcom/amap/location/sdk/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 50
    monitor-exit v0

    return-void

    .line 51
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amap/location/d/b/d;

    invoke-direct {v1, p0}, Lcom/amap/location/d/b/d;-><init>(Landroid/os/Looper;)V

    .line 52
    invoke-static {v1}, Lcom/amap/location/support/AmapContext;->initWorkLooper(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 53
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/amap/location/support/signal/ISignalManager;->setWorkLooper(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 54
    invoke-static {p1}, Lcom/amap/location/sdk/c/a/c;->a(Z)V

    .line 55
    new-instance p0, Lcom/amap/location/sdk/c/b;

    invoke-direct {p0}, Lcom/amap/location/sdk/c/b;-><init>()V

    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initNetwork(Lcom/amap/location/support/network/INetwork;)V

    .line 56
    invoke-static {p1}, Lcom/amap/location/sdk/e/c;->c(Z)V

    .line 57
    invoke-static {}, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->getInstance()Lcom/amap/location/support/fpsage/AgeEstimatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimatorManager;->init()V

    const/4 p0, 0x1

    .line 58
    sput-boolean p0, Lcom/amap/location/sdk/a;->b:Z

    const-string p0, "sdkinit"

    const-string p1, "sdk init-when-create end"

    .line 59
    invoke-static {p0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .locals 3

    .line 61
    sget-boolean v0, Lcom/amap/location/sdk/a;->a:Z

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 64
    :cond_0
    sget-boolean v0, Lcom/amap/location/sdk/a;->a:Z

    return v0
.end method
