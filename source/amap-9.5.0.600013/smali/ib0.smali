.class public Lib0;
.super Lpc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpc;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lib0;->o:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 8

    .line 18
    invoke-direct {p0}, Lpc;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lib0;->o:Z

    .line 20
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    move-result-object v0

    const-string v1, "EXTRA_SLAT"

    const-wide/16 v2, 0x0

    .line 21
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slat:D

    const-string v1, "EXTRA_SLON"

    .line 22
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slon:D

    const-string v1, "EXTRA_SNAME"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sname:Ljava/lang/String;

    const-string v1, "EXTRA_DLAT"

    .line 24
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    const-string v1, "EXTRA_DLON"

    .line 25
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    const-string v1, "ENTRY_LAT"

    .line 26
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "ENTRY_LON"

    .line 27
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_0

    cmpl-double v1, v6, v2

    if-eqz v1, :cond_0

    .line 28
    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 29
    iput-wide v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    :cond_0
    const-string v1, "EXTRA_DNAME"

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    const-string v1, "EXTRA_DEV"

    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    const-string v1, "EXTRA_M"

    const/4 v2, -0x1

    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    const-string v1, "EXTRA_NEWMODE"

    const/16 v2, -0x64

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->newStrategy:I

    const-string v1, "EXTRA_POITYPE"

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->poiType:Ljava/lang/String;

    const/4 v1, 0x2

    .line 35
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    const-string v1, "EXTRA_S_POI_ID"

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sPoiId:Ljava/lang/String;

    const-string v1, "EXTRA_D_POI_ID"

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 14

    .line 38
    invoke-direct {p0}, Lpc;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lib0;->o:Z

    .line 40
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    move-result-object v1

    const-string v2, "slat"

    .line 41
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "slon"

    .line 42
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sname"

    .line 43
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sname:Ljava/lang/String;

    const-string v4, "dlat"

    .line 44
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dlon"

    .line 45
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dname"

    .line 46
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    const-string v6, "dev"

    .line 47
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "m"

    .line 48
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "category"

    .line 49
    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->poiType:Ljava/lang/String;

    const-string v8, "sourceApplication"

    .line 50
    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "poiid"

    .line 51
    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "navilon"

    .line 52
    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "navilat"

    .line 53
    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v10, 0x0

    .line 54
    invoke-static {v4, v10, v11}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v12

    iput-wide v12, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 55
    invoke-static {v5, v10, v11}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    .line 56
    invoke-static {v2, v10, v11}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slat:D

    .line 57
    invoke-static {v3, v10, v11}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slon:D

    .line 58
    iput-object v8, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    .line 59
    invoke-static {p1, v10, v11}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->entrylat:D

    .line 60
    invoke-static {v9, v10, v11}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->entrylon:D

    const/4 p1, 0x0

    .line 61
    invoke-static {v6, p1}, Lah;->k(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    .line 62
    invoke-static {v7, p1}, Lah;->k(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    .line 63
    iput-boolean v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->isFromVR:Z

    .line 64
    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lpc;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lib0;->o:Z

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getStartProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    move-result-object v1

    iput-object v1, p0, Lpc;->k:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getMidProtocolPois()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lpc;->l:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getEndProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    move-result-object v1

    iput-object v1, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 8
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getDev()I

    move-result v2

    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getStrategy()I

    move-result v2

    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    .line 11
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getNewStrategy()I

    move-result v2

    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->newStrategy:I

    .line 12
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getActionType()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x3

    goto :goto_0

    .line 13
    :pswitch_1
    iput-boolean v2, p0, Lib0;->o:Z

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 14
    :pswitch_3
    iput-boolean v2, p0, Lib0;->o:Z

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    .line 15
    :goto_0
    :pswitch_5
    iput p1, v1, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    .line 16
    invoke-virtual {p0}, Lib0;->B()V

    .line 17
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final A()Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const-string v4, "[NewProtocol] RoutePlanAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method

.method public final B()V
    .locals 12

    .line 1
    iget-object v0, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 3
    const-string v1, "[NewProtocol] RoutePlanAction"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/16 v0, 0x271e

    .line 10
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 13
    const-string v0, "[requestRouteEx]:end ProtocolPoi can not be empty,please check your param !"

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    .line 24
    move-result-object v0

    .line 25
    iget-object v3, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 27
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 30
    move-result-wide v3

    .line 31
    const-wide/16 v5, 0x0

    .line 33
    cmpl-double v7, v3, v5

    .line 35
    if-nez v7, :cond_1

    .line 37
    iget-object v3, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 39
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 42
    move-result-wide v3

    .line 43
    :cond_1
    iput-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    .line 45
    iget-object v3, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 47
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 50
    move-result-wide v3

    .line 51
    cmpl-double v7, v3, v5

    .line 53
    if-nez v7, :cond_2

    .line 55
    iget-object v3, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 57
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 60
    move-result-wide v3

    .line 61
    :cond_2
    iput-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 63
    iget-object v3, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 65
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    .line 71
    iget-object v3, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 73
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiId()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lpc;->m:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 81
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->v()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->poiType:Ljava/lang/String;

    .line 87
    iget-object v3, p0, Lpc;->k:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 89
    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 94
    move-result-wide v3

    .line 95
    iput-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slon:D

    .line 97
    iget-object v3, p0, Lpc;->k:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 99
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 102
    move-result-wide v3

    .line 103
    iput-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slat:D

    .line 105
    iget-object v3, p0, Lpc;->k:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 107
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sname:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lpc;->k:Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 115
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiId()Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sPoiId:Ljava/lang/String;

    .line 121
    :cond_3
    iget-object v3, p0, Lpc;->l:Ljava/util/List;

    .line 123
    const/4 v4, 0x2

    .line 124
    const/4 v7, 0x1

    .line 125
    if-eqz v3, :cond_d

    .line 127
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 130
    move-result v3

    .line 131
    if-lez v3, :cond_d

    .line 133
    const/4 v3, 0x0

    .line 134
    :goto_0
    iget-object v8, p0, Lpc;->l:Ljava/util/List;

    .line 136
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 139
    move-result v8

    .line 140
    if-ge v3, v8, :cond_e

    .line 142
    iget-object v8, p0, Lpc;->l:Ljava/util/List;

    .line 144
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v8

    .line 148
    check-cast v8, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 150
    if-eqz v3, :cond_a

    .line 152
    if-eq v3, v7, :cond_7

    .line 154
    if-eq v3, v4, :cond_4

    .line 156
    goto/16 :goto_1

    .line 158
    :cond_4
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 161
    move-result-wide v9

    .line 162
    cmpl-double v11, v9, v5

    .line 164
    if-nez v11, :cond_5

    .line 166
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 169
    move-result-wide v9

    .line 170
    :cond_5
    iput-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlon:D

    .line 172
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 175
    move-result-wide v9

    .line 176
    cmpl-double v11, v9, v5

    .line 178
    if-nez v11, :cond_6

    .line 180
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 183
    move-result-wide v9

    .line 184
    :cond_6
    iput-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlat:D

    .line 186
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 189
    move-result-object v9

    .line 190
    iput-object v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidname:Ljava/lang/String;

    .line 192
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    .line 195
    move-result v8

    .line 196
    iput v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidtype:I

    .line 198
    new-array v9, v7, [Ljava/lang/Object;

    .line 200
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v8

    .line 204
    aput-object v8, v9, v2

    .line 206
    const-string v8, "requestData.tmidtype:{?}"

    .line 208
    invoke-static {v1, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    goto :goto_1

    .line 212
    :cond_7
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 215
    move-result-wide v9

    .line 216
    cmpl-double v11, v9, v5

    .line 218
    if-nez v11, :cond_8

    .line 220
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 223
    move-result-wide v9

    .line 224
    :cond_8
    iput-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlon:D

    .line 226
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 229
    move-result-wide v9

    .line 230
    cmpl-double v11, v9, v5

    .line 232
    if-nez v11, :cond_9

    .line 234
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 237
    move-result-wide v9

    .line 238
    :cond_9
    iput-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlat:D

    .line 240
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 243
    move-result-object v9

    .line 244
    iput-object v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidname:Ljava/lang/String;

    .line 246
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    .line 249
    move-result v8

    .line 250
    iput v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidtype:I

    .line 252
    new-array v9, v7, [Ljava/lang/Object;

    .line 254
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    move-result-object v8

    .line 258
    aput-object v8, v9, v2

    .line 260
    const-string v8, "requestData.smidtype:{?}"

    .line 262
    invoke-static {v1, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    goto :goto_1

    .line 266
    :cond_a
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 269
    move-result-wide v9

    .line 270
    cmpl-double v11, v9, v5

    .line 272
    if-nez v11, :cond_b

    .line 274
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 277
    move-result-wide v9

    .line 278
    :cond_b
    iput-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlon:D

    .line 280
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 283
    move-result-wide v9

    .line 284
    cmpl-double v11, v9, v5

    .line 286
    if-nez v11, :cond_c

    .line 288
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 291
    move-result-wide v9

    .line 292
    :cond_c
    iput-wide v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlat:D

    .line 294
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 297
    move-result-object v9

    .line 298
    iput-object v9, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidname:Ljava/lang/String;

    .line 300
    invoke-virtual {v8}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    .line 303
    move-result v8

    .line 304
    iput v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidtype:I

    .line 306
    new-array v9, v7, [Ljava/lang/Object;

    .line 308
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    move-result-object v8

    .line 312
    aput-object v8, v9, v2

    .line 314
    const-string v8, "requestData.fmidtype:{?}"

    .line 316
    invoke-static {v1, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 321
    goto/16 :goto_0

    .line 323
    :cond_d
    const-string v3, "[requestRouteEx]:via ProtocolPoi null!!!"

    .line 325
    new-array v5, v2, [Ljava/lang/Object;

    .line 327
    invoke-static {v1, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_e
    new-array v3, v4, [Ljava/lang/Object;

    .line 332
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sPoiId:Ljava/lang/String;

    .line 334
    aput-object v4, v3, v2

    .line 336
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    .line 338
    aput-object v0, v3, v7

    .line 340
    const-string v0, "[requestRouteEx] spoiid:{?}, dpoiid:{?}"

    .line 342
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 9
    const/16 v1, 0x2730

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 17
    if-eqz v1, :cond_2

    .line 19
    iget-boolean v0, p0, Lnc;->c:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lib0;->A()Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 30
    iget v1, p0, Lnc;->d:I

    .line 32
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 38
    if-eqz v1, :cond_3

    .line 40
    instance-of v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

    .line 42
    if-eqz v1, :cond_3

    .line 44
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;

    .line 46
    invoke-static {v0}, La80;->t(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;

    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/16 v0, 0x2710

    .line 53
    iget v1, p0, Lnc;->d:I

    .line 55
    if-ne v0, v1, :cond_4

    .line 57
    const/16 v0, 0x272e

    .line 59
    iput v0, p0, Lnc;->d:I

    .line 61
    :cond_4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 63
    iget v1, p0, Lnc;->d:I

    .line 65
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 68
    :goto_0
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lib0;->o:Z

    .line 3
    return v0
.end method
