.class public Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private externalEngineId:I

.field private externalMapLevel:I

.field private externalMapMode:I

.field private externalMapPosition:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138ee

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138ee

    .line 4
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 5
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalEngineId:I

    .line 6
    iput p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapLevel:I

    .line 7
    iput p3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapMode:I

    .line 8
    iput p4, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalEngineId:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapLevel:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapMode:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapPosition:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExternalEngineId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalEngineId:I

    .line 3
    return v0
.end method

.method public getExternalMapLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapLevel:I

    .line 3
    return v0
.end method

.method public getExternalMapMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapMode:I

    .line 3
    return v0
.end method

.method public getExternalMapPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapPosition:I

    .line 3
    return v0
.end method

.method public setExternalEngineId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalEngineId:I

    .line 3
    return-void
.end method

.method public setExternalMapLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapLevel:I

    .line 3
    return-void
.end method

.method public setExternalMapMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapMode:I

    .line 3
    return-void
.end method

.method public setExternalMapPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapPosition:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "externalEngineId"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalEngineId:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "externalMapLevel"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapLevel:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "externalMapMode"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapMode:I

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "externalMapPosition"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapPosition:I

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalEngineId:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapLevel:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapMode:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;->externalMapPosition:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    return-void
.end method
