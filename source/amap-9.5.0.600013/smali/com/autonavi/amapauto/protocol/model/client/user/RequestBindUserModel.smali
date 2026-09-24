.class public Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;",
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

.field public carLoginEnvironment:Ljava/lang/String;

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
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const-string v0, "-1"

    .line 15
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "-1"

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    const/16 v0, 0x7724

    .line 3
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 4
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "-1"

    .line 8
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    const/16 v0, 0x7724

    .line 9
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 10
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserLoginAvata()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserLoginId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserLoginName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBindUserRequestTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCarLoginEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSourceApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSourceAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setBindUserDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserLoginAvata(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserLoginId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserLoginName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setBindUserRequestTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCarLoginEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSourceAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceApp:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->sourceAppName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginId:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserLoginAvata:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserRequestTime:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->bindUserDeviceId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 42
    move-result p2

    .line 43
    const/4 v0, 0x1

    .line 44
    if-lt p2, v0, :cond_0

    .line 46
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->carLoginEnvironment:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
