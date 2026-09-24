.class public Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:D

.field public i:D

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "1.0"

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const-string v0, "1.0"

    .line 5
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->k:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->d:D

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->e:D

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->f:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->g:Ljava/lang/String;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->h:D

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->i:D

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->j:Ljava/lang/String;

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->l:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->k:I

    :cond_2
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->j:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public B(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->h:D

    .line 3
    return-void
.end method

.method public C(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->i:D

    .line 3
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->c:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->k:I

    .line 3
    return-void
.end method

.method public F(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->e:D

    .line 3
    return-void
.end method

.method public G(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->d:D

    .line 3
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->l:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->g:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->j:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public r()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->h:D

    .line 3
    return-wide v0
.end method

.method public s()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->i:D

    .line 3
    return-wide v0
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->f:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->k:I

    .line 3
    return v0
.end method

.method public v()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->e:D

    .line 3
    return-wide v0
.end method

.method public w()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->d:D

    .line 3
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->d:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->e:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x1

    .line 39
    if-lt p2, v0, :cond_0

    .line 41
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->g:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 49
    move-result p2

    .line 50
    const/4 v0, 0x2

    .line 51
    if-lt p2, v0, :cond_1

    .line 53
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->h:D

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 58
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->i:D

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->j:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 71
    move-result p2

    .line 72
    const/4 v0, 0x3

    .line 73
    if-lt p2, v0, :cond_2

    .line 75
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->l:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->k:I

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    :cond_2
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method
