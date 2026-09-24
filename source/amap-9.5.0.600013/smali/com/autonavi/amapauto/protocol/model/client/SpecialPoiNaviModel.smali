.class public Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private destType:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field

.field private dev:I
    .annotation runtime Lz70;
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field

.field private directNavi:I

.field private midProtocolPois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;",
            ">;"
        }
    .end annotation
.end field

.field private newStrategy:I

.field private strategy:I
    .annotation runtime Lz70;
        intValues = {
            0x1,
            0x2,
            0x3,
            0x4,
            0x5,
            0x6,
            0x7,
            0x8,
            0x14,
            0x18,
            -0x1
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->strategy:I

    const/16 v0, -0x64

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->newStrategy:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->dev:I

    const/16 v0, 0x76c0

    .line 5
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 6
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->destType:I

    .line 7
    iput p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->directNavi:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->strategy:I

    const/16 v0, -0x64

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->newStrategy:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->dev:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->destType:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->directNavi:I

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->strategy:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->dev:I

    .line 17
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->midProtocolPois:Ljava/util/List;

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->newStrategy:I

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->count:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->count:I

    .line 3
    return v0
.end method

.method public getDestType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->destType:I

    .line 3
    return v0
.end method

.method public getDev()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->dev:I

    .line 3
    return v0
.end method

.method public getDirectNavi()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->directNavi:I

    .line 3
    return v0
.end method

.method public getMidProtocolPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->midProtocolPois:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getNewStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->newStrategy:I

    .line 3
    return v0
.end method

.method public getStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->strategy:I

    .line 3
    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->count:I

    .line 3
    return-void
.end method

.method public setDestType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->destType:I

    .line 3
    return-void
.end method

.method public setDev(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->dev:I

    .line 3
    return-void
.end method

.method public setDirectNavi(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->directNavi:I

    .line 3
    return-void
.end method

.method public setMidProtocolPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->midProtocolPois:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setNewStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->newStrategy:I

    .line 3
    return-void
.end method

.method public setStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->strategy:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->destType:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->directNavi:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-lt p2, v0, :cond_0

    .line 21
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->strategy:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->dev:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->midProtocolPois:Ljava/util/List;

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 39
    move-result p2

    .line 40
    const/4 v0, 0x2

    .line 41
    if-lt p2, v0, :cond_1

    .line 43
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->newStrategy:I

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 51
    move-result p2

    .line 52
    const/4 v0, 0x3

    .line 53
    if-lt p2, v0, :cond_2

    .line 55
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->count:I

    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    :cond_2
    return-void
.end method
