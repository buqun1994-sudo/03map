.class public Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_VALUE:I = 0x63


# instance fields
.field private externalConfigMode:I

.field private externalCrossControl:I

.field private externalDayNightMode:I

.field private externalEngineId:I

.field private externalFullView:I

.field private externalMapLevel:I

.field private externalMapMode:I

.field private externalMiniMap:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x63

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalConfigMode:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalCrossControl:I

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalDayNightMode:I

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalFullView:I

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapLevel:I

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapMode:I

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMiniMap:I

    const v0, 0x138ef

    .line 9
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x63

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalConfigMode:I

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalCrossControl:I

    .line 13
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalDayNightMode:I

    .line 14
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalFullView:I

    .line 15
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapLevel:I

    .line 16
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapMode:I

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMiniMap:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalConfigMode:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalCrossControl:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalDayNightMode:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalEngineId:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalFullView:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapLevel:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapMode:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMiniMap:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExternalConfigMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalConfigMode:I

    .line 3
    return v0
.end method

.method public getExternalCrossControl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalCrossControl:I

    .line 3
    return v0
.end method

.method public getExternalDayNightMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalDayNightMode:I

    .line 3
    return v0
.end method

.method public getExternalEngineId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalEngineId:I

    .line 3
    return v0
.end method

.method public getExternalFullView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalFullView:I

    .line 3
    return v0
.end method

.method public getExternalMapLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapLevel:I

    .line 3
    return v0
.end method

.method public getExternalMapMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapMode:I

    .line 3
    return v0
.end method

.method public getExternalMiniMap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMiniMap:I

    .line 3
    return v0
.end method

.method public setExternalConfigMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalConfigMode:I

    .line 3
    return-void
.end method

.method public setExternalCrossControl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalCrossControl:I

    .line 3
    return-void
.end method

.method public setExternalDayNightMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalDayNightMode:I

    .line 3
    return-void
.end method

.method public setExternalEngineId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalEngineId:I

    .line 3
    return-void
.end method

.method public setExternalFullView(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalFullView:I

    .line 3
    return-void
.end method

.method public setExternalMapLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapLevel:I

    .line 3
    return-void
.end method

.method public setExternalMapMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapMode:I

    .line 3
    return-void
.end method

.method public setExternalMiniMap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMiniMap:I

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
    const-string v1, "externalConfigMode"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalConfigMode:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "externalCrossControl"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalCrossControl:I

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "externalDayNightMode"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalDayNightMode:I

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "externalEngineId"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalEngineId:I

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "externalFullView"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalFullView:I

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "externalMapLevel"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapLevel:I

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "externalMapMode"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v3, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapMode:I

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v3, "externalMiniMap"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMiniMap:I

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalConfigMode:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalCrossControl:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalDayNightMode:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalEngineId:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalFullView:I

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapLevel:I

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMapMode:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;->externalMiniMap:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
