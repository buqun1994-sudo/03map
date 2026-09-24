.class public Lxd0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Z

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxd0;->k:Z

    .line 3
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;-><init>()V

    iput-object v0, p0, Lxd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lxd0;->k:Z

    .line 6
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;-><init>()V

    iput-object v1, p0, Lxd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    const-string v1, "EXTRA_TYPE"

    const/4 v2, -0x1

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 8
    :cond_0
    iput-boolean v0, p0, Lxd0;->k:Z

    .line 9
    iget-object v0, p0, Lxd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;->setType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lxd0;->k:Z

    .line 12
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;-><init>()V

    iput-object v0, p0, Lxd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 14
    iput-object p1, p0, Lxd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

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
    const-string v1, "SideRoadSwitchAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lxd0;->x()Lcom/autonavi/amapauto/protocol/model/service/RspSwitchMainAndAuxiliaryRoadModel;

    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 9
    const/16 v1, 0x2710

    .line 11
    if-eq v0, v1, :cond_0

    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    const-string v1, "EXTRA_STATE"

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lxd0;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

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
    iget-boolean v1, p0, Lxd0;->k:Z

    .line 19
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetSideRoadSwitch(IZ)V

    .line 22
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspSwitchMainAndAuxiliaryRoadModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspSwitchMainAndAuxiliaryRoadModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspSwitchMainAndAuxiliaryRoadModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspSwitchMainAndAuxiliaryRoadModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspSwitchMainAndAuxiliaryRoadModel;
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
    const-string v4, "SideRoadSwitchAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
