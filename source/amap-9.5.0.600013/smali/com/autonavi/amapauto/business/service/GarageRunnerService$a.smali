.class public Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/business/service/GarageRunnerService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/business/service/GarageRunnerService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;->a:Lcom/autonavi/amapauto/business/service/GarageRunnerService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GarageRunnerService"

    .line 6
    const-string v2, "Start Task"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;->a:Lcom/autonavi/amapauto/business/service/GarageRunnerService;

    .line 17
    invoke-static {v2}, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->a(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)Z

    .line 20
    move-result v2

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v3

    .line 25
    sub-long/2addr v3, v0

    .line 26
    iget-object v0, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;->a:Lcom/autonavi/amapauto/business/service/GarageRunnerService;

    .line 28
    invoke-static {v0}, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->c(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)Landroid/os/Handler;

    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;

    .line 34
    invoke-direct {v1, p0, v3, v4, v2}, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;-><init>(Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;JZ)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
