.class public Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private dev:I

.field private json:Ljava/lang/String;

.field private viaProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .annotation runtime Lz70;
        isMustFill = true
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->dev:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->action:I

    const/16 v0, 0x76c9

    .line 4
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->dev:I

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->action:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->dev:I

    .line 9
    const-class v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->viaProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->action:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->action:I

    .line 3
    return v0
.end method

.method public getDev()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->dev:I

    .line 3
    return v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->json:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getViaProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->viaProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->action:I

    .line 3
    return-void
.end method

.method public setDev(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->dev:I

    .line 3
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->json:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setViaProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->viaProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->dev:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->viaProtocolPoi:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->action:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;->json:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    return-void
.end method
