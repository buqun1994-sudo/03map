.class public Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;
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
            "Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private averageSpeed:I

.field private cameraType:I

.field private dlat:D

.field private dlon:D

.field private endDistance:D

.field private endDistanceText:Ljava/lang/String;

.field private intervalDistance:D

.field private intervalDistanceText:Ljava/lang/String;

.field private limitedSpeed:I

.field private slat:D

.field private slon:D

.field private startDistance:D

.field private startDistanceText:Ljava/lang/String;

.field private state:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138e9

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistanceText:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->state:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slat:D

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlat:D

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slon:D

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->averageSpeed:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistance:D

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistance:D

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->limitedSpeed:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistanceText:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistanceText:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->cameraType:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlon:D

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistance:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDDDIDDILjava/lang/String;Ljava/lang/String;IDD)V
    .locals 3

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistanceText:Ljava/lang/String;

    move v1, p2

    .line 5
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->state:I

    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slat:D

    move-wide v1, p5

    .line 7
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlat:D

    move-wide v1, p7

    .line 8
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slon:D

    move v1, p9

    .line 9
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->averageSpeed:I

    move-wide v1, p10

    .line 10
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistance:D

    move-wide v1, p12

    .line 11
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistance:D

    move/from16 v1, p14

    .line 12
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->limitedSpeed:I

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistanceText:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistanceText:Ljava/lang/String;

    move/from16 v1, p17

    .line 15
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->cameraType:I

    move-wide/from16 v1, p18

    .line 16
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlon:D

    move-wide/from16 v1, p20

    .line 17
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistance:D

    const v1, 0x138e9

    .line 18
    invoke-virtual {p0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAverageSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->averageSpeed:I

    .line 3
    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->cameraType:I

    .line 3
    return v0
.end method

.method public getDlat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlat:D

    .line 3
    return-wide v0
.end method

.method public getDlon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlon:D

    .line 3
    return-wide v0
.end method

.method public getEndDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistance:D

    .line 3
    return-wide v0
.end method

.method public getEndDistanceText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistanceText:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIntervalDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistance:D

    .line 3
    return-wide v0
.end method

.method public getIntervalDistanceText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistanceText:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLimitedSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->limitedSpeed:I

    .line 3
    return v0
.end method

.method public getSlat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slat:D

    .line 3
    return-wide v0
.end method

.method public getSlon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slon:D

    .line 3
    return-wide v0
.end method

.method public getStartDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistance:D

    .line 3
    return-wide v0
.end method

.method public getStartDistanceText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistanceText:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->state:I

    .line 3
    return v0
.end method

.method public setAverageSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->averageSpeed:I

    .line 3
    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->cameraType:I

    .line 3
    return-void
.end method

.method public setDlat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlat:D

    .line 3
    return-void
.end method

.method public setDlon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlon:D

    .line 3
    return-void
.end method

.method public setEndDistance(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistance:D

    .line 3
    return-void
.end method

.method public setEndDistanceText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistanceText:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIntervalDistance(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistance:D

    .line 3
    return-void
.end method

.method public setIntervalDistanceText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistanceText:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLimitedSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->limitedSpeed:I

    .line 3
    return-void
.end method

.method public setSlat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slat:D

    .line 3
    return-void
.end method

.method public setSlon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slon:D

    .line 3
    return-void
.end method

.method public setStartDistance(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistance:D

    .line 3
    return-void
.end method

.method public setStartDistanceText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistanceText:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->state:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "startDistanceText"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistanceText:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "state"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->state:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "slat"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slat:D

    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "dlat"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlat:D

    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "slon"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slon:D

    .line 84
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "averageSpeed"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->averageSpeed:I

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "startDistance"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistance:D

    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "endDistance"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistance:D

    .line 132
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "limitedSpeed"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->limitedSpeed:I

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "endDistanceText"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistanceText:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "intervalDistanceText"

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistanceText:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "cameraType"

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->cameraType:I

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, "dlon"

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlon:D

    .line 212
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "intervalDistance"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistance:D

    .line 228
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistanceText:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->state:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slat:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlat:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->slon:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->averageSpeed:I

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->startDistance:D

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistance:D

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->limitedSpeed:I

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->endDistanceText:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistanceText:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->cameraType:I

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->dlon:D

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;->intervalDistance:D

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    return-void
.end method
