.class public Lwh0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;-><init>()V

    .line 9
    iput-object p1, p0, Lwh0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 11
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
    const-string v1, "TrafficLightsCountdownInfoDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lwh0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "TrafficLightsCountdownInfoDisAction"

    .line 6
    const-string v2, "pareseToIntent"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    const-string v1, "KEY_TYPE"

    .line 18
    const v2, 0xeaa9

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lwh0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 26
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->getTrafficLightStatus()I

    .line 29
    move-result v1

    .line 30
    const-string v2, "trafficLightStatus"

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lwh0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 37
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->getDir()I

    .line 40
    move-result v1

    .line 41
    const-string v2, "dir"

    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lwh0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 48
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->getRedLightCountDownSeconds()I

    .line 51
    move-result v1

    .line 52
    const-string v2, "redLightCountDownSeconds"

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lwh0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 59
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->getWaitRound()I

    .line 62
    move-result v1

    .line 63
    const-string v2, "waitRound"

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lib;->t()Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lwh0;->d:Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 76
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->getGreenLightLastSecond()I

    .line 79
    move-result v1

    .line 80
    const-string v2, "greenLightLastSecond"

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    :cond_0
    return-object v0
.end method
