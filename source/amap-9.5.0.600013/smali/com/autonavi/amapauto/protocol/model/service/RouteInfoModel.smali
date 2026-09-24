.class public Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:D

.field public j:D

.field public k:Ljava/lang/String;

.field public l:D

.field public m:D

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/util/ArrayList;

.field public w:Ljava/util/ArrayList;

.field public x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->g:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->n:I

    const/16 v1, -0x64

    .line 7
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t:I

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x:Ljava/lang/String;

    const/16 v0, 0x7535

    .line 10
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->c:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->g:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->n:I

    const/16 v1, -0x64

    .line 17
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s:I

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t:I

    .line 19
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->a:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->d:D

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->e:D

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->g:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->h:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->i:D

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->j:D

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->l:D

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->m:D

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->q:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->r:I

    .line 33
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->v:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->w:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->f:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->k:Ljava/lang/String;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->p:Ljava/lang/String;

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s:I

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->u:Ljava/lang/String;

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->o:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->n:I

    .line 48
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t:I

    :cond_5
    return-void
.end method


# virtual methods
.method public A()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->w:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public B()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->v:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->r:I

    .line 3
    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public E()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->e:D

    .line 3
    return-wide v0
.end method

.method public F()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->d:D

    .line 3
    return-wide v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->q:I

    .line 3
    return v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t:I

    .line 3
    return v0
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->n:I

    .line 3
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->o:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->p:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->h:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public O(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->j:D

    .line 3
    return-void
.end method

.method public P(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->i:D

    .line 3
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->g:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->k:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->u:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public T(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->w:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public U(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->v:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public V(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->r:I

    .line 3
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->c:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public X(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->e:D

    .line 3
    return-void
.end method

.method public Y(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->d:D

    .line 3
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->f:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public b0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->q:I

    .line 3
    return-void
.end method

.method public c0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t:I

    .line 3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArrivePOILatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->m:D

    .line 3
    return-wide v0
.end method

.method public getArrivePOILongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->l:D

    .line 3
    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->a:I

    .line 3
    return v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getNewStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s:I

    .line 3
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->n:I

    .line 3
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->o:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setArrivePOILatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->m:D

    .line 3
    return-void
.end method

.method public setArrivePOILongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->l:D

    .line 3
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->a:I

    .line 3
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNewStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s:I

    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->p:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->h:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public v()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->j:D

    .line 3
    return-wide v0
.end method

.method public w()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->i:D

    .line 3
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->a:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->d:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->e:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->g:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->h:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->i:D

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->j:D

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 49
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->l:D

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 54
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->m:D

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->q:I

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->r:I

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->v:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 74
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->w:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 87
    move-result p2

    .line 88
    const/4 v0, 0x1

    .line 89
    if-lt p2, v0, :cond_0

    .line 91
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->f:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->k:Ljava/lang/String;

    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 104
    move-result p2

    .line 105
    const/4 v0, 0x2

    .line 106
    if-lt p2, v0, :cond_1

    .line 108
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->p:Ljava/lang/String;

    .line 110
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 116
    move-result p2

    .line 117
    const/4 v0, 0x3

    .line 118
    if-lt p2, v0, :cond_2

    .line 120
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s:I

    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 128
    move-result p2

    .line 129
    const/4 v0, 0x4

    .line 130
    if-lt p2, v0, :cond_3

    .line 132
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->u:Ljava/lang/String;

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 140
    move-result p2

    .line 141
    const/4 v0, 0x5

    .line 142
    if-lt p2, v0, :cond_4

    .line 144
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->o:Ljava/lang/String;

    .line 146
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->n:I

    .line 151
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 157
    move-result p2

    .line 158
    const/4 v0, 0x6

    .line 159
    if-lt p2, v0, :cond_5

    .line 161
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t:I

    .line 163
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :cond_5
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->k:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->u:Ljava/lang/String;

    .line 3
    return-object v0
.end method
