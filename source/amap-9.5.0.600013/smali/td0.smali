.class public Ltd0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    iput p1, p0, Ltd0;->k:I

    .line 6
    invoke-virtual {p0, p2}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_SHOW_TYPE"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ltd0;->k:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;->getShowMyLocationType()I

    move-result p1

    iput p1, p0, Ltd0;->k:I

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    return-void
.end method


# virtual methods
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
    iget-boolean v1, p0, Lnc;->c:Z

    .line 17
    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;

    .line 21
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;-><init>()V

    .line 24
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Ltd0;->x()Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;

    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 39
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/MyLocationData;

    .line 41
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/MyLocationData;->myLocationName:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;->v(Ljava/lang/String;)V

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 49
    iget v0, p0, Lnc;->d:I

    .line 51
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 54
    :cond_3
    :goto_0
    return-object v1
.end method

.method public c()Landroid/content/Intent;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "ShowMyLocationAction"

    .line 13
    const-string v2, "pareseToIntent getResponeData()={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_0

    .line 25
    return-object v1

    .line 26
    :cond_0
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 28
    const-string v2, "EXTRA_ADDRESS"

    .line 30
    const-string v3, "EXTRA_NAME"

    .line 32
    const/16 v4, 0x2718

    .line 34
    const-string v5, "KEY_TYPE"

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Ltd0;->x()Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;

    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 44
    new-instance v1, Landroid/content/Intent;

    .line 46
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;->getPoiName()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;->s()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "cityName"

    .line 68
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;->getCityName()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v2, "districtName"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;->getDistrictName()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-object v1

    .line 85
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/MyLocationData;

    .line 91
    if-eqz v0, :cond_2

    .line 93
    new-instance v1, Landroid/content/Intent;

    .line 95
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/MyLocationData;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/MyLocationData;->myLocationName:Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_2
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lnc;->m()Z

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const-string v1, "ShowMyLocationAction"

    .line 17
    const-string v2, "doAction isNeedALRespone = {?}"

    .line 19
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lib;->h()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;

    .line 30
    iget v1, p0, Ltd0;->k:I

    .line 32
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;-><init>(I)V

    .line 35
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 42
    move-result v0

    .line 43
    iget v1, p0, Ltd0;->k:I

    .line 45
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeShowMyLocation(II)V

    .line 48
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget v0, p0, Ltd0;->k:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;
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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/MyLocationInfoModel;
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
    const-string v4, "ShowMyLocationAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method
