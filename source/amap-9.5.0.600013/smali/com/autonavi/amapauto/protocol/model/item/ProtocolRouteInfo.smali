.class public Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Ljava/util/ArrayList;

.field public s:Ljava/util/ArrayList;

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "1.0"

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->a:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->f:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->g:Ljava/lang/String;

    const/16 v0, -0x64

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const-string v0, "1.0"

    .line 7
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->a:Ljava/lang/String;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->f:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->g:Ljava/lang/String;

    const/16 v0, -0x64

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->c:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->d:D

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->e:D

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->f:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->g:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->h:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->i:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->j:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->k:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->l:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->m:I

    .line 25
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->r:Ljava/util/ArrayList;

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->n:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->o:Ljava/lang/String;

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s:Ljava/util/ArrayList;

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t:I

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->p:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->q:I

    :cond_4
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->k:I

    .line 3
    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->i:I

    .line 3
    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->o:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->h:I

    .line 3
    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->m:I

    .line 3
    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->q:I

    .line 3
    return v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->p:I

    .line 3
    return v0
.end method

.method public J(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->e:D

    .line 3
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->g:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public M(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->n:I

    .line 3
    return-void
.end method

.method public N(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->r:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->c:I

    .line 3
    return-void
.end method

.method public P(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public Q(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->d:D

    .line 3
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->f:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->l:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public T(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->k:I

    .line 3
    return-void
.end method

.method public U(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->i:I

    .line 3
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->o:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public W(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->h:I

    .line 3
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->a:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public Y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->m:I

    .line 3
    return-void
.end method

.method public Z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->q:I

    .line 3
    return-void
.end method

.method public a0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->p:I

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
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->j:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getNewStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t:I

    .line 3
    return v0
.end method

.method public r()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->e:D

    .line 3
    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->j:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNewStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t:I

    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->n:I

    .line 3
    return v0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->r:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->c:I

    .line 3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->c:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->d:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->e:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->g:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->h:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->i:I

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->j:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->k:I

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->l:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 67
    move-result p2

    .line 68
    const/4 v0, 0x1

    .line 69
    if-lt p2, v0, :cond_0

    .line 71
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->m:I

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->r:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 84
    move-result p2

    .line 85
    const/4 v0, 0x2

    .line 86
    if-lt p2, v0, :cond_1

    .line 88
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->n:I

    .line 90
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->o:Ljava/lang/String;

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 101
    move-result p2

    .line 102
    const/4 v0, 0x3

    .line 103
    if-lt p2, v0, :cond_3

    .line 105
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s:Ljava/util/ArrayList;

    .line 107
    if-nez p2, :cond_2

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    .line 111
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s:Ljava/util/ArrayList;

    .line 116
    :cond_2
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 124
    move-result p2

    .line 125
    const/4 v0, 0x4

    .line 126
    if-lt p2, v0, :cond_4

    .line 128
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t:I

    .line 130
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 136
    move-result p2

    .line 137
    const/4 v0, 0x5

    .line 138
    if-lt p2, v0, :cond_5

    .line 140
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->p:I

    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->q:I

    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    :cond_5
    return-void
.end method

.method public x()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public y()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->d:D

    .line 3
    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method
