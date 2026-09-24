.class public Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;
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
            "Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrivePoiLatitude:I

.field private arrivePoiLongitude:I

.field private arrivePoiType:Ljava/lang/String;

.field private endPoiAddr:Ljava/lang/String;

.field private endPoiCityName:Ljava/lang/String;

.field private endPoiDistrictName:Ljava/lang/String;

.field private endPoiLatitude:D

.field private endPoiLongitude:D

.field private endPoiName:Ljava/lang/String;

.field private endPoiType:Ljava/lang/String;

.field private nearestViaPoiAddr:Ljava/lang/String;

.field private nearestViaPoiCityName:Ljava/lang/String;

.field private nearestViaPoiDistrictName:Ljava/lang/String;

.field private nearestViaPoiLatitude:D

.field private nearestViaPoiLongitude:D

.field private nearestViaPoiName:Ljava/lang/String;

.field private nearestViaPoiProvinceName:Ljava/lang/String;

.field private nearestViaPoiTypeCode:Ljava/lang/String;

.field private viaPoiArrivalTime:Ljava/lang/String;

.field private viaPoiDistance:I

.field private viaPoiTime:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLatitude:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLongitude:I

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiDistance:I

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiTime:I

    const v0, 0x1393b

    .line 6
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLatitude:I

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLongitude:I

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiDistance:I

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiTime:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLatitude:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLongitude:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiType:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiAddr:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiCityName:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiDistrictName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLatitude:D

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLongitude:D

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiType:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiAddr:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiCityName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiDistrictName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLatitude:D

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLongitude:D

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiProvinceName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiTypeCode:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiArrivalTime:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiDistance:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiTime:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArrivePoiLatitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLatitude:I

    .line 3
    return v0
.end method

.method public getArrivePoiLongitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLongitude:I

    .line 3
    return v0
.end method

.method public getArrivePoiType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPoiAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiAddr:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPoiCityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiCityName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPoiDistrictName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiDistrictName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPoiLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLatitude:D

    .line 3
    return-wide v0
.end method

.method public getEndPoiLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLongitude:D

    .line 3
    return-wide v0
.end method

.method public getEndPoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPoiType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNearestViaPoiAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiAddr:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNearestViaPoiCityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiCityName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNearestViaPoiDistrictName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiDistrictName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNearestViaPoiLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLatitude:D

    .line 3
    return-wide v0
.end method

.method public getNearestViaPoiLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLongitude:D

    .line 3
    return-wide v0
.end method

.method public getNearestViaPoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNearestViaPoiProvinceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiProvinceName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNearestViaPoiTypeCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiTypeCode:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getViaPoiArrivalTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiArrivalTime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getViaPoiDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiDistance:I

    .line 3
    return v0
.end method

.method public getViaPoiTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiTime:I

    .line 3
    return v0
.end method

.method public setArrivePoiLatitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLatitude:I

    .line 3
    return-void
.end method

.method public setArrivePoiLongitude(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLongitude:I

    .line 3
    return-void
.end method

.method public setArrivePoiType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPoiAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiAddr:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPoiCityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiCityName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPoiDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiDistrictName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPoiLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLatitude:D

    .line 3
    return-void
.end method

.method public setEndPoiLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLongitude:D

    .line 3
    return-void
.end method

.method public setEndPoiName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPoiType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNearestViaPoiAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiAddr:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNearestViaPoiCityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiCityName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNearestViaPoiDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiDistrictName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNearestViaPoiLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLatitude:D

    .line 3
    return-void
.end method

.method public setNearestViaPoiLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLongitude:D

    .line 3
    return-void
.end method

.method public setNearestViaPoiName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNearestViaPoiProvinceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiProvinceName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNearestViaPoiTypeCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiTypeCode:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setViaPoiArrivalTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiArrivalTime:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setViaPoiDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiDistance:I

    .line 3
    return-void
.end method

.method public setViaPoiTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiTime:I

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
    const-string v1, "arrivePoiLatitude"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLatitude:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "arrivePoiLongitude"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLongitude:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "arrivePoiType"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiType:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "endPoiAddr"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiAddr:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "endPoiCityName"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiCityName:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "endPoiDistrictName"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiDistrictName:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "endPoiLatitude"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLatitude:D

    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "endPoiLongitude"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLongitude:D

    .line 132
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "endPoiName"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiName:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "endPoiType"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiType:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "nearestViaPoiAddr"

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiAddr:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "nearestViaPoiCityName"

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiCityName:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, "nearestViaPoiDistrictName"

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiDistrictName:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "nearestViaPoiLatitude"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLatitude:D

    .line 228
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v3, "nearestViaPoiLongitude"

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLongitude:D

    .line 244
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v3, "nearestViaPoiName"

    .line 252
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiName:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v3, "nearestViaPoiProvinceName"

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiProvinceName:Ljava/lang/String;

    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v3, "nearestViaPoiTypeCode"

    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiTypeCode:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v3, "viaPoiArrivalTime"

    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiArrivalTime:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v3, "viaPoiDistance"

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiDistance:I

    .line 324
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v3, "viaPoiTime"

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiTime:I

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v0

    .line 350
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLatitude:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiLongitude:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->arrivePoiType:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiAddr:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiCityName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiDistrictName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLatitude:D

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 39
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiLongitude:D

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->endPoiType:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiAddr:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiCityName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiDistrictName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLatitude:D

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiLongitude:D

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiProvinceName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->nearestViaPoiTypeCode:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiArrivalTime:Ljava/lang/String;

    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiDistance:I

    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->viaPoiTime:I

    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
