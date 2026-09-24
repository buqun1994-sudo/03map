.class public Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volumeLevel:I

.field private volumeMax:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeLevel:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeMax:I

    const v0, 0x1388f

    .line 4
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 6
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeLevel:I

    .line 7
    iput p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeMax:I

    const p1, 0x1388f

    .line 8
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeLevel:I

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeMax:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeLevel:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeMax:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeLevel:I

    .line 3
    return v0
.end method

.method public getVolumeMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeMax:I

    .line 3
    return v0
.end method

.method public setVolumeLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeLevel:I

    .line 3
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeMax:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeLevel:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqVolumeInfoQueryModel;->volumeMax:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    return-void
.end method
