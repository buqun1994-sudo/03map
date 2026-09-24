.class public Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
.super Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;",
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

.field public f:D

.field public g:D

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "1.0"

    .line 2
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "1.0"

    .line 16
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->r(Landroid/os/Parcel;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getModelVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "ProtocolPoi"

    const-string v1, "getDataVersion:{?} getModelVersion:{?}"

    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    const-string v0, "1.0"

    .line 4
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getModelVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "ProtocolPoi"

    const-string v6, "clentVersion:{?} getDataVersion:{?} getModelVersion:{?}"

    invoke-static {v2, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x134146e

    if-ne v1, p2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    const-string v1, "ProtocolPoi protocolID:{?}"

    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->t(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->s(Landroid/os/Parcel;)V

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->k:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 14
    iget-wide v6, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v3

    iget-wide v6, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->e:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v4

    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->f:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v5

    iget-wide v3, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->g:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "longitude:{?} latitude:{?} entryLongitude:{?} entryLatitude:{?}"

    invoke-static {v2, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->m:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->i:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->n:I

    .line 3
    return v0
.end method

.method public getEntryLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->g:D

    .line 3
    return-wide v0
.end method

.method public getEntryLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->f:D

    .line 3
    return-wide v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->j:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->e:D

    .line 3
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->d:D

    .line 3
    return-wide v0
.end method

.method public getModelVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final r(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->t(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->d:D

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->e:D

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->f:D

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->g:D

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->h:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->j:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->i:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x1

    .line 69
    if-lt v0, v1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->k:Ljava/lang/String;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x2

    .line 82
    if-lt v0, v1, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->l:I

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 93
    move-result v0

    .line 94
    const/4 v1, 0x3

    .line 95
    if-lt v0, v1, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->m:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 106
    move-result p1

    .line 107
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->n:I

    .line 109
    :cond_2
    return-void
.end method

.method public final s(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->d:D

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->e:D

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->f:D

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->g:D

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->h:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->j:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->i:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->i:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->n:I

    .line 3
    return-void
.end method

.method public setEntryLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->g:D

    .line 3
    return-void
.end method

.method public setEntryLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->f:D

    .line 3
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->j:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->e:D

    .line 3
    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->d:D

    .line 3
    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->c:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final t(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolID:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->timeStamp:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->callbackId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->protocolVersion:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->packageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->var1:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->l:I

    .line 3
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->k:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->m:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->d:D

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 19
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->e:D

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->f:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-wide v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->g:D

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->h:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->j:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->i:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 57
    move-result p2

    .line 58
    const/4 v0, 0x1

    .line 59
    if-lt p2, v0, :cond_0

    .line 61
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->k:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->l:I

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getDataVersion()I

    .line 81
    move-result p2

    .line 82
    const/4 v0, 0x3

    .line 83
    if-lt p2, v0, :cond_2

    .line 85
    iget-object p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->m:Ljava/lang/String;

    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget p2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->n:I

    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :cond_2
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->l:I

    .line 3
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->k:Ljava/lang/String;

    .line 3
    return-void
.end method
