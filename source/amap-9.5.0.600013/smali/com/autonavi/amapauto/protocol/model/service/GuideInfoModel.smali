.class public Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/String;

.field public D:I

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:I

.field public M:I

.field public O:Ljava/lang/String;

.field public P:I

.field public Q:I

.field public R:I

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:I

.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:I

.field public a:I

.field public a0:I

.field public b:Ljava/lang/String;

.field public b0:I

.field public c:Ljava/lang/String;

.field public c0:Landroid/graphics/Bitmap;

.field public d:I

.field public d0:Z

.field public e:I

.field public e0:Z

.field public f:I

.field public f0:Z

.field public g:I

.field public g0:I

.field public h:I

.field public h0:Ljava/lang/String;

.field public i:I

.field public i0:Ljava/lang/String;

.field public j:I

.field public j0:Ljava/lang/String;

.field public k:I

.field public k0:D

.field public l:I

.field public l0:D

.field public m:I

.field public m0:Ljava/lang/String;

.field public n:I

.field public n0:D

.field public o:D

.field public o0:D

.field public p:D

.field public p0:I

.field public q:I

.field public q0:I

.field public r:I

.field public r0:Ljava/lang/String;

.field public s:I

.field public s0:Ljava/lang/String;

.field public t:I

.field public t0:Ljava/lang/String;

.field public u:I

.field public u0:Ljava/lang/String;

.field public v:I

.field public v0:Ljava/lang/String;

.field public w:I

.field public w0:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d:I

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e:I

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f:I

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g:I

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z:I

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B:I

    const-string v2, ""

    .line 9
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J:Ljava/lang/String;

    .line 14
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q:I

    .line 15
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R:I

    .line 16
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W:I

    .line 19
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 20
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z:I

    const/16 v0, 0x76c7

    .line 21
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 22
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d:I

    .line 24
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e:I

    .line 25
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f:I

    .line 26
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g:I

    .line 27
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z:I

    .line 28
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A:I

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B:I

    const-string v2, ""

    .line 30
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J:Ljava/lang/String;

    .line 35
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q:I

    .line 36
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R:I

    .line 37
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W:I

    .line 40
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 41
    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o:D

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p:D

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T:Ljava/lang/String;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V:Ljava/lang/String;

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqk0;->d(Ljava/lang/String;)Z

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W:I

    .line 94
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_5

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z:I

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_6

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a0:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b0:I

    .line 102
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c0:Landroid/graphics/Bitmap;

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/4 v3, 0x7

    if-lt v0, v3, :cond_9

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0:Z

    .line 106
    :cond_9
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_b

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    iput-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0:I

    .line 109
    :cond_b
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h0:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i0:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j0:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m0:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k0:D

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l0:D

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n0:D

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o0:D

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p0:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q0:I

    .line 120
    :cond_c
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r0:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s0:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t0:Ljava/lang/String;

    .line 124
    :cond_d
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u0:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0:Ljava/lang/String;

    .line 127
    :cond_e
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_f

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O:Ljava/lang/String;

    .line 129
    :cond_f
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_10

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w0:I

    :cond_10
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x:I

    .line 3
    return v0
.end method

.method public A0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g:I

    .line 3
    return-void
.end method

.method public A1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b0:I

    .line 3
    return-void
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E:I

    .line 3
    return v0
.end method

.method public B0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n:I

    .line 3
    return-void
.end method

