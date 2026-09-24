.class public Ld60;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Ljava/lang/String;

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;-><init>()V

    iput-object v0, p0, Ld60;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;-><init>()V

    iput-object v0, p0, Ld60;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    const-string v0, "EXTRA_PLAY_SOUND_TEXT"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld60;->k:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Ld60;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;->setPlaySoundText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;-><init>()V

    iput-object v0, p0, Ld60;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    iput-object p1, p0, Ld60;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

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
    iget-object v0, p0, Ld60;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ld60;->k:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativePlaySound(Ljava/lang/String;)V

    .line 18
    :goto_0
    return-void
.end method
