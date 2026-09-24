.class public Lo40;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    iput-object p1, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 6
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;

    .line 19
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;-><init>()V

    .line 22
    iget-object v1, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 24
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;->getHorizontalDistance()I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;->horizontalDistance:I

    .line 30
    iget-object v1, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 32
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;->getVerticalDistance()I

    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;->verticalDistance:I

    .line 38
    iget-object v1, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 40
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;->getLaneDistance()I

    .line 43
    move-result v1

    .line 44
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;->laneDistance:I

    .line 46
    iget-object v1, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 48
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;->getSignType()I

    .line 51
    move-result v1

    .line 52
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;->signType:I

    .line 54
    iget-object v1, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 56
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;->getSpeedLimitValue()I

    .line 59
    move-result v1

    .line 60
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;->speedLimitValue:I

    .line 62
    iget-object v1, p0, Lo40;->k:Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 64
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;->getOtherSpeedLimitValues()Ljava/util/ArrayList;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;->otherSpeedLimitValues:Ljava/util/List;

    .line 70
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNotifyTSRInfo(Lcom/autonavi/amapauto/jni/protocol/data/TSRInfo;)V

    .line 73
    :cond_1
    :goto_0
    return-void
.end method
