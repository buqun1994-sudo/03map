.class public Lfc0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;-><init>()V

    iput-object v0, p0, Lfc0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;-><init>()V

    iput-object v0, p0, Lfc0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lfc0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

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
    const-string v1, "SearchAlongBySpecialPointAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 19
    iget v1, p0, Lnc;->d:I

    .line 21
    invoke-static {v0, v1}, La80;->i(Ljava/lang/String;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    const/16 v1, 0x2730

    .line 30
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 33
    :goto_0
    const v1, 0x13922

    .line 36
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 39
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfc0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
