.class public La50;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;-><init>()V

    iput-object v0, p0, La50;->k:Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;-><init>()V

    iput-object v0, p0, La50;->k:Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    iput-object p1, p0, La50;->k:Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    const-string p1, "[OpenFavoriteAction]ReqOpenSavesModel"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OpenFavoriteAction"

    .line 7
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, La50;->k:Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->openFavorite(I)V

    .line 20
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
