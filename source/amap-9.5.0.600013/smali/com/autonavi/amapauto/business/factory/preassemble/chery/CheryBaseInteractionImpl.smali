.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;
.super Lmc;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheryBaseInteractionImpl"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private setImmersiveMode(Landroid/app/Activity;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const-string v1, "CheryBaseInteractionImpl"

    .line 17
    const-string v3, "setImmersiveMode, activity=0x{?}"

    .line 19
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 33
    move-result v1

    .line 34
    or-int/lit8 v1, v1, 0x2

    .line 36
    or-int/lit16 v1, v1, 0x1000

    .line 38
    or-int/lit16 v1, v1, 0x400

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    const v0, 0x4000400

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 49
    const/high16 v0, -0x80000000

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 54
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 4

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
    const/high16 p1, 0x10000000

    .line 12
    const/4 v0, 0x1

    .line 13
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 15
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    .line 17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    iget-object v2, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    new-array v2, v0, [Ljava/lang/Object;

    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v1, v2, v3

    .line 35
    const-string v1, "CheryBaseInteractionImpl"

    .line 37
    const-string v3, "SHOW_NETWORK_SETTING Exception "

    .line 39
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    new-instance v1, Landroid/content/Intent;

    .line 44
    const-string v2, "android.settings.WIFI_SETTINGS"

    .line 46
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    :goto_0
    return v0
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 3

    .line 1
    invoke-static {}, Lbk;->m()Lbk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbk;->n()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 13
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 19
    const-wide v1, 0x404e666666666666L    # 60.8

    .line 24
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 26
    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 30
    const-wide v1, 0x4056800000000000L    # 90.0

    .line 35
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 37
    :cond_0
    return-object v0
.end method

.method public getSystemUiLightFlag(IIZ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->isDayNightModeFollowAuto()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p2, v0, :cond_5

    .line 14
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    const/16 v0, 0x17

    .line 18
    if-lt p2, v0, :cond_3

    .line 20
    if-eqz p3, :cond_2

    .line 22
    or-int/lit16 p1, p1, 0x2000

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    and-int/lit16 p1, p1, -0x2001

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    if-eqz p3, :cond_4

    .line 30
    or-int/lit8 p1, p1, 0x8

    .line 32
    goto :goto_0

    .line 33
    :cond_4
    and-int/lit8 p1, p1, -0x9

    .line 35
    :cond_5
    :goto_0
    return p1
.end method

.method public getUUID()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "navi_tuid"

    .line 9
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 19
    const-string v4, "CheryBaseInteractionImpl"

    .line 21
    const-string v5, "Settings.System.getString navi_tuid ret={?}"

    .line 23
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v0, ""

    .line 35
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    aput-object v0, v1, v3

    .line 39
    const-string v2, "Settings.System.getString navi_tuid deal after ret={?}"

    .line 41
    invoke-static {v4, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    return-object v0
.end method

.method public isDayNightModeFollowAuto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedImmersiveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lmc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p2, v0, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p2, v0, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->isNeedImmersiveMode()Z

    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 16
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->setImmersiveMode(Landroid/app/Activity;)V

    .line 19
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->isNeedImmersiveMode()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    if-eqz p2, :cond_0

    .line 12
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->setImmersiveMode(Landroid/app/Activity;)V

    .line 15
    :cond_0
    return-void
.end method
