.class public Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;


# direct methods
.method public constructor <init>(Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$b;->a:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "IntelligentSpeedLimitService"

    .line 6
    const-string v3, "IBackgroundWorkObserver onServiceLoadFinish"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviOpera(II)V

    .line 15
    invoke-static {}, La7;->c()La7;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService$b;->a:Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 21
    invoke-static {v1}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->a(Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;)La7$b;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, La7;->f(La7$b;)V

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SpeedLimit"

    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method
