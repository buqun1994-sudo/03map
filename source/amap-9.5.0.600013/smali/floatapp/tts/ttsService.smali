.class public Lfloatapp/tts/ttsService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfloatapp/tts/ttsService$b;
    }
.end annotation


# static fields
.field private static final j:Lfloatapp/tts/ttsService;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/IBinder;

.field private final e:Landroid/content/ServiceConnection;

.field public f:Z

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfloatapp/tts/ttsService;

    invoke-direct {v0}, Lfloatapp/tts/ttsService;-><init>()V

    sput-object v0, Lfloatapp/tts/ttsService;->j:Lfloatapp/tts/ttsService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfloatapp/tts/ttsService$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfloatapp/tts/ttsService$b;-><init>(Lfloatapp/tts/ttsService;Lfloatapp/tts/ttsService$a;)V

    iput-object v0, p0, Lfloatapp/tts/ttsService;->e:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfloatapp/tts/ttsService;->f:Z

    iput v0, p0, Lfloatapp/tts/ttsService;->g:I

    iput v0, p0, Lfloatapp/tts/ttsService;->h:I

    const-string v0, "com.autonavi.amapautolite"

    iput-object v0, p0, Lfloatapp/tts/ttsService;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lfloatapp/tts/ttsService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lfloatapp/tts/ttsService;->d:Landroid/os/IBinder;

    return-object p1
.end method

.method public static c()Lfloatapp/tts/ttsService;
    .locals 1

    sget-object v0, Lfloatapp/tts/ttsService;->j:Lfloatapp/tts/ttsService;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.amapauto.aidl.json_protocol_service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lfloatapp/tts/ttsService;->i:Ljava/lang/String;

    const-string v3, "com.autonavi.amapauto.protocol.service.JsonProtocolService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lfloatapp/tts/ttsService;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ed1\u5b9a\u670d\u52a1\u7ed3\u679c: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", \u91cd\u8bd5\u6b21\u6570: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lfloatapp/tts/ttsService;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AutoProtocolManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    iget v0, p0, Lfloatapp/tts/ttsService;->h:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v2

    iput v0, p0, Lfloatapp/tts/ttsService;->h:I

    iget-object v0, p0, Lfloatapp/tts/ttsService;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WidgetManager-RetryThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfloatapp/tts/ttsService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lfloatapp/tts/ttsService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfloatapp/tts/ttsService;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lfloatapp/tts/ttsService;->b:Landroid/os/Handler;

    new-instance v1, Lfloatapp/tts/ttsService$a;

    invoke-direct {v1, p0, p1}, Lfloatapp/tts/ttsService$a;-><init>(Lfloatapp/tts/ttsService;Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object p1, p0, Lfloatapp/tts/ttsService;->c:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    const/4 p1, 0x0

    iput-object p1, p0, Lfloatapp/tts/ttsService;->c:Landroid/os/HandlerThread;

    iput-object p1, p0, Lfloatapp/tts/ttsService;->b:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "AutoProtocolManager"

    const-string v0, "\u4e0a\u4e0b\u6587\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lfloatapp/tts/ttsService;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lfloatapp/tts/ttsService;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AutoProtocolManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "{\"playSoundText\":\"%s\"}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "80082"

    invoke-virtual {p0, v0, p1}, Lfloatapp/tts/ttsService;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.autonavi.amapauto.aidl.IJsonProtocolInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lfloatapp/tts/ttsService;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p1, p0, Lfloatapp/tts/ttsService;->d:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lfloatapp/tts/ttsService;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lfloatapp/tts/ttsService;->g:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "{\"requestCode\":\"%s\",\"needResponse\":true,\"protocolId\":%s,\"versionName\":\"AutoMapSDK_1.0.10_1234\",\"requestAuthor\":\"ecarx.naviservice\",\"messageType\":\"request\",\"data\":%s}"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfloatapp/tts/ttsService;->f(Ljava/lang/String;)V

    return-void
.end method
