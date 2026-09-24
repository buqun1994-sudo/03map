.class public Lyk;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_ENDURANCE_DATA"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    iput p1, p0, Lyk;->k:I

    const/16 v0, 0x2741

    const/4 v1, -0x1

    .line 3
    invoke-static {v0, v1, p1}, Lwe0;->c(III)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;->getOperaSelect()I

    move-result p1

    iput p1, p0, Lyk;->k:I

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    .line 13
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;-><init>()V

    .line 16
    iget v1, p0, Lyk;->k:I

    .line 18
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;->setOperaSelect(I)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 24
    iget v1, p0, Lnc;->d:I

    .line 26
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 29
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Lyk;->k:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "EnduranceChooseAction"

    .line 15
    const-string v4, "doAction enduranceResult:{?}"

    .line 17
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lib;->h()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    .line 28
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;-><init>()V

    .line 31
    iget v1, p0, Lyk;->k:I

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;->setOperaSelect(I)V

    .line 36
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget v1, p0, Lyk;->k:I

    .line 42
    if-eqz v1, :cond_1

    .line 44
    if-eq v1, v0, :cond_1

    .line 46
    const/16 v0, 0x2711

    .line 48
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 55
    move-result v1

    .line 56
    iget v2, p0, Lyk;->k:I

    .line 58
    if-nez v2, :cond_2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeEnduranceChoose(IZ)V

    .line 65
    :goto_1
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget v0, p0, Lyk;->k:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
