.class public Lcom/autonavi/amapauto/MapApplication;
.super Ln;


# static fields
.field public static n:Z

.field public static o:Z

.field public static volatile p:Z

.field public static q:Lcom/autonavi/amapauto/MapApplication;

.field public static r:Landroid/content/Context;

.field private static tlsInitialized:Z


# instance fields
.field public c:Z

.field public d:Lz10;

.field public e:Luz;

.field public f:Lcom/autonavi/amapauto/framework/PackageReceiver;

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/autonavi/amapauto/framework/AutoScreenStateReceiver;

.field public k:Lqs;

.field public final l:Ljava/lang/String;

.field public final m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ln;-><init>(Landroid/app/Application;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/amapauto/MapApplication;->g:Z

    iput-boolean p1, p0, Lcom/autonavi/amapauto/MapApplication;->h:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/autonavi/amapauto/MapApplication;->i:J

    new-instance p1, Lcom/autonavi/amapauto/MapApplication$a;

    invoke-direct {p1, p0}, Lcom/autonavi/amapauto/MapApplication$a;-><init>(Lcom/autonavi/amapauto/MapApplication;)V

    iput-object p1, p0, Lcom/autonavi/amapauto/MapApplication;->k:Lqs;

    const-string p1, "autonavi_log_enable"

    iput-object p1, p0, Lcom/autonavi/amapauto/MapApplication;->l:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/autonavi/amapauto/MapApplication;->m:I

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/autonavi/amapauto/MapApplication;->v()V

    return-void
.end method

.method public static synthetic d(Lcom/autonavi/amapauto/MapApplication;)V
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->C()V

    return-void
.end method

.method public static synthetic e(Lcom/autonavi/amapauto/MapApplication;)Landroid/app/Application;
    .locals 0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/autonavi/amapauto/MapApplication;)Landroid/app/Application;
    .locals 0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/autonavi/amapauto/MapApplication;)Landroid/app/Application;
    .locals 0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public static i()Landroid/os/Handler;
    .locals 4

    invoke-static {}, Ltk;->d()Ltk;

    move-result-object v0

    invoke-virtual {v0}, Ltk;->e()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MapApplication"

    const-string v3, "[MapApplication]mAutoHandler is Null "

    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic v()V
    .locals 1

    invoke-static {}, Lh7;->a()Lh7;

    move-result-object v0

    invoke-virtual {v0}, Lh7;->l()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->j:Lcom/autonavi/amapauto/framework/AutoScreenStateReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amapauto/framework/AutoScreenStateReceiver;

    invoke-direct {v0}, Lcom/autonavi/amapauto/framework/AutoScreenStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->j:Lcom/autonavi/amapauto/framework/AutoScreenStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v1

    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/amapauto/MapApplication;->j:Lcom/autonavi/amapauto/framework/AutoScreenStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final B()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v1

    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;

    invoke-direct {v2}, Lcom/autonavi/amapauto/adapter/internal/SystemBroadcastReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final C()V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amapauto/MapApplication;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->e:Luz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luz;->B0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amapauto/MapApplication;->h:Z

    :cond_0
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3

    const-string v0, "attachBaseContext begin"

    const-string v1, "map_bench"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Ln;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/autonavi/amapauto/MapApplication;->r:Landroid/content/Context;

    invoke-static {}, Lgn;->a()V

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrv;->j0(Landroid/app/Application;)V

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/amapauto/MapApplication;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/autonavi/amapauto/MapApplication;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mMainApp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/autonavi/amapauto/MapApplication;->c:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MapApplication"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/autonavi/amapauto/MapApplication;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "copyDir begin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/local/tmp/debug/"

    invoke-static {p1, v0}, Lvx;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "copyDir end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hook"

    invoke-static {p1, v0}, Lvx;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/Hook;->b()V

    invoke-static {}, Lp7;->j()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/amapauto/MapApplication;->g:Z

    :cond_0
    const-string p1, "hook end"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->m()V

    :cond_1
    const-string p1, "attachBaseContext end"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h(Z)V
    .locals 3

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lq3;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lxf0;->C(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x6e

    const-string v2, "MapApplication"

    if-nez v0, :cond_0

    const-string p1, "System.exit, checkSign !SystemUtils.isAppForeground"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    if-nez p1, :cond_2

    const-string p1, "System.exit, checkSign !mainApp"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->j()V

    :cond_2
    return-void
.end method

.method public initAfterSoCorrupt()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->r()V

    iget-boolean v0, p0, Lcom/autonavi/amapauto/MapApplication;->c:Z

    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/MapApplication;->h(Z)V

    return-void
.end method

.method public final j()V
    .locals 6

    const-string v0, "initAfterCheckSign begin"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    const-string v0, "SelfUpdate getVerInfo begin"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/MapApplication;->q(Z)V

    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->m()V

    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    move-result-object v1

    iget-wide v2, p0, Lcom/autonavi/amapauto/MapApplication;->i:J

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->d(J)V

    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    move-result-object v1

    const-string v2, "android_arm64_v8a"

    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/framework/TurboConfig;->n(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/autonavi/amapauto/MapApplication;->g:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/framework/TurboConfig;->a(Z)V

    :cond_0
    invoke-static {}, Lse;->c()Lse;

    move-result-object v1

    new-instance v2, Lqd;

    invoke-direct {v2}, Lqd;-><init>()V

    invoke-virtual {v1, v2}, Lse;->g(Lxq;)V

    invoke-static {}, La7;->c()La7;

    move-result-object v1

    new-instance v2, Lcom/autonavi/amapauto/MapApplication$e;

    invoke-direct {v2, p0}, Lcom/autonavi/amapauto/MapApplication$e;-><init>(Lcom/autonavi/amapauto/MapApplication;)V

    invoke-virtual {v1, v2}, La7;->a(La7$b;)V

    new-instance v1, Lcom/autonavi/amapauto/MapApplication$f;

    invoke-direct {v1, p0}, Lcom/autonavi/amapauto/MapApplication$f;-><init>(Lcom/autonavi/amapauto/MapApplication;)V

    invoke-static {v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->addGframeAnrTriggerObserver(Los;)V

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->z()V

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->A()V

    invoke-static {}, Lh7;->a()Lh7;

    move-result-object v1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh7;->j(Landroid/content/Context;)V

    const-string v1, "end handler send message"

    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {}, Lse;->c()Lse;

    move-result-object v1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lse;->d(Landroid/content/Context;)V

    const-string v1, "start initDiu"

    const-string v2, "MapApplication"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->l()V

    const-string v1, "start read funcConfig"

    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v1

    sget-object v3, Lzm;->c:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MapApplication]isEnabledInitIflytek:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "start NaviVoiceClient"

    invoke-static {v3}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lt20;->E(Landroid/content/Context;)V

    :cond_1
    const-string v1, "start dispatchAutoStatus"

    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->dispatchAutoStatus(I)V

    const-string v1, "start reigsterStorageReceiver"

    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->B()V

    const-string v1, "start CarApiManager connect"

    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {}, Lse;->c()Lse;

    move-result-object v1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v3}, Lse;->connectCar(Landroid/content/Context;)V

    new-instance v1, Lbc;

    invoke-direct {v1}, Lbc;-><init>()V

    invoke-virtual {v1}, Lbc;->getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    const-string v1, "map_bench"

    const-string v3, "Application.onCreate end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->p()V

    invoke-static {}, Lse;->c()Lse;

    move-result-object v1

    const v4, 0xea61

    invoke-virtual {v1, v4}, Lse;->getOptionalValue(I)Leq$a;

    move-result-object v1

    invoke-virtual {v1}, Leq$a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ambient_color"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/autonavi/amapauto/MapApplication$g;

    invoke-static {}, Lvo;->c()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/autonavi/amapauto/MapApplication$g;-><init>(Lcom/autonavi/amapauto/MapApplication;Landroid/os/Handler;)V

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "notifyCurrentTheme registerContentObserver done"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {v3}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final k()V
    .locals 1

    new-instance v0, Lcom/autonavi/amapauto/MapApplication$h;

    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/MapApplication$h;-><init>(Lcom/autonavi/amapauto/MapApplication;)V

    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/d;->b(Lcom/autonavi/amapauto/alpack/d$c;)V

    return-void
.end method

.method public final l()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/amapauto/MapApplication$b;

    invoke-direct {v1, p0}, Lcom/autonavi/amapauto/MapApplication$b;-><init>(Lcom/autonavi/amapauto/MapApplication;)V

    const-string v2, "NetworkParam"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapApplication"

    const-string v2, "initEaglet start"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ltk;->d()Ltk;

    move-result-object v0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltk;->i(Landroid/app/Application;)V

    invoke-static {}, Ltk;->d()Ltk;

    move-result-object v0

    new-instance v1, Le7;

    invoke-direct {v1}, Le7;-><init>()V

    invoke-virtual {v0, v1}, Ltk;->j(Lir;)V

    invoke-static {}, Lh7;->a()Lh7;

    move-result-object v0

    invoke-static {}, Ltk;->d()Ltk;

    move-result-object v1

    invoke-virtual {v1}, Ltk;->f()Las;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh7;->r(Las;)V

    new-instance v0, Lz10;

    invoke-direct {v0}, Lz10;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->d:Lz10;

    invoke-virtual {v0}, Lz10;->g()V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-static {}, Lze0;->h()Lze0;

    move-result-object v0

    const-string v1, "amap_start_logcat_open.txt"

    invoke-virtual {v0, v1}, Lze0;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcz;->F(Z)V

    const-string v0, "MapApplication"

    const-string v1, "BuildConfig.AL_LOGGER_FLAG=8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcz;->u(Landroid/content/Context;I)V

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->setLogLevel(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Ln;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrv;->b0(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MapApplication"

    const-string v3, "onConfigurationChanged"

    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lse;->c()Lse;

    move-result-object v1

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Lse;->getBooleanValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, p1, 0x30

    const/16 v2, 0x10

    const-string v3, "Float"

    if-ne v1, v2, :cond_0

    const-string p1, "[SYS2AL](newConfig.uiMode & Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_NO"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x30

    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    const-string p1, "[SYS2AL](newConfig.uiMode & Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Ln;->onCreate()V

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->x()V

    const-string v0, "map_bench"

    const-string v1, "Application.onCreate begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "JNIContext begin"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    sput-object p0, Lcom/autonavi/amapauto/MapApplication;->q:Lcom/autonavi/amapauto/MapApplication;

    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->k:Lqs;

    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->addServiceStartListener(Lqs;)V

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrv;->j0(Landroid/app/Application;)V

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    const v1, 0x7f070275

    invoke-virtual {v0, v1}, Lrv;->n0(I)V

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->o()V

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->k()V

    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d()Lcom/autonavi/amapauto/framework/TurboDiagnose;

    move-result-object v0

    invoke-static {}, Lr50;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/amapauto/MapApplication;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/amapauto/MapApplication;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/wireless/WirelessSDK;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/framework/TurboConfig;->m(Z)V

    :cond_0
    const-string v0, "AutoLibraryLoader.init"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {}, Lt7;->f()V

    invoke-static {}, Lg80;->i()Lg80;

    move-result-object v2

    new-instance v3, Lcom/autonavi/amapauto/MapApplication$c;

    invoke-direct {v3, p0}, Lcom/autonavi/amapauto/MapApplication$c;-><init>(Lcom/autonavi/amapauto/MapApplication;)V

    invoke-virtual {v2, v3}, Lg80;->j(Lcs;)V

    new-instance v2, Lcom/autonavi/amapauto/MapApplication$d;

    invoke-direct {v2, p0}, Lcom/autonavi/amapauto/MapApplication$d;-><init>(Lcom/autonavi/amapauto/MapApplication;)V

    invoke-static {v2}, Lcom/autonavi/mqtt/service/PushService;->z(Lds;)V

    iget-wide v2, p0, Lcom/autonavi/amapauto/MapApplication;->i:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/amapauto/MapApplication;->i:J

    :cond_1
    iget-boolean v2, p0, Lcom/autonavi/amapauto/MapApplication;->c:Z

    const-string v3, "MapApplication"

    if-nez v2, :cond_2

    const-string v0, "start checkSign"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/MapApplication;->h(Z)V

    const-string v0, "start installDumpCrash"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->r()V

    const-string v0, "child app"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/autonavi/amapauto/MapApplication;->n:Z

    return-void

    :cond_2
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    const/16 v0, 0x16

    invoke-static {v0}, Lb7;->d(I)V

    const-string v0, "AutoLibraryLoader.copyDebugLibsFile"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {}, Lt7;->c()V

    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/framework/AutoLoader;->c:J

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->n()V

    invoke-static {}, Lbi;->m()V

    invoke-static {}, Ltk;->d()Ltk;

    move-result-object v0

    invoke-virtual {v0}, Ltk;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lvo;->d(Landroid/os/Handler;)V

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/common/tool/b;->R(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "no needTamperCrashFix "

    const-string v2, "dumpcrash"

    if-nez v0, :cond_3

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->initAfterSoCorrupt()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/common/tool/b;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/common/tool/b;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->initAfterSoCorrupt()V

    goto :goto_0

    :cond_4
    const-string v0, "start initDiu"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->l()V

    :goto_0
    invoke-static {}, La7;->c()La7;

    move-result-object v0

    new-instance v1, Lrz;

    invoke-direct {v1}, Lrz;-><init>()V

    invoke-virtual {v0, v1}, La7;->g(La7$c;)V

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lfloatapp/auto3d/Auto3D;->init(Landroid/content/Context;)V

    sget-boolean v0, Lcom/autonavi/amapauto/MapApplication;->tlsInitialized:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "AppInit"

    const-string v4, "Initialize GuideTrafficLightVoice"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lfloatapp/trafficlight/GuideTrafficLightVoice;->init(Landroid/content/Context;)V

    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfloatapp/tts/ttsService;->d(Landroid/content/Context;)V

    const-string v3, "AppInit"

    const-string v4, "Initialize CruiseTrafficLightVoice"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lfloatapp/trafficlight/CruiseTrafficLightVoice;

    invoke-direct {v2, v1}, Lfloatapp/trafficlight/CruiseTrafficLightVoice;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/autonavi/amapauto/MapApplication;->tlsInitialized:Z

    :cond_5
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    invoke-super {p0}, Ln;->onLowMemory()V

    const/16 v0, 0x63

    invoke-static {v0}, Lb7;->c(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapApplication"

    const-string v2, "onLowMemory"

    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Ln;->onTrimMemory(I)V

    invoke-static {p1}, Lb7;->c(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapApplication"

    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ljf0;->l(Landroid/app/Application;)Z

    return-void
.end method

.method public q(Z)V
    .locals 2

    const-string v0, "SelfUpdate config begin"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    const-string v0, "SelfUpdate startUpdate begin"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object v0

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc0;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object v0

    invoke-virtual {v0}, Ltc0;->y()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltc0;->c(Z)Z

    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->w()V

    :cond_1
    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lr50;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltc0;->E(Ljava/lang/String;)V

    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object p1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Ln;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltc0;->H(Landroid/content/Context;Landroid/os/Bundle;)Z

    :cond_2
    const-string p1, "SelfUpdate startUpdate end"

    invoke-static {p1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    invoke-static {}, Lqf0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr50;->t(Ljava/lang/String;)V

    const-string p1, "/proc/version"

    invoke-static {p1}, Lsi;->W(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sys path "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lqf0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapApplication"

    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object p1

    iget-object p1, p1, Ltc0;->f:Ljava/lang/String;

    sput-object p1, Lmb;->d:Ljava/lang/String;

    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object p1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltc0;->D(Landroid/content/Context;)V

    invoke-static {}, Ltc0;->m()Ltc0;

    move-result-object p1

    invoke-virtual {p1}, Ltc0;->r()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "v"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->e:Luz;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Luz;->A0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->e:Luz;

    invoke-virtual {v0}, Luz;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/common/tool/b;->X(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrv;->i0(Ljava/lang/String;)V

    const-string p1, "SelfUpdate config end"

    invoke-static {p1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 4

    const-string v0, "CrashLogUtil begin"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    new-instance v0, Luz;

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/autonavi/amapauto/MapApplication;->c:Z

    invoke-direct {v0, v1, v2, v3}, Luz;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->e:Luz;

    iget-wide v1, p0, Lcom/autonavi/amapauto/MapApplication;->i:J

    invoke-virtual {v0, v1, v2}, Luz;->z0(J)V

    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->e:Luz;

    invoke-static {v0}, Lcom/autonavi/common/tool/b;->J(Lbr;)V

    iget-wide v0, p0, Lcom/autonavi/amapauto/MapApplication;->i:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/common/tool/b;->f0(Ljava/lang/String;)V

    const-string v0, "CrashLogUtil end false"

    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final s()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/self/status"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MapApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " load="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :cond_0
    :try_start_3
    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v3, "mapauto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const/4 v0, 0x1

    return v0

    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_2
    nop

    move-object v1, v2

    goto :goto_1

    :catch_3
    nop

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_2
    throw v0

    :catch_5
    nop

    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_6
    nop

    :goto_3
    if-eqz v1, :cond_3

    goto :goto_2

    :catch_7
    :cond_3
    :goto_4
    return v0
.end method

.method public t()Z
    .locals 4

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autonavi_log_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting enable ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MapApplication"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final u(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    sget-boolean v0, Lcom/autonavi/amapauto/MapApplication;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process Is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " myPid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MapApplication"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isMainApp is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/autonavi/amapauto/MapApplication;->o:Z

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amapauto/MapApplication;->s()Z

    move-result p1

    sput-boolean p1, Lcom/autonavi/amapauto/MapApplication;->o:Z

    return p1
.end method

.method public final w()V
    .locals 4

    :try_start_0
    invoke-static {}, Lzm;->d()Lzm;

    move-result-object v0

    const-string v1, "OTA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v1

    invoke-virtual {p0}, Ln;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrv;->D(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SelfUpdateFlag.txt"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method

.method public y(I)V
    .locals 1

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->e:Luz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luz;->x0()V

    :cond_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/autonavi/amapauto/MapApplication;->e:Luz;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Luz;->y0()V

    :cond_1
    return-void
.end method

.method public z()V
    .locals 3

    new-instance v0, Lcom/autonavi/amapauto/framework/PackageReceiver;

    invoke-direct {v0}, Lcom/autonavi/amapauto/framework/PackageReceiver;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amapauto/MapApplication;->f:Lcom/autonavi/amapauto/framework/PackageReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v1

    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/amapauto/MapApplication;->f:Lcom/autonavi/amapauto/framework/PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
