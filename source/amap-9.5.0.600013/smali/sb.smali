.class public Lsb;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsb;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsb;->l:I

    const-string v1, "EXTRA_AVOID_TRAFFIC_JAM_CONTROL"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lsb;->k:Z

    .line 6
    iput p1, p0, Lsb;->l:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lsb;->l:I

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;->getOperaSelect()I

    move-result v1

    iput v1, p0, Lsb;->l:I

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;->getOperaSelect()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lsb;->k:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnc;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;-><init>()V

    .line 10
    iget-boolean v1, p0, Lsb;->k:Z

    .line 12
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;->setOperaSelect(I)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 18
    iget v1, p0, Lnc;->d:I

    .line 20
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 23
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/16 v0, 0x2722

    .line 9
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lib;->i()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    .line 21
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;-><init>()V

    .line 24
    iget v1, p0, Lsb;->l:I

    .line 26
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;->setOperaSelect(I)V

    .line 29
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 36
    move-result v0

    .line 37
    iget-boolean v1, p0, Lsb;->k:Z

    .line 39
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAvoidJam(IZ)V

    .line 42
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
