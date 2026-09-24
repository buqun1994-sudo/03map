.class public Lkd0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lkd0;->k:I

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;-><init>()V

    iput-object v0, p0, Lkd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lkd0;->k:I

    .line 12
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;-><init>()V

    iput-object v1, p0, Lkd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    const-string v1, "VOICE_ROLE"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lkd0;->k:I

    .line 14
    iget-object v0, p0, Lkd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;->setVoiceRole(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkd0;->k:I

    .line 3
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;-><init>()V

    iput-object v1, p0, Lkd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 4
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 5
    iput-object p1, p0, Lkd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;->getVoiceRole()I

    move-result p1

    iput p1, p0, Lkd0;->k:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lkd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lkd0;->k:I

    .line 15
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetVoice(I)V

    .line 18
    :goto_0
    return-void
.end method
