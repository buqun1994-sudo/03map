.class public Lev;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

.field public e:Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;-><init>()V

    iput-object v0, p0, Lev;->e:Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    .line 3
    iput-object p1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;-><init>()V

    .line 6
    iput-object p1, p0, Lev;->e:Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;-><init>()V

    iput-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getState()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->state:I

    .line 9
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getSlat()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startLat:D

    .line 10
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getSlon()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startLon:D

    .line 11
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getDlat()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endLat:D

    .line 12
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getDlon()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endLon:D

    .line 13
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getIntervalDistance()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->intervalDistance:F

    .line 14
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getIntervalDistanceText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->intervalDistanceText:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getCameraType()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->cameraType:I

    .line 16
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getLimitedSpeed()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->limitSpeed:I

    .line 17
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getAverageSpeed()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->averageSpeed:I

    .line 18
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getStartDistance()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startDistance:F

    .line 19
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getStartDistanceText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startDistanceText:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getEndDistance()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endDistance:F

    .line 21
    iget-object v0, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->getEndDistanceText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endDistanceText:Ljava/lang/String;

    :cond_0
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
    const-string v1, "IntervalCameraInfoDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lev;->e:Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    .line 13
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
    const/16 v2, 0x2f4e

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 15
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->state:I

    .line 17
    const-string v2, "EXTRA_STATE"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 24
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startLat:D

    .line 26
    const-string v3, "EXTRA_SLAT"

    .line 28
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 33
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startLon:D

    .line 35
    const-string v3, "EXTRA_SLON"

    .line 37
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 42
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endLat:D

    .line 44
    const-string v3, "EXTRA_DLAT"

    .line 46
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 51
    iget-wide v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endLon:D

    .line 53
    const-string v3, "EXTRA_DLON"

    .line 55
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 60
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->intervalDistance:F

    .line 62
    const-string v2, "INTERVAL_DISTANCE"

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 69
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->intervalDistanceText:Ljava/lang/String;

    .line 71
    const-string v2, "INTERVAL_DISTANCE_TEXT"

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 78
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->cameraType:I

    .line 80
    const-string v2, "CAMERA_TYPE"

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 87
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->limitSpeed:I

    .line 89
    const-string v2, "LIMITED_SPEED"

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 96
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->averageSpeed:I

    .line 98
    const-string v2, "AVERAGE_SPEED"

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 105
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startDistance:F

    .line 107
    const-string v2, "START_DISTANCE"

    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 114
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->startDistanceText:Ljava/lang/String;

    .line 116
    const-string v2, "START_DISTANCE_TEXT"

    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 123
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endDistance:F

    .line 125
    const-string v2, "END_DISTANCE"

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lev;->d:Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;

    .line 132
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/IntervalCameraData;->endDistanceText:Ljava/lang/String;

    .line 134
    const-string v2, "END_DISTANCE_TEXT"

    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    return-object v0
.end method
