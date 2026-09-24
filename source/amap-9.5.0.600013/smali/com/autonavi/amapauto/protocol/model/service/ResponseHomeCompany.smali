.class public Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:I

.field public e:[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/16 v0, 0x7537

    .line 2
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->a:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->b:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->c:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->d:I

    .line 8
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->e:[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->f:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->i:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->h:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->i:Z

    .line 3
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->g:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->b:Z

    .line 3
    return-void
.end method

.method public D(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->d:I

    .line 3
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->h:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public F([Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->e:[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 3
    return-void
.end method

.method public G(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->f:I

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

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->a:I

    .line 3
    return v0
.end method

.method public r()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->c:F

    .line 3
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->i:Z

    .line 3
    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->a:I

    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->d:I

    .line 3
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->h:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public w()[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->e:[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->a:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->b:Z

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->c:F

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->d:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->e:[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 29
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->f:I

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->g:Ljava/lang/String;

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
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->i:Z

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->h:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->f:I

    .line 3
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->b:Z

    .line 3
    return v0
.end method

.method public z(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->c:F

    .line 3
    return-void
.end method
