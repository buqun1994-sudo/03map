.class public abstract Lcc;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/jni/protocol/data/SearchData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    return-void
.end method

.method public static A(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_4

    .line 7
    const/4 p0, 0x2

    .line 8
    if-eq v0, p0, :cond_3

    .line 10
    const/4 v3, 0x4

    .line 11
    if-eq v0, v3, :cond_2

    .line 13
    if-eq v0, v1, :cond_1

    .line 15
    const/16 v1, 0x8

    .line 17
    if-eq v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x3

    .line 21
    goto :goto_3

    .line 22
    :cond_1
    const/4 v1, 0x4

    .line 23
    goto :goto_3

    .line 24
    :cond_2
    const/4 v1, 0x1

    .line 25
    goto :goto_3

    .line 26
    :cond_3
    :goto_0
    const/4 v1, 0x2

    .line 27
    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCityList()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v0, :cond_5

    .line 35
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCityList()Ljava/util/List;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    move-result v0

    .line 43
    if-lez v0, :cond_5

    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_5
    const/4 v0, 0x0

    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_7

    .line 54
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_6

    .line 60
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_6

    .line 70
    goto :goto_2

    .line 71
    :cond_6
    const/4 v2, 0x0

    .line 72
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 74
    if-eqz v2, :cond_8

    .line 76
    goto :goto_3

    .line 77
    :cond_8
    const/4 v1, 0x0

    .line 78
    :goto_3
    return v1
.end method

.method public static B(ILcom/autonavi/amapauto/protocol/data/search/SearchResponseData;)I
    .locals 3

    .line 1
    const/16 v0, 0x2710

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 6
    const/16 p1, 0x2714

    .line 8
    if-eq p0, p1, :cond_1

    .line 10
    const/16 p1, 0x2727

    .line 12
    if-eq p0, p1, :cond_7

    .line 14
    const/16 p1, 0x2723

    .line 16
    if-eq p0, p1, :cond_0

    .line 18
    const/4 v1, 0x2

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    const/4 v1, 0x3

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    const/4 v1, 0x4

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    const/4 p0, 0x0

    .line 25
    if-eqz p1, :cond_6

    .line 27
    :try_start_0
    iget-object v0, p1, Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;->a:Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;

    .line 29
    iget-object v0, v0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->d:Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;

    .line 31
    if-eqz v0, :cond_3

    .line 33
    iget-object v0, v0, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;->b:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_3

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object p1, p1, Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;->a:Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;

    .line 46
    iget-object p1, p1, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->b:Ljava/util/List;

    .line 48
    if-eqz p1, :cond_5

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-nez p1, :cond_4

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/4 v1, 0x0

    .line 58
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 60
    if-eqz v1, :cond_6

    .line 62
    const/4 p0, 0x5

    .line 63
    const/4 v1, 0x5

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception p1

    .line 66
    const-string v0, "resultToSearchCode Exception : "

    .line 68
    new-array v1, p0, [Ljava/lang/Object;

    .line 70
    const-string v2, "BaseAutoSearchAction"

    .line 72
    invoke-static {v2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 75
    :cond_6
    const/4 v1, 0x0

    .line 76
    :cond_7
    :goto_2
    return v1
.end method


# virtual methods
.method public d()V
    .locals 13

    .line 1
    const/16 v0, 0xe

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v1, v0, v3

    .line 23
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 26
    move-result-object v1

    .line 27
    iget-wide v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    move-result-object v1

    .line 33
    const/4 v4, 0x2

    .line 34
    aput-object v1, v0, v4

    .line 36
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 39
    move-result-object v1

    .line 40
    iget-wide v5, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    move-result-object v1

    .line 46
    const/4 v5, 0x3

    .line 47
    aput-object v1, v0, v5

    .line 49
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 52
    move-result-object v1

    .line 53
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->style:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    const/4 v6, 0x4

    .line 60
    aput-object v1, v0, v6

    .line 62
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 65
    move-result-object v1

    .line 66
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v1

    .line 72
    const/4 v7, 0x5

    .line 73
    aput-object v1, v0, v7

    .line 75
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 78
    move-result-object v1

    .line 79
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->city:Ljava/lang/String;

    .line 81
    const/4 v8, 0x6

    .line 82
    aput-object v1, v0, v8

    .line 84
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 87
    move-result-object v1

    .line 88
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v1

    .line 94
    const/4 v9, 0x7

    .line 95
    aput-object v1, v0, v9

    .line 97
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 100
    move-result-object v1

    .line 101
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v1

    .line 107
    const/16 v10, 0x8

    .line 109
    aput-object v1, v0, v10

    .line 111
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 114
    move-result-object v1

    .line 115
    iget-wide v11, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D

    .line 117
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 120
    move-result-object v1

    .line 121
    const/16 v11, 0x9

    .line 123
    aput-object v1, v0, v11

    .line 125
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 128
    move-result-object v1

    .line 129
    iget-wide v11, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    .line 131
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 134
    move-result-object v1

    .line 135
    const/16 v11, 0xa

    .line 137
    aput-object v1, v0, v11

    .line 139
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 142
    move-result-object v1

    .line 143
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v1

    .line 149
    const/16 v11, 0xb

    .line 151
    aput-object v1, v0, v11

    .line 153
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 156
    move-result-object v1

    .line 157
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v1

    .line 163
    const/16 v11, 0xc

    .line 165
    aput-object v1, v0, v11

    .line 167
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 170
    move-result-object v1

    .line 171
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v1

    .line 177
    const/16 v11, 0xd

    .line 179
    aput-object v1, v0, v11

    .line 181
    const-string v1, "BaseAutoSearchAction"

    .line 183
    const-string v11, "appname={?} keyword={?} lat={?} lon={?} style={?} dev={?} city={?} maxCount={?} radius={?} centerLat={?} centerLon={?} sortOrder={?} searchType={?} requestType={?}"

    .line 185
    invoke-static {v1, v11, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lnc;->i()I

    .line 195
    move-result v11

    .line 196
    iput v11, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestId:I

    .line 198
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 201
    move-result-object v0

    .line 202
    new-array v10, v10, [Ljava/lang/Object;

    .line 204
    iget v11, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needClassify:I

    .line 206
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    move-result-object v11

    .line 210
    aput-object v11, v10, v2

    .line 212
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needSort:I

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    move-result-object v2

    .line 218
    aput-object v2, v10, v3

    .line 220
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needRange:I

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v2

    .line 226
    aput-object v2, v10, v4

    .line 228
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needCharge:I

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    move-result-object v2

    .line 234
    aput-object v2, v10, v5

    .line 236
    iget v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needChildPoi:I

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    move-result-object v2

    .line 242
    aput-object v2, v10, v6

    .line 244
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->classify:Ljava/lang/String;

    .line 246
    aput-object v2, v10, v7

    .line 248
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sort:Ljava/lang/String;

    .line 250
    aput-object v2, v10, v8

    .line 252
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->range:Ljava/lang/String;

    .line 254
    aput-object v2, v10, v9

    .line 256
    const-string v2, "doAction() SearchData:{needClassify={?}, needSort={?}, needRange={?}, needCharge={?}, needChildPoi={?}, classify={?}, sort={?}, range={?}}"

    .line 258
    invoke-static {v1, v2, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Lib;->h()Z

    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0, v0}, Lcc;->z(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 274
    goto :goto_0

    .line 275
    :cond_0
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSearch(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;)V

    .line 278
    :goto_0
    return-void
.end method

.method public x()Landroid/content/Intent;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "SEARCH_RESULT_CODE"

    .line 12
    if-nez v1, :cond_0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-boolean v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 21
    const-string v4, "EXTRA_RESULT"

    .line 23
    if-eqz v3, :cond_1

    .line 25
    iget-object v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    move-result-object v3

    .line 31
    :try_start_0
    const-class v5, Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;

    .line 33
    invoke-static {v3, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;
    :try_end_0
    .catch Liw; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    invoke-static {v3}, Lmc0;->k(Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;)Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 54
    invoke-static {v1, v3}, Lcc;->B(ILcom/autonavi/amapauto/protocol/data/search/SearchResponseData;)I

    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 68
    invoke-static {v1}, Lmc0;->o(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-static {v1}, Lcc;->A(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)I

    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method public y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc;->k:Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;-><init>()V

    .line 10
    iput-object v0, p0, Lcc;->k:Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 12
    :cond_0
    iget-object v0, p0, Lcc;->k:Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 14
    return-object v0
.end method

.method public final z(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchCenter:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;

    .line 13
    iget-object v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;-><init>(ILjava/lang/String;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    iget-wide v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, ","

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-wide v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D

    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->setLocation(Ljava/lang/String;)V

    .line 45
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 47
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->setSortrule(I)V

    .line 50
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    .line 52
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->setRadius(I)V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;

    .line 58
    const/4 v1, 0x0

    .line 59
    iget-object v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 61
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;-><init>(ILjava/lang/String;)V

    .line 64
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->city:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->setCity(Ljava/lang/String;)V

    .line 69
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 71
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->setSortrule(I)V

    .line 74
    iget-boolean v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->isRecommend:Z

    .line 76
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->setIsRecommend(Z)V

    .line 79
    invoke-virtual {p0}, Lnc;->h()I

    .line 82
    move-result v1

    .line 83
    const/16 v2, 0x765f

    .line 85
    if-ne v2, v1, :cond_1

    .line 87
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 90
    :cond_1
    :goto_0
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    .line 92
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setDev(I)V

    .line 95
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    .line 97
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setMaxMount(I)V

    .line 100
    iget-wide v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setMylocLat(D)V

    .line 105
    iget-wide v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setMylocLon(D)V

    .line 110
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needCharge:I

    .line 112
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedCharge(I)V

    .line 115
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needChildPoi:I

    .line 117
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedChildPoi(I)V

    .line 120
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needRange:I

    .line 122
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedRange(I)V

    .line 125
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needClassify:I

    .line 127
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedClassify(I)V

    .line 130
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needSort:I

    .line 132
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedSort(I)V

    .line 135
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->range:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setRange(Ljava/lang/String;)V

    .line 140
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sort:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setSort(Ljava/lang/String;)V

    .line 145
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->charge:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setCharge(Ljava/lang/String;)V

    .line 150
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->classify:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setClassify(Ljava/lang/String;)V

    .line 155
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setRequestType(I)V

    .line 160
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 165
    return-object v0

    .line 166
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;

    .line 168
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;-><init>()V

    .line 171
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->setKeyWord(Ljava/lang/String;)V

    .line 176
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    .line 178
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->setMaxCount(I)V

    .line 181
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    .line 183
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->setRadius(I)V

    .line 186
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchCenter:I

    .line 188
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->setSearchCenter(I)V

    .line 191
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 193
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->setSortrule(I)V

    .line 196
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 201
    return-object v0
.end method
