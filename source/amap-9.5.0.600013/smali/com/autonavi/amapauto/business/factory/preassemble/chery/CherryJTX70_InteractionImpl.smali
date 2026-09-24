.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryJTX70_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "X70-M"

.field static final CAR_TYPE1:Ljava/lang/String; = "X70-L"

.field private static final KEY_TUID:Ljava/lang/String; = "adayo_uuid_key"

.field private static final TAG:Ljava/lang/String; = "CherryJTX70_InteractionImpl ChannelAdaptor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    const-string v0, "CherryJTX70_InteractionImpl ChannelAdaptor"

    .line 9
    const-string v1, "JieTu X70 impl"

    .line 11
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method private enterImmersiveMode(Landroid/view/Window;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v2, v0, v3

    .line 12
    const-string v2, "CherryJTX70_InteractionImpl ChannelAdaptor"

    .line 14
    const-string v3, "systemStautsBar uiFlags = {?}"

    .line 16
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 4

    .line 1
    const-string v0, "CherryJTX70_InteractionImpl ChannelAdaptor"

    .line 3
    const/16 v1, 0x2711

    .line 5
    if-eq p1, v1, :cond_0

    .line 7
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->getBooleanValue(I)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/high16 p1, 0x10000000

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    const-string v2, "wifiPage SHOW_NETWORK_SETTING"

    .line 17
    new-array v3, v1, [Ljava/lang/Object;

    .line 19
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v2, Landroid/content/Intent;

    .line 24
    const-string v3, "android.settings.WIRELESS_SETTINGS"

    .line 26
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    iget-object v3, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    .line 39
    const-string v3, "wifiPage SHOW_NETWORK_SETTING error!"

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-instance v0, Landroid/content/Intent;

    .line 51
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 53
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    :goto_0
    const/4 p1, 0x1

    .line 65
    return p1
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 9
    const-wide v1, -0x3fa9800000000000L    # -90.0

    .line 14
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 16
    const-wide v1, 0x4042b33333333333L    # 37.4

    .line 21
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    const-string v2, "CherryJTX70_InteractionImpl ChannelAdaptor"

    .line 32
    const-string v3, "location isVaild=true, yaw=0, pitch=37.4, roll=0"

    .line 34
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x3b07

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CherryJTX70_InteractionImpl ChannelAdaptor"

    .line 6
    if-eq p1, v0, :cond_2

    .line 8
    const v0, 0x9c43

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->mContext:Landroid/content/Context;

    .line 20
    const-string v0, "adayo_uuid_key"

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    const/4 v3, 0x2

    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    aput-object v0, v3, v1

    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object p1, v3, v0

    .line 42
    const-string v0, "deviceId Settings.System.getString(context,{?}) = {?}"

    .line 44
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-object p1

    .line 48
    :cond_2
    const-string p1, "GET_EXTENAL_CUSTOM_ID C04010241022"

    .line 50
    new-array v0, v1, [Ljava/lang/Object;

    .line 52
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const-string p1, "C04010241022"

    .line 57
    return-object p1
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CherryJTX70_InteractionImpl ChannelAdaptor"

    .line 6
    const-string v3, "systemStautsBar onActivityLifecycleChanged"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 14
    if-nez p1, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    if-eq p2, v1, :cond_1

    .line 20
    const/4 v1, 0x3

    .line 21
    if-ne p2, v1, :cond_2

    .line 23
    :cond_1
    const-string p2, "systemStautsBar LifecycleType.CREATED || type == LifecycleType.RESUMED"

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    invoke-static {v2, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryJTX70_InteractionImpl;->enterImmersiveMode(Landroid/view/Window;)V

    .line 37
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "CherryJTX70_InteractionImpl ChannelAdaptor"

    .line 16
    const-string v2, "systemStautsBar hasFocus = {?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryJTX70_InteractionImpl;->enterImmersiveMode(Landroid/view/Window;)V

    .line 30
    :cond_0
    return-void
.end method
