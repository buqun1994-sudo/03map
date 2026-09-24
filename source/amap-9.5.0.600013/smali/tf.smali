.class public Ltf;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lnc;-><init>()V

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;-><init>()V

    iput-object v0, p0, Ltf;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;-><init>()V

    iput-object p1, p0, Ltf;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;-><init>()V

    iput-object v0, p0, Ltf;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 7
    iput-object p1, p0, Ltf;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

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
    const-string v1, "CommutingStatusAction"

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
    invoke-virtual {p0}, Ltf;->x()Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;

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
    .locals 4

    .line 1
    invoke-virtual {p0}, Ltf;->x()Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "CommutingStatusAction"

    .line 13
    const-string v3, "pareseToIntent:{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 24
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 27
    const-string v2, "KEY_TYPE"

    .line 29
    const v3, 0xea81

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string v2, "commutingStatus"

    .line 37
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;->getCommutingStatus()Z

    .line 40
    move-result v0

    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    return-object v1
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltf;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspCommutingStatusModel;
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
    const-string v4, "CommutingStatusAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
