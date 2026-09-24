.class public Lo10;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;

.field public e:Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;-><init>()V

    iput-object v0, p0, Lo10;->e:Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    .line 3
    iput-object p1, p0, Lo10;->d:Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;-><init>()V

    .line 6
    iput-object p1, p0, Lo10;->e:Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;->getViaPoisSize()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;->getViaPois()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    new-instance v1, Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;

    invoke-direct {v1}, Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;-><init>()V

    iput-object v1, p0, Lo10;->d:Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;

    .line 12
    new-instance v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    invoke-direct {v2}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;-><init>()V

    .line 13
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->u()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->s()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->t()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 16
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ViaPoi;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lo10;->d:Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;

    invoke-virtual {p1, v1}, Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;->setMidPoiList(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "MidPoiInfoDispatchAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lo10;->e:Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2f46

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_NAVI_VIA_INFO"

    .line 15
    invoke-virtual {p0}, Lo10;->g()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x1

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 37
    move-result-object v4

    .line 38
    aput-object v4, v2, v3

    .line 40
    const-string v3, "{?}"

    .line 42
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 9
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 12
    iget-object v3, p0, Lo10;->d:Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;

    .line 14
    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3}, Lcom/autonavi/amapauto/jni/protocol/data/MidPoiData;->getMidPoiList()Ljava/util/List;

    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1

    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_2

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 39
    new-instance v6, Lorg/json/JSONObject;

    .line 41
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v7, "EXTRA_MIDNAME"

    .line 46
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v7, "EXTRA_MIDLAT"

    .line 53
    iget-wide v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 55
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 58
    const-string v7, "EXTRA_MIDLON"

    .line 60
    iget-wide v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 62
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65
    const-string v7, "EXTRA_MIDADDR"

    .line 67
    iget-object v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 69
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 77
    const/4 v5, 0x3

    .line 78
    if-le v4, v5, :cond_0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v4, 0x0

    .line 82
    :cond_2
    :goto_0
    const-string v3, "KEY_VIA_POIS_SIZE"

    .line 84
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v3, "KEY_VIA_POIS"

    .line 89
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    const/4 v3, 0x1

    .line 95
    new-array v3, v3, [Ljava/lang/Object;

    .line 97
    aput-object v2, v3, v1

    .line 99
    const-string v1, "MidPoiInfoDispatchAction"

    .line 101
    const-string v2, "Exception:{?}"

    .line 103
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    return-object v0
.end method
