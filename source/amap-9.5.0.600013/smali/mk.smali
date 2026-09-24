.class public Lmk;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    iput-object p1, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 6
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 6

    .line 1
    iget-object v0, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;-><init>()V

    .line 10
    iget-object v1, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 12
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->isEnable:Z

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->u(Z)V

    .line 17
    iget-object v1, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 19
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->size:I

    .line 21
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->w(I)V

    .line 24
    iget-object v1, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 26
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->getDrivewayList()Ljava/util/List;

    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v2, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 39
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->getDrivewayList()Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v2

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;

    .line 59
    new-instance v4, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;

    .line 61
    invoke-direct {v4}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;-><init>()V

    .line 64
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->laneBackIcon:I

    .line 66
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;->B(I)V

    .line 69
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->number:I

    .line 71
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;->C(I)V

    .line 74
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->extFlag:I

    .line 76
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;->z(I)V

    .line 79
    iget-boolean v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneAdvised:Z

    .line 81
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;->y(Z)V

    .line 84
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneExtendedNew:I

    .line 86
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;->A(I)V

    .line 89
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneType:I

    .line 91
    invoke-virtual {v4, v3}, Lcom/autonavi/amapauto/protocol/model/item/TrafficLaneInfo;->D(I)V

    .line 94
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->v(Ljava/util/ArrayList;)V

    .line 101
    const/4 v1, 0x1

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/DriveWayProtocolSdkModel;->toString()Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 109
    aput-object v3, v1, v2

    .line 111
    const-string v2, "DriveWayInfoDisAction"

    .line 113
    const-string v3, "in#parseToAidlModel model :{?}"

    .line 115
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_1
    return-object v0

    .line 119
    :cond_2
    const/4 v0, 0x0

    .line 120
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
    const/16 v2, 0x32d4

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_DRIVE_WAY"

    .line 15
    invoke-virtual {p0}, Lmk;->g()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "DriveWayInfoDisAction"

    .line 6
    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    :try_start_0
    const-string v3, "drive_way_enabled"

    .line 15
    iget-object v4, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 17
    iget-boolean v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->isEnable:Z

    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 22
    const-string v3, "drive_way_size"

    .line 24
    iget-object v4, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 26
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->size:I

    .line 28
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    new-instance v3, Lorg/json/JSONArray;

    .line 33
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 36
    iget-object v4, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 38
    invoke-virtual {v4}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->getDrivewayList()Ljava/util/List;

    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 46
    invoke-virtual {v4}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->getDrivewayList()Ljava/util/List;

    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 53
    move-result v4

    .line 54
    if-lez v4, :cond_0

    .line 56
    iget-object v4, p0, Lmk;->d:Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 58
    invoke-virtual {v4}, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;->getDrivewayList()Ljava/util/List;

    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v4

    .line 66
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;

    .line 78
    new-instance v6, Lorg/json/JSONObject;

    .line 80
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v7, "drive_way_number"

    .line 85
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->number:I

    .line 87
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v7, "drive_way_lane_Back_icon"

    .line 92
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->laneBackIcon:I

    .line 94
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v7, "drive_way_lane_Extended"

    .line 103
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->extFlag:I

    .line 105
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v7, "trafficLaneAdvised"

    .line 114
    iget-boolean v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneAdvised:Z

    .line 116
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 119
    const-string v7, "trafficLaneExtendedNew"

    .line 121
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneExtendedNew:I

    .line 123
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v7, "trafficLaneType"

    .line 128
    iget v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/DriveWayItemData;->trafficLaneType:I

    .line 130
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    const-string v4, "drive_way_info"

    .line 139
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_1

    .line 143
    :catch_0
    move-exception v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    new-array v5, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {v2, v4, v3, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 153
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    goto :goto_2

    .line 158
    :cond_1
    const-string v0, ""

    .line 160
    :goto_2
    const/4 v3, 0x1

    .line 161
    new-array v3, v3, [Ljava/lang/Object;

    .line 163
    aput-object v0, v3, v1

    .line 165
    const-string v1, "in#getDriveWayJson json :{?}"

    .line 167
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-object v0
.end method
