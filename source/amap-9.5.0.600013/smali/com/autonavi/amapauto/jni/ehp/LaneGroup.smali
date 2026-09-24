.class public Lcom/autonavi/amapauto/jni/ehp/LaneGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private conditionalProhibitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;"
        }
    .end annotation
.end field

.field private connectionTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneRange;",
            ">;"
        }
    .end annotation
.end field

.field connectionTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private flags:I

.field lane:Lcom/autonavi/amapauto/jni/ehp/Lane;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field laneGroupId:I

.field private laneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Lane;",
            ">;"
        }
    .end annotation
.end field

.field private laneMarking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;"
        }
    .end annotation
.end field

.field private linkMappingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LinkMapping;",
            ">;"
        }
    .end annotation
.end field

.field mappings:Lcom/autonavi/amapauto/jni/ehp/LinkMapping;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private ndsLaneGroupId:J

.field private sourceQualityClass:I

.field private specialLaneTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneRange;",
            ">;"
        }
    .end annotation
.end field

.field specialLaneTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private speedLimits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConditionalProhibitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->conditionalProhibitions:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getConnectionTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneRange;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->connectionTypeList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getConnectionTypes()Lcom/autonavi/amapauto/jni/ehp/LaneRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->connectionTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;

    .line 3
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->flags:I

    .line 3
    return v0
.end method

.method public getLane()Lcom/autonavi/amapauto/jni/ehp/Lane;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->lane:Lcom/autonavi/amapauto/jni/ehp/Lane;

    .line 3
    return-object v0
.end method

.method public getLaneGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneGroupId:I

    .line 3
    return v0
.end method

.method public getLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Lane;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getLaneMarking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneMarking:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getLinkMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LinkMapping;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->linkMappingList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getMappings()Lcom/autonavi/amapauto/jni/ehp/LinkMapping;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->mappings:Lcom/autonavi/amapauto/jni/ehp/LinkMapping;

    .line 3
    return-object v0
.end method

.method public getNdsLaneGroupId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->ndsLaneGroupId:J

    .line 3
    return-wide v0
.end method

.method public getSourceQualityClass()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->sourceQualityClass:I

    .line 3
    return v0
.end method

.method public getSpecialLaneTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneRange;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->specialLaneTypeList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSpecialLaneTypes()Lcom/autonavi/amapauto/jni/ehp/LaneRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->specialLaneTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;

    .line 3
    return-object v0
.end method

.method public getSpeedLimits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->speedLimits:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public setConditionalProhibitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->conditionalProhibitions:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setConnectionTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->connectionTypeList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setConnectionTypes(Lcom/autonavi/amapauto/jni/ehp/LaneRange;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->connectionTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;

    .line 3
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->flags:I

    .line 3
    return-void
.end method

.method public setLane(Lcom/autonavi/amapauto/jni/ehp/Lane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->lane:Lcom/autonavi/amapauto/jni/ehp/Lane;

    .line 3
    return-void
.end method

.method public setLaneGroupId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneGroupId:I

    .line 3
    return-void
.end method

.method public setLaneList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/Lane;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setLaneMarking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneMarking:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setLinkMappingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LinkMapping;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->linkMappingList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setMappings(Lcom/autonavi/amapauto/jni/ehp/LinkMapping;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->mappings:Lcom/autonavi/amapauto/jni/ehp/LinkMapping;

    .line 3
    return-void
.end method

.method public setNdsLaneGroupId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->ndsLaneGroupId:J

    .line 3
    return-void
.end method

.method public setSourceQualityClass(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->sourceQualityClass:I

    .line 3
    return-void
.end method

.method public setSpecialLaneTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->specialLaneTypeList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setSpecialLaneTypes(Lcom/autonavi/amapauto/jni/ehp/LaneRange;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->specialLaneTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;

    .line 3
    return-void
.end method

.method public setSpeedLimits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/UInt32Range;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->speedLimits:Ljava/util/List;

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
    const-string v1, "LaneGroup{laneGroupId="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneGroupId:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", lane="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->lane:Lcom/autonavi/amapauto/jni/ehp/Lane;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", mappings="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->mappings:Lcom/autonavi/amapauto/jni/ehp/LinkMapping;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", connectionTypes="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->connectionTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", specialLaneTypes="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->specialLaneTypes:Lcom/autonavi/amapauto/jni/ehp/LaneRange;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", laneList="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneList:Ljava/util/List;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", linkMappingList="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->linkMappingList:Ljava/util/List;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", connectionTypeList="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->connectionTypeList:Ljava/util/List;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", specialLaneTypeList="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->specialLaneTypeList:Ljava/util/List;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", sourceQualityClass="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->sourceQualityClass:I

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", flags="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->flags:I

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", laneMarking="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->laneMarking:Ljava/util/List;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", conditionalProhibitions="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->conditionalProhibitions:Ljava/util/List;

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", speedLimits="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->speedLimits:Ljava/util/List;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", ndsLaneGroupId="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/ehp/LaneGroup;->ndsLaneGroupId:J

    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    const/16 v1, 0x7d

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    return-object v0
.end method
