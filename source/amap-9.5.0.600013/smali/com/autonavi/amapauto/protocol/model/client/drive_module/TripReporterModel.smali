.class public Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private aveSpeed:Ljava/lang/String;

.field private driveDistance:Ljava/lang/String;

.field private driveTime:Ljava/lang/String;

.field private highestSpeed:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x76de

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveDistance:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveTime:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->aveSpeed:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->highestSpeed:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveDistance:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveTime:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->aveSpeed:Ljava/lang/String;

    const/16 p1, 0x76de

    .line 7
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAveSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->aveSpeed:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDriveDistance()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveDistance:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDriveTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveTime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHighestSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->highestSpeed:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAveSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->aveSpeed:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDriveDistance(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveDistance:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDriveTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveTime:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setHighestSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->highestSpeed:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveDistance:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->driveTime:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->aveSpeed:Ljava/lang/String;

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
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;->highestSpeed:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
