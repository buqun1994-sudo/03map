.class public Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public count:I

.field public feedbackNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/location/model/LocFeedbackNode;",
            ">;"
        }
    .end annotation
.end field

.field public gpsOnRoad:Z

.field public hasMapData:Z

.field public mapMatchedResult:Lcom/autonavi/amapauto/location/model/LocMapMatchedResult;

.field public ticktime:J

.field public toRoadEndDist:D

.field public toRoadStartDist:D

.field public viaductStartFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->feedbackNodes:Ljava/util/List;

    .line 3
    const-string v1, ",toRoadEndDist="

    .line 5
    const-string v2, ",toRoadStartDist="

    .line 7
    const-string v3, ",count="

    .line 9
    const-string v4, "ticktime="

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->feedbackNodes:Ljava/util/List;

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->feedbackNodes:Ljava/util/List;

    .line 30
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v6, ",lon="

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v6, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->deltaPoint:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 48
    iget-wide v6, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->lon:D

    .line 50
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 53
    const-string v6, ",lat="

    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v6, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->deltaPoint:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 60
    iget-wide v6, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->lat:D

    .line 62
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, ",zLevel="

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v6, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->deltaPoint:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 72
    iget-wide v6, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->z:D

    .line 74
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 77
    const-string v6, ",roadAzi="

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v6, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->roadAzi:F

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    const-string v6, ",probability="

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v6, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->probability:F

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    const-string v6, ",feedBackType="

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v6, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->type:I

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v6, ",roadWidth="

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v6, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->roadWidth:I

    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v6, ",aziDiffRoad2DR="

    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v0, v0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->aziDiffRoad2DR:F

    .line 124
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-wide v6, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->ticktime:J

    .line 141
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v3, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->count:I

    .line 149
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-wide v2, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->toRoadStartDist:D

    .line 157
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-wide v1, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->toRoadEndDist:D

    .line 165
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    return-object v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-wide v4, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->ticktime:J

    .line 186
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v3, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->count:I

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-wide v2, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->toRoadStartDist:D

    .line 202
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-wide v1, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->toRoadEndDist:D

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 217
    return-object v0
.end method
