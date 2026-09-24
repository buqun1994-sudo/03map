.class public Lmf0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;->getValue()I

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lmf0;->k:I

    .line 10
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
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;-><init>()V

    .line 10
    iget v1, p0, Lmf0;->k:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;->setValue(I)V

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
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;-><init>()V

    .line 12
    iget v1, p0, Lmf0;->k:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;->setValue(I)V

    .line 17
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lmf0;->k:I

    .line 27
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSwitchAvoidLimit(II)V

    .line 30
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
