.class public Lcom/autonavi/amapauto/location/model/LocLinkReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/location/model/LocLinkReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private linkId:I

.field private ndsLink:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocLinkReference$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocLinkReference$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->linkId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->ndsLink:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLinkId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->linkId:I

    .line 3
    return v0
.end method

.method public getNdsLink()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->ndsLink:J

    .line 3
    return-wide v0
.end method

.method public setLinkId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->linkId:I

    .line 3
    return-void
.end method

.method public setNdsLink(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->ndsLink:J

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->linkId:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocLinkReference;->ndsLink:J

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    return-void
.end method
