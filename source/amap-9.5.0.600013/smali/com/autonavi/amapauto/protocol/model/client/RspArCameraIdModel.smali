.class public Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apkName:Ljava/lang/String;

.field private cameraConnect:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private cameraDisplay:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private cameraName:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private common:Z

.field private imu:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private productModel:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private productName:Ljava/lang/String;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field

.field private serviceAction:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const v0, 0x13895

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraDisplay:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productModel:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->imu:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraConnect:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->apkName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->serviceAction:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->common:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraDisplay:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productModel:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productName:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->imu:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraConnect:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->apkName:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->serviceAction:Ljava/lang/String;

    .line 12
    iput-boolean p9, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->common:Z

    const p1, 0x13895

    .line 13
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApkName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->apkName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCameraConnect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraConnect:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCameraDisplay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraDisplay:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCameraName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getImu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->imu:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productModel:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getServiceAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->serviceAction:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isCommon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->common:Z

    .line 3
    return v0
.end method

.method public setApkName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->apkName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCameraConnect(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraConnect:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCameraDisplay(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraDisplay:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCameraName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCommon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->common:Z

    .line 3
    return-void
.end method

.method public setImu(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->imu:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProductModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productModel:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setServiceAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->serviceAction:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraDisplay:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productModel:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->productName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->imu:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->cameraConnect:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->apkName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->serviceAction:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->common:Z

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    return-void
.end method
