.class public Ln5;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;-><init>()V

    .line 9
    iput-object p1, p0, Ln5;->d:Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;

    .line 11
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ArHudGuideLineOutputDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ArHudGuideLineOutputDisAction"

    .line 6
    const-string v2, "pareseToIntent"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
