.class public Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;
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
            "Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endPointX:D

.field public endPointY:D

.field public endPointZ:D

.field public viaPointType:I

.field public viaPointX:D

.field public viaPointY:D

.field public viaPointZ:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 4
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 5
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 7
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 8
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    const v0, 0x13932

    .line 9
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 13
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 14
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 15
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 16
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 17
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndPointX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 3
    return-wide v0
.end method

.method public getEndPointY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 3
    return-wide v0
.end method

.method public getEndPointZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    .line 3
    return-wide v0
.end method

.method public getViaPointType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    .line 3
    return v0
.end method

.method public getViaPointX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 3
    return-wide v0
.end method

.method public getViaPointY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 3
    return-wide v0
.end method

.method public getViaPointZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 3
    return-wide v0
.end method

.method public setEndPointX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 3
    return-void
.end method

.method public setEndPointY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 3
    return-void
.end method

.method public setEndPointZ(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    .line 3
    return-void
.end method

.method public setViaPointType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    .line 3
    return-void
.end method

.method public setViaPointX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 3
    return-void
.end method

.method public setViaPointY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 3
    return-void
.end method

.method public setViaPointZ(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

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
    const-string v1, "viaPointType"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "viaPointX"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "viaPointY"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "viaPointZ"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "endPointX"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 84
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "endPointY"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 100
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "endPointZ"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointType:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointX:D

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointY:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->viaPointZ:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointX:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointY:D

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;->endPointZ:D

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    return-void
.end method
