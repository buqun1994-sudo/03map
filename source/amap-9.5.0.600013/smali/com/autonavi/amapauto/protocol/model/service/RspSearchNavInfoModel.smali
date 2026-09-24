.class public Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;
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
            "Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cameraDist:I

.field private cameraID:I

.field private cameraPenalty:Z

.field private cameraSpeed:I

.field private cameraType:I

.field private isOverspeed:Z

.field private sapaDist:I

.field private sapaETA:I

.field private sapaName:Ljava/lang/String;

.field private sapaNum:I

.field private sapaType:I

.field private tollDist:I

.field private tollETA:I

.field private tollName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraDist:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraID:I

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraPenalty:Z

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraSpeed:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraType:I

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->isOverspeed:Z

    .line 8
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaDist:I

    .line 9
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaETA:I

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaNum:I

    .line 11
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaType:I

    .line 12
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollDist:I

    .line 13
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollETA:I

    const v0, 0x13923

    .line 14
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 15
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraDist:I

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraID:I

    .line 18
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraPenalty:Z

    .line 19
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraSpeed:I

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraType:I

    .line 21
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->isOverspeed:Z

    .line 22
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaDist:I

    .line 23
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaETA:I

    .line 24
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaNum:I

    .line 25
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaType:I

    .line 26
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollDist:I

    .line 27
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollETA:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraDist:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraID:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraPenalty:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraSpeed:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraType:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->isOverspeed:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaDist:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaETA:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaNum:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaType:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollDist:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollETA:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraDist:I

    .line 3
    return v0
.end method

.method public getCameraID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraID:I

    .line 3
    return v0
.end method

.method public getCameraPenalty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraPenalty:Z

    .line 3
    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraSpeed:I

    .line 3
    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraType:I

    .line 3
    return v0
.end method

.method public getIsOverspeed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->isOverspeed:Z

    .line 3
    return v0
.end method

.method public getSapaDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaDist:I

    .line 3
    return v0
.end method

.method public getSapaETA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaETA:I

    .line 3
    return v0
.end method

.method public getSapaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSapaNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaNum:I

    .line 3
    return v0
.end method

.method public getSapaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaType:I

    .line 3
    return v0
.end method

.method public getTollDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollDist:I

    .line 3
    return v0
.end method

.method public getTollETA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollETA:I

    .line 3
    return v0
.end method

.method public getTollName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setCameraDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraDist:I

    .line 3
    return-void
.end method

.method public setCameraID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraID:I

    .line 3
    return-void
.end method

.method public setCameraPenalty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraPenalty:Z

    .line 3
    return-void
.end method

.method public setCameraSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraSpeed:I

    .line 3
    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraType:I

    .line 3
    return-void
.end method

.method public setIsOverspeed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->isOverspeed:Z

    .line 3
    return-void
.end method

.method public setSapaDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaDist:I

    .line 3
    return-void
.end method

.method public setSapaETA(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaETA:I

    .line 3
    return-void
.end method

.method public setSapaName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSapaNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaNum:I

    .line 3
    return-void
.end method

.method public setSapaType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaType:I

    .line 3
    return-void
.end method

.method public setTollDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollDist:I

    .line 3
    return-void
.end method

.method public setTollETA(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollETA:I

    .line 3
    return-void
.end method

.method public setTollName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollName:Ljava/lang/String;

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
    const-string v1, "cameraDist"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraDist:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "cameraID"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraID:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "cameraPenalty"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraPenalty:Z

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "cameraSpeed"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraSpeed:I

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "cameraType"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraType:I

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "isOverspeed"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->isOverspeed:Z

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "sapaDist"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaDist:I

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "sapaETA"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaETA:I

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "sapaName"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaName:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "sapaNum"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaNum:I

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "sapaType"

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaType:I

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "tollDist"

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollDist:I

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, "tollETA"

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollETA:I

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "tollName"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollName:Ljava/lang/String;

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraDist:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraID:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraPenalty:Z

    .line 16
    int-to-byte p2, p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraSpeed:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->cameraType:I

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->isOverspeed:Z

    .line 32
    int-to-byte p2, p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaDist:I

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaETA:I

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaNum:I

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->sapaType:I

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollDist:I

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollETA:I

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspSearchNavInfoModel;->tollName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
