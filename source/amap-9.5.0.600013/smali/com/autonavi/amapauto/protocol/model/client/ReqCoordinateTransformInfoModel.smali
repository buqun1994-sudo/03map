.class public Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latitudeValue:D
    .annotation runtime Lz70;
        isLonLat = true
    .end annotation
.end field

.field private latlongType:I
    .annotation runtime Lz70;
        isLonLat = true
    .end annotation
.end field

.field private longitudeValue:D
    .annotation runtime Lz70;
        isLonLat = true
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138f1

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(DID)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138f1

    .line 4
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 5
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latitudeValue:D

    .line 6
    iput p3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latlongType:I

    .line 7
    iput-wide p4, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->longitudeValue:D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latitudeValue:D

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latlongType:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->longitudeValue:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLatitudeValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latitudeValue:D

    .line 3
    return-wide v0
.end method

.method public getLatlongType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latlongType:I

    .line 3
    return v0
.end method

.method public getLongitudeValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->longitudeValue:D

    .line 3
    return-wide v0
.end method

.method public setLatitudeValue(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latitudeValue:D

    .line 3
    return-void
.end method

.method public setLatlongType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latlongType:I

    .line 3
    return-void
.end method

.method public setLongitudeValue(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->longitudeValue:D

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
    const-string v1, "latitudeValue"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latitudeValue:D

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "latlongType"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latlongType:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "longitudeValue"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->longitudeValue:D

    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latitudeValue:D

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->latlongType:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;->longitudeValue:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    return-void
.end method
