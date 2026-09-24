.class public Lg1;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;->getScene()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lg1;->k:I

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;->getType()I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lg1;->l:I

    .line 16
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;-><init>()V

    .line 12
    iget v1, p0, Lg1;->k:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;->setScene(I)V

    .line 17
    iget v1, p0, Lg1;->l:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;->setType(I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 29
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/16 v0, 0x2722

    .line 9
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget v1, p0, Lg1;->k:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 25
    iget v1, p0, Lg1;->l:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v1, v0, v2

    .line 34
    const-string v1, "ActiveDialogueAction"

    .line 36
    const-string v2, "mScene:{?} mType:{?}"

    .line 38
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lib;->i()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;

    .line 49
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;-><init>()V

    .line 52
    iget v1, p0, Lg1;->k:I

    .line 54
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;->setScene(I)V

    .line 57
    iget v1, p0, Lg1;->l:I

    .line 59
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;->setType(I)V

    .line 62
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 69
    move-result v0

    .line 70
    iget v1, p0, Lg1;->k:I

    .line 72
    iget v2, p0, Lg1;->l:I

    .line 74
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetDrivingTalk(III)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lnc;->f()V

    .line 80
    :goto_1
    return-void
.end method
