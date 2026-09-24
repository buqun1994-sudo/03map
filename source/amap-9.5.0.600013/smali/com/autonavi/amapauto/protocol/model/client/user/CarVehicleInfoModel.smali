.class public Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrand:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private mEnergyUnit:I
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private mEngineNo:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private mMaxBatteryEnerygy:D
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private mModel:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private mPowerType:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x2
        minValue = -0x1
    .end annotation
.end field

.field private mVin:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private mWeight:D
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mBrand:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mModel:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEngineNo:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mVin:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mWeight:D

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mMaxBatteryEnerygy:D

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEnergyUnit:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mPowerType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x778c

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 3
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mBrand:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mModel:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEngineNo:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mVin:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mWeight:D

    .line 8
    iput-wide p7, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mMaxBatteryEnerygy:D

    .line 9
    iput p9, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEnergyUnit:I

    .line 10
    iput p10, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mPowerType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getmBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mBrand:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getmEnergyUnit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEnergyUnit:I

    .line 3
    return v0
.end method

.method public getmEngineNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEngineNo:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getmMaxBatteryEnerygy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mMaxBatteryEnerygy:D

    .line 3
    return-wide v0
.end method

.method public getmModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mModel:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getmPowerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mPowerType:I

    .line 3
    return v0
.end method

.method public getmVin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mVin:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getmWeight()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mWeight:D

    .line 3
    return-wide v0
.end method

.method public setmBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mBrand:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setmEnergyUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEnergyUnit:I

    .line 3
    return-void
.end method

.method public setmEngineNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEngineNo:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setmMaxBatteryEnerygy(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mMaxBatteryEnerygy:D

    .line 3
    return-void
.end method

.method public setmModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mModel:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setmPowerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mPowerType:I

    .line 3
    return-void
.end method

.method public setmVin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mVin:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setmWeight(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mWeight:D

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mBrand:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mModel:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEngineNo:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mVin:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mWeight:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mMaxBatteryEnerygy:D

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mEnergyUnit:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->mPowerType:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
