.class public Low;
.super Lmc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Low$b;
    }
.end annotation


# instance fields
.field public a:Low$b;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const-string v2, "KaiwoBE11InteractionImpl"

    .line 9
    invoke-static {v2, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    new-instance v1, Low$b;

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v1, p0, v3}, Low$b;-><init>(Low;Low$a;)V

    .line 18
    iput-object v1, p0, Low;->a:Low$b;

    .line 20
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 22
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    const-string v3, "sky.car.action.usb.device.mounted"

    .line 27
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v3, "sky.car.action.usb.device.unmounted"

    .line 32
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lrv;->y()Landroid/app/Application;

    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p0, Low;->a:Low$b;

    .line 45
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    const-string v3, "registerReceiver Throwable:"

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 57
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Low;->a:Low$b;

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    new-array v2, v0, [Ljava/lang/Object;

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v1, v2, v3

    .line 22
    const-string v1, "KaiwoBE11InteractionImpl"

    .line 24
    const-string v3, "unregisterReceiver {?}"

    .line 26
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :goto_0
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Low;->a:Low$b;

    .line 32
    return v0
.end method

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
    new-instance v0, Landroid/content/Intent;

    .line 13
    const-string v1, "com.skyworth.car.systemsettings.action.WIFI"

    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v1, "com.skyworth.car.systemsettings"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/high16 v1, 0x10000000

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lrv;->H()Lrv;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-array v1, p1, [Ljava/lang/Object;

    .line 43
    const/4 v2, 0x0

    .line 44
    aput-object v0, v1, v2

    .line 46
    const-string v0, "KaiwoBE11InteractionImpl"

    .line 48
    const-string v2, "SHOW_NETWORK_SETTING Exception "

    .line 50
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return p1
.end method

.method public getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 3

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p2, p1, [Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0xc

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    aput-object v2, p2, v0

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    aput-object v2, p2, v0

    .line 20
    const-string v0, "KaiwoBE11InteractionImpl"

    .line 22
    const-string v2, "getCustomAudioAttribute setUsage:{?} setContentType:{?}"

    .line 24
    invoke-static {v0, v2, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    .line 29
    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 32
    invoke-virtual {p2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public getIntValue(I)I
    .locals 3

    .line 1
    const/16 v0, 0x271c

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lmc;->getIntValue(I)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object p1

    .line 22
    const-string v0, "light_mode"

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    aput-object v2, v0, v1

    .line 38
    const-string v1, "KaiwoBE11InteractionImpl"

    .line 40
    const-string v2, "GET_HEAD_LAMPS_ON light_mode = {?}"

    .line 42
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return p1
.end method

.method public getLocationInfo(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 0

    .line 1
    invoke-static {p1}, Lvy;->a(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lvy;->d(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    const-string p1, "sys.special.uuid"

    .line 23
    invoke-static {p1}, Lvf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, ""

    .line 30
    :goto_0
    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    const/4 v1, 0x0

    .line 34
    aput-object p1, v0, v1

    .line 36
    const-string v1, "KaiwoBE11InteractionImpl"

    .line 38
    const-string v2, "[getStringValue]uuid:{?}"

    .line 40
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-object p1
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "KaiwoBE11InteractionImpl"

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    const-string v2, "/mnt/media_rw"

    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    array-length v4, v1

    .line 23
    if-lez v4, :cond_1

    .line 25
    array-length v4, v1

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-ge v5, v4, :cond_1

    .line 29
    aget-object v6, v1, v5

    .line 31
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 37
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_0

    .line 43
    const-string v7, "sdcard"

    .line 45
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_0

    .line 55
    const-string v7, "/"

    .line 57
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_0

    .line 67
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v7, "getUsbUpdataPath uDiskPath={?}"

    .line 76
    const/4 v8, 0x1

    .line 77
    new-array v8, v8, [Ljava/lang/Object;

    .line 79
    aput-object v6, v8, v3

    .line 81
    invoke-static {v0, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    const-string v4, "getUsbUpdataPath Exception:"

    .line 90
    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, v4, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 95
    :cond_1
    return-object v2
.end method
