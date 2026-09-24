.class public Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z

.field public final synthetic c:Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;->c:Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;

    .line 3
    iput-wide p2, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;->a:J

    .line 5
    iput-boolean p4, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;->b:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;->a:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-boolean v1, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;->b:Z

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v1, v0, v3

    .line 22
    const-string v1, "GarageRunnerService"

    .line 24
    const-string v3, "Task done,result: $result, time duration:{?} ms result:{?}"

    .line 26
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a$a;->c:Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;

    .line 31
    iget-object v0, v0, Lcom/autonavi/amapauto/business/service/GarageRunnerService$a;->a:Lcom/autonavi/amapauto/business/service/GarageRunnerService;

    .line 33
    invoke-static {v0}, Lcom/autonavi/amapauto/business/service/GarageRunnerService;->b(Lcom/autonavi/amapauto/business/service/GarageRunnerService;)Landroid/app/job/JobParameters;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 40
    return-void
.end method
