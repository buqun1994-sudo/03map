.class public Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x76e3

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->a:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->b:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->c:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->d:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->g:I

    .line 9
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->h:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->e:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->f:I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->b:I

    .line 3
    return-void
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->a:I

    .line 3
    return-void
.end method

.method public C(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->h:Ljava/util/List;

    .line 3
    return-void
.end method

.method public D(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->c:I

    .line 3
    return-void
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->e:I

    .line 3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRemainTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->f:I

    .line 3
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->g:I

    .line 3
    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->d:I

    .line 3
    return v0
.end method

.method public setRemainTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->f:I

    .line 3
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->b:I

    .line 3
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->a:I

    .line 3
    return v0
.end method

.method public v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->h:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->c:I

    .line 3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->a:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->b:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->c:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->d:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->g:I

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->h:Ljava/util/List;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 34
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x1

    .line 39
    if-lt p2, v0, :cond_0

    .line 41
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->e:I

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->f:I

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->e:I

    .line 3
    return v0
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->g:I

    .line 3
    return-void
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->d:I

    .line 3
    return-void
.end method
