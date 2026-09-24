.class public Ltc;
.super Lmc;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    const-string v0, "sabresd_c32"

    .line 6
    iput-object v0, p0, Ltc;->a:Ljava/lang/String;

    .line 8
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Ltc;->b:Landroid/content/Context;

    .line 22
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Ltc;->a:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    const-string v1, "BeiQi_C32B_F05InteractionImpl"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 8
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v3

    .line 12
    const-string v4, "get"

    .line 14
    const/4 v5, 0x2

    .line 15
    new-array v6, v5, [Ljava/lang/Class;

    .line 17
    aput-object v0, v6, v2

    .line 19
    const/4 v7, 0x1

    .line 20
    aput-object v0, v6, v7

    .line 22
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v0

    .line 26
    new-array v4, v5, [Ljava/lang/Object;

    .line 28
    const-string v5, "persist.sys.navi.uuid"

    .line 30
    aput-object v5, v4, v2

    .line 32
    const-string v5, "unknow"

    .line 34
    aput-object v5, v4, v7

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v4, "getUuid Exception:"

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    new-array v3, v2, [Ljava/lang/Object;

    .line 67
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v4, "getUuid :"

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    const-string v0, "sabresd_c40d"

    .line 3
    iget-object v1, p0, Ltc;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    const-string v0, "sabresd_c51em08"

    .line 3
    iget-object v1, p0, Ltc;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final g()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Ltc;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "com.iflytek.autofly.setting"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "isFromNavi"

    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    iget-object v2, p0, Ltc;->b:Landroid/content/Context;

    .line 21
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    new-instance v1, Landroid/content/Intent;

    .line 31
    const-string v2, "android.settings.WIFI_SETTINGS"

    .line 33
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    const/high16 v2, 0x10000000

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Ltc;->b:Landroid/content/Context;

    .line 43
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    :goto_0
    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 1

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
    invoke-virtual {p0}, Ltc;->g()Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "BeiQi_C32B_F05InteractionImpl"

    .line 6
    const-string v3, "getMountAngleInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 13
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 19
    const-wide/16 v4, 0x0

    .line 21
    iput-wide v4, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 23
    const-wide v6, -0x3faea00000000000L    # -69.5

    .line 28
    iput-wide v6, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 30
    iput-wide v4, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 32
    const/4 v6, 0x3

    .line 33
    new-array v6, v6, [Ljava/lang/Object;

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v6, v0

    .line 41
    iget-wide v4, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    move-result-object v0

    .line 47
    aput-object v0, v6, v3

    .line 49
    iget-wide v3, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 54
    move-result-object v0

    .line 55
    const/4 v3, 0x2

    .line 56
    aput-object v0, v6, v3

    .line 58
    const-string v0, "getMountAngleInfo locMountAngle : yaw:{?}, pitch:{?}, roll:{?}"

    .line 60
    invoke-static {v2, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-object v1
.end method

.method public getSatelliteType(I)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    iget-object v1, p0, Ltc;->a:Ljava/lang/String;

    .line 13
    const/4 v2, 0x1

    .line 14
    aput-object v1, v0, v2

    .line 16
    const-string v1, "BeiQi_C32B_F05InteractionImpl"

    .line 18
    const-string v3, "getSatelliteType prn = {?}, mCarType = {?}"

    .line 20
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Ltc;->e()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_5

    .line 29
    invoke-virtual {p0}, Ltc;->f()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_5

    .line 35
    if-lt p1, v2, :cond_0

    .line 37
    const/16 v0, 0x20

    .line 39
    if-gt p1, v0, :cond_0

    .line 41
    sget p1, Luy;->a:I

    .line 43
    return p1

    .line 44
    :cond_0
    const/16 v0, 0xd3

    .line 46
    if-lt p1, v0, :cond_1

    .line 48
    const/16 v0, 0xf6

    .line 50
    if-gt p1, v0, :cond_1

    .line 52
    sget p1, Luy;->d:I

    .line 54
    return p1

    .line 55
    :cond_1
    const/16 v0, 0x21

    .line 57
    if-lt p1, v0, :cond_2

    .line 59
    const/16 v0, 0x40

    .line 61
    if-le p1, v0, :cond_3

    .line 63
    :cond_2
    const/16 v0, 0x9f

    .line 65
    if-lt p1, v0, :cond_4

    .line 67
    const/16 v0, 0xa3

    .line 69
    if-gt p1, v0, :cond_4

    .line 71
    :cond_3
    sget p1, Luy;->b:I

    .line 73
    return p1

    .line 74
    :cond_4
    sget p1, Luy;->c:I

    .line 76
    return p1

    .line 77
    :cond_5
    invoke-super {p0, p1}, Lbc;->getSatelliteType(I)I

    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const v0, 0x9c43

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Ltc;->d()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    const-string p1, "C04010226020"

    .line 22
    return-object p1
.end method

.method public startup()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmc;->startup()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method
