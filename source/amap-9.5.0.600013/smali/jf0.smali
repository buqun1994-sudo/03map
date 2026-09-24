.class public Ljf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lht;


# static fields
.field public static k:Ljf0;

.field public static l:Lyr;

.field public static m:Ltr;

.field public static n:Lut;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public final b:Ldq;

.field public final c:Lus;

.field public final d:Loq;

.field public final e:Landroid/os/Handler;

.field public final f:Lxt;

.field public g:Ljava/lang/reflect/Field;

.field public h:Ljava/lang/reflect/Field;

.field public i:Ljs;

.field public final j:Lbs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljf0$a;

    .line 3
    invoke-direct {v0}, Ljf0$a;-><init>()V

    .line 6
    sput-object v0, Ljf0;->l:Lyr;

    .line 8
    new-instance v0, Ljf0$b;

    .line 10
    invoke-direct {v0}, Ljf0$b;-><init>()V

    .line 13
    sput-object v0, Ljf0;->m:Ltr;

    .line 15
    new-instance v0, Ljf0$c;

    .line 17
    invoke-direct {v0}, Ljf0$c;-><init>()V

    .line 20
    sput-object v0, Ljf0;->n:Lut;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Ljf0;->e:Landroid/os/Handler;

    .line 15
    new-instance v0, Ljf0$g;

    .line 17
    invoke-direct {v0, p0}, Ljf0$g;-><init>(Ljf0;)V

    .line 20
    iput-object v0, p0, Ljf0;->i:Ljs;

    .line 22
    new-instance v0, Ljf0$h;

    .line 24
    invoke-direct {v0, p0}, Ljf0$h;-><init>(Ljf0;)V

    .line 27
    iput-object v0, p0, Ljf0;->j:Lbs;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v1, "SurfaceViewManager: init "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljf0;->g(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljf0;->m()Lxt;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Ljf0;->f:Lxt;

    .line 55
    new-instance v0, Ljf0$d;

    .line 57
    invoke-direct {v0, p0}, Ljf0$d;-><init>(Ljf0;)V

    .line 60
    iput-object v0, p0, Ljf0;->b:Ldq;

    .line 62
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;

    .line 64
    invoke-direct {v0}, Lcom/autonavi/eaglet/surfacemng/AutoStateManager;-><init>()V

    .line 67
    iput-object v0, p0, Ljf0;->d:Loq;

    .line 69
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/PluginManager;

    .line 71
    invoke-direct {v0}, Lcom/autonavi/eaglet/surfacemng/PluginManager;-><init>()V

    .line 74
    iput-object v0, p0, Ljf0;->c:Lus;

    .line 76
    invoke-virtual {p0, p1}, Ljf0;->p(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static synthetic f(Ljf0;)Loq;
    .locals 0

    .line 1
    iget-object p0, p0, Ljf0;->d:Loq;

    .line 3
    return-object p0
.end method

.method public static h()Ljf0;
    .locals 1

    .line 1
    sget-object v0, Ljf0;->k:Ljf0;

    .line 3
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljf0;
    .locals 2

    .line 1
    sget-object v0, Ljf0;->k:Ljf0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljf0;

    .line 7
    invoke-direct {v0, p0}, Ljf0;-><init>(Landroid/content/Context;)V

    .line 10
    sput-object v0, Ljf0;->k:Ljf0;

    .line 12
    :cond_0
    sget-object v0, Ljf0;->k:Ljf0;

    .line 14
    iget-object v1, v0, Ljf0;->a:Ljava/lang/ref/WeakReference;

    .line 16
    if-nez v1, :cond_1

    .line 18
    invoke-virtual {v0, p0}, Ljf0;->p(Landroid/content/Context;)V

    .line 21
    :cond_1
    sget-object p0, Ljf0;->k:Ljf0;

    .line 23
    return-object p0
.end method

.method public static k()Z
    .locals 3

    .line 1
    invoke-static {}, Ljf0;->h()Ljf0;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "supportCoverAtStart="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v1, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->firstStartup:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 19
    invoke-virtual {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v2, "SurfaceViewManager"

    .line 32
    invoke-static {v2, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->performanceCheck:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 37
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lk60;->b()V

    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 49
    move-result v0

    .line 50
    return v0

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    return v0
.end method

.method public static l(Landroid/app/Application;)Z
    .locals 2

    .line 1
    sget-object v0, Ljf0;->l:Lyr;

    .line 3
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/Adapter;->setLogger(Lyr;)V

    .line 6
    sget-object v0, Ljf0;->m:Ltr;

    .line 8
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/Adapter;->setJNIContext(Ltr;)V

    .line 11
    sget-object v0, Ljf0;->n:Lut;

    .line 13
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/Adapter;->setTurboConfig(Lut;)V

    .line 16
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->init(Landroid/app/Application;)Z

    .line 19
    invoke-static {p0}, Ljf0;->i(Landroid/content/Context;)Ljf0;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/Adapter;->setManager(Lht;)V

    .line 26
    invoke-virtual {v0}, Ljf0;->j()Lbs;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/Adapter;->setMapViewAdapter(Lbs;)V

    .line 33
    invoke-virtual {v0, p0}, Ljf0;->n(Landroid/app/Application;)V

    .line 36
    const/4 p0, 0x1

    .line 37
    return p0
.end method


# virtual methods
.method public a()Lus;
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0;->c:Lus;

    .line 3
    return-object v0
.end method

.method public b()Lbq;
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0;->b:Ldq;

    .line 3
    return-object v0
.end method

.method public c()Lnq;
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0;->d:Loq;

    .line 3
    return-object v0
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0;->e:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public e()Lxt;
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0;->f:Lxt;

    .line 3
    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManager"

    .line 3
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public j()Lbs;
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0;->j:Lbs;

    .line 3
    return-object v0
.end method

.method public m()Lxt;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->wndReuse:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string v0, "makeBuild reuse"

    .line 11
    invoke-virtual {p0, v0}, Ljf0;->g(Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljf0$e;

    .line 16
    invoke-direct {v0, p0}, Ljf0$e;-><init>(Ljf0;)V

    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, "makeBuild normal"

    .line 22
    invoke-virtual {p0, v0}, Ljf0;->g(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljf0$f;

    .line 27
    invoke-direct {v0, p0}, Ljf0$f;-><init>(Ljf0;)V

    .line 30
    return-object v0
.end method

.method public final n(Landroid/app/Application;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0;->i:Ljs;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->addNaviStatusChangeListener(Ljs;)V

    .line 6
    invoke-virtual {p0}, Ljf0;->a()Lus;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Laq;->onApplicationCreated(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public o(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->isSupport()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Ljf0;->f:Lxt;

    .line 10
    const v1, 0x7f0800c8

    .line 13
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lxt;->d(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Ljf0;->f:Lxt;

    .line 22
    invoke-interface {v0, p1}, Lxt;->b(Landroid/app/Activity;)V

    .line 25
    sget-boolean p1, Lyg0;->a:Z

    .line 27
    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Ljf0;->b:Ldq;

    .line 31
    invoke-interface {p1}, Ldq;->onViewInflated()V

    .line 34
    :cond_1
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "setContext "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Ljf0;->g(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    iput-object v0, p0, Ljf0;->a:Ljava/lang/ref/WeakReference;

    .line 32
    :cond_0
    return-void
.end method

.method public q(II)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ljf0;->g:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    const-class v1, Lcom/autonavi/amapauto/MapSurfaceView;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    iget-object v0, p0, Ljf0;->h:Ljava/lang/reflect/Field;

    .line 9
    if-nez v0, :cond_1

    .line 11
    :cond_0
    const-string v0, "surfaceWidth"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Ljf0;->g:Ljava/lang/reflect/Field;

    .line 19
    const-string v0, "surfaceHeight"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Ljf0;->h:Ljava/lang/reflect/Field;

    .line 27
    iget-object v0, p0, Ljf0;->g:Ljava/lang/reflect/Field;

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    iget-object v0, p0, Ljf0;->h:Ljava/lang/reflect/Field;

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    :cond_1
    iget-object v0, p0, Ljf0;->g:Ljava/lang/reflect/Field;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 43
    move-result v0

    .line 44
    if-eq v0, p1, :cond_2

    .line 46
    iget-object v0, p0, Ljf0;->g:Ljava/lang/reflect/Field;

    .line 48
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 51
    :cond_2
    iget-object p1, p0, Ljf0;->h:Ljava/lang/reflect/Field;

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 56
    move-result p1

    .line 57
    if-eq p1, p2, :cond_3

    .line 59
    iget-object p1, p0, Ljf0;->h:Ljava/lang/reflect/Field;

    .line 61
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    :cond_3
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const-string v0, "reset"

    .line 3
    invoke-virtual {p0, v0}, Ljf0;->g(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Ljf0;->e:Landroid/os/Handler;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Ljf0;->d:Loq;

    .line 14
    invoke-interface {v0}, Loq;->reset()V

    .line 17
    iget-object v0, p0, Ljf0;->f:Lxt;

    .line 19
    invoke-interface {v0}, Lxt;->reset()V

    .line 22
    iput-object v1, p0, Ljf0;->a:Ljava/lang/ref/WeakReference;

    .line 24
    iput-object v1, p0, Ljf0;->g:Ljava/lang/reflect/Field;

    .line 26
    iput-object v1, p0, Ljf0;->h:Ljava/lang/reflect/Field;

    .line 28
    return-void
.end method
