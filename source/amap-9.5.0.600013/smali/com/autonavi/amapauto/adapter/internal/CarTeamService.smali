.class public Lcom/autonavi/amapauto/adapter/internal/CarTeamService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/os/Handler;

.field public c:Lwq$a;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    const-string v0, "CarTeamService"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->b:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$a;

    .line 17
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$a;-><init>(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)V

    .line 20
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->c:Lwq$a;

    .line 22
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$b;

    .line 24
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/adapter/internal/CarTeamService$b;-><init>(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)V

    .line 27
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->d:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->b:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/adapter/internal/CarTeamService;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->d:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->c:Lwq$a;

    .line 3
    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "CarTeamService"

    .line 6
    const-string v2, "  onUnbind  "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/CarTeamService;->b:Landroid/os/Handler;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method
