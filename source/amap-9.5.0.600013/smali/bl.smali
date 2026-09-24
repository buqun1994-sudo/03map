.class public Lbl;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:I

.field public e:F

.field public f:Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lec;-><init>()V

    .line 6
    iput p1, p0, Lbl;->d:I

    .line 7
    iput p2, p0, Lbl;->e:F

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    invoke-direct {v0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;-><init>(IF)V

    iput-object v0, p0, Lbl;->f:Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput-object p1, p0, Lbl;->f:Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;->getExternalEngineId()I

    move-result v0

    iput v0, p0, Lbl;->d:I

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;->getExternalMapLevel()F

    move-result p1

    iput p1, p0, Lbl;->e:F

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lbl;->f:Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p0}, Lec;->d()Z

    .line 9
    move-result v1

    .line 10
    const-string v2, "EXTRA_EXTERNAL_MAP_LEVEL"

    .line 12
    const-string v3, "EXTRA_EXTERNAL_ENGINE_ID"

    .line 14
    const/16 v4, 0x32ea

    .line 16
    const-string v5, "KEY_TYPE"

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lbl;->f:Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Lbl;->f:Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 29
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;->getExternalEngineId()I

    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lbl;->f:Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 38
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;->getExternalMapLevel()F

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget v1, p0, Lbl;->d:I

    .line 51
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget v1, p0, Lbl;->e:F

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 59
    :cond_1
    :goto_0
    return-object v0
.end method
