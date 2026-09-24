.class public Lty;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lty;->k:I

    .line 3
    iput v0, p0, Lty;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lty;->k:I

    .line 6
    iput p1, p0, Lty;->l:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lty;->k:I

    .line 9
    iput v0, p0, Lty;->l:I

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->getiFrontDistance()I

    move-result v0

    iput v0, p0, Lty;->k:I

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->getTtsBroadcast()I

    move-result p1

    iput p1, p0, Lty;->l:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "LocationTrafficInfoAction"

    .line 12
    const-string v2, "ALResponeData == NULL"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 21
    if-eqz v1, :cond_2

    .line 23
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lty;->x()Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;

    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;

    .line 34
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;

    .line 36
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;-><init>()V

    .line 39
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;->trafficMessage:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;->s(Ljava/lang/String;)V

    .line 44
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 48
    iget v1, p0, Lnc;->d:I

    .line 50
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 53
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
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "LocationTrafficInfoAction"

    .line 12
    const-string v2, "ALResponeData == NULL"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 21
    const-string v2, "EXTRA_LOCATION_TRAFFIC_INFO"

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lty;->x()Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;

    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroid/content/Intent;

    .line 31
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 34
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;->r()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object v1

    .line 42
    :cond_1
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;

    .line 44
    new-instance v1, Landroid/content/Intent;

    .line 46
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/TrafficInfoData;->trafficMessage:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;-><init>()V

    .line 12
    iget v1, p0, Lty;->k:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->setiFrontDistance(I)V

    .line 17
    iget v1, p0, Lty;->l:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->setTtsBroadcast(I)V

    .line 22
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 29
    move-result v0

    .line 30
    iget v1, p0, Lty;->k:I

    .line 32
    iget v2, p0, Lty;->l:I

    .line 34
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSearchLocationTrafficInfo(III)V

    .line 37
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;

    .line 7
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;-><init>()V

    .line 10
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;

    .line 18
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/FrontTrafficRadioModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    move-object v1, v0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    const-string v4, "LocationTrafficInfoAction"

    .line 36
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-object v1
.end method
