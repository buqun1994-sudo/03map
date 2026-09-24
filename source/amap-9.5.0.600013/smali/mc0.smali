.class public abstract Lmc0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;->totalQuick:I

    .line 8
    const-string v2, "total_quick"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-string v1, "idel_quick"

    .line 15
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;->idleQuick:I

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v1, "total_slow"

    .line 22
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;->totalSlow:I

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string v1, "idel_slow"

    .line 29
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;->idleSlow:I

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v1, "brand_desc"

    .line 36
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;->brand_desc:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "cscf_type"

    .line 43
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;->cscf_type:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    return-object v0
.end method

.method public static b(Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    const-string v2, "city_suggestion_name"

    .line 12
    iget-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;->cityname:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v2, "city_suggestion_num"

    .line 19
    iget p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;->citynum:I

    .line 21
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    const-string v3, "SearchUtils"

    .line 35
    invoke-static {v3, v1, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    return-object v0
.end method

.method public static c(Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    const-string v2, "city_suggestion_name"

    .line 12
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v2, "city_suggestion_num"

    .line 19
    iget p0, p0, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;->b:I

    .line 21
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    const-string v3, "SearchUtils"

    .line 35
    invoke-static {v3, v1, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    return-object v0
.end method

.method public static d(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    const-string v2, "tag"

    .line 12
    iget-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->tag:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v2, "category"

    .line 19
    iget v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->category:I

    .line 21
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->getParkinfo()Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;

    .line 27
    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const-string v3, "taginfo"

    .line 30
    if-eqz v2, :cond_1

    .line 32
    :try_start_1
    invoke-static {v2}, Lmc0;->n(Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;)Lorg/json/JSONObject;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->getTaginfoList()Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_2

    .line 45
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 48
    move-result v4

    .line 49
    if-lez v4, :cond_2

    .line 51
    invoke-static {v2}, Lmc0;->l(Ljava/util/List;)Lorg/json/JSONArray;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->chargeInfo:Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;

    .line 60
    if-eqz p0, :cond_3

    .line 62
    invoke-static {p0}, Lmc0;->a(Lcom/autonavi/amapauto/jni/protocol/data/ChargeInfoData;)Lorg/json/JSONObject;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :cond_3
    return-object v1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x0

    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    const-string v3, "SearchUtils"

    .line 80
    invoke-static {v3, v1, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 83
    return-object v0
.end method

.method public static e(Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    const-string v2, "tag"

    .line 12
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v2, "category"

    .line 19
    iget v3, p0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->b:I

    .line 21
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->a:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 32
    new-instance v2, Lorg/json/JSONTokener;

    .line 34
    iget-object p0, p0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->a:Ljava/lang/String;

    .line 36
    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    instance-of v2, p0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v3, "taginfo"

    .line 47
    if-eqz v2, :cond_1

    .line 49
    :try_start_1
    check-cast p0, Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    instance-of v2, p0, Lorg/json/JSONArray;

    .line 57
    if-eqz v2, :cond_2

    .line 59
    check-cast p0, Lorg/json/JSONArray;

    .line 61
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :cond_2
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x0

    .line 71
    new-array v2, v2, [Ljava/lang/Object;

    .line 73
    const-string v3, "SearchUtils"

    .line 75
    invoke-static {v3, v1, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 78
    return-object v0
.end method

.method public static f(ILcom/autonavi/amapauto/jni/protocol/data/SearchResultData;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "EXTRA_SEARCH_ALONG_THE_WAY"

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "SEARCH_RESULT_CODE"

    .line 6
    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    invoke-static {p0}, Lmc0;->i(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 32
    move-result v3

    .line 33
    if-gtz v3, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 45
    move-result v3

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x0

    .line 51
    aput-object v3, v1, v4

    .line 53
    const-string v3, "SearchUtils"

    .line 55
    const-string v5, "poi list size:{?}"

    .line 57
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Lmc0;->j(ILjava/util/List;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_0
    invoke-static {p1}, Lcc;->A(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)I

    .line 78
    move-result p1

    .line 79
    const/4 v3, 0x2

    .line 80
    if-ne p1, v3, :cond_3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move v1, p1

    .line 84
    :goto_1
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-static {p0}, Lmc0;->i(I)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :goto_2
    return-void
.end method

.method public static g(ILcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;ILandroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "EXTRA_SEARCH_ALONG_THE_WAY"

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "SEARCH_RESULT_CODE"

    .line 6
    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    invoke-static {p0}, Lmc0;->i(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;->r()Lcom/autonavi/amapauto/protocol/data/PoiResult;

    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;->r()Lcom/autonavi/amapauto/protocol/data/PoiResult;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/data/PoiResult;->r()Ljava/util/List;

    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;->r()Lcom/autonavi/amapauto/protocol/data/PoiResult;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/data/PoiResult;->r()Ljava/util/List;

    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 46
    move-result v3

    .line 47
    if-gtz v3, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/data/RspAlongWaySearchData;->r()Lcom/autonavi/amapauto/protocol/data/PoiResult;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/data/PoiResult;->r()Ljava/util/List;

    .line 57
    move-result-object p1

    .line 58
    new-array p2, v1, [Ljava/lang/Object;

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v1

    .line 68
    const/4 v3, 0x0

    .line 69
    aput-object v1, p2, v3

    .line 71
    const-string v1, "SearchUtils"

    .line 73
    const-string v4, "poi list size:{?}"

    .line 75
    invoke-static {v1, v4, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {p0, p1}, Lmc0;->h(ILjava/util/List;)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 90
    invoke-static {p2, p1}, Lcc;->B(ILcom/autonavi/amapauto/protocol/data/search/SearchResponseData;)I

    .line 93
    move-result p1

    .line 94
    const/4 p2, 0x2

    .line 95
    if-ne p1, p2, :cond_3

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v1, p1

    .line 99
    :goto_1
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-static {p0}, Lmc0;->i(I)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :goto_2
    return-void
.end method

.method public static h(ILjava/util/List;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "SearchUtils"

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    const-string v3, "search_type"

    .line 11
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    const-string p0, "search_result_size"

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result v3

    .line 20
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    new-instance p0, Lorg/json/JSONArray;

    .line 25
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    move-result v4

    .line 33
    if-ge v3, v4, :cond_0

    .line 35
    new-instance v4, Lorg/json/JSONObject;

    .line 37
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;

    .line 46
    const-string v6, "poi_name"

    .line 48
    iget-object v7, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v6, "poi_distance"

    .line 55
    iget v7, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->c:I

    .line 57
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string v6, "poi_addr"

    .line 62
    iget-object v7, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->b:Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v6, "poi_Longitude"

    .line 69
    iget-wide v7, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->h:D

    .line 71
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v6, "poi_Latitude"

    .line 80
    iget-wide v7, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->g:D

    .line 82
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    iget-object v6, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->i:Ljava/lang/String;

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v6

    .line 97
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    move-result-object v7

    .line 101
    new-array v8, v2, [Ljava/lang/Object;

    .line 103
    invoke-static {v0, v7, v6, v8}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 106
    const/4 v6, 0x0

    .line 107
    :goto_1
    const-string v7, "extra_poitype"

    .line 109
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v6, "entry_longitude"

    .line 114
    iget-wide v7, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->f:D

    .line 116
    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 119
    const-string v6, "entry_latitude"

    .line 121
    iget-wide v7, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->e:D

    .line 123
    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 126
    const-string v6, "poiid"

    .line 128
    iget-object v5, v5, Lcom/autonavi/amapauto/protocol/data/PoiInfo;->d:Ljava/lang/String;

    .line 130
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    const-string p1, "poi_info"

    .line 141
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    goto :goto_2

    .line 145
    :catch_1
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    const/4 v3, 0x1

    .line 151
    new-array v3, v3, [Ljava/lang/Object;

    .line 153
    aput-object p0, v3, v2

    .line 155
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 161
    move-result-object p0

    .line 162
    return-object p0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    const-string v2, "search_type"

    .line 9
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string p0, "search_result_size"

    .line 14
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    const-string p0, "poi_info"

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string p0, "entry_longitude"

    .line 25
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string p0, "entry_latitude"

    .line 30
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x1

    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 42
    aput-object p0, v3, v1

    .line 44
    const-string p0, "SearchUtils"

    .line 46
    invoke-static {p0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static j(ILjava/util/List;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    const-string v2, "search_type"

    .line 9
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string p0, "search_result_size"

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    new-instance p0, Lorg/json/JSONArray;

    .line 23
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_0

    .line 33
    new-instance v3, Lorg/json/JSONObject;

    .line 35
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 38
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 44
    const-string v5, "poi_name"

    .line 46
    iget-object v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v5, "poi_distance"

    .line 53
    iget v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 55
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v5, "poi_addr"

    .line 60
    iget-object v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v5, "poi_Longitude"

    .line 67
    iget-wide v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 69
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v5, "poi_Latitude"

    .line 78
    iget-wide v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 80
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v5, "extra_poitype"

    .line 89
    iget v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 91
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    invoke-static {v3, v4}, La80;->p(Lorg/json/JSONObject;Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V

    .line 97
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const-string p1, "poi_info"

    .line 105
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    const/4 v2, 0x1

    .line 115
    new-array v2, v2, [Ljava/lang/Object;

    .line 117
    aput-object p0, v2, v1

    .line 119
    const-string p0, "SearchUtils"

    .line 121
    invoke-static {p0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method public static k(Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 4
    iget-object v1, p0, Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;->a:Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto :goto_3

    .line 9
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 11
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    iget-object p0, p0, Lcom/autonavi/amapauto/protocol/data/search/SearchResponseData;->a:Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;

    .line 16
    iget-object v2, p0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->b:Ljava/util/List;

    .line 18
    iget-object p0, p0, Lcom/autonavi/amapauto/protocol/data/search/SearchPoiResult;->d:Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;

    .line 20
    if-nez p0, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amapauto/protocol/data/search/Citysuggestion;->b:Ljava/util/List;

    .line 25
    :goto_0
    const/4 p0, 0x0

    .line 26
    if-eqz v0, :cond_3

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_3

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    move-result v2

    .line 38
    :goto_1
    if-ge p0, v2, :cond_5

    .line 40
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;

    .line 46
    invoke-static {v3}, Lmc0;->c(Lcom/autonavi/amapauto/protocol/data/search/SuggestionCityDetail;)Lorg/json/JSONObject;

    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_2

    .line 52
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    if-eqz v2, :cond_5

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 63
    move-result v0

    .line 64
    :goto_2
    if-ge p0, v0, :cond_5

    .line 66
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/autonavi/amapauto/protocol/data/search/Poi;

    .line 72
    invoke-static {v3}, Lmc0;->q(Lcom/autonavi/amapauto/protocol/data/search/Poi;)Lorg/json/JSONObject;

    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_4

    .line 78
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_6
    :goto_3
    return-object v0
.end method

.method public static l(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;

    .line 19
    invoke-static {v2}, Lmc0;->m(Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;)Lorg/json/JSONObject;

    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object v0
.end method

.method public static m(Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "type"

    .line 8
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;->type:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "price"

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;->price:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "pricetag"

    .line 22
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/OilInfoData;->pricetag:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    const-string v2, "SearchUtils"

    .line 38
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static n(Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "parkinginfo"

    .line 8
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;->parkinginfo:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "priceinfo"

    .line 15
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ParkInfoData;->priceinfo:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    const-string v2, "SearchUtils"

    .line 31
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static o(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCityList()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p0, :cond_2

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    move-result v3

    .line 25
    if-lez v3, :cond_2

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 30
    move-result v1

    .line 31
    :goto_0
    if-ge v2, v1, :cond_4

    .line 33
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;

    .line 39
    invoke-static {v3}, Lmc0;->b(Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;)Lorg/json/JSONObject;

    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v1, :cond_4

    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    move-result p0

    .line 57
    :goto_1
    if-ge v2, p0, :cond_4

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 65
    invoke-static {v3}, Lmc0;->p(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)Lorg/json/JSONObject;

    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 74
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static p(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)Lorg/json/JSONObject;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    const-string v3, "poiid"

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v3, "name"

    .line 22
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v3, "address"

    .line 29
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    new-instance v3, Ljava/math/BigDecimal;

    .line 36
    iget-wide v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 38
    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x6

    .line 43
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 50
    move-result-wide v6

    .line 51
    new-instance v3, Ljava/math/BigDecimal;

    .line 53
    iget-wide v8, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 55
    invoke-direct {v3, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 58
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 65
    move-result-wide v8

    .line 66
    const-string v3, "latitude"

    .line 68
    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 71
    const-string v3, "longitude"

    .line 73
    invoke-virtual {v1, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 79
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const-string v6, "entry_longitude"

    .line 82
    const-string v7, "entry_latitude"

    .line 84
    if-eqz v3, :cond_1

    .line 86
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 89
    move-result v8

    .line 90
    if-lez v8, :cond_1

    .line 92
    new-instance v8, Ljava/math/BigDecimal;

    .line 94
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v9

    .line 98
    check-cast v9, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 100
    iget-wide v9, v9, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 102
    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 105
    invoke-virtual {v8, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    .line 112
    move-result-wide v8

    .line 113
    new-instance v10, Ljava/math/BigDecimal;

    .line 115
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 121
    iget-wide v11, v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 123
    invoke-direct {v10, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    .line 126
    invoke-virtual {v10, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 133
    move-result-wide v3

    .line 134
    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {v1, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 140
    goto :goto_0

    .line 141
    :cond_1
    const-wide/16 v3, 0x0

    .line 143
    invoke-virtual {v1, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {v1, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 149
    :goto_0
    const-string v3, "distance"

    .line 151
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 153
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string v3, "tel"

    .line 158
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getTel()Ljava/lang/String;

    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v3, "poitype"

    .line 167
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 169
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v3, "extra_poitype"

    .line 174
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 176
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 186
    move-result-object p0

    .line 187
    if-eqz p0, :cond_2

    .line 189
    const-string v3, "category"

    .line 191
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;->category:I

    .line 193
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v3, "poideepinfo"

    .line 198
    invoke-static {p0}, Lmc0;->d(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)Lorg/json/JSONObject;

    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :cond_2
    return-object v1

    .line 206
    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    new-array v2, v2, [Ljava/lang/Object;

    .line 213
    const-string v3, "SearchUtils"

    .line 215
    invoke-static {v3, v1, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 218
    return-object v0
.end method

.method public static q(Lcom/autonavi/amapauto/protocol/data/search/Poi;)Lorg/json/JSONObject;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    const-string v3, "poiid"

    .line 13
    iget-object v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->l:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v3, "name"

    .line 20
    iget-object v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->c:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v3, "address"

    .line 27
    iget-object v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->i:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    new-instance v3, Ljava/math/BigDecimal;

    .line 34
    iget-wide v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->j:D

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x6

    .line 41
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 48
    move-result-wide v6

    .line 49
    new-instance v3, Ljava/math/BigDecimal;

    .line 51
    iget-wide v8, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->f:D

    .line 53
    invoke-direct {v3, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 56
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 63
    move-result-wide v8

    .line 64
    const-string v3, "latitude"

    .line 66
    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 69
    const-string v3, "longitude"

    .line 71
    invoke-virtual {v1, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 74
    iget-object v3, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->a:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const-string v6, "entry_longitude"

    .line 78
    const-string v7, "entry_latitude"

    .line 80
    if-eqz v3, :cond_1

    .line 82
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 85
    move-result v8

    .line 86
    if-lez v8, :cond_1

    .line 88
    new-instance v8, Ljava/math/BigDecimal;

    .line 90
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;

    .line 96
    iget-wide v9, v9, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;->b:D

    .line 98
    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 101
    invoke-virtual {v8, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    .line 108
    move-result-wide v8

    .line 109
    new-instance v10, Ljava/math/BigDecimal;

    .line 111
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;

    .line 117
    iget-wide v11, v3, Lcom/autonavi/amapauto/protocol/data/search/EnteryList;->a:D

    .line 119
    invoke-direct {v10, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    .line 122
    invoke-virtual {v10, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 129
    move-result-wide v3

    .line 130
    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v1, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 136
    goto :goto_0

    .line 137
    :cond_1
    const-wide/16 v3, 0x0

    .line 139
    invoke-virtual {v1, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v1, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    :goto_0
    const-string v3, "distance"

    .line 147
    iget v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->d:I

    .line 149
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    const-string v3, "tel"

    .line 154
    iget-object v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->k:Ljava/lang/String;

    .line 156
    if-nez v4, :cond_2

    .line 158
    const-string v4, ""

    .line 160
    :cond_2
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v3, "poitype"

    .line 165
    iget v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->m:I

    .line 167
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v3, "extra_poitype"

    .line 172
    iget-object v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->e:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object p0, p0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->b:Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 179
    if-eqz p0, :cond_3

    .line 181
    const-string v3, "category"

    .line 183
    iget v4, p0, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;->b:I

    .line 185
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v3, "poideepinfo"

    .line 190
    invoke-static {p0}, Lmc0;->e(Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;)Lorg/json/JSONObject;

    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :cond_3
    return-object v1

    .line 198
    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    move-result-object v1

    .line 203
    new-array v2, v2, [Ljava/lang/Object;

    .line 205
    const-string v3, "SearchUtils"

    .line 207
    invoke-static {v3, v1, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 210
    return-object v0
.end method
