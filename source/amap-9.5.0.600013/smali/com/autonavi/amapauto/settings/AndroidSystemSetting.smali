.class public Lcom/autonavi/amapauto/settings/AndroidSystemSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidSystemSetting"

.field private static mNoaIsStatus:Z

.field private static mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callApplicationDetailSetting()V
    .locals 6

    .line 1
    const-string v0, "AndroidSystemSetting"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 7
    move-result-object v2

    .line 8
    const/16 v3, 0x2737

    .line 10
    invoke-virtual {v2, v3}, Lse;->getBooleanValue(I)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 16
    const-string v2, "channel disposed call app detail seting"

    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    const-string v2, "default call app detail seting"

    .line 26
    new-array v3, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v2, Landroid/content/Intent;

    .line 33
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 36
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v3, 0x10000000

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    const-string v3, "package"

    .line 48
    invoke-static {}, Lrv;->H()Lrv;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lrv;->L()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lrv;->H()Lrv;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    const/4 v3, 0x1

    .line 78
    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    aput-object v2, v3, v1

    .line 82
    const-string v1, "callApplicationDetailSetting Exception "

    .line 84
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void
.end method

.method public static callSystemApp(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 11
    move-result-object p0

    .line 12
    const/16 v0, 0x2718

    .line 14
    invoke-virtual {p0, v0}, Lse;->getBooleanValue(I)Z

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lse;->c()Lse;

    .line 21
    move-result-object p0

    .line 22
    const/16 v0, 0x2717

    .line 24
    invoke-virtual {p0, v0}, Lse;->getBooleanValue(I)Z

    .line 27
    :goto_0
    return-void
.end method

.method public static callSystemGPSSetting()V
    .locals 4

    .line 1
    const-string v0, "AndroidSystemSetting"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 7
    move-result-object v2

    .line 8
    const/16 v3, 0x274a

    .line 10
    invoke-virtual {v2, v3}, Lse;->getBooleanValue(I)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 16
    const-string v2, "channel disposed call system GPS setting"

    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .line 26
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 29
    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const/high16 v3, 0x10000000

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-static {}, Lrv;->H()Lrv;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    const/4 v3, 0x1

    .line 53
    new-array v3, v3, [Ljava/lang/Object;

    .line 55
    aput-object v2, v3, v1

    .line 57
    const-string v1, "callSystemGPSSetting Exception "

    .line 59
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void
.end method

.method public static callSystemNetworkSetting()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidSystemSetting"

    .line 6
    const-string v2, "callSystemNetworkSetting"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x2711

    .line 17
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 20
    return-void
.end method

.method public static callSystemSetting()V
    .locals 4

    .line 1
    const-string v0, "AndroidSystemSetting"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 7
    move-result-object v2

    .line 8
    const/16 v3, 0x2743

    .line 10
    invoke-virtual {v2, v3}, Lse;->getBooleanValue(I)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 16
    const-string v2, "channel disposed call system setting"

    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    const-string v2, "default call system setting"

    .line 26
    new-array v3, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v2, Landroid/content/Intent;

    .line 33
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 36
    const-string v3, "android.settings.SETTINGS"

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v3, 0x10000000

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    invoke-static {}, Lrv;->H()Lrv;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    const/4 v3, 0x1

    .line 60
    new-array v3, v3, [Ljava/lang/Object;

    .line 62
    aput-object v2, v3, v1

    .line 64
    const-string v1, "callSystemSetting Exception "

    .line 66
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :goto_0
    return-void
.end method

.method public static getNoaStatus()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mNoaIsStatus:Z

    .line 3
    return v0
.end method

.method public static getSystemWifiName()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AndroidSystemSetting"

    .line 6
    const-string v3, "[getSystemWifiName]start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    const v3, 0xea61

    .line 18
    invoke-virtual {v1, v3}, Lse;->getOptionalValue(I)Leq$a;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const-string v0, ""

    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lpa;->o(Landroid/content/Context;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lpa;->d()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x1

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    aput-object v1, v3, v0

    .line 54
    const-string v0, "[getSystemWifiName]end, wifiName:{?}"

    .line 56
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-object v1

    .line 60
    :cond_1
    const-string v1, "[getSystemWifiName]end,wifi no connect,return null "

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    return-object v0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ldh0;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getTimeType()I
    .locals 1

    .line 1
    invoke-static {}, Ldh0;->b()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static jniDispatchLastOneKmInfo(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;->toString()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "AndroidSystemSetting"

    .line 13
    const-string v2, "[jniDispatchLastOneKmInfo]{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p0}, Lka0;->b(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V

    .line 21
    return-void
.end method

.method public static jniHttpRequestCallback(Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;->toString()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "AndroidSystemSetting"

    .line 13
    const-string v2, "[jniHttpRequestCallback] {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Ltp;->a()Ltp;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ltp;->c(Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;)V

    .line 25
    return-void
.end method

.method public static native nativeHttpRequest(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;)V
.end method

.method public static native notifyTimeChange(Ljava/lang/String;I)V
.end method

.method public static registerTimeChangeReceiver()V
    .locals 5

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x273d

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "AndroidSystemSetting"

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const-string v0, "[registerTimeChangeReceiver]notice: adapter custom timeChange receiver."

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 26
    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 30
    invoke-direct {v0}, Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;-><init>()V

    .line 33
    sput-object v0, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    .line 37
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    const-string v3, "android.intent.action.DATE_CHANGED"

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v3, "android.intent.action.TIME_SET"

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lrv;->y()Landroid/app/Application;

    .line 57
    move-result-object v3

    .line 58
    sget-object v4, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 60
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v3, "[registerTimeChangeReceiver]Exception"

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 72
    :goto_0
    sget-object v0, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 74
    invoke-virtual {v0}, Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;->a()V

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const-string v0, "TimeBroadcastReceiver have already registered\uff01"

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :goto_1
    return-void
.end method

.method public static setNoaStatus(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidSystemSetting"

    .line 13
    const-string v2, "setNoaStatus: noaIsStatus={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sput-boolean p0, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mNoaIsStatus:Z

    .line 20
    return-void
.end method

.method public static unRegisterTimeChangeReceiver()V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const-string v2, "AndroidSystemSetting"

    .line 25
    const-string v3, "[unRegisterTimeChangeReceiver]unregisterReceiver"

    .line 27
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 30
    :goto_0
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->mTimeBroadcastReceiver:Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;

    .line 33
    :cond_0
    return-void
.end method
