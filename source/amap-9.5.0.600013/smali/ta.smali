.class public Lta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lta$a;
    }
.end annotation


# instance fields
.field public a:Lp70;

.field public b:Lo70;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lta;->a:Lp70;

    .line 7
    iput-object v0, p0, Lta;->b:Lo70;

    .line 9
    return-void
.end method

.method public static b()Lta;
    .locals 1

    .line 1
    invoke-static {}, Lta$a;->a()Lta;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lta;->a:Lp70;

    .line 3
    invoke-virtual {v0}, Lp70;->r()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->w()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0}, Lta;->c()Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    aput-object v3, v0, v2

    .line 14
    const-string v2, "[ALSimulate] AutoProtocolManager"

    .line 16
    const-string v3, "init context = {?} SDKVersion= {?}"

    .line 18
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-nez p1, :cond_0

    .line 23
    return v1

    .line 24
    :cond_0
    iget-object v0, p0, Lta;->a:Lp70;

    .line 26
    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lp70;

    .line 30
    invoke-direct {v0, p1}, Lp70;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v0, p0, Lta;->a:Lp70;

    .line 35
    :cond_1
    iget-object p1, p0, Lta;->b:Lo70;

    .line 37
    if-nez p1, :cond_2

    .line 39
    new-instance p1, Lo70;

    .line 41
    invoke-direct {p1, p0}, Lo70;-><init>(Lta;)V

    .line 44
    iput-object p1, p0, Lta;->b:Lo70;

    .line 46
    :cond_2
    iget-object p1, p0, Lta;->a:Lp70;

    .line 48
    invoke-virtual {p1}, Lp70;->o()V

    .line 51
    iget-object p1, p0, Lta;->a:Lp70;

    .line 53
    invoke-virtual {p1}, Lp70;->n()Z

    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public e(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[ALSimulate] AutoProtocolManager"

    .line 6
    const-string v3, "sendProtocolModelData"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lta;->a:Lp70;

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1}, Lp70;->t()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    const-string v1, "sendProtocolModelData,isServiceConnect=false"

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lta;->a:Lp70;

    .line 30
    invoke-virtual {v0, p1, p2}, Lp70;->l(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I

    .line 33
    move-result p1

    .line 34
    iget-object p2, p0, Lta;->a:Lp70;

    .line 36
    invoke-virtual {p2}, Lp70;->n()Z

    .line 39
    return p1

    .line 40
    :cond_0
    iget-object v1, p0, Lta;->a:Lp70;

    .line 42
    invoke-virtual {v1}, Lp70;->s()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 51
    move-result v1

    .line 52
    const v3, 0x1869f

    .line 55
    if-eq v1, v3, :cond_1

    .line 57
    const-string v1, "sendProtocolModelData,isRequestedVersion=false"

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lta;->a:Lp70;

    .line 66
    invoke-virtual {v0, p1, p2}, Lp70;->l(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I

    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_1
    iget-object v0, p0, Lta;->a:Lp70;

    .line 73
    invoke-virtual {v0, p1, p2}, Lp70;->x(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I

    .line 76
    move-result p1

    .line 77
    return p1

    .line 78
    :cond_2
    const/4 p1, -0x1

    .line 79
    return p1
.end method
