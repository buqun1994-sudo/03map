.class public Lll0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Z

.field public m:Z

.field public n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;-><init>()V

    iput-object v0, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;-><init>()V

    iput-object v0, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    const-string v0, "EXTRA_VOICE_CONTROL_NAME_TYPE"

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lll0;->k:I

    const-string v0, "EXTRA_VOICE_CONTROL_AVOID_TRAFFIC_JAM"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lll0;->l:Z

    const-string v0, "EXTRA_VOICE_CONTROL_PARK"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lll0;->m:Z

    .line 12
    iget-object p1, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    iget v0, p0, Lll0;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;->setVoiceControlNameType(I)V

    .line 13
    iget-object p1, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    iget-boolean v0, p0, Lll0;->l:Z

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;->setVoiceControlAvoidTrafficJam(Z)V

    .line 14
    iget-object p1, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    iget-boolean v0, p0, Lll0;->m:Z

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;->setVoiceControlPark(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;-><init>()V

    iput-object v0, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lll0;->n:Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lll0;->k:I

    .line 15
    iget-boolean v1, p0, Lll0;->l:Z

    .line 17
    iget-boolean v2, p0, Lll0;->m:Z

    .line 19
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeVoiceControlReq(IZZ)V

    .line 22
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
