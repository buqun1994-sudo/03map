.class public Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;",
            ">;"
        }
    .end annotation
.end field

.field contentVersion:I

.field drPosition:Lcom/autonavi/amapauto/common/Coord3DDouble;

.field hasRoute:Z

.field matchedRouteId:I

.field mmPosition:Lcom/autonavi/amapauto/common/Coord3DDouble;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field onroad:Z

.field regionId:I

.field regionInfo:Lcom/autonavi/amapauto/location/model/LocMapMatchedRegionInfoWrapper;

.field speed3D:F

.field timestamp:J

.field utc:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult$a;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->timestamp:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->onroad:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->utc:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->speed3D:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->matchedRouteId:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->contentVersion:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionId:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->hasRoute:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->candidates:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getContentVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->contentVersion:I

    .line 3
    return v0
.end method

.method public getDrPosition()Lcom/autonavi/amapauto/common/Coord3DDouble;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->drPosition:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 3
    return-object v0
.end method

.method public getMatchedRouteId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->matchedRouteId:I

    .line 3
    return v0
.end method

.method public getMmPosition()Lcom/autonavi/amapauto/common/Coord3DDouble;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->mmPosition:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 3
    return-object v0
.end method

.method public getRegionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionId:I

    .line 3
    return v0
.end method

.method public getRegionInfo()Lcom/autonavi/amapauto/location/model/LocMapMatchedRegionInfoWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionInfo:Lcom/autonavi/amapauto/location/model/LocMapMatchedRegionInfoWrapper;

    .line 3
    return-object v0
.end method

.method public getSpeed3D()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->speed3D:F

    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->timestamp:J

    .line 3
    return-wide v0
.end method

.method public getUtc()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->utc:J

    .line 3
    return-wide v0
.end method

.method public isHasRoute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->hasRoute:Z

    .line 3
    return v0
.end method

.method public isOnroad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->onroad:Z

    .line 3
    return v0
.end method

.method public setCandidates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/location/model/LocMapMatchedCandidate;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->candidates:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setContentVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->contentVersion:I

    .line 3
    return-void
.end method

.method public setDrPosition(Lcom/autonavi/amapauto/common/Coord3DDouble;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->drPosition:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 3
    return-void
.end method

.method public setHasRoute(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->hasRoute:Z

    .line 3
    return-void
.end method

.method public setMatchedRouteId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->matchedRouteId:I

    .line 3
    return-void
.end method

.method public setMmPosition(Lcom/autonavi/amapauto/common/Coord3DDouble;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->mmPosition:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 3
    return-void
.end method

.method public setOnroad(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->onroad:Z

    .line 3
    return-void
.end method

.method public setRegionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionId:I

    .line 3
    return-void
.end method

.method public setRegionInfo(Lcom/autonavi/amapauto/location/model/LocMapMatchedRegionInfoWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionInfo:Lcom/autonavi/amapauto/location/model/LocMapMatchedRegionInfoWrapper;

    .line 3
    return-void
.end method

.method public setSpeed3D(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->speed3D:F

    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->timestamp:J

    .line 3
    return-void
.end method

.method public setUtc(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->utc:J

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "LocMapMatchedResult{timestamp="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->timestamp:J

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", onroad="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->onroad:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", candidates="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->candidates:Ljava/util/List;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", drPosition="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->drPosition:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", utc="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->utc:J

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", speed3D="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->speed3D:F

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", matchedRouteId="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->matchedRouteId:I

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", contentVersion="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->contentVersion:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", regionId="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionId:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", hasRoute="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->hasRoute:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", regionInfo="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionInfo:Lcom/autonavi/amapauto/location/model/LocMapMatchedRegionInfoWrapper;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const/16 v1, 0x7d

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->timestamp:J

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-boolean p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->onroad:Z

    .line 8
    int-to-byte p2, p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-wide v0, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->utc:J

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    iget p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->speed3D:F

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 22
    iget p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->matchedRouteId:I

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->contentVersion:I

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->regionId:I

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-boolean p2, p0, Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;->hasRoute:Z

    .line 39
    int-to-byte p2, p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    return-void
.end method