.method public B1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a0:I

    .line 3
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public C0(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o:D

    .line 3
    return-void
.end method

.method public C1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public D0(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p:D

    .line 3
    return-void
.end method

.method public D1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q0:I

    .line 3
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public E0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s:I

    .line 3
    return-void
.end method

.method public E1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p0:I

    .line 3
    return-void
.end method

.method public F()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l0:D

    .line 3
    return-wide v0
.end method

.method public F0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r:I

    .line 3
    return-void
.end method

.method public G()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k0:D

    .line 3
    return-wide v0
.end method

.method public G0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x:I

    .line 3
    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public H0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E:I

    .line 3
    return-void
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public I0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public J0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public K0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public L0(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l0:D

    .line 3
    return-void
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h:I

    .line 3
    return v0
.end method

.method public M0(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k0:D

    .line 3
    return-void
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0:Z

    .line 3
    return v0
.end method

.method public N0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public O()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i:I

    .line 3
    return v0
.end method

.method public O0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public P0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public Q0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public R()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L:I

    .line 3
    return v0
.end method

.method public R0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0:Z

    .line 3
    return v0
.end method

.method public S0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r(I)I

    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h:I

    .line 7
    return-void
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public T0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0:Z

    .line 3
    return-void
.end method

.method public U()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z:I

    .line 3
    return v0
.end method

.method public U0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i:I

    .line 3
    return-void
.end method

.method public V()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q:I

    .line 3
    return v0
.end method

.method public V0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public W0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public X0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L:I

    .line 3
    return-void
.end method

.method public Y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R:I

    .line 3
    return v0
.end method

.method public Y0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0:Z

    .line 3
    return-void
.end method

.method public Z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M:I

    .line 3
    return v0
.end method

.method public Z0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public a0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public a1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z:I

    .line 3
    return-void
.end method

.method public b0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P:I

    .line 3
    return v0
.end method

.method public b1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q:I

    .line 3
    return-void
.end method

.method public c0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D:I

    .line 3
    return v0
.end method

.method public c1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public d0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t:I

    .line 3
    return v0
.end method

.method public d1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u:I

    .line 3
    return v0
.end method

.method public e1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R:I

    .line 3
    return-void
.end method

.method public f0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 3
    return v0
.end method

.method public f1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M:I

    .line 3
    return-void
.end method

.method public g0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v:I

    .line 3
    return v0
.end method

.method public g1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public getArrivePOILatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o0:D

    .line 3
    return-wide v0
.end method

.method public getArrivePOILongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n0:D

    .line 3
    return-wide v0
.end method

.method public getCameraDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d:I

    .line 3
    return v0
.end method

.method public getCameraID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0:I

    .line 3
    return v0
.end method

.method public getCameraPenalty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0:Z

    .line 3
    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f:I

    .line 3
    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e:I

    .line 3
    return v0
.end method

.method public getCurRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLimitedSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q:I

    .line 3
    return v0
.end method

.method public getModelVersion()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getSapaDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z:I

    .line 3
    return v0
.end method

.method public getSapaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSapaNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B:I

    .line 3
    return v0
.end method

.method public getSapaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A:I

    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a:I

    .line 3
    return v0
.end method

.method public h0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w:I

    .line 3
    return v0
.end method

.method public h1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P:I

    .line 3
    return-void
.end method

.method public i0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j:I

    .line 3
    return v0
.end method

.method public i1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D:I

    .line 3
    return-void
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public j1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t:I

    .line 3
    return-void
.end method

.method public k0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k:I

    .line 3
    return v0
.end method

.method public k1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u:I

    .line 3
    return-void
.end method

.method public l0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public l1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 3
    return-void
.end method

.method public m0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w0:I

    .line 3
    return v0
.end method

.method public m1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v:I

    .line 3
    return-void
.end method

.method public n0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public n1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w:I

    .line 3
    return-void
.end method

.method public o0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W:I

    .line 3
    return v0
.end method

.method public o1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j:I

    .line 3
    return-void
.end method

.method public p0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l:I

    .line 3
    return v0
.end method

.method public p1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public q0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public q1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k:I

    .line 3
    return-void
.end method

.method public final r(I)I
    .locals 1

    .line 1
    const/16 v0, 0x15

    if-eq p1, v0, :cond_4

    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    const/16 p1, 0xc

    goto :goto_2

    :cond_1
    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_5

    const/16 p1, 0x12

    goto :goto_2

    :cond_3
    :goto_0
    const/16 p1, 0x11

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p1, 0xb

    :cond_5
    :goto_2
    return p1
.end method

.method public r0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m:I

    .line 3
    return v0
.end method

.method public r1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public s0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y:I

    .line 3
    return v0
.end method

.method public s1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w0:I

    .line 3
    return-void
.end method

.method public setArrivePOILatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o0:D

    .line 3
    return-void
.end method

.method public setArrivePOILongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n0:D

    .line 3
    return-void
.end method

.method public setCameraDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d:I

    .line 3
    return-void
.end method

.method public setCameraID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0:I

    .line 3
    return-void
.end method

.method public setCameraPenalty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0:Z

    .line 3
    return-void
.end method

.method public setCameraSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f:I

    .line 3
    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e:I

    .line 3
    return-void
.end method

.method public setCurRoadName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLimitedSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q:I

    .line 3
    return-void
.end method

.method public setSapaDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z:I

    .line 3
    return-void
.end method

.method public setSapaName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSapaNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B:I

    .line 3
    return-void
.end method

.method public setSapaType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A:I

    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a:I

    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public t0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b0:I

    .line 3
    return v0
.end method

.method public t1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "GuideInfoModel{type="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", cameraType="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", cameraSpeed="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", cameraIndex="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", limitedSpeed="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", curRoadName=\'"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v1, 0x27

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, ", nextRoadName=\'"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ", exitNameInfo=\'"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, ", exitDirectionInfo=\'"

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    const-string v2, ", cameraDist="

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d:I

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v2, ", icon="

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h:I

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, ", newIcon="

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i:I

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, ", routeRemainDis="

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j:I

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, ", routeRemainTime="

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k:I

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v2, ", segRemainDis="

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l:I

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, ", segRemainTime="

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m:I

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v2, ", carDirection="

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n:I

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, ", carLatitude="

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-wide v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o:D

    .line 197
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, ", carLongitude="

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-wide v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p:D

    .line 207
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, ", curSegNum="

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r:I

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, ", curPointNum="

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s:I

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v2, ", roundAboutNum="

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t:I

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, ", roundAllNum="

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u:I

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v2, ", routeAllDis="

    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v:I

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v2, ", routeAllTime="

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w:I

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string v2, ", curSpeed="

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x:I

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v2, ", trafficLightNum="

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y:I

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    const-string v2, ", sapaDist="

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z:I

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, ", sapaType="

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A:I

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v2, ", sapaNum="

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B:I

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    const-string v2, ", sapaName=\'"

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, ", roadType="

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D:I

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, ", nextSapaDist="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q:I

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, ", nextSapaType="

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R:I

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v1, ", nextSapaName="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S:Ljava/lang/String;

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, ", nextSapaDistAuto="

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T:Ljava/lang/String;

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ", roundaboutOutAngle="

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ", cameraPenalty="

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0:Z

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, ", nextRoadNOAOrNot="

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0:Z

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, ", newCamera="

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-boolean v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0:Z

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, ", cameraID="

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0:I

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, ", addIcon="

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u0:Ljava/lang/String;

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, ", nextNextAddIcon="

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0:Ljava/lang/String;

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const/16 v1, 0x7d

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    move-result-object v0

    .line 462
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g:I

    .line 3
    return v0
.end method

.method public u0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a0:I

    .line 3
    return v0
.end method

.method public u1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W:I

    .line 3
    return-void
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n:I

    .line 3
    return v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public v1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l:I

    .line 3
    return-void
.end method

.method public w()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o:D

    .line 3
    return-wide v0
.end method

.method public w0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q0:I

    .line 3
    return v0
.end method

.method public w1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e:I

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f:I

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i:I

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j:I

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k:I

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l:I

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m:I

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n:I

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o:D

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p:D

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q:I

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r:I

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s:I

    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t:I

    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u:I

    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v:I

    .line 111
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w:I

    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x:I

    .line 121
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y:I

    .line 126
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z:I

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A:I

    .line 136
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B:I

    .line 141
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C:Ljava/lang/String;

    .line 146
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D:I

    .line 151
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H:Ljava/lang/String;

    .line 156
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E:I

    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K:Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L:I

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M:I

    .line 186
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P:I

    .line 191
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I:Ljava/lang/String;

    .line 196
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J:Ljava/lang/String;

    .line 201
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 207
    move-result p2

    .line 208
    const/4 v0, 0x1

    .line 209
    if-lt p2, v0, :cond_0

    .line 211
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q:I

    .line 213
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R:I

    .line 218
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S:Ljava/lang/String;

    .line 223
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T:Ljava/lang/String;

    .line 228
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 234
    move-result p2

    .line 235
    const/4 v0, 0x2

    .line 236
    if-lt p2, v0, :cond_1

    .line 238
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U:Ljava/lang/String;

    .line 240
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V:Ljava/lang/String;

    .line 245
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 251
    move-result-object p2

    .line 252
    invoke-static {p2}, Lqk0;->d(Ljava/lang/String;)Z

    .line 255
    move-result p2

    .line 256
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 259
    move-result v0

    .line 260
    const/4 v1, 0x3

    .line 261
    if-lt v0, v1, :cond_3

    .line 263
    if-eqz p2, :cond_2

    .line 265
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 267
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    goto :goto_0

    .line 271
    :cond_2
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W:I

    .line 273
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 279
    move-result p2

    .line 280
    const/4 v0, 0x4

    .line 281
    if-lt p2, v0, :cond_4

    .line 283
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X:I

    .line 285
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 291
    move-result p2

    .line 292
    const/4 v0, 0x5

    .line 293
    if-lt p2, v0, :cond_5

    .line 295
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y:Ljava/lang/String;

    .line 297
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z:I

    .line 302
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 308
    move-result p2

    .line 309
    const/4 v0, 0x6

    .line 310
    if-lt p2, v0, :cond_6

    .line 312
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a0:I

    .line 314
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b0:I

    .line 319
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c0:Landroid/graphics/Bitmap;

    .line 324
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 327
    :cond_6
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 330
    move-result p2

    .line 331
    const/4 v0, 0x7

    .line 332
    if-lt p2, v0, :cond_7

    .line 334
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0:Z

    .line 336
    int-to-byte p2, p2

    .line 337
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 340
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0:Z

    .line 342
    int-to-byte p2, p2

    .line 343
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 346
    :cond_7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 349
    move-result p2

    .line 350
    const/16 v0, 0x8

    .line 352
    if-lt p2, v0, :cond_8

    .line 354
    iget-boolean p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0:Z

    .line 356
    int-to-byte p2, p2

    .line 357
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 360
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0:I

    .line 362
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    :cond_8
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 368
    move-result p2

    .line 369
    const/16 v0, 0x9

    .line 371
    if-lt p2, v0, :cond_9

    .line 373
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h0:Ljava/lang/String;

    .line 375
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i0:Ljava/lang/String;

    .line 380
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j0:Ljava/lang/String;

    .line 385
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m0:Ljava/lang/String;

    .line 390
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k0:D

    .line 395
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 398
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l0:D

    .line 400
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 403
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n0:D

    .line 405
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 408
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o0:D

    .line 410
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 413
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p0:I

    .line 415
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q0:I

    .line 420
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    :cond_9
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 426
    move-result p2

    .line 427
    const/16 v0, 0xa

    .line 429
    if-lt p2, v0, :cond_a

    .line 431
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r0:Ljava/lang/String;

    .line 433
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s0:Ljava/lang/String;

    .line 438
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t0:Ljava/lang/String;

    .line 443
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    :cond_a
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 449
    move-result p2

    .line 450
    const/16 v0, 0xb

    .line 452
    if-lt p2, v0, :cond_b

    .line 454
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u0:Ljava/lang/String;

    .line 456
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0:Ljava/lang/String;

    .line 461
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    :cond_b
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 467
    move-result p2

    .line 468
    const/16 v0, 0xc

    .line 470
    if-lt p2, v0, :cond_c

    .line 472
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O:Ljava/lang/String;

    .line 474
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    :cond_c
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 480
    move-result p2

    .line 481
    const/16 v0, 0xd

    .line 483
    if-lt p2, v0, :cond_d

    .line 485
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w0:I

    .line 487
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    :cond_d
    return-void
.end method

.method public x()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p:D

    .line 3
    return-wide v0
.end method

.method public x0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p0:I

    .line 3
    return v0
.end method

.method public x1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m:I

    .line 3
    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s:I

    .line 3
    return v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public y1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y:I

    .line 3
    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r:I

    .line 3
    return v0
.end method

.method public z0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public z1(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c0:Landroid/graphics/Bitmap;

    .line 3
    return-void
.end method
