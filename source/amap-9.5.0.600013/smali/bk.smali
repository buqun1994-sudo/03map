.class public Lbk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbk$h;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public b:J

.field public c:J

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lbk;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lbk;->f:Z

    .line 5
    iput-boolean v0, p0, Lbk;->g:Z

    .line 6
    iput-boolean v0, p0, Lbk;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lbk$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbk;-><init>()V

    return-void
.end method

.method public static synthetic a(Lbk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbk;->j(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lbk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbk;->g(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic c(Lbk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbk;->k(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic d(Lbk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbk;->l(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic e(Lbk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbk;->i(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic f(Lbk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbk;->h(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static m()Lbk;
    .locals 1

    .line 1
    invoke-static {}, Lbk$h;->a()Lbk;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v0, v3, v4

    .line 11
    const-string v5, "DR"

    .line 13
    const-string v6, "AmapAutoService convertJson2LocAcceInfo jsonInfo = {?}"

    .line 15
    invoke-static {v5, v6, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    iget-wide v6, v1, Lbk;->c:J

    .line 27
    const-wide/16 v8, 0x0

    .line 29
    cmp-long v3, v6, v8

    .line 31
    if-nez v3, :cond_1

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v6

    .line 37
    iput-wide v6, v1, Lbk;->c:J

    .line 39
    const/4 v3, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    move-result-wide v6

    .line 45
    iget-wide v8, v1, Lbk;->c:J

    .line 47
    sub-long v8, v6, v8

    .line 49
    long-to-int v3, v8

    .line 50
    iput-wide v6, v1, Lbk;->c:J

    .line 52
    :goto_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 54
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, v1, Lbk;->g:Z

    .line 59
    if-nez v0, :cond_2

    .line 61
    invoke-static {}, Lse;->c()Lse;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v6}, Lse;->handleDrA3d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 68
    move-result-object v6

    .line 69
    :cond_2
    const-string v0, "axis"

    .line 71
    const/4 v7, 0x7

    .line 72
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 75
    move-result v9

    .line 76
    const-string v0, "valueYaw"

    .line 78
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 81
    move-result-wide v7

    .line 82
    double-to-float v0, v7

    .line 83
    const-string v7, "valuePitch"

    .line 85
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 88
    move-result-wide v7

    .line 89
    double-to-float v7, v7

    .line 90
    const-string v8, "valueRoll"

    .line 92
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 95
    move-result-wide v10

    .line 96
    double-to-float v8, v10

    .line 97
    const-string v10, "interval"

    .line 99
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 102
    move-result v19

    .line 103
    const-string v10, "tickTime"

    .line 105
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 108
    move-result-wide v20

    .line 109
    invoke-static {}, Lrv;->H()Lrv;

    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6}, Lrv;->I()Lxy;

    .line 116
    move-result-object v6

    .line 117
    if-nez v6, :cond_3

    .line 119
    return-void

    .line 120
    :cond_3
    float-to-double v10, v0

    .line 121
    float-to-double v12, v7

    .line 122
    float-to-double v14, v8

    .line 123
    iget-wide v7, v1, Lbk;->c:J

    .line 125
    move-wide/from16 v17, v7

    .line 127
    move-object v8, v6

    .line 128
    move/from16 v16, v3

    .line 130
    invoke-interface/range {v8 .. v18}, Lgr;->c(IDDDIJ)V

    .line 133
    const-string v0, "@ACC {?} {?} {?} {?}"

    .line 135
    const/4 v6, 0x4

    .line 136
    new-array v6, v6, [Ljava/lang/Object;

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v3

    .line 142
    aput-object v3, v6, v4

    .line 144
    iget-wide v3, v1, Lbk;->c:J

    .line 146
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    move-result-object v3

    .line 150
    aput-object v3, v6, v2

    .line 152
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v2

    .line 156
    const/4 v3, 0x2

    .line 157
    aput-object v2, v6, v3

    .line 159
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    move-result-object v2

    .line 163
    const/4 v3, 0x3

    .line 164
    aput-object v2, v6, v3

    .line 166
    invoke-static {v5, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    :goto_1
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p1, v0, v1

    .line 14
    const-string v1, "DR"

    .line 16
    const-string v2, "AmapAutoService convertJson2LocGPSDataInfo jsonInfo = {?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Landroid/location/Location;

    .line 23
    const-string v1, "Default"

    .line 25
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 30
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    const-string p1, "lon"

    .line 35
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 38
    move-result-wide v2

    .line 39
    const-string p1, "lat"

    .line 41
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 44
    move-result-wide v4

    .line 45
    const-string p1, "time"

    .line 47
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 50
    const-string p1, "alt"

    .line 52
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 55
    move-result-wide v6

    .line 56
    double-to-float p1, v6

    .line 57
    const-string v6, "speed"

    .line 59
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 62
    move-result-wide v6

    .line 63
    double-to-float v6, v6

    .line 64
    const-string v7, "bearing"

    .line 66
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 69
    move-result-wide v7

    .line 70
    double-to-float v7, v7

    .line 71
    const-string v8, "accuracy"

    .line 73
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 76
    move-result-wide v8

    .line 77
    double-to-float v8, v8

    .line 78
    const-string v9, "provider"

    .line 80
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 87
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide v2

    .line 94
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 97
    float-to-double v2, p1

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 101
    invoke-virtual {v0, v6}, Landroid/location/Location;->setSpeed(F)V

    .line 104
    invoke-virtual {v0, v7}, Landroid/location/Location;->setBearing(F)V

    .line 107
    invoke-virtual {v0, v8}, Landroid/location/Location;->setAccuracy(F)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lrv;->H()Lrv;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lrv;->I()Lxy;

    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_1

    .line 123
    return-void

    .line 124
    :cond_1
    invoke-interface {p1, v0}, Lgr;->j(Landroid/location/Location;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object p1, v1, v2

    .line 14
    const-string v3, "DR"

    .line 16
    const-string v4, "AmapAutoService convertJson2LocGSVDataInfo jsonInfo = {?}"

    .line 18
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;

    .line 23
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocGpgsv;-><init>()V

    .line 26
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 28
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string p1, "type"

    .line 33
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 36
    move-result p1

    .line 37
    iput p1, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->type:I

    .line 39
    const-string p1, "num"

    .line 41
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 45
    iput p1, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->num:I

    .line 47
    const-string p1, "GsvArray"

    .line 49
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 56
    move-result v5

    .line 57
    const/16 v6, 0x10

    .line 59
    if-lt v5, v6, :cond_5

    .line 61
    if-le v5, v6, :cond_1

    .line 63
    goto/16 :goto_2

    .line 65
    :cond_1
    new-array v5, v6, [I

    .line 67
    iput-object v5, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 69
    new-array v5, v6, [I

    .line 71
    iput-object v5, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 73
    new-array v5, v6, [I

    .line 75
    iput-object v5, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 77
    new-array v5, v6, [I

    .line 79
    iput-object v5, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 81
    new-array v5, v6, [I

    .line 83
    iput-object v5, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 85
    const/4 v5, 0x0

    .line 86
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 89
    move-result v6

    .line 90
    if-ge v5, v6, :cond_3

    .line 92
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 95
    move-result-object v6

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v8, "AmapAutoService convertJson2LocGSVDataInfo jo = "

    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v7

    .line 113
    new-array v8, v2, [Ljava/lang/Object;

    .line 115
    invoke-static {v3, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v7, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->prn:[I

    .line 120
    const-string v8, "PNR"

    .line 122
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 125
    move-result v8

    .line 126
    aput v8, v7, v5

    .line 128
    iget-object v7, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->elevation:[I

    .line 130
    const-string v8, "elevation"

    .line 132
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 135
    move-result v8

    .line 136
    aput v8, v7, v5

    .line 138
    iget-object v7, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->azimuth:[I

    .line 140
    const-string v8, "azimuth"

    .line 142
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 145
    move-result v8

    .line 146
    aput v8, v7, v5

    .line 148
    const-string v7, "SNR"

    .line 150
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 153
    move-result v6

    .line 154
    iget-object v7, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->snr:[I

    .line 156
    aput v6, v7, v5

    .line 158
    const/16 v7, 0x14

    .line 160
    if-le v6, v7, :cond_2

    .line 162
    iget-object v6, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 164
    aput v0, v6, v5

    .line 166
    goto :goto_1

    .line 167
    :cond_2
    iget-object v6, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->isUsed:[I

    .line 169
    aput v2, v6, v5

    .line 171
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 173
    goto :goto_0

    .line 174
    :cond_3
    const-string p1, "tickTime"

    .line 176
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 182
    move-result-wide v2

    .line 183
    iput-wide v2, v1, Lcom/autonavi/amapauto/location/model/LocGpgsv;->tickTime:J

    .line 185
    invoke-static {}, Lrv;->H()Lrv;

    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lrv;->I()Lxy;

    .line 192
    move-result-object p1

    .line 193
    if-nez p1, :cond_4

    .line 195
    return-void

    .line 196
    :cond_4
    invoke-interface {p1, v1}, Lgr;->n(Lcom/autonavi/amapauto/location/model/LocGpgsv;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_3

    .line 200
    :cond_5
    :goto_2
    return-void

    .line 201
    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    :goto_3
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v0, v3, v4

    .line 11
    const-string v5, "DR"

    .line 13
    const-string v6, "AmapAutoService convertJson2LocGyroInfo jsonInfo = {?}"

    .line 15
    invoke-static {v5, v6, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    iget-wide v6, v1, Lbk;->b:J

    .line 27
    const-wide/16 v8, 0x0

    .line 29
    cmp-long v3, v6, v8

    .line 31
    if-nez v3, :cond_1

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v6

    .line 37
    iput-wide v6, v1, Lbk;->b:J

    .line 39
    const/4 v3, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    move-result-wide v6

    .line 45
    iget-wide v8, v1, Lbk;->b:J

    .line 47
    sub-long v8, v6, v8

    .line 49
    long-to-int v3, v8

    .line 50
    iput-wide v6, v1, Lbk;->b:J

    .line 52
    :goto_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 54
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, v1, Lbk;->g:Z

    .line 59
    if-nez v0, :cond_2

    .line 61
    invoke-static {}, Lse;->c()Lse;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v6}, Lse;->handleDrGyr(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 68
    move-result-object v6

    .line 69
    :cond_2
    const-string v0, "axis"

    .line 71
    const/4 v7, 0x7

    .line 72
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 75
    move-result v9

    .line 76
    const-string v0, "valueYaw"

    .line 78
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 81
    move-result-wide v7

    .line 82
    double-to-float v10, v7

    .line 83
    const-string v0, "valuePitch"

    .line 85
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 88
    move-result-wide v7

    .line 89
    double-to-float v11, v7

    .line 90
    const-string v0, "valueRoll"

    .line 92
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 95
    move-result-wide v7

    .line 96
    double-to-float v12, v7

    .line 97
    const-string v0, "temperature"

    .line 99
    const-wide/16 v7, 0x0

    .line 101
    invoke-virtual {v6, v0, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 104
    move-result-wide v7

    .line 105
    double-to-float v0, v7

    .line 106
    const-string v7, "interval"

    .line 108
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 111
    move-result v7

    .line 112
    const-string v8, "tickTime"

    .line 114
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 117
    move-result-wide v18

    .line 118
    invoke-static {}, Lrv;->H()Lrv;

    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v6}, Lrv;->I()Lxy;

    .line 125
    move-result-object v8

    .line 126
    if-nez v8, :cond_3

    .line 128
    return-void

    .line 129
    :cond_3
    float-to-double v13, v0

    .line 130
    move-object v6, v5

    .line 131
    iget-wide v4, v1, Lbk;->b:J

    .line 133
    move v15, v3

    .line 134
    move-wide/from16 v16, v4

    .line 136
    invoke-interface/range {v8 .. v17}, Lgr;->o(IFFFDIJ)V

    .line 139
    const-string v4, "@GYR {?} {?} {?} {?}"

    .line 141
    const/4 v5, 0x4

    .line 142
    new-array v5, v5, [Ljava/lang/Object;

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v3

    .line 148
    const/4 v0, 0x0

    .line 149
    aput-object v3, v5, v0

    .line 151
    iget-wide v8, v1, Lbk;->b:J

    .line 153
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    move-result-object v0

    .line 157
    aput-object v0, v5, v2

    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v0

    .line 163
    const/4 v2, 0x2

    .line 164
    aput-object v0, v5, v2

    .line 166
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    move-result-object v0

    .line 170
    const/4 v2, 0x3

    .line 171
    aput-object v0, v5, v2

    .line 173
    invoke-static {v6, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "DR"

    .line 9
    const-string v4, "AmapAutoService convertJson2LocPulseInfo jsonInfo = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lrv;->I()Lxy;

    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 31
    const-string p1, "AmapAutoService getLocator is null"

    .line 33
    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_1
    iget-wide v4, p0, Lbk;->d:J

    .line 41
    const-wide/16 v6, 0x0

    .line 43
    cmp-long v1, v4, v6

    .line 45
    if-nez v1, :cond_2

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    move-result-wide v4

    .line 51
    iput-wide v4, p0, Lbk;->d:J

    .line 53
    const/4 v1, 0x0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    move-result-wide v4

    .line 59
    iget-wide v6, p0, Lbk;->d:J

    .line 61
    sub-long v6, v4, v6

    .line 63
    long-to-int v1, v6

    .line 64
    iput-wide v4, p0, Lbk;->d:J

    .line 66
    :goto_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 68
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    iget-boolean p1, p0, Lbk;->g:Z

    .line 73
    if-nez p1, :cond_3

    .line 75
    invoke-static {}, Lse;->c()Lse;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v4}, Lse;->handleDrPulse(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 82
    move-result-object v4

    .line 83
    :cond_3
    const-string p1, "value"

    .line 85
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 88
    move-result-wide v5

    .line 89
    double-to-float p1, v5

    .line 90
    const-string v5, "interval"

    .line 92
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 95
    move-result v5

    .line 96
    const-string v6, "tickTime"

    .line 98
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 101
    move-result-wide v12

    .line 102
    invoke-static {}, Lrv;->H()Lrv;

    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lrv;->I()Lxy;

    .line 109
    move-result-object v6

    .line 110
    if-nez v6, :cond_4

    .line 112
    return-void

    .line 113
    :cond_4
    float-to-double v7, p1

    .line 114
    iget-wide v10, p0, Lbk;->d:J

    .line 116
    move v9, v1

    .line 117
    invoke-interface/range {v6 .. v11}, Lgr;->h(DIJ)V

    .line 120
    const-string p1, "@MOV {?} {?} {?} {?}"

    .line 122
    const/4 v4, 0x4

    .line 123
    new-array v4, v4, [Ljava/lang/Object;

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v1

    .line 129
    aput-object v1, v4, v2

    .line 131
    iget-wide v1, p0, Lbk;->d:J

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    move-result-object v1

    .line 137
    aput-object v1, v4, v0

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v0

    .line 143
    const/4 v1, 0x2

    .line 144
    aput-object v0, v4, v1

    .line 146
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    move-result-object v0

    .line 150
    const/4 v1, 0x3

    .line 151
    aput-object v0, v4, v1

    .line 153
    invoke-static {v3, p1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    :goto_1
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 31

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v0, v1, v2

    .line 16
    const-string v2, "DR"

    .line 18
    const-string v3, "AmapAutoService convertJson2LocW4MInfo jsonInfo = {?}"

    .line 20
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 25
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "VRL"

    .line 30
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 33
    move-result-wide v2

    .line 34
    double-to-float v0, v2

    .line 35
    const-string v2, "VRR"

    .line 37
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 40
    move-result-wide v2

    .line 41
    double-to-float v2, v2

    .line 42
    const-string v3, "VFL"

    .line 44
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 47
    move-result-wide v3

    .line 48
    double-to-float v3, v3

    .line 49
    const-string v4, "VFR"

    .line 51
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 54
    move-result-wide v4

    .line 55
    double-to-float v4, v4

    .line 56
    const-string v5, "steerAngle"

    .line 58
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 61
    move-result-wide v5

    .line 62
    double-to-float v5, v5

    .line 63
    const-string v6, "yawRate"

    .line 65
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 68
    move-result-wide v6

    .line 69
    double-to-float v6, v6

    .line 70
    const-string v7, "lonAcc"

    .line 72
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 75
    move-result-wide v7

    .line 76
    double-to-float v7, v7

    .line 77
    const-string v8, "latAcc"

    .line 79
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 82
    move-result-wide v8

    .line 83
    double-to-float v8, v8

    .line 84
    const-string v9, "gearState"

    .line 86
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 89
    move-result v27

    .line 90
    const-string v9, "interval"

    .line 92
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 95
    move-result v28

    .line 96
    const-string v9, "tickTime"

    .line 98
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    move-result-wide v29

    .line 105
    invoke-static {}, Lrv;->H()Lrv;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lrv;->I()Lxy;

    .line 112
    move-result-object v10

    .line 113
    if-nez v10, :cond_1

    .line 115
    return-void

    .line 116
    :cond_1
    float-to-double v11, v0

    .line 117
    float-to-double v13, v2

    .line 118
    float-to-double v0, v3

    .line 119
    move-wide v15, v0

    .line 120
    float-to-double v0, v4

    .line 121
    move-wide/from16 v17, v0

    .line 123
    float-to-double v0, v5

    .line 124
    move-wide/from16 v19, v0

    .line 126
    float-to-double v0, v6

    .line 127
    move-wide/from16 v21, v0

    .line 129
    float-to-double v0, v7

    .line 130
    move-wide/from16 v23, v0

    .line 132
    float-to-double v0, v8

    .line 133
    move-wide/from16 v25, v0

    .line 135
    invoke-interface/range {v10 .. v30}, Lgr;->q(DDDDDDDDIIJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :goto_0
    return-void
.end method

.method public n()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 9

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 12
    move-result-object v0

    .line 13
    const v2, 0x4000000a    # 2.0000024f

    .line 16
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->j(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v4, v3, [Ljava/lang/Object;

    .line 23
    const/4 v5, 0x0

    .line 24
    aput-object v0, v4, v5

    .line 26
    const-string v6, "DR"

    .line 28
    const-string v7, "AmapAutoService getMountAngleInfo json = {?}"

    .line 30
    invoke-static {v6, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    const/16 v7, 0xa

    .line 42
    if-ge v4, v7, :cond_2

    .line 44
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->j(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 68
    return-object v1

    .line 69
    :cond_3
    new-array v2, v3, [Ljava/lang/Object;

    .line 71
    aput-object v0, v2, v5

    .line 73
    const-string v3, "AmapAutoService getMountAngleInfo end json = {?}"

    .line 75
    invoke-static {v6, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 80
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v0, "hasMountAngle"

    .line 85
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 88
    move-result v0

    .line 89
    const-string v3, "yawMountAngle"

    .line 91
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 94
    move-result-wide v3

    .line 95
    const-string v5, "pitchMountAngle"

    .line 97
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 100
    move-result-wide v5

    .line 101
    const-string v7, "rollMountAngle"

    .line 103
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 106
    move-result-wide v7

    .line 107
    new-instance v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 109
    invoke-direct {v2}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    iput-boolean v0, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 114
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 116
    iput-wide v5, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 118
    iput-wide v7, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    goto :goto_3

    .line 121
    :catch_0
    move-exception v0

    .line 122
    move-object v1, v2

    .line 123
    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    .line 125
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    move-object v2, v1

    .line 129
    :goto_3
    return-object v2
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbk;->v()V

    .line 4
    iget-boolean v0, p0, Lbk;->h:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v1, Lbk$b;

    .line 12
    invoke-direct {v1, p0, p1}, Lbk$b;-><init>(Lbk;Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lbk;->g(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbk;->v()V

    .line 4
    iget-boolean v0, p0, Lbk;->h:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v1, Lbk$f;

    .line 12
    invoke-direct {v1, p0, p1}, Lbk$f;-><init>(Lbk;Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-static {}, Lrv;->H()Lrv;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Lgr;->i(Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    .line 44
    const-string v0, "DR"

    .line 46
    const-string v1, "DR JNIContext.getInstance().getLocator()=null"

    .line 48
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_0
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbk;->v()V

    .line 4
    iget-boolean v0, p0, Lbk;->h:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v1, Lbk$g;

    .line 12
    invoke-direct {v1, p0, p1}, Lbk$g;-><init>(Lbk;Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lbk;->h(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbk;->v()V

    .line 4
    iget-boolean v0, p0, Lbk;->h:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v1, Lbk$e;

    .line 12
    invoke-direct {v1, p0, p1}, Lbk$e;-><init>(Lbk;Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lbk;->i(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "DR"

    .line 9
    const-string v2, "AmapAutoService handlerLocGyro value = {?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lbk;->v()V

    .line 17
    iget-boolean v0, p0, Lbk;->h:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 23
    new-instance v1, Lbk$a;

    .line 25
    invoke-direct {v1, p0, p1}, Lbk$a;-><init>(Lbk;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lbk;->j(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "DR"

    .line 9
    const-string v2, "AmapAutoService handlerLocPulse value = {?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lbk;->v()V

    .line 17
    iget-boolean v0, p0, Lbk;->h:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 23
    new-instance v1, Lbk$c;

    .line 25
    invoke-direct {v1, p0, p1}, Lbk$c;-><init>(Lbk;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lbk;->k(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbk;->v()V

    .line 4
    iget-boolean v0, p0, Lbk;->h:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v1, Lbk$d;

    .line 12
    invoke-direct {v1, p0, p1}, Lbk$d;-><init>(Lbk;Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lbk;->l(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lbk;->a:Ljava/util/concurrent/ExecutorService;

    .line 11
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lzm;->g()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v2, v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iput-boolean v0, p0, Lbk;->e:Z

    .line 28
    invoke-static {}, Lai;->e()Z

    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lbk;->g:Z

    .line 34
    invoke-static {}, Lse;->c()Lse;

    .line 37
    move-result-object v0

    .line 38
    const/16 v3, 0x272a

    .line 40
    invoke-virtual {v0, v3}, Lse;->getBooleanValue(I)Z

    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lbk;->h:Z

    .line 46
    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    iget-boolean v3, p0, Lbk;->e:Z

    .line 51
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object v3

    .line 55
    aput-object v3, v0, v1

    .line 57
    iget-boolean v1, p0, Lbk;->g:Z

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    move-result-object v1

    .line 63
    aput-object v1, v0, v2

    .line 65
    const-string v1, "initThreadPool"

    .line 67
    const-string v2, "mIsBackFusion={?},isModeBackFusionPlayback={?}"

    .line 69
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_1
    return-void
.end method

.method public w(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->j(I)Ljava/lang/String;

    .line 15
    return-void
.end method

.method public x(ILjava/lang/String;)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    :pswitch_0
    goto/16 :goto_4

    .line 6
    :pswitch_1
    invoke-virtual {p0, p2}, Lbk;->u(Ljava/lang/String;)V

    .line 9
    goto/16 :goto_4

    .line 11
    :pswitch_2
    invoke-virtual {p0, p2}, Lbk;->t(Ljava/lang/String;)V

    .line 14
    goto/16 :goto_4

    .line 16
    :pswitch_3
    invoke-virtual {p0, p2}, Lbk;->o(Ljava/lang/String;)V

    .line 19
    goto :goto_4

    .line 20
    :pswitch_4
    invoke-virtual {p0, p2}, Lbk;->s(Ljava/lang/String;)V

    .line 23
    goto :goto_4

    .line 24
    :pswitch_5
    invoke-virtual {p0, p2}, Lbk;->q(Ljava/lang/String;)V

    .line 27
    goto :goto_4

    .line 28
    :pswitch_6
    invoke-virtual {p0, p2}, Lbk;->r(Ljava/lang/String;)V

    .line 31
    goto :goto_4

    .line 32
    :pswitch_7
    iget-boolean p1, p0, Lbk;->e:Z

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iget-boolean p1, p0, Lbk;->g:Z

    .line 38
    if-eqz p1, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p2}, Lbk;->u(Ljava/lang/String;)V

    .line 44
    goto :goto_4

    .line 45
    :cond_1
    :goto_0
    return-void

    .line 46
    :pswitch_8
    iget-boolean p1, p0, Lbk;->e:Z

    .line 48
    if-eqz p1, :cond_3

    .line 50
    iget-boolean p1, p0, Lbk;->g:Z

    .line 52
    if-eqz p1, :cond_2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0, p2}, Lbk;->t(Ljava/lang/String;)V

    .line 58
    goto :goto_4

    .line 59
    :cond_3
    :goto_1
    return-void

    .line 60
    :pswitch_9
    iget-boolean p1, p0, Lbk;->e:Z

    .line 62
    if-eqz p1, :cond_5

    .line 64
    iget-boolean p1, p0, Lbk;->g:Z

    .line 66
    if-eqz p1, :cond_4

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {p0, p2}, Lbk;->o(Ljava/lang/String;)V

    .line 72
    goto :goto_4

    .line 73
    :cond_5
    :goto_2
    return-void

    .line 74
    :pswitch_a
    iget-boolean p1, p0, Lbk;->f:Z

    .line 76
    if-nez p1, :cond_6

    .line 78
    iget-boolean p1, p0, Lbk;->g:Z

    .line 80
    if-nez p1, :cond_6

    .line 82
    invoke-static {}, Lzx;->h()Lzx;

    .line 85
    move-result-object p1

    .line 86
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-virtual {p1, v1, v0}, Lzx;->d(II)V

    .line 91
    iput-boolean v1, p0, Lbk;->f:Z

    .line 93
    :cond_6
    iget-boolean p1, p0, Lbk;->e:Z

    .line 95
    if-eqz p1, :cond_8

    .line 97
    iget-boolean p1, p0, Lbk;->g:Z

    .line 99
    if-eqz p1, :cond_7

    .line 101
    goto :goto_3

    .line 102
    :cond_7
    invoke-virtual {p0, p2}, Lbk;->s(Ljava/lang/String;)V

    .line 105
    goto :goto_4

    .line 106
    :cond_8
    :goto_3
    return-void

    .line 107
    :pswitch_b
    invoke-virtual {p0, p2}, Lbk;->p(Ljava/lang/String;)V

    .line 110
    :goto_4
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x40000005
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
