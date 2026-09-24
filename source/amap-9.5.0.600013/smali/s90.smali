.class public Ls90;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    iput-object p1, p0, Ls90;->l:Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    .line 6
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 11
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;-><init>()V

    .line 14
    iput-object v0, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 16
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->getWipeState()I

    .line 19
    move-result v1

    .line 20
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->wipeState:I

    .line 22
    iget-object v0, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 24
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->getGear()I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->gear:I

    .line 30
    iget-object v0, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 32
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->getTurnLight()I

    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->turnLight:I

    .line 38
    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 43
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->wipeState:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    aput-object v1, v0, v2

    .line 52
    iget-object v1, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 54
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->gear:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v1

    .line 60
    const/4 v3, 0x1

    .line 61
    aput-object v1, v0, v3

    .line 63
    iget-object v1, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 65
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->turnLight:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    const/4 v4, 0x2

    .line 72
    aput-object v1, v0, v4

    .line 74
    const-string v1, "ReceiveCarHWStatusAction"

    .line 76
    const-string v5, "model data wipeState={?},gear={?},turnLight={?}"

    .line 78
    invoke-static {v1, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->getSteeringWheel()Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;

    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;

    .line 89
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;->s()D

    .line 95
    move-result-wide v5

    .line 96
    iput-wide v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;->steerAngle:D

    .line 98
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;->r()I

    .line 101
    move-result p1

    .line 102
    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;->angularSpeed:I

    .line 104
    iget-object p1, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 106
    iput-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->steeringWheelInfo:Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;

    .line 108
    new-array p1, v4, [Ljava/lang/Object;

    .line 110
    iget-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;->steerAngle:D

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 115
    move-result-object v0

    .line 116
    aput-object v0, p1, v2

    .line 118
    iget-object v0, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 120
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;->steeringWheelInfo:Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;

    .line 122
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/SteeringWheelInfo;->angularSpeed:I

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v0

    .line 128
    aput-object v0, p1, v3

    .line 130
    const-string v0, "model data steerAngle={?},angularSpeed={?}"

    .line 132
    invoke-static {v1, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ls90;->l:Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    const/4 v1, 0x0

    .line 17
    iget-object v2, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 19
    aput-object v2, v0, v1

    .line 21
    const-string v1, "ReceiveCarHWStatusAction"

    .line 23
    const-string v2, "doAction mCarHWStatusData={?}"

    .line 25
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 30
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lnc;->i()I

    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Ls90;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;

    .line 38
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNotifyCarHWStatus(ILcom/autonavi/amapauto/jni/protocol/data/CarHWStatusData;)V

    .line 41
    :cond_1
    :goto_0
    return-void
.end method
