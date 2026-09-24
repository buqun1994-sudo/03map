.class public Lma0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;-><init>()V

    iput-object v0, p0, Lma0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;-><init>()V

    iput-object v0, p0, Lma0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    const-string v0, "EXTRA_SETTING_TYPE"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lma0;->k:I

    .line 6
    iget-object v0, p0, Lma0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;->setSettingType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;-><init>()V

    .line 9
    iput-object p1, p0, Lma0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lma0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

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
    iget v1, p0, Lma0;->k:I

    .line 19
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRequestSetting(II)V

    .line 22
    :goto_0
    return-void
.end method
