.class public Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carAxes:I

.field private carHeight:D

.field private carLength:D

.field private carLoading:D

.field private carPlateNumber:Ljava/lang/String;
    .annotation runtime Lz70;
        isLonLat = true
    .end annotation
.end field

.field private carRatedLoading:D

.field private carType:I

.field private carWidth:D

.field private powerType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carAxes:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carHeight:D

    .line 4
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLength:D

    .line 5
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLoading:D

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carRatedLoading:D

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carType:I

    .line 8
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carWidth:D

    .line 9
    iput v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->powerType:I

    const v0, 0x13937

    .line 10
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 11
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carAxes:I

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carHeight:D

    .line 14
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLength:D

    .line 15
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLoading:D

    .line 16
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carRatedLoading:D

    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carType:I

    .line 18
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carWidth:D

    .line 19
    iput v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->powerType:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carAxes:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carHeight:D

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLength:D

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLoading:D

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carPlateNumber:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carRatedLoading:D

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carType:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carWidth:D

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->powerType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCarAxes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carAxes:I

    .line 3
    return v0
.end method

.method public getCarHeight()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carHeight:D

    .line 3
    return-wide v0
.end method

.method public getCarLength()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLength:D

    .line 3
    return-wide v0
.end method

.method public getCarLoading()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLoading:D

    .line 3
    return-wide v0
.end method

.method public getCarPlateNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carPlateNumber:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCarRatedLoading()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carRatedLoading:D

    .line 3
    return-wide v0
.end method

.method public getCarType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carType:I

    .line 3
    return v0
.end method

.method public getCarWidth()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carWidth:D

    .line 3
    return-wide v0
.end method

.method public getPowerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->powerType:I

    .line 3
    return v0
.end method

.method public setCarAxes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carAxes:I

    .line 3
    return-void
.end method

.method public setCarHeight(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carHeight:D

    .line 3
    return-void
.end method

.method public setCarLength(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLength:D

    .line 3
    return-void
.end method

.method public setCarLoading(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLoading:D

    .line 3
    return-void
.end method

.method public setCarPlateNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carPlateNumber:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCarRatedLoading(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carRatedLoading:D

    .line 3
    return-void
.end method

.method public setCarType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carType:I

    .line 3
    return-void
.end method

.method public setCarWidth(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carWidth:D

    .line 3
    return-void
.end method

.method public setPowerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->powerType:I

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
    const-string v1, "carAxes"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carAxes:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "carHeight"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carHeight:D

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "carLength"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLength:D

    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "carLoading"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLoading:D

    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "carPlateNumber"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carPlateNumber:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "carRatedLoading"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carRatedLoading:D

    .line 100
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "carType"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carType:I

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "carWidth"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carWidth:D

    .line 132
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "powerType"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->powerType:I

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carAxes:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carHeight:D

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLength:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carLoading:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carPlateNumber:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carRatedLoading:D

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carType:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->carWidth:D

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;->powerType:I

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
