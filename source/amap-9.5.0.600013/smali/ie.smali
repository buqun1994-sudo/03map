.class public Lie;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Ljava/lang/String;

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;-><init>()V

    iput-object v0, p0, Lie;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    .line 3
    invoke-virtual {p0}, Lie;->y()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;-><init>()V

    iput-object v0, p0, Lie;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    .line 6
    invoke-virtual {p0}, Lie;->y()V

    const-string v0, "CAR_PLATE_NUMBER"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lie;->k:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lie;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;->setCarPlateNumber(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lnc;-><init>()V

    .line 10
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;-><init>()V

    iput-object v0, p0, Lie;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    .line 11
    invoke-virtual {p0}, Lie;->y()V

    .line 12
    iput-object p1, p0, Lie;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

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
    const-string v1, "CarPlateSetAction"

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
    invoke-virtual {p0}, Lie;->x()Lcom/autonavi/amapauto/protocol/model/service/RspCarPlateInfoModel;

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

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lie;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lie;->k:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeCarPlateSet(Ljava/lang/String;)V

    .line 18
    :goto_0
    return-void
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspCarPlateInfoModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspCarPlateInfoModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspCarPlateInfoModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspCarPlateInfoModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspCarPlateInfoModel;
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
    const-string v4, "CarPlateSetAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method

.method public final y()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->s()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 16
    :goto_0
    return-void
.end method
