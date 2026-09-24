.class public abstract Lew;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lew;->b(ILcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;IZ)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b(ILcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;IZ)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;-><init>()V

    .line 6
    iput p2, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->requestId:I

    .line 8
    new-instance v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 10
    invoke-direct {v1}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;-><init>()V

    .line 13
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 15
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 18
    move-result v2

    .line 19
    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 21
    iget-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 23
    const/16 v2, 0xc8

    .line 25
    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->statusCode:I

    .line 27
    iput-boolean p3, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->needResponse:Z

    .line 29
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object p3

    .line 33
    iget-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 35
    if-nez p3, :cond_0

    .line 37
    const-string p3, ""

    .line 39
    :cond_0
    iput-object p3, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestAuthor:Ljava/lang/String;

    .line 41
    if-nez p0, :cond_1

    .line 43
    const-string p0, "request"

    .line 45
    iput-object p0, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p3, 0x1

    .line 49
    if-ne p3, p0, :cond_2

    .line 51
    const-string p0, "response"

    .line 53
    iput-object p0, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 p3, 0x2

    .line 57
    if-ne p3, p0, :cond_3

    .line 59
    const-string p0, "dispatch"

    .line 61
    iput-object p0, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 p3, 0x3

    .line 65
    if-ne p3, p0, :cond_4

    .line 67
    const-string p0, "requestsync"

    .line 69
    iput-object p0, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 71
    :cond_4
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    iput-object p0, v1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 77
    iget-object p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 79
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->data:Lorg/json/JSONObject;

    .line 85
    iget-object p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 87
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->toJsonString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    iput-object p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 93
    new-instance p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

    .line 95
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;-><init>()V

    .line 98
    iput-object p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonResult:Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

    .line 100
    const/16 p1, 0x2710

    .line 102
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;->resultCode:I

    .line 104
    return-object v0
.end method

.method public static c(Li2$a;)Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;-><init>()V

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget-object v1, p0, Li2$a;->a:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Li2$a;->b:Ljava/lang/String;

    .line 14
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->responseCode:Ljava/lang/String;

    .line 16
    iget-boolean v1, p0, Li2$a;->c:Z

    .line 18
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->needResponse:Z

    .line 20
    iget v1, p0, Li2$a;->d:I

    .line 22
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 24
    iget-object v1, p0, Li2$a;->e:Ljava/lang/String;

    .line 26
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->versionName:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Li2$a;->f:Ljava/lang/String;

    .line 30
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestAuthor:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Li2$a;->g:Ljava/lang/String;

    .line 34
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->message:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Li2$a;->h:Ljava/lang/String;

    .line 38
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 40
    iget p0, p0, Li2$a;->i:I

    .line 42
    iput p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->statusCode:I

    .line 44
    :cond_0
    return-object v0
.end method

.method public static d(Li2$a;IZ)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;-><init>()V

    .line 6
    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->requestId:I

    .line 8
    invoke-static {p0}, Lew;->c(Li2$a;)Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 14
    iput-boolean p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->needResponse:Z

    .line 16
    new-instance p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

    .line 18
    invoke-direct {p1}, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;-><init>()V

    .line 21
    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonResult:Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

    .line 23
    const/16 p2, 0x2710

    .line 25
    iput p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;->resultCode:I

    .line 27
    invoke-virtual {p0}, Li2$a;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    iput-object p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 33
    return-object v0
.end method

