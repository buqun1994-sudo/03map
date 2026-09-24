.class public Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private formWay:I

.field private geoPointArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private laneNum:I

.field private length:I

.field private level:I

.field private linkId:J

.field private mainRoadSeparated:Z

.field private passingPointArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;",
            ">;"
        }
    .end annotation
.end field

.field private roadName:Ljava/lang/String;

.field private sideRoad:Z

.field private speedLimit:I

.field private turnKind:I

.field private viaduct:Z

.field private wayPoint:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->laneNum:I

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->length:I

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->level:I

    .line 11
    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->linkId:J

    .line 15
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->mainRoadSeparated:Z

    .line 17
    const-string v1, ""

    .line 19
    iput-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->roadName:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->sideRoad:Z

    .line 23
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->speedLimit:I

    .line 25
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->turnKind:I

    .line 27
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->viaduct:Z

    .line 29
    iput-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->wayPoint:Z

    .line 31
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->formWay:I

    .line 33
    return-void
.end method


# virtual methods
.method public getFormWay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->formWay:I

    .line 3
    return v0
.end method

.method public getGeoPointArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->geoPointArrayList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->laneNum:I

    .line 3
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->length:I

    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->level:I

    .line 3
    return v0
.end method

.method public getLinkId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->linkId:J

    .line 3
    return-wide v0
.end method

.method public getMainRoadSeparated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->mainRoadSeparated:Z

    .line 3
    return v0
.end method

.method public getPassingPointArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->passingPointArrayList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->roadName:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    .line 7
    :cond_0
    return-object v0
.end method

.method public getSideRoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->sideRoad:Z

    .line 3
    return v0
.end method

.method public getSpeedLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->speedLimit:I

    .line 3
    return v0
.end method

.method public getTurnKind()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->turnKind:I

    .line 3
    return v0
.end method

.method public getViaduct()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->viaduct:Z

    .line 3
    return v0
.end method

.method public getWayPoint()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->wayPoint:Z

    .line 3
    return v0
.end method

.method public setFormWay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->formWay:I

    .line 3
    return-void
.end method

.method public setGeoPointArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->geoPointArrayList:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setLaneNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->laneNum:I

    .line 3
    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->length:I

    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->level:I

    .line 3
    return-void
.end method

.method public setLinkId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->linkId:J

    .line 3
    return-void
.end method

.method public setMainRoadSeparated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->mainRoadSeparated:Z

    .line 3
    return-void
.end method

.method public setPassingPointArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->passingPointArrayList:Ljava/util/ArrayList;

    .line 3
    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->roadName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSideRoad(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->sideRoad:Z

    .line 3
    return-void
.end method

.method public setSpeedLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->speedLimit:I

    .line 3
    return-void
.end method

.method public setTurnKind(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->turnKind:I

    .line 3
    return-void
.end method

.method public setViaduct(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->viaduct:Z

    .line 3
    return-void
.end method

.method public setWayPoint(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->wayPoint:Z

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "geoPointArrayList"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->geoPointArrayList:Ljava/util/ArrayList;

    .line 18
    const-string v3, "null"

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v3

    .line 28
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "\n"

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "laneNum"

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->laneNum:I

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v4, "length"

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->length:I

    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v4, "level"

    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->level:I

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v4, "linkId"

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-wide v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->linkId:J

    .line 94
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v4, "mainRoadSeparated"

    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->mainRoadSeparated:Z

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v4, "passingPointArrayList"

    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->passingPointArrayList:Ljava/util/ArrayList;

    .line 126
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "roadName"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->roadName:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "sideRoad"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-boolean v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->sideRoad:Z

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "speedLimit"

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->speedLimit:I

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "turnKind"

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->turnKind:I

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, "viaduct"

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-boolean v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->viaduct:Z

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "wayPoint"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-boolean v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->wayPoint:Z

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v3, "formWay"

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteLinkInfo;->formWay:I

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    return-object v0
.end method
