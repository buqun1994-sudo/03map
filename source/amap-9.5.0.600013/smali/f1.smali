.class public Lf1;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;-><init>()V

    iput-object v0, p0, Lf1;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;-><init>()V

    iput-object v0, p0, Lf1;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 4
    iput-object p1, p0, Lf1;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ActivateStatusAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lnc;->c:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lf1;->x()Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    if-nez v0, :cond_1

    .line 30
    const/16 v0, 0x2730

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 35
    :goto_0
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 38
    move-object v0, v1

    .line 39
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 11
    const-string v1, "EXTRA_DEVICE_ID"

    .line 13
    const-string v2, "EXTRA_ACTIVATE_STATE"

    .line 15
    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    invoke-virtual {p0}, Lf1;->x()Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;

    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;->getActivateState()I

    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;->getDeviceId()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :cond_1
    return-object v0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/ActiveStateData;

    .line 49
    const-string v3, "pareseToIntent"

    .line 51
    const/4 v4, 0x0

    .line 52
    new-array v5, v4, [Ljava/lang/Object;

    .line 54
    const-string v6, "ActivateStatusAction"

    .line 56
    invoke-static {v6, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v3, Landroid/content/Intent;

    .line 61
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 64
    if-eqz v0, :cond_3

    .line 66
    const/4 v5, 0x2

    .line 67
    new-array v5, v5, [Ljava/lang/Object;

    .line 69
    iget v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/ActiveStateData;->mActiveState:I

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v7

    .line 75
    aput-object v7, v5, v4

    .line 77
    const/4 v4, 0x1

    .line 78
    iget-object v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/ActiveStateData;->mDeviceId:Ljava/lang/String;

    .line 80
    aput-object v7, v5, v4

    .line 82
    const-string v4, "mActiveState:{?} mDeviceId:{?}"

    .line 84
    invoke-static {v6, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/ActiveStateData;->mActiveState:I

    .line 89
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ActiveStateData;->mDeviceId:Ljava/lang/String;

    .line 94
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_3
    return-object v3
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lf1;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;

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
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeGetActiveState(I)V

    .line 20
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const-string v4, "ActivateStatusAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
