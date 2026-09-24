.class public Lwc0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Z

.field public l:Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;-><init>()V

    iput-object v0, p0, Lwc0;->l:Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;-><init>()V

    iput-object v0, p0, Lwc0;->l:Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    const-string v0, "EXTRA_SEND2CAR_DATA"

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lwc0;->k:Z

    xor-int/2addr p1, v1

    const/16 v0, 0x2742

    const/4 v1, -0x1

    .line 11
    invoke-static {v0, v1, p1}, Lwe0;->c(III)V

    .line 12
    iget-object p1, p0, Lwc0;->l:Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    iget-boolean v0, p0, Lwc0;->k:Z

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;->setSend2carData(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;-><init>()V

    iput-object v0, p0, Lwc0;->l:Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lwc0;->l:Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->h()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lwc0;->l:Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iget-boolean v1, p0, Lwc0;->k:Z

    .line 16
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeControlMessageCard(IZ)V

    .line 19
    :goto_0
    return-void
.end method
