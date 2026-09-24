.class public Lxl0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;

    .line 24
    sget-object v2, Lam0;->a:Ljava/util/Map;

    .line 26
    iget v3, v1, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;->type:I

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetCruiseListener"

    .line 6
    const-string v3, "onCameraHide()"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    sput-object v1, Lco;->m:Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 14
    invoke-static {}, Lnb;->j()Lnb;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lnb;->p()Z

    .line 21
    move-result v1

    .line 22
    invoke-static {}, Lmb;->f()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v1, :cond_0

    .line 28
    if-eqz v3, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 32
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_CAMERA_INFO"

    .line 34
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lrv;->H()Lrv;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lrv;->H()Lrv;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v4, 0x2

    .line 61
    new-array v4, v4, [Ljava/lang/Object;

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    move-result-object v1

    .line 67
    aput-object v1, v4, v0

    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    move-result-object v1

    .line 74
    aput-object v1, v4, v0

    .line 76
    const-string v0, "onTrafficFacilityUpdate(). isCruise={?}, hasXunhangCamera={?}"

    .line 78
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void
.end method

.method public final c(Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onCameraShow()"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    const-string v3, "WidgetCruiseListener"

    .line 23
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sput-object p1, Lco;->m:Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 28
    invoke-static {}, Lnb;->j()Lnb;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lnb;->p()Z

    .line 35
    move-result p1

    .line 36
    invoke-static {}, Lmb;->f()Z

    .line 39
    move-result v0

    .line 40
    if-eqz p1, :cond_0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    new-instance p1, Landroid/content/Intent;

    .line 46
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_CAMERA_INFO"

    .line 48
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lrv;->H()Lrv;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lrv;->L()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lrv;->H()Lrv;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 v2, 0x2

    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object p1

    .line 81
    aput-object p1, v2, v1

    .line 83
    const/4 p1, 0x1

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    move-result-object v0

    .line 88
    aput-object v0, v2, p1

    .line 90
    const-string p1, "onTrafficFacilityUpdate(). isCruise={?}, hasXunhangCamera={?}"

    .line 92
    invoke-static {v3, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 16

    .line 1
    invoke-static/range {p1 .. p1}, Lxl0;->a(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;

    .line 20
    iget-wide v10, v0, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;->longitude:D

    .line 22
    iget-wide v12, v0, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;->latitude:D

    .line 24
    iget v14, v0, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;->type:I

    .line 26
    iget v15, v0, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;->distance:I

    .line 28
    iget v0, v0, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;->limitSpeed:I

    .line 30
    new-instance v9, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 32
    move-object v2, v9

    .line 33
    move-wide v3, v10

    .line 34
    move-wide v5, v12

    .line 35
    move v7, v14

    .line 36
    move v8, v15

    .line 37
    move-object v1, v9

    .line 38
    move v9, v0

    .line 39
    invoke-direct/range {v2 .. v9}, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;-><init>(DDIII)V

    .line 42
    move-object/from16 v2, p0

    .line 44
    invoke-virtual {v2, v1}, Lxl0;->c(Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 47
    const/4 v1, 0x5

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 53
    move-result-object v3

    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v3, v1, v4

    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 61
    move-result-object v4

    .line 62
    aput-object v4, v1, v3

    .line 64
    const/4 v3, 0x2

    .line 65
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v4

    .line 69
    aput-object v4, v1, v3

    .line 71
    const/4 v3, 0x3

    .line 72
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v4

    .line 76
    aput-object v4, v1, v3

    .line 78
    const/4 v3, 0x4

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    aput-object v0, v1, v3

    .line 85
    const-string v0, "WidgetCruiseListener"

    .line 87
    const-string v3, "onTrafficFacilityUpdate(). longitude={?}, latitude={?}, type={?}, distance={?}, limitSpeed={?}"

    .line 89
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    move-object/from16 v2, p0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lxl0;->b()V

    .line 98
    :goto_0
    return-void
.end method
