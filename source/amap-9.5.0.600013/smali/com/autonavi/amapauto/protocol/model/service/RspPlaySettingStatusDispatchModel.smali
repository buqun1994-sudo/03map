.class public Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;
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
            "Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private settingResultBackgroundDog:Z

.field private settingResultCrossArea:Z

.field private settingResultDog:Z

.field private settingResultRoad:Z

.field private settingResultWarn:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x138fa

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 10
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultDog:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultCrossArea:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultBackgroundDog:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultRoad:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultWarn:Z

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultDog:Z

    .line 5
    iput-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultCrossArea:Z

    .line 6
    iput-boolean p3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultBackgroundDog:Z

    .line 7
    iput-boolean p4, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultRoad:Z

    .line 8
    iput-boolean p5, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultWarn:Z

    const p1, 0x138fa

    .line 9
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSettingResultBackgroundDog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultBackgroundDog:Z

    .line 3
    return v0
.end method

.method public getSettingResultCrossArea()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultCrossArea:Z

    .line 3
    return v0
.end method

.method public getSettingResultDog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultDog:Z

    .line 3
    return v0
.end method

.method public getSettingResultRoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultRoad:Z

    .line 3
    return v0
.end method

.method public getSettingResultWarn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultWarn:Z

    .line 3
    return v0
.end method

.method public setSettingResultBackgroundDog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultBackgroundDog:Z

    .line 3
    return-void
.end method

.method public setSettingResultCrossArea(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultCrossArea:Z

    .line 3
    return-void
.end method

.method public setSettingResultDog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultDog:Z

    .line 3
    return-void
.end method

.method public setSettingResultRoad(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultRoad:Z

    .line 3
    return-void
.end method

.method public setSettingResultWarn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultWarn:Z

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
    const-string v1, "settingResultDog"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultDog:Z

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "settingResultCrossArea"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultCrossArea:Z

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "settingResultBackgroundDog"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultBackgroundDog:Z

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, "settingResultRoad"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v3, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultRoad:Z

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "settingResultWarn"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultWarn:Z

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultDog:Z

    .line 6
    int-to-byte p2, p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultCrossArea:Z

    .line 12
    int-to-byte p2, p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultBackgroundDog:Z

    .line 18
    int-to-byte p2, p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultRoad:Z

    .line 24
    int-to-byte p2, p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;->settingResultWarn:Z

    .line 30
    int-to-byte p2, p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    return-void
.end method
