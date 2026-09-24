.class public Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static g:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;


# instance fields
.field public a:Ljt;

.field public b:Lor;

.field public c:Z

.field public d:Ljt;

.field public e:Lor;

.field public final f:Lhq$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->c:Z

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$a;

    .line 9
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$a;-><init>(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)V

    .line 12
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->d:Ljt;

    .line 14
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$b;

    .line 16
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$b;-><init>(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)V

    .line 19
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->e:Lor;

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$c;

    .line 23
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService$c;-><init>(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)V

    .line 26
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->f:Lhq$a;

    .line 28
    return-void
.end method

.method public static synthetic a()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->g:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->o()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;Lor;)Lor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->b:Lor;

    .line 3
    return-object p1
.end method

.method public static synthetic d(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;Ljt;)Ljt;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->a:Ljt;

    .line 3
    return-object p1
.end method

.method public static synthetic e(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)Ljt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->d:Ljt;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;)Lor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->e:Lor;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->h(I)V

    .line 4
    return-void
.end method

.method public static i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->g:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 3
    return-object v0
.end method


# virtual methods
.method public final h(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->l()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->b:Lor;

    .line 15
    invoke-interface {v0, p1}, Lor;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->c:Z

    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->b:Lor;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->a:Ljt;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public n(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->m()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->a:Ljt;

    .line 9
    invoke-interface {v0, p1, p2}, Ljt;->k0(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "com.autonavi.auto.autostart.IntelligentSpeedLimitService"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    const/16 v2, 0x1a

    .line 19
    const/4 v3, 0x0

    .line 20
    const-string v4, "AmapAutoService"

    .line 22
    if-lt v1, v2, :cond_0

    .line 24
    const-string v1, "startISLEngine startForegroundService"

    .line 26
    new-array v2, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v4, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {p0, v0}, Lu2;->a(Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "startISLEngine startService"

    .line 37
    new-array v2, v3, [Ljava/lang/Object;

    .line 39
    invoke-static {v4, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "AmapAutoService"

    .line 6
    const-string v2, "AmapAutoService onBind"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->c:Z

    .line 14
    invoke-static {}, Lrv;->H()Lrv;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lrv;->A()I

    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v0, v2, :cond_0

    .line 25
    const-string v0, "AmapAutoService onBind isEnterMainMap"

    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    .line 29
    invoke-static {v1, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance p1, Lab;

    .line 34
    const/16 v0, 0x31

    .line 36
    invoke-direct {p1, v0}, Lab;-><init>(I)V

    .line 39
    invoke-static {}, Ll30;->g()Ll30;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ll30;->a(Lec;)V

    .line 46
    new-instance p1, Lab;

    .line 48
    const/16 v0, 0x76

    .line 50
    invoke-direct {p1, v0}, Lab;-><init>(I)V

    .line 53
    invoke-static {}, Ll30;->g()Ll30;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Ll30;->a(Lec;)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->f:Lhq$a;

    .line 62
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AmapAutoService"

    .line 6
    const-string v2, "AmapAutoService onCreate"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 14
    sput-object p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->g:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isBindService:Z

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AmapAutoService"

    .line 6
    const-string v3, "AmapAutoService onDestroy"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    sput-object v1, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->g:Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 14
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 17
    sput-boolean v0, Lcom/autonavi/amapauto/jni/GAdaAndroid;->isBindService:Z

    .line 19
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AmapAutoService"

    .line 6
    const-string v3, "AmapAutoService onUnbind"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-boolean v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->c:Z

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->b:Lor;

    .line 16
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method
