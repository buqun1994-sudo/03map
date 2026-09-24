.class public Lgd0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

.field public l:Ljava/lang/String;

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;-><init>()V

    iput-object v0, p0, Lgd0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;-><init>()V

    iput-object v0, p0, Lgd0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    const-string v0, "KEY_PICTURE_PATH"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd0;->l:Ljava/lang/String;

    const-string v0, "KEY_CODE"

    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lgd0;->m:I

    .line 7
    iget-object p1, p0, Lgd0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    iget-object v0, p0, Lgd0;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;->setKeyPicturePath(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lgd0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    iget v0, p0, Lgd0;->m:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;->setKeyCode(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lnc;-><init>()V

    .line 10
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;-><init>()V

    iput-object v0, p0, Lgd0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 12
    iput-object p1, p0, Lgd0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lgd0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lgd0;->m:I

    .line 15
    iget-object v1, p0, Lgd0;->l:Ljava/lang/String;

    .line 17
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetPhotoResult(ILjava/lang/String;)V

    .line 20
    :goto_0
    return-void
.end method