.method public static e(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 30
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lew;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    new-array v4, v4, [Ljava/lang/Object;

    .line 50
    const-string v5, "JsonBuilderUtils"

    .line 52
    invoke-static {v5, v3, v2, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;
    .locals 6

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 9
    move-result-object p0

    .line 10
    const-string v1, "trafficLaneEnabled"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->isEnable:Z

    .line 18
    const-string v1, "trafficLaneSize"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 23
    move-result v1

    .line 24
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->size:I

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-string v2, "trafficLaneInfos"

    .line 33
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 42
    move-result v2

    .line 43
    if-lez v2, :cond_0

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 49
    move-result v3

    .line 50
    if-ge v2, v3, :cond_0

    .line 52
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 55
    move-result-object v3

    .line 56
    new-instance v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;

    .line 58
    invoke-direct {v4}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;-><init>()V

    .line 61
    const-string v5, "trafficLaneNo"

    .line 63
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 66
    move-result v5

    .line 67
    iput v5, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->number:I

    .line 69
    const-string v5, "trafficLaneIcon"

    .line 71
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 74
    move-result v5

    .line 75
    iput v5, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->laneBackIcon:I

    .line 77
    const-string v5, "trafficLaneExtended"

    .line 79
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 82
    move-result v5

    .line 83
    iput v5, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->extFlag:I

    .line 85
    const-string v5, "trafficLaneAdvised"

    .line 87
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 90
    move-result v5

    .line 91
    iput-boolean v5, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneAdvised:Z

    .line 93
    const-string v5, "trafficLaneExtendedNew"

    .line 95
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 98
    move-result v5

    .line 99
    iput v5, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneExtendedNew:I

    .line 101
    const-string v5, "trafficLaneType"

    .line 103
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 106
    move-result v3

    .line 107
    iput v3, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneType:I

    .line 109
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->setDrivewayList(Ljava/util/List;)V

    .line 118
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;-><init>()V

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    const-string p0, "data"

    .line 13
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    move-result-object p0

    .line 17
    const-string v1, "protocolParkInfos"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "dialogueType"

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->setDialogType(I)V

    .line 32
    const-string v2, "count"

    .line 34
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 37
    move-result p0

    .line 38
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->setCount(I)V

    .line 41
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 46
    move-result p0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_0
    if-ge v3, p0, :cond_0

    .line 55
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lew;->h(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;->setParkingList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static h(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;-><init>()V

    .line 6
    const-string v1, "index"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->index:I

    .line 14
    const-string v1, "name"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->name:Ljava/lang/String;

    .line 22
    const-string v1, "distance"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->distance:I

    .line 30
    const-string v1, "price"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->price:Ljava/lang/String;

    .line 38
    const-string v1, "latitude"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 43
    move-result-wide v1

    .line 44
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->latitude:D

    .line 46
    const-string v1, "longitude"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 51
    move-result-wide v1

    .line 52
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->longitude:D

    .line 54
    const-string v1, "entry_longitude"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 59
    move-result-wide v1

    .line 60
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->entrylon:D

    .line 62
    const-string v1, "entry_latitude"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->entrylat:D

    .line 70
    const-string v1, "category"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->category:Ljava/lang/String;

    .line 78
    const-string v1, "spacenum"

    .line 80
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 83
    move-result v1

    .line 84
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->spaceNum:I

    .line 86
    const-string v1, "poiid"

    .line 88
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    iput-object p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingItemData;->poiid:Ljava/lang/String;

    .line 94
    return-object v0
.end method

.method public static i(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;-><init>()V

    .line 6
    const-string v1, "number"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->number:I

    .line 14
    const-string v1, "status"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 19
    move-result v1

    .line 20
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->status:I

    .line 22
    const-string v1, "distance"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->distance:I

    .line 30
    const-string v1, "percent"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 35
    move-result-wide v1

    .line 36
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 38
    div-double/2addr v1, v3

    .line 39
    double-to-float v1, v1

    .line 40
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->percent:F

    .line 42
    const-string v1, "travelTime"

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 47
    move-result p0

    .line 48
    iput p0, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;->travelTime:I

    .line 50
    return-object v0
.end method

.method public static j(Ljava/lang/String;)Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;-><init>()V

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    const-string p0, "data"

    .line 13
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    move-result-object p0

    .line 17
    const-string v1, "tmcEnabled"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v1, v3, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    :goto_0
    iput-boolean v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->isTmcEnabled:Z

    .line 31
    const-string v1, "size"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 36
    move-result v1

    .line 37
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->size:I

    .line 39
    const-string v1, "totalDistance"

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 44
    move-result v1

    .line 45
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->totalDistance:I

    .line 47
    const-string v1, "remainDistance"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 52
    move-result v1

    .line 53
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->resiDistance:I

    .line 55
    const-string v1, "finishDistance"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 60
    move-result v1

    .line 61
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->finishDstance:I

    .line 63
    const-string v1, "tmcInfoList"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_2

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 74
    move-result v1

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    :goto_1
    if-ge v2, v1, :cond_1

    .line 82
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 85
    move-result-object v4

    .line 86
    invoke-static {v4}, Lew;->i(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/TmcInfoData;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->setTmcinfos(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 16
    move-result v0

    .line 17
    new-instance v1, Lorg/json/JSONArray;

    .line 19
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lew;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v1
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    .line 8
    if-nez v0, :cond_9

    .line 10
    instance-of v0, p0, Lorg/json/JSONObject;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    goto/16 :goto_1

    .line 16
    :cond_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 24
    return-object p0

    .line 25
    :cond_2
    :try_start_0
    instance-of v0, p0, Ljava/util/Collection;

    .line 27
    if-eqz v0, :cond_3

    .line 29
    new-instance v0, Lorg/json/JSONArray;

    .line 31
    check-cast p0, Ljava/util/Collection;

    .line 33
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 36
    return-object v0

    .line 37
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 47
    invoke-static {p0}, Lew;->k(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    .line 54
    if-eqz v0, :cond_5

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    .line 58
    check-cast p0, Ljava/util/Map;

    .line 60
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 63
    return-object v0

    .line 64
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 66
    if-nez v0, :cond_7

    .line 68
    instance-of v0, p0, Ljava/lang/Byte;

    .line 70
    if-nez v0, :cond_7

    .line 72
    instance-of v0, p0, Ljava/lang/Character;

    .line 74
    if-nez v0, :cond_7

    .line 76
    instance-of v0, p0, Ljava/lang/Double;

    .line 78
    if-nez v0, :cond_7

    .line 80
    instance-of v0, p0, Ljava/lang/Float;

    .line 82
    if-nez v0, :cond_7

    .line 84
    instance-of v0, p0, Ljava/lang/Integer;

    .line 86
    if-nez v0, :cond_7

    .line 88
    instance-of v0, p0, Ljava/lang/Long;

    .line 90
    if-nez v0, :cond_7

    .line 92
    instance-of v0, p0, Ljava/lang/Short;

    .line 94
    if-nez v0, :cond_7

    .line 96
    instance-of v0, p0, Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_6

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    const-string v1, "java."

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_8

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_7
    :goto_0
    return-object p0

    .line 126
    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    const/4 v1, 0x0

    .line 132
    new-array v1, v1, [Ljava/lang/Object;

    .line 134
    const-string v2, "JsonBuilderUtils"

    .line 136
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 139
    :cond_8
    const/4 p0, 0x0

    .line 140
    :cond_9
    :goto_1
    return-object p0
.end method
