.class public Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dir:I

.field private greenLightLastSecond:I

.field private redLightCountDownSeconds:I

.field private trafficLightStatus:I

.field private waitRound:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->dir:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->redLightCountDownSeconds:I

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->trafficLightStatus:I

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->waitRound:I

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->greenLightLastSecond:I

    const v0, 0x1393d

    .line 7
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->dir:I

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->redLightCountDownSeconds:I

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->trafficLightStatus:I

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->waitRound:I

    .line 13
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->greenLightLastSecond:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->dir:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->redLightCountDownSeconds:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->trafficLightStatus:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->waitRound:I

    .line 18
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->getModelVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->greenLightLastSecond:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDir()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->dir:I

    .line 3
    return v0
.end method

.method public getGreenLightLastSecond()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->greenLightLastSecond:I

    .line 3
    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRedLightCountDownSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->redLightCountDownSeconds:I

    .line 3
    return v0
.end method

.method public getTrafficLightStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->trafficLightStatus:I

    .line 3
    return v0
.end method

.method public getWaitRound()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->waitRound:I

    .line 3
    return v0
.end method

.method public setDir(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->dir:I

    .line 3
    return-void
.end method

.method public setGreenLightLastSecond(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->greenLightLastSecond:I

    .line 3
    return-void
.end method

.method public setRedLightCountDownSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->redLightCountDownSeconds:I

    .line 3
    return-void
.end method

.method public setTrafficLightStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->trafficLightStatus:I

    .line 3
    return-void
.end method

.method public setWaitRound(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->waitRound:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "dir"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->dir:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "redLightCountDownSeconds"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->redLightCountDownSeconds:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "trafficLightStatus"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->trafficLightStatus:I

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "waitRound"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->waitRound:I

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "greenLightLastSecond"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->greenLightLastSecond:I

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->dir:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->redLightCountDownSeconds:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->trafficLightStatus:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->waitRound:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->getModelVersion()I

    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x1

    .line 29
    if-lt p2, v0, :cond_0

    .line 31
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;->greenLightLastSecond:I

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    :cond_0
    return-void
.end method
