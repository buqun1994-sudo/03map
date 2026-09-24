.class public Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iFrontDistance:I

.field private isThirdparty:Z

.field private ttsBroadcast:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x76c8

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

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->iFrontDistance:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->isThirdparty:Z

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->ttsBroadcast:I

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTtsBroadcast()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->ttsBroadcast:I

    .line 3
    return v0
.end method

.method public getiFrontDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->iFrontDistance:I

    .line 3
    return v0
.end method

.method public isThirdparty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->isThirdparty:Z

    .line 3
    return v0
.end method

.method public setThirdparty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->isThirdparty:Z

    .line 3
    return-void
.end method

.method public setTtsBroadcast(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->ttsBroadcast:I

    .line 3
    return-void
.end method

.method public setiFrontDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->iFrontDistance:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->iFrontDistance:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->isThirdparty:Z

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-lt p2, v0, :cond_0

    .line 21
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;->ttsBroadcast:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    :cond_0
    return-void
.end method
