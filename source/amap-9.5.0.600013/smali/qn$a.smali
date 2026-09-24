.class public Lqn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v3

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 19
    iget-wide v5, p1, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->ticktime:J

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x1

    .line 26
    aput-object v3, v2, v5

    .line 28
    const-string v3, "GetMapMatchFeedbackInfoFuncRepository"

    .line 30
    const-string v6, "DRS Richan sendMapMatchFeedback elapsedRealtime = {?} ticktime = {?}"

    .line 32
    invoke-static {v3, v6, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 37
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v3, "ticktime"

    .line 42
    iget-wide v6, p1, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->ticktime:J

    .line 44
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance v3, Lorg/json/JSONArray;

    .line 53
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 56
    iget-object p1, p1, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->feedbackNodes:Ljava/util/List;

    .line 58
    if-eqz p1, :cond_4

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    move-result v6

    .line 64
    if-gtz v6, :cond_1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;

    .line 73
    if-eqz p1, :cond_4

    .line 75
    iget v6, p1, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->type:I

    .line 77
    if-eq v6, v1, :cond_2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    .line 82
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    iget-object v6, p1, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->deltaPoint:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 87
    if-eqz v6, :cond_3

    .line 89
    iget-wide v7, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->lon:D

    .line 91
    double-to-int v7, v7

    .line 92
    iget-wide v8, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->lat:D

    .line 94
    double-to-int v8, v8

    .line 95
    const-string v9, "lon"

    .line 97
    invoke-virtual {v1, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v7, "lat"

    .line 102
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v7, "zLevel"

    .line 107
    iget-wide v8, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->z:D

    .line 109
    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 112
    :cond_3
    const-string v6, "roadAzi"

    .line 114
    iget v7, p1, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->roadAzi:F

    .line 116
    float-to-double v7, v7

    .line 117
    invoke-virtual {v1, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 120
    const-string v6, "probability"

    .line 122
    iget v7, p1, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->probability:F

    .line 124
    float-to-double v7, v7

    .line 125
    invoke-virtual {v1, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 128
    const-string v6, "feedBackType"

    .line 130
    iget v7, p1, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->type:I

    .line 132
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v6, "roadWidth"

    .line 137
    iget p1, p1, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->roadWidth:I

    .line 139
    invoke-virtual {v1, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string p1, "headAccMM"

    .line 144
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string p1, "posAccMM"

    .line 149
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    const-string p1, "count"

    .line 157
    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    const-string p1, "feedbackNodes"

    .line 162
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    const-string p1, "DRS Richan ====zwb LocationFrontEndFusion sendMapMatchFeedback json = {?}"

    .line 171
    new-array v1, v5, [Ljava/lang/Object;

    .line 173
    aput-object v0, v1, v4

    .line 175
    invoke-static {p1, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    :goto_1
    return-object v0
.end method
