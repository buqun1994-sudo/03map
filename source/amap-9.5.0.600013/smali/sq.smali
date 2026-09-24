.class public Lsq;
.super Lmc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "IC321InteractionImpl"

    .line 9
    const-string v2, "[IC321InteractionImpl]"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lmc;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "com.incall.apps.setting"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    const-string v1, "WIFI"

    .line 33
    const/16 v2, 0x29a

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    invoke-static {}, Lrv;->H()Lrv;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-array v1, p1, [Ljava/lang/Object;

    .line 53
    const/4 v2, 0x0

    .line 54
    aput-object v0, v1, v2

    .line 56
    const-string v0, "IC321InteractionImpl"

    .line 58
    const-string v2, "SHOW_NETWORK_SETTING Exception "

    .line 60
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_1
    :goto_0
    return p1
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 6

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 9
    const-wide v2, -0x3fa9800000000000L    # -90.0

    .line 14
    iput-wide v2, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 16
    const-wide/high16 v4, -0x3fd8000000000000L    # -12.0

    .line 18
    iput-wide v4, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 20
    const-wide/16 v4, 0x0

    .line 22
    iput-wide v4, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 24
    const/4 v4, 0x3

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v4, v5

    .line 34
    iget-wide v2, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    move-result-object v2

    .line 40
    aput-object v2, v4, v1

    .line 42
    iget-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x2

    .line 49
    aput-object v1, v4, v2

    .line 51
    const-string v1, "IC321InteractionImpl"

    .line 53
    const-string v2, "location isVaild=true, yaw={?}, pitch={?}, roll={?}"

    .line 55
    invoke-static {v1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    const v0, 0x9c43

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 21
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "navi_tuid"

    .line 35
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p1, ""

    .line 42
    :goto_0
    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    const/4 v1, 0x0

    .line 46
    aput-object p1, v0, v1

    .line 48
    const-string v1, "IC321InteractionImpl"

    .line 50
    const-string v2, "[getStringValue]uuid:{?}"

    .line 52
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-object p1
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "/storage/udisk1"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-object v0
.end method
