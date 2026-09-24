.class public Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private encryptType:I

.field private entryLatitude:D

.field private entryLongitude:D

.field private latitude:D
    .annotation runtime Lz70;
        isLonLat = true
        isMustFill = true
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lz70;
        isLonLat = true
        isMustFill = true
    .end annotation
.end field

.field private poiName:Ljava/lang/String;

.field private poiid:Ljava/lang/String;

.field private type:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x2
        minValue = 0x0
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x753c

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->type:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->longitude:D

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->latitude:D

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->encryptType:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->address:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiid:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLongitude:D

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLatitude:D

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->address:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEncryptType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->encryptType:I

    .line 3
    return v0
.end method

.method public getEntryLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLatitude:D

    .line 3
    return-wide v0
.end method

.method public getEntryLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLongitude:D

    .line 3
    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->latitude:D

    .line 3
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->longitude:D

    .line 3
    return-wide v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPoiid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->type:I

    .line 3
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->address:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEncryptType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->encryptType:I

    .line 3
    return-void
.end method

.method public setEntryLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLatitude:D

    .line 3
    return-void
.end method

.method public setEntryLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLongitude:D

    .line 3
    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->latitude:D

    .line 3
    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->longitude:D

    .line 3
    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPoiid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiid:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->type:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->type:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->longitude:D

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->latitude:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->encryptType:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->address:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x1

    .line 39
    if-lt p2, v0, :cond_0

    .line 41
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->poiid:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLongitude:D

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 51
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;->entryLatitude:D

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    :cond_0
    return-void
.end method
