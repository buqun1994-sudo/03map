.class public Lll;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;-><init>()V

    iput-object v0, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;-><init>()V

    iput-object v0, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    .line 9
    iput p1, p0, Lll;->k:I

    .line 10
    iput p2, p0, Lll;->l:I

    .line 11
    iput p3, p0, Lll;->m:I

    .line 12
    iput p4, p0, Lll;->n:I

    .line 13
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->setExternalEngineId(I)V

    .line 14
    iget-object p1, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    iget p2, p0, Lll;->l:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->setExternalMapLevel(I)V

    .line 15
    iget-object p1, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    iget p2, p0, Lll;->m:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->setExternalMapMode(I)V

    .line 16
    iget-object p1, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    iget p2, p0, Lll;->n:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->setExternalMapPosition(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;-><init>()V

    iput-object v0, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    iput-object p1, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lll;->o:Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lll;->k:I

    .line 15
    iget v1, p0, Lll;->l:I

    .line 17
    iget v2, p0, Lll;->m:I

    .line 19
    iget v3, p0, Lll;->n:I

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setExternalScreenMapStatus(IIII)V

    .line 24
    :goto_0
    return-void
.end method
