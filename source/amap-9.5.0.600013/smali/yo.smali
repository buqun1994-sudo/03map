.class public Lyo;
.super Lhl;
.source "SourceFile"


# instance fields
.field public i:Lak0;

.field public final j:Lcom/autonavi/extscreen/dto/PresentationConfig;

.field public final k:Lif;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/extscreen/dto/PresentationConfig;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lhl;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lyo;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 6
    new-instance p1, Lif;

    .line 8
    iget-object v0, p0, Lhl;->b:Landroid/content/Context;

    .line 10
    iget v1, p2, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 12
    iget v2, p2, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {p1, v0, v1, v2, v3}, Lif;-><init>(Landroid/content/Context;IILz40;)V

    .line 18
    iput-object p1, p0, Lyo;->k:Lif;

    .line 20
    iget p1, p2, Lcom/autonavi/extscreen/dto/PresentationConfig;->createSurfaceWhenInit:I

    .line 22
    const/4 p2, 0x1

    .line 23
    if-ne p1, p2, :cond_0

    .line 25
    invoke-virtual {p0, p2}, Lyo;->v(I)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()Ld20;
    .locals 1

    .line 1
    sget-object v0, Ld20;->e:Ld20;

    .line 3
    return-object v0
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "HarmanVideoScreen"

    .line 6
    const-string v2, "startRender"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lyo;->i:Lak0;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lak0;

    .line 17
    iget-object v1, p0, Lyo;->j:Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 19
    iget v1, v1, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 21
    iget-object v2, p0, Lyo;->k:Lif;

    .line 23
    invoke-direct {v0, v1, p0, v2}, Lak0;-><init>(ILhl;Ljr;)V

    .line 26
    iput-object v0, p0, Lyo;->i:Lak0;

    .line 28
    invoke-virtual {v0}, Lak0;->a()V

    .line 31
    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyo;->s()V

    .line 4
    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "HarmanVideoScreen"

    .line 6
    const-string v2, "stopRender"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lyo;->i:Lak0;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lak0;->b()V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lyo;->i:Lak0;

    .line 21
    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "HarmanVideoScreen"

    .line 13
    const-string v2, "onRtpConnectStateChange state:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lyo;->k:Lif;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lif;->q(I)V

    .line 25
    :cond_0
    return-void
.end method
