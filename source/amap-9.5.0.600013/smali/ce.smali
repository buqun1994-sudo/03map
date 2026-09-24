.class public Lce;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_CAMERA_STATE"

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lce;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;->getCameraState()I

    move-result p1

    iput p1, p0, Lce;->k:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraStatusNotifyAction"

    .line 6
    const-string v3, "[parseToAidlModel]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const-string v1, "[parseToAidlModel] isSuccessed"

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    .line 30
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;-><init>()V

    .line 33
    iget v1, p0, Lce;->k:I

    .line 35
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;->setCameraState(I)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 41
    iget v1, p0, Lnc;->d:I

    .line 43
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 46
    :goto_0
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraStatusNotifyAction"

    .line 6
    const-string v3, "[pareseToIntent]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/16 v1, 0x2f52

    .line 13
    invoke-virtual {p0, v1}, Lnc;->t(I)V

    .line 16
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 19
    move-result-object v1

    .line 20
    new-instance v3, Landroid/content/Intent;

    .line 22
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 25
    const/4 v4, 0x1

    .line 26
    const-string v5, "EXTRA_RESPONSE_CODE"

    .line 28
    if-nez v1, :cond_0

    .line 30
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 36
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    :goto_0
    const-string v1, "EXTRA_CAMERA_STATE"

    .line 41
    iget v5, p0, Lce;->k:I

    .line 43
    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const/4 v1, 0x2

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    iget-boolean v5, p0, Lnc;->c:Z

    .line 51
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object v5

    .line 55
    aput-object v5, v1, v0

    .line 57
    iget v0, p0, Lce;->k:I

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v0

    .line 63
    aput-object v0, v1, v4

    .line 65
    const-string v0, "[pareseToIntent]isSuccessed:{?};cameraState:{?}"

    .line 67
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-object v3
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lnc;->i()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    iget v1, p0, Lce;->k:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v1, v0, v2

    .line 24
    const-string v1, "CameraStatusNotifyAction"

    .line 26
    const-string v2, "[doAction]execute nativeCameraStatusNotify requestId:{?}, cameraState:{?}"

    .line 28
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lib;->i()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    .line 39
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;-><init>()V

    .line 42
    iget v1, p0, Lce;->k:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;->setCameraState(I)V

    .line 47
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 54
    move-result v0

    .line 55
    iget v1, p0, Lce;->k:I

    .line 57
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeCameraStatusNotify(II)V

    .line 60
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
