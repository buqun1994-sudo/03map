.class public Lxn;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_TYPE"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lxn;->k:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;->getType()I

    move-result p1

    iput p1, p0, Lxn;->k:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 9
    const/16 v1, 0x2730

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 17
    if-eqz v0, :cond_2

    .line 19
    iget-boolean v0, p0, Lnc;->c:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lxn;->x()Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 30
    iget v1, p0, Lnc;->d:I

    .line 32
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

    .line 42
    if-eqz v0, :cond_3

    .line 44
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 46
    if-eqz v1, :cond_3

    .line 48
    invoke-static {v0}, La80;->d(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 55
    iget v1, p0, Lnc;->d:I

    .line 57
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 60
    :goto_0
    const/4 v1, 0x1

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    aput-object v2, v1, v3

    .line 74
    const-string v2, "GetRouteInfoAction"

    .line 76
    const-string v3, "parseToAidlModel:{?}"

    .line 78
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2748

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-boolean v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 22
    const-string v3, "EXTRA_ROAD_INFO"

    .line 24
    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p0}, Lxn;->x()Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, La80;->e(Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

    .line 40
    invoke-static {v1}, La80;->c(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->h()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;-><init>()V

    .line 12
    iget v1, p0, Lxn;->k:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;->setType(I)V

    .line 17
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lnc;->m()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 33
    const/16 v0, 0x2722

    .line 35
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 42
    move-result v0

    .line 43
    iget v1, p0, Lxn;->k:I

    .line 45
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeGetRouteInfo(II)V

    .line 48
    :goto_0
    return-void
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;
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
    const-string v4, "GetRouteInfoAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
