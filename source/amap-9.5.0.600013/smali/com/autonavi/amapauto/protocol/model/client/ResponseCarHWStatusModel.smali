.class public Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gear:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x4
        minValue = 0x0
    .end annotation
.end field

.field private steeringWheel:Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private turnLight:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x3
        minValue = 0x0
    .end annotation
.end field

.field private wipeState:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x3
        minValue = 0x0
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x778f

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->wipeState:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->gear:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->turnLight:I

    .line 7
    const-class v0, Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->steeringWheel:Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->gear:I

    .line 3
    return v0
.end method

.method public getSteeringWheel()Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->steeringWheel:Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;

    .line 3
    return-object v0
.end method

.method public getTurnLight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->turnLight:I

    .line 3
    return v0
.end method

.method public getWipeState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->wipeState:I

    .line 3
    return v0
.end method

.method public setGear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->gear:I

    .line 3
    return-void
.end method

.method public setSteeringWheel(Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->steeringWheel:Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;

    .line 3
    return-void
.end method

.method public setTurnLight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->turnLight:I

    .line 3
    return-void
.end method

.method public setWipeState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->wipeState:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->wipeState:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->gear:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->turnLight:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;->steeringWheel:Lcom/autonavi/amapauto/protocol/model/item/SteeringWheelData;

    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    return-void
.end method
