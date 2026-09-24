.class public Lcom/autonavi/amapauto/alpack/AutoGatewayService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/autonavi/amapauto/alpack/c;

.field public c:Lcom/autonavi/amapauto/alpack/b;

.field public d:Lcom/autonavi/amapauto/alpack/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    const-string v0, "AutoGatewayService"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;

    .line 10
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService$a;-><init>(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)V

    .line 13
    iput-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->c:Lcom/autonavi/amapauto/alpack/b;

    .line 15
    new-instance v0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$b;

    .line 17
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService$b;-><init>(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)V

    .line 20
    iput-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->d:Lcom/autonavi/amapauto/alpack/a$a;

    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Lcom/autonavi/amapauto/alpack/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->b:Lcom/autonavi/amapauto/alpack/c;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/autonavi/amapauto/alpack/AutoGatewayService;Lcom/autonavi/amapauto/alpack/c;)Lcom/autonavi/amapauto/alpack/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->b:Lcom/autonavi/amapauto/alpack/c;

    .line 3
    return-object p1
.end method

.method public static synthetic d(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->f()V

    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)Lcom/autonavi/amapauto/alpack/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->c:Lcom/autonavi/amapauto/alpack/b;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->b:Lcom/autonavi/amapauto/alpack/c;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->a:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "initCmpServerAutoBroadcastManager mAutoBroadcastResponse is null"

    .line 12
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$c;

    .line 18
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService$c;-><init>(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)V

    .line 21
    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/d;->b(Lcom/autonavi/amapauto/alpack/d$c;)V

    .line 24
    new-instance v0, Lo7;

    .line 26
    invoke-direct {v0, p0}, Lo7;-><init>(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)V

    .line 29
    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/d;->i(Lcom/autonavi/amapauto/alpack/d$d;)V

    .line 32
    new-instance v0, Lcom/autonavi/amapauto/alpack/AutoGatewayService$d;

    .line 34
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/alpack/AutoGatewayService$d;-><init>(Lcom/autonavi/amapauto/alpack/AutoGatewayService;)V

    .line 37
    invoke-static {v0}, Lcom/autonavi/amapauto/alpack/d;->j(Lcom/autonavi/amapauto/alpack/d$f;)V

    .line 40
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/autonavi/amapauto/alpack/AutoGatewayService;->d:Lcom/autonavi/amapauto/alpack/a$a;

    .line 3
    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method
