.class public Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bindUserDeviceId:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private bindUserLoginAvata:Ljava/lang/String;

.field private bindUserLoginId:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private bindUserLoginName:Ljava/lang/String;

.field private bindUserRequestTime:Ljava/lang/String;

.field private hasBindAutoUserId:Ljava/lang/String;

.field private isBindAck:I
    .annotation runtime Lz70;
        isMustFill = true
        maxValue = 0x1
        minValue = 0x0
    .end annotation
.end field

.field private sourceApp:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private sourceAppName:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->hasBindAutoUserId:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->isBindAck:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x7726

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 3
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->isBindAck:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBindUserDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserLoginAvata()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserLoginId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserLoginName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserRequestTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHasBindAutoUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->hasBindAutoUserId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIsBindAck()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->isBindAck:I

    .line 3
    return v0
.end method

.method public getSourceApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setBindUserDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserLoginAvata(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserLoginId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserLoginName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserRequestTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setHasBindAutoUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->hasBindAutoUserId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIsBindAck(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->isBindAck:I

    .line 3
    return-void
.end method

.method public setSourceApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->hasBindAutoUserId:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->isBindAck:I

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
