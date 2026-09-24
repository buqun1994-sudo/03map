.class public Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionType:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x2
        minValue = 0x0
    .end annotation
.end field

.field private operaType:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x3
        minValue = 0x0
    .end annotation
.end field

.field private operaValue:I

.field private tempValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->tempValue:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->actionType:I

    .line 4
    iput p2, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaType:I

    .line 5
    iput p3, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaValue:I

    const/16 p1, 0x7530

    .line 6
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->actionType:I

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaType:I

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaValue:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->tempValue:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->actionType:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaType:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->tempValue:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaValue:I

    :cond_0
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
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->actionType:I

    .line 3
    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOperaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaType:I

    .line 3
    return v0
.end method

.method public getOperaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaValue:I

    .line 3
    return v0
.end method

.method public getTempValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->tempValue:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setActionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->actionType:I

    .line 3
    return-void
.end method

.method public setOperaType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaType:I

    .line 3
    return-void
.end method

.method public setOperaValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaValue:I

    .line 3
    return-void
.end method

.method public setTempValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->tempValue:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->actionType:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaType:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->tempValue:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 22
    move-result p2

    .line 23
    const/4 v0, 0x1

    .line 24
    if-lt p2, v0, :cond_0

    .line 26
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;->operaValue:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    :cond_0
    return-void
.end method
