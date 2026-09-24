.class public Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accoundLoginStatus:I

.field private bindingId:Ljava/lang/String;

.field private bingingAck:I

.field public carLoginEnvironment:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceNo:Ljava/lang/String;

.field private sourceAccount:Ljava/lang/String;

.field private sourceAccountAvatar:Ljava/lang/String;

.field private sourceAccountId:Ljava/lang/String;

.field private sourceAccountName:Ljava/lang/String;

.field private sourceAccountToken:Ljava/lang/String;

.field private sourceApp:Ljava/lang/String;

.field private sourceAppName:Ljava/lang/String;

.field private sourceAutoAccount:Ljava/lang/String;

.field private userRequestTime:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->accoundLoginStatus:I

    const-string v0, "-1"

    .line 13
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceApp:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAppName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->accoundLoginStatus:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountToken:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAutoAccount:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccount:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceNo:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountAvatar:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->userRequestTime:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bindingId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bingingAck:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->accoundLoginStatus:I

    const-string v0, "-1"

    .line 3
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    const/16 v0, 0x772a

    .line 4
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 5
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceApp:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAppName:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->accoundLoginStatus:I

    .line 8
    iput-object p4, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountToken:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAutoAccount:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccoundLoginStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->accoundLoginStatus:I

    .line 3
    return v0
.end method

.method public getBindingId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bindingId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBingingAck()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bingingAck:I

    .line 3
    return v0
.end method

.method public getCarLoginEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDeviceNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceNo:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccount:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAccountAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountAvatar:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAccountName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAccountToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountToken:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceApp:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAppName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAutoAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAutoAccount:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUserRequestTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->userRequestTime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setAccoundLoginStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->accoundLoginStatus:I

    .line 3
    return-void
.end method

.method public setBindingId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bindingId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBingingAck(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bingingAck:I

    .line 3
    return-void
.end method

.method public setCarLoginEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDeviceNo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceNo:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccount:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAccountAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountAvatar:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAccountName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAccountToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountToken:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceApp:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAppName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAutoAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAutoAccount:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setUserRequestTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->userRequestTime:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceApp:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAppName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->accoundLoginStatus:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountToken:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAutoAccount:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccount:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->deviceNo:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->sourceAccountAvatar:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->userRequestTime:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bindingId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->bingingAck:I

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;->carLoginEnvironment:Ljava/lang/String;

    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
