.class public Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "1.0"

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const-string v0, "1.0"

    .line 4
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->b:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->d:I

    .line 9
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->f:D

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->g:D

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->h:D

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->i:D

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->j:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->k:I

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->l:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->d:I

    .line 3
    return v0
.end method

.method public getEntry_latitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->i:D

    .line 3
    return-wide v0
.end method

.method public getEntry_longitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->h:D

    .line 3
    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->f:D

    .line 3
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->g:D

    .line 3
    return-wide v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPoiid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->j:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->b:I

    .line 3
    return v0
.end method

.method public setDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->d:I

    .line 3
    return-void
.end method

.method public setEntry_latitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->i:D

    .line 3
    return-void
.end method

.method public setEntry_longitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->h:D

    .line 3
    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->f:D

    .line 3
    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->g:D

    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->c:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPoiid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->l:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->k:I

    .line 3
    return v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->j:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->b:I

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->b:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->d:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x1

    .line 29
    if-lt p2, v0, :cond_0

    .line 31
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->e:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->f:D

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 41
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->g:D

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->h:D

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 51
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->i:D

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 56
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->j:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->k:I

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 69
    move-result p2

    .line 70
    const/4 v0, 0x2

    .line 71
    if-lt p2, v0, :cond_1

    .line 73
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->l:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    :cond_1
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->e:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolParkInfo;->k:I

    .line 3
    return-void
.end method
