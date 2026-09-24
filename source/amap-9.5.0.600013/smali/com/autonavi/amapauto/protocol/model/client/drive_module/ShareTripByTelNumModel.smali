.class public Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;",
            ">;"
        }
    .end annotation
.end field

.field public static SHARE_TRIP_STATUS_FAILED:I = 0x1

.field public static SHARE_TRIP_STATUS_NET_UNREACHED:I = 0x2

.field public static SHARE_TRIP_STATUS_NO_ROUTE:I = 0x3

.field public static SHARE_TRIP_STATUS_RUNNING:I = 0x5

.field public static SHARE_TRIP_STATUS_SUC:I = 0x0

.field public static SHARE_TRIP_STATUS_TEL_NUM_ERR:I = 0x4

.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private phoneNum:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;->phoneNum:Ljava/lang/String;

    const/16 p1, 0x76cb

    .line 3
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;->phoneNum:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;->phoneNum:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;->phoneNum:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    return-void
.end method
