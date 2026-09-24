.class public Lil;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;-><init>()V

    iput-object v0, p0, Lil;->l:Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;-><init>()V

    .line 5
    iput-object p1, p0, Lil;->l:Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalEngineId()I

    move-result v0

    iput v0, p0, Lil;->d:I

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalMapMode()I

    move-result v0

    iput v0, p0, Lil;->e:I

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalCrossControl()I

    move-result v0

    iput v0, p0, Lil;->f:I

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalMiniMap()I

    move-result v0

    iput v0, p0, Lil;->g:I

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalFullView()I

    move-result v0

    iput v0, p0, Lil;->h:I

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalConfigMode()I

    move-result v0

    iput v0, p0, Lil;->i:I

    .line 12
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalMapLevel()I

    move-result v0

    iput v0, p0, Lil;->j:I

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;->getExternalMaplevelStatus()I

    move-result p1

    iput p1, p0, Lil;->k:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lil;->l:Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x278a

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_EXTERNAL_ENGINE_ID"

    .line 15
    iget v2, p0, Lil;->d:I

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const-string v1, "EXTRA_EXTERNAL_MAP_MODE"

    .line 22
    iget v2, p0, Lil;->e:I

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    const-string v1, "EXTRA_EXTERNAL_CROSS_CONTROL"

    .line 29
    iget v2, p0, Lil;->f:I

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string v1, "EXTRA_EXTERNAL_MINI_MAP"

    .line 36
    iget v2, p0, Lil;->g:I

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string v1, "EXTRA_EXTERNAL_FULL_VIEW"

    .line 43
    iget v2, p0, Lil;->h:I

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const-string v1, "EXTRA_EXTERNAL_CONFIG_MODE"

    .line 50
    iget v2, p0, Lil;->i:I

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string v1, "EXTRA_EXTERNAL_MAP_LEVEL"

    .line 57
    iget v2, p0, Lil;->j:I

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v1, "EXTRA_EXTERNAL_MAPLEVEL_STATUS"

    .line 64
    iget v2, p0, Lil;->k:I

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method public g(Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getWindowId()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lil;->d:I

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getViewMode()I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lil;->e:I

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getCrossControl()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lil;->f:I

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getMiniMap()I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lil;->g:I

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getFullView()I

    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lil;->h:I

    .line 31
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getConfigMode()I

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lil;->i:I

    .line 37
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getLevel()I

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lil;->j:I

    .line 43
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/ExtScreenControlData;->getLevelStatus()I

    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lil;->k:I

    .line 49
    return-void
.end method
