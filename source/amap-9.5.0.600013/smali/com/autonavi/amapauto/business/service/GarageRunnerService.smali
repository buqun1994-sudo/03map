.class public Lcom/autonavi/amapauto/business/service/GarageRunnerService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->a:Landroid/os/Handler;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->b:Landroid/app/job/JobParameters;

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->d()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)Landroid/app/job/JobParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->b:Landroid/app/job/JobParameters;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->a:Landroid/os/Handler;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final d()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "GarageRunnerService"

    .line 6
    const-string v3, "excute in  event:11400409 executeTask Acc Off!!!"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v3

    .line 17
    const-string v4, "occur an UnsatisfiedLinkError~~"

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, v4, v3, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 24
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Leq$a;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, v3}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 34
    const v3, 0xea64

    .line 37
    invoke-virtual {v0, v3, v2}, Lse;->setOptionalValue(ILeq$a;)V

    .line 40
    return v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GarageRunnerService"

    .line 6
    const-string v2, "******onStartJob******"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->b:Landroid/app/job/JobParameters;

    .line 13
    new-instance p1, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;

    .line 15
    invoke-direct {p1, p0}, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;-><init>(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)V

    .line 18
    invoke-static {p1}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "GarageRunnerService"

    .line 6
    const-string v1, "******onStopJob******"

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method
