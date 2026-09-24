.class public Lpl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:Z

.field public n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;-><init>()V

    iput-object v0, p0, Lpl;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;-><init>()V

    iput-object v0, p0, Lpl;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    .line 9
    iput p1, p0, Lpl;->k:I

    .line 10
    iput p2, p0, Lpl;->l:I

    .line 11
    iput-boolean p3, p0, Lpl;->m:Z

    .line 12
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;->setExternalEngineId(I)V

    .line 13
    iget-object p1, p0, Lpl;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    iget p2, p0, Lpl;->l:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;->setExternalCrossType(I)V

    .line 14
    iget-object p1, p0, Lpl;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    iget-boolean p2, p0, Lpl;->m:Z

    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;->setExternalCrossControl(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;-><init>()V

    iput-object v0, p0, Lpl;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    iput-object p1, p0, Lpl;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lpl;->n:Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lpl;->k:I

    .line 15
    iget v1, p0, Lpl;->l:I

    .line 17
    iget-boolean v2, p0, Lpl;->m:Z

    .line 19
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setExternalScreenCrossType(IIZ)V

    .line 22
    :goto_0
    return-void
.end method
