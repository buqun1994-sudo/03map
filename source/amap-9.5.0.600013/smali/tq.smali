.class public Ltq;
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
    const-string v1, "IC421InteractionImpl"

    .line 9
    const-string v2, "[IC421InteractionImpl]"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 3

    .line 1
    invoke-super {p0}, Lmc;->getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 15
    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 19
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 21
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 23
    :cond_0
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
    const-string v1, "IC421InteractionImpl"

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
