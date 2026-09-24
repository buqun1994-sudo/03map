.class public Llh0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 6
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 7

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;-><init>()V

    .line 6
    iget-object v1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 8
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->isTmcEnabled:Z

    .line 10
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->B(I)V

    .line 13
    iget-object v1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 15
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->size:I

    .line 17
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->A(I)V

    .line 20
    iget-object v1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 22
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->totalDistance:I

    .line 24
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->D(I)V

    .line 27
    iget-object v1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 29
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->resiDistance:I

    .line 31
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->z(I)V

    .line 34
    iget-object v1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 36
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->finishDstance:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->y(I)V

    .line 41
    iget-object v1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 43
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->totalTime:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->E(I)V

    .line 48
    iget-object v1, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 50
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->remainTime:I

    .line 52
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->setRemainTime(I)V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v2, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 62
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 70
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 82
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v2

    .line 90
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_0

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 102
    new-instance v4, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;

    .line 104
    invoke-direct {v4}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;-><init>()V

    .line 107
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 109
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;->x(I)V

    .line 112
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->distance:I

    .line 114
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;->setDistance(I)V

    .line 117
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->travelTime:I

    .line 119
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;->y(I)V

    .line 122
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->percent:F

    .line 124
    const/high16 v6, 0x42c80000    # 100.0f

    .line 126
    mul-float v5, v5, v6

    .line 128
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 131
    move-result v5

    .line 132
    int-to-float v5, v5

    .line 133
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;->w(F)V

    .line 136
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->number:I

    .line 138
    invoke-virtual {v4, v3}, Lcom/autonavi/amapauto/protocol/model/service/TmcItemInfo;->v(I)V

    .line 141
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/TmcSegmentModel;->C(Ljava/util/List;)V

    .line 148
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x32d3

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_TMC_SEGMENT"

    .line 15
    invoke-virtual {p0}, Llh0;->g()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    const-string v2, "tmc_segment_enabled"

    .line 13
    iget-object v3, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 15
    iget-boolean v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->isTmcEnabled:Z

    .line 17
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 20
    const-string v2, "total_distance"

    .line 22
    iget-object v3, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 24
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->totalDistance:I

    .line 26
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string v2, "residual_distance"

    .line 31
    iget-object v3, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 33
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->resiDistance:I

    .line 35
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v2, "finish_distance"

    .line 40
    iget-object v3, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 42
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->finishDstance:I

    .line 44
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "tmc_segment_size"

    .line 49
    iget-object v3, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 51
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->size:I

    .line 53
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    iget-object v2, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 58
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 66
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    move-result v2

    .line 74
    if-lez v2, :cond_1

    .line 76
    new-instance v2, Lorg/json/JSONArray;

    .line 78
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 81
    iget-object v3, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 83
    invoke-virtual {v3}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 90
    move-result v3

    .line 91
    const/4 v4, 0x0

    .line 92
    :goto_0
    if-ge v4, v3, :cond_0

    .line 94
    iget-object v5, p0, Llh0;->d:Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 96
    invoke-virtual {v5}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->getTmcinfos()Ljava/util/List;

    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 106
    new-instance v6, Lorg/json/JSONObject;

    .line 108
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 111
    const-string v7, "tmc_segment_number"

    .line 113
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->number:I

    .line 115
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v7, "tmc_status"

    .line 120
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 122
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v7, "tmc_segment_distance"

    .line 131
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->distance:I

    .line 133
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v7, "tmc_traveltime"

    .line 142
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->travelTime:I

    .line 144
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    iget v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->percent:F

    .line 149
    const/high16 v7, 0x42c80000    # 100.0f

    .line 151
    mul-float v5, v5, v7

    .line 153
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 156
    move-result v5

    .line 157
    int-to-long v7, v5

    .line 158
    const-string v5, "tmc_segment_percent"

    .line 160
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    add-int/lit8 v4, v4, 0x1

    .line 172
    goto :goto_0

    .line 173
    :cond_0
    const-string v3, "tmc_info"

    .line 175
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    move-result-object v2

    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    .line 190
    const-string v3, "TmcSegmentDispatchAction"

    .line 192
    invoke-static {v3, v2, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 195
    :cond_2
    const-string v0, ""

    .line 197
    :goto_1
    return-object v0
.end method
