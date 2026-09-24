.class public Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->g(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->d:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 3
    iput-object p2, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->b:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->c:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->a:Ljava/lang/String;

    .line 13
    aput-object v3, v1, v2

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    aput-object v2, v1, v3

    .line 26
    const/4 v2, 0x2

    .line 27
    iget-object v3, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->b:Ljava/lang/String;

    .line 29
    aput-object v3, v1, v2

    .line 31
    const-string v2, "IntelligentSpeedLimitService"

    .line 33
    const-string v3, "{?}, thread = {?} , json = {?} "

    .line 35
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget v1, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->c:I

    .line 40
    iget-object v2, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$c;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->n(ILjava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method
