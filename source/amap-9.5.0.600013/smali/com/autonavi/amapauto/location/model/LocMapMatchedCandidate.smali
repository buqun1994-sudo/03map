.class public Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lengthAlongLink:I

.field linkReference:Lcom/autonavi/amapauto/location/model/LocLinkReference;

.field position:Lcom/autonavi/amapauto/common/Coord3DDouble;

.field positiveLinkDirection:Z

.field probability:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->probability:F

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->positiveLinkDirection:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->lengthAlongLink:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLengthAlongLink()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->lengthAlongLink:I

    .line 3
    return v0
.end method

.method public getLinkReference()Lcom/autonavi/amapauto/location/model/LocLinkReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->linkReference:Lcom/autonavi/amapauto/location/model/LocLinkReference;

    .line 3
    return-object v0
.end method

.method public getPosition()Lcom/autonavi/amapauto/common/Coord3DDouble;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->position:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 3
    return-object v0
.end method

.method public getProbability()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->probability:F

    .line 3
    return v0
.end method

.method public isPositiveLinkDirection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->positiveLinkDirection:Z

    .line 3
    return v0
.end method

.method public setLengthAlongLink(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->lengthAlongLink:I

    .line 3
    return-void
.end method

.method public setLinkReference(Lcom/autonavi/amapauto/location/model/LocLinkReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->linkReference:Lcom/autonavi/amapauto/location/model/LocLinkReference;

    .line 3
    return-void
.end method

.method public setPosition(Lcom/autonavi/amapauto/common/Coord3DDouble;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->position:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 3
    return-void
.end method

.method public setPositiveLinkDirection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->positiveLinkDirection:Z

    .line 3
    return-void
.end method

.method public setProbability(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->probability:F

    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->probability:F

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget-boolean p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->positiveLinkDirection:Z

    .line 8
    int-to-byte p2, p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;->lengthAlongLink:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    return-void
.end method
