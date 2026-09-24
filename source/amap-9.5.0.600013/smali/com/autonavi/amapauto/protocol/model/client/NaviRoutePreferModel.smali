.class public Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;
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
            "Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private json:Ljava/lang/String;

.field private newStrategy:I

.field private strategy:I
    .annotation runtime Lz70;
        intValues = {
            0x1,
            0x2,
            0x3,
            0x4,
            0x5,
            0x6,
            0x7,
            0x8,
            0x14,
            0x18,
            -0x1
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->strategy:I

    const/16 v0, -0x64

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->newStrategy:I

    const/16 v0, 0x76c5

    .line 4
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 5
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->strategy:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->strategy:I

    const/16 v0, -0x64

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->newStrategy:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->strategy:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->json:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->newStrategy:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->json:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNewStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->newStrategy:I

    .line 3
    return v0
.end method

.method public getStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->strategy:I

    .line 3
    return v0
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->json:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNewStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->newStrategy:I

    .line 3
    return-void
.end method

.method public setStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->strategy:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->strategy:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->json:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-lt p2, v0, :cond_0

    .line 21
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;->newStrategy:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    :cond_0
    return-void
.end method
