.class public Li10;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;


# instance fields
.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Li10;->d:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Li10;->e:Ljava/lang/String;

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "MessageComponentDiaptachAction"

    .line 20
    const-string v2, "setTrafficRestrictData pareseToIntent mStatus = {?} mMessage = {?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 27
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    const-string v1, "KEY_TYPE"

    .line 32
    const/16 v2, 0x32cc

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string v1, "MESSAGE_COMPONENT_SHOW_OR_DISMISS"

    .line 39
    iget v2, p0, Li10;->d:I

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v1, "MESSAGE_COMPONENT_RESULT"

    .line 46
    iget-object v2, p0, Li10;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method public g(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Li10;->d:I

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    .line 6
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_0
    const-string v2, "MESSAGE_COMPONENT_TYPE"

    .line 11
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v2, "exception:"

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    const-string v3, "MessageComponentDiaptachAction"

    .line 22
    invoke-static {v3, v2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Li10;->e:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public h(Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;)V
    .locals 9

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 20
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 23
    const-string v3, "MESSAGE_COMPONENT_TYPE"

    .line 25
    const/4 v4, 0x4

    .line 26
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string v3, "HOME_COMPANY_RESULT"

    .line 31
    iget v4, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->type:I

    .line 33
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    iget-boolean v3, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->isPrediction:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const-string v4, ""

    .line 40
    const/4 v5, 0x1

    .line 41
    const/4 v6, 0x0

    .line 42
    if-eqz v3, :cond_1

    .line 44
    :try_start_1
    iget v3, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->type:I

    .line 46
    if-nez v3, :cond_0

    .line 48
    sget v3, Ld90;->g:I

    .line 50
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    if-ne v3, v5, :cond_3

    .line 57
    sget v3, Ld90;->f:I

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v3, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->type:I

    .line 66
    if-nez v3, :cond_2

    .line 68
    sget v3, Ld90;->b:I

    .line 70
    new-array v7, v5, [Ljava/lang/Object;

    .line 72
    iget-object v8, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->strEta:Ljava/lang/String;

    .line 74
    aput-object v8, v7, v6

    .line 76
    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-ne v3, v5, :cond_3

    .line 83
    sget v3, Ld90;->a:I

    .line 85
    new-array v7, v5, [Ljava/lang/Object;

    .line 87
    iget-object v8, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->strEta:Ljava/lang/String;

    .line 89
    aput-object v8, v7, v6

    .line 91
    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move-object v3, v4

    .line 97
    :goto_0
    const-string v7, "MESSAGE_COMPONENT_RESULT"

    .line 99
    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-static {}, Lzm;->d()Lzm;

    .line 105
    move-result-object v3

    .line 106
    sget-object v7, Lzm;->x:Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v7, v6}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_6

    .line 114
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->routeTMCSegmentData:[Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 116
    array-length v2, p1

    .line 117
    const/4 v3, 0x0

    .line 118
    :goto_1
    if-ge v6, v2, :cond_5

    .line 120
    aget-object v5, p1, v6

    .line 122
    iget v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 124
    if-ge v3, v5, :cond_4

    .line 126
    move v3, v5

    .line 127
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    sget p1, Lk80;->a:I

    .line 132
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    array-length v0, p1

    .line 137
    if-ge v3, v0, :cond_9

    .line 139
    aget-object v4, p1, v3

    .line 141
    goto :goto_3

    .line 142
    :cond_6
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/HomeCompanyDispatchData;->routeTMCSegmentData:[Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    const-string v0, "MessageComponentDiaptachAction"

    .line 146
    if-eqz p1, :cond_7

    .line 148
    :try_start_2
    const-string v3, "setHomeCompanyData tmcSegmentData length:{?}"

    .line 150
    new-array v4, v5, [Ljava/lang/Object;

    .line 152
    array-length v5, p1

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v5

    .line 157
    aput-object v5, v4, v6

    .line 159
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :goto_2
    array-length v0, p1

    .line 163
    if-ge v6, v0, :cond_8

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    .line 167
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    aget-object v3, p1, v6

    .line 172
    const-string v4, "tmc_segment_number"

    .line 174
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->number:I

    .line 176
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    const-string v4, "tmc_status"

    .line 181
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 183
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v4, "tmc_percent"

    .line 188
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->percent:F

    .line 190
    float-to-double v7, v3

    .line 191
    invoke-virtual {v0, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    add-int/lit8 v6, v6, 0x1

    .line 199
    goto :goto_2

    .line 200
    :cond_7
    const-string p1, "homeCompanyData.routeTMCSegmentData is null"

    .line 202
    new-array v3, v6, [Ljava/lang/Object;

    .line 204
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 210
    move-result-object v4

    .line 211
    :cond_9
    :goto_3
    const-string p1, "MESSAGE_COMPONENT_TRAFFIC_INFO"

    .line 213
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    goto :goto_4

    .line 217
    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Li10;->e:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public i(Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;)V
    .locals 9

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 20
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 23
    const-string v3, "MESSAGE_COMPONENT_TYPE"

    .line 25
    const/4 v4, 0x4

    .line 26
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string v3, "HOME_COMPANY_RESULT"

    .line 31
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 34
    move-result v4

    .line 35
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->y()Z

    .line 41
    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const-string v4, ""

    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v6, 0x0

    .line 46
    if-eqz v3, :cond_1

    .line 48
    :try_start_1
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 54
    sget v3, Ld90;->g:I

    .line 56
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 64
    move-result v3

    .line 65
    if-ne v3, v5, :cond_3

    .line 67
    sget v3, Ld90;->f:I

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_2

    .line 80
    sget v3, Ld90;->b:I

    .line 82
    new-array v7, v5, [Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->v()Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    aput-object v8, v7, v6

    .line 90
    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 98
    move-result v3

    .line 99
    if-ne v3, v5, :cond_3

    .line 101
    sget v3, Ld90;->a:I

    .line 103
    new-array v7, v5, [Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->v()Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    aput-object v8, v7, v6

    .line 111
    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    move-object v3, v4

    .line 117
    :goto_0
    const-string v7, "MESSAGE_COMPONENT_RESULT"

    .line 119
    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-static {}, Lzm;->d()Lzm;

    .line 125
    move-result-object v3

    .line 126
    sget-object v7, Lzm;->x:Ljava/lang/String;

    .line 128
    invoke-virtual {v3, v7, v6}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_6

    .line 134
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->w()[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 137
    move-result-object p1

    .line 138
    array-length v2, p1

    .line 139
    const/4 v3, 0x0

    .line 140
    :goto_1
    if-ge v6, v2, :cond_5

    .line 142
    aget-object v5, p1, v6

    .line 144
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->t()I

    .line 147
    move-result v7

    .line 148
    if-ge v3, v7, :cond_4

    .line 150
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->t()I

    .line 153
    move-result v3

    .line 154
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    sget p1, Lk80;->a:I

    .line 159
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    array-length v0, p1

    .line 164
    if-ge v3, v0, :cond_9

    .line 166
    aget-object v4, p1, v3

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->w()[Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;

    .line 172
    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    const-string v0, "MessageComponentDiaptachAction"

    .line 175
    if-eqz p1, :cond_7

    .line 177
    :try_start_2
    const-string v3, "setHomeCompanyData tmcSegmentData length:{?}"

    .line 179
    new-array v4, v5, [Ljava/lang/Object;

    .line 181
    array-length v5, p1

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v5

    .line 186
    aput-object v5, v4, v6

    .line 188
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :goto_2
    array-length v0, p1

    .line 192
    if-ge v6, v0, :cond_8

    .line 194
    new-instance v0, Lorg/json/JSONObject;

    .line 196
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 199
    aget-object v3, p1, v6

    .line 201
    const-string v4, "tmc_segment_number"

    .line 203
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->r()I

    .line 206
    move-result v5

    .line 207
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    const-string v4, "tmc_status"

    .line 212
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->t()I

    .line 215
    move-result v5

    .line 216
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v4, "tmc_percent"

    .line 221
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteTMCSegment;->s()F

    .line 224
    move-result v3

    .line 225
    float-to-double v7, v3

    .line 226
    invoke-virtual {v0, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 229
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 232
    add-int/lit8 v6, v6, 0x1

    .line 234
    goto :goto_2

    .line 235
    :cond_7
    const-string p1, "homeCompanyData.routeTMCSegmentData is null"

    .line 237
    new-array v3, v6, [Ljava/lang/Object;

    .line 239
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 245
    move-result-object v4

    .line 246
    :cond_9
    :goto_3
    const-string p1, "MESSAGE_COMPONENT_TRAFFIC_INFO"

    .line 248
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    goto :goto_4

    .line 252
    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 259
    move-result-object p1

    .line 260
    iput-object p1, p0, Li10;->e:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li10;->e:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "MESSAGE_COMPONENT_TYPE"

    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v1, "MESSAGE_COMPONENT_RESULT"

    .line 14
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Li10;->e:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public l(ILjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p2, v0, v1

    .line 14
    const-string v3, "MessageComponentDiaptachAction"

    .line 16
    const-string v4, "setOilNotAvailableData before type = {?}, message = {?}"

    .line 18
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    .line 23
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    :try_start_0
    const-string v4, "MESSAGE_COMPONENT_TYPE"

    .line 28
    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string p1, "MESSAGE_COMPONENT_RESULT"

    .line 33
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Li10;->e:Ljava/lang/String;

    .line 47
    new-array p2, v1, [Ljava/lang/Object;

    .line 49
    aput-object p1, p2, v2

    .line 51
    const-string p1, "setOilNotAvailableData after mMessage = {?}"

    .line 53
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Li10;->d:I

    .line 3
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "MessageComponentDiaptachAction"

    .line 9
    const-string v4, "setTrafficRestrictData before message = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    :try_start_0
    const-string v4, "MESSAGE_COMPONENT_TYPE"

    .line 21
    const/4 v5, 0x5

    .line 22
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v4, "MESSAGE_COMPONENT_RESULT"

    .line 27
    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Li10;->e:Ljava/lang/String;

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    aput-object p1, v0, v2

    .line 45
    const-string p1, "setTrafficRestrictData after mMessage = {?}"

    .line 47
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method
