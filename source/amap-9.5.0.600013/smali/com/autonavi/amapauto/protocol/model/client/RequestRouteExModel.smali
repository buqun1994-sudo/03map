.class public Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionType:I
    .annotation runtime Lz70;
        maxValue = 0x2
        minValue = 0x0
    .end annotation
.end field

.field private dev:I
    .annotation runtime Lz70;
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field

.field private endProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private json:Ljava/lang/String;

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

.field private startProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

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
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->actionType:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->strategy:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->dev:I

    const/16 v0, -0x64

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->newStrategy:I

    const/16 v0, 0x76c2

    .line 6
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->actionType:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->strategy:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->dev:I

    const/16 v1, -0x64

    .line 11
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->newStrategy:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->actionType:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->strategy:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->dev:I

    .line 15
    const-class v1, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->endProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 16
    sget-object v2, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->midProtocolPois:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->json:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->startProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->newStrategy:I

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->actionType:I

    .line 3
    return v0
.end method

.method public getDev()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->dev:I

    .line 3
    return v0
.end method

.method public getEndProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->endProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->json:Ljava/lang/String;

    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->midProtocolPois:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNewStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->newStrategy:I

    .line 3
    return v0
.end method

.method public getStartProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->startProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-object v0
.end method

.method public getStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->strategy:I

    .line 3
    return v0
.end method

.method public setActionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->actionType:I

    .line 3
    return-void
.end method

.method public setDev(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->dev:I

    .line 3
    return-void
.end method

.method public setEndProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->endProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->json:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->midProtocolPois:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setNewStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->newStrategy:I

    .line 3
    return-void
.end method

.method public setStartProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->startProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-void
.end method

.method public setStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->strategy:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->actionType:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->strategy:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->dev:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->endProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->midProtocolPois:Ljava/util/List;

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->json:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-lt v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->startProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 49
    move-result p2

    .line 50
    const/4 v0, 0x2

    .line 51
    if-lt p2, v0, :cond_1

    .line 53
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->newStrategy:I

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    :cond_1
    return-void
.end method
