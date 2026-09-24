.class public Lmc;
.super Lbc;
.source "SourceFile"

# interfaces
.implements Lkr;


# static fields
.field protected static final TAG:Ljava/lang/String; = "BasePreassembleDelegateImpl"


# instance fields
.field private mDynamicReceiverReceiver:Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

.field protected mIsLightSystemUi:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lbc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmc;->mIsLightSystemUi:Z

    .line 7
    const-string v1, " BasePreassembleDelegateImpl  create"

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    const-string v2, "BasePreassembleDelegateImpl"

    .line 13
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;-><init>()V

    .line 6
    iput-object v0, p0, Lmc;->mDynamicReceiverReceiver:Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 19
    const-string v0, "BasePreassembleDelegateImpl"

    .line 21
    const-string v2, "ocuur an excepton!"

    .line 23
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 9

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 12
    move-result-object v0

    .line 13
    const v2, 0x4000000a    # 2.0000024f

    .line 16
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->j(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v4, v3, [Ljava/lang/Object;

    .line 23
    const/4 v5, 0x0

    .line 24
    aput-object v0, v4, v5

    .line 26
    const-string v6, "BasePreassembleDelegateImpl"

    .line 28
    const-string v7, "AmapAutoService getMountAngleInfo json = {?}"

    .line 30
    invoke-static {v6, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    const/16 v7, 0xa

    .line 42
    if-ge v4, v7, :cond_2

    .line 44
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->i()Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/adapter/internal/AmapAutoService;->j(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 68
    return-object v1

    .line 69
    :cond_3
    new-array v2, v3, [Ljava/lang/Object;

    .line 71
    aput-object v0, v2, v5

    .line 73
    const-string v3, "AmapAutoService getMountAngleInfo end json = {?}"

    .line 75
    invoke-static {v6, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 80
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v0, "hasMountAngle"

    .line 85
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 88
    move-result v0

    .line 89
    const-string v3, "yawMountAngle"

    .line 91
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 94
    move-result-wide v3

    .line 95
    const-string v5, "pitchMountAngle"

    .line 97
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 100
    move-result-wide v5

    .line 101
    const-string v7, "rollMountAngle"

    .line 103
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 106
    move-result-wide v7

    .line 107
    new-instance v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 109
    invoke-direct {v2}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    iput-boolean v0, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 114
    iput-wide v3, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 116
    iput-wide v5, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 118
    iput-wide v7, v2, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    goto :goto_3

    .line 121
    :catch_0
    move-exception v0

    .line 122
    move-object v1, v2

    .line 123
    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    .line 125
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    move-object v2, v1

    .line 129
    :goto_3
    return-object v2
.end method

.method public cleanup()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmc;->isNeedDynamicBroadcasting()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lmc;->mDynamicReceiverReceiver:Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;->a()V

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public createRealChannelImpl()Leq;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x272b

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lbc;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public getDeviceCustomer(Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lmc;->initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;

    move-result-object p4

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lmc;->getDeviceCustomer(Ljava/lang/String;CILjava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceCustomer(Ljava/lang/String;CILjava/util/Properties;)Ljava/lang/String;
    .locals 6

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 6
    aget-char v5, v0, v2

    if-ne v5, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v5, p3, 0x1

    if-ne v3, v5, :cond_1

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, p3, 0x2

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-ge v4, v2, :cond_4

    const/4 p2, 0x1

    add-int/2addr v4, p2

    .line 7
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p3, "junzhou"

    const-string v0, "getDeviceCustomer:{?}"

    .line 8
    invoke-static {p3, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {p4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDynamicReceiverActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatValue(I)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldi;->getFloatValue(I)F

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getIntValue(I)I
    .locals 3

    .line 1
    const/16 v0, 0x271b

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lbc;->getIntValue(I)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    aput-object v1, p1, v0

    .line 20
    const-string v1, "BasePreassembleDelegateImpl"

    .line 22
    const-string v2, "[BasePreassembleDelegateImpl]IS_NEED_OPEN_AGROUP:{?}"

    .line 24
    invoke-static {v1, v2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return v0
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 3

    .line 1
    invoke-super {p0}, Lbc;->getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lmc;->c()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 16
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 22
    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 26
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 28
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 30
    :cond_1
    return-object v0
.end method

.method public getSocolEnabled()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "BasePreassembleDelegateImpl"

    .line 6
    const-string v3, "BasePreassembleDelegateImpl getSocolEnabled"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return v0
.end method

.method public getSpecPermissions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ldi;->getSpecPermissions()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ldi;->getStringValue(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getSuperCustomID()Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-super {p0, v0}, Ldi;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public initProperties(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p1, :cond_0

    .line 12
    :try_start_1
    new-instance p2, Ljava/util/Properties;

    .line 14
    invoke-direct {p2}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    move-object v0, p2

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :catch_1
    move-exception p2

    .line 25
    move-object v1, v0

    .line 26
    move-object v0, p2

    .line 27
    move-object p2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception p2

    .line 34
    goto :goto_3

    .line 35
    :catch_2
    move-exception p1

    .line 36
    move-object p2, v0

    .line 37
    move-object v0, p1

    .line 38
    move-object p1, p2

    .line 39
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    invoke-static {p1}, Lns;->a(Ljava/io/Closeable;)V

    .line 45
    move-object v0, p2

    .line 46
    :goto_2
    return-object v0

    .line 47
    :catchall_1
    move-exception p2

    .line 48
    move-object v0, p1

    .line 49
    :goto_3
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 52
    throw p2
.end method

.method public isNeedDynamicBroadcasting()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAmapAutoState(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbc;->notifyAmapAutoState(I)V

    .line 4
    invoke-static {}, Lib;->a()I

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1cc

    .line 10
    if-ge v0, v1, :cond_3

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_2

    .line 15
    const/16 v1, 0x25

    .line 17
    if-eq p1, v1, :cond_1

    .line 19
    const/16 v0, 0x26

    .line 21
    if-eq p1, v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lmc;->notifyStatusBarDayNightMode(Z)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, v0}, Lmc;->notifyStatusBarDayNightMode(Z)V

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, -0x1

    .line 34
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRequestDayNightMode(I)V

    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public notifyStatusBarDayNightMode(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "BasePreassembleDelegateImpl"

    .line 13
    const-string v3, "notifyStatusBarDayNightMode, isDay={?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-boolean v0, p0, Lmc;->mIsLightSystemUi:Z

    .line 20
    if-eq v0, p1, :cond_0

    .line 22
    invoke-virtual {p0, v2, p1}, Lbc;->setSystemUiLightMode(IZ)Z

    .line 25
    :cond_0
    iput-boolean p1, p0, Lmc;->mIsLightSystemUi:Z

    .line 27
    return-void
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    invoke-static {}, Lib;->a()I

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1cc

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    instance-of p1, p1, Lzr;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x3

    .line 17
    if-ne p2, p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    iget-boolean p2, p0, Lmc;->mIsLightSystemUi:Z

    .line 22
    invoke-virtual {p0, p1, p2}, Lbc;->setSystemUiLightMode(IZ)Z

    .line 25
    :cond_0
    return-void
.end method

.method public startup()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "isNeedDynamicBroadcasting "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lmc;->isNeedDynamicBroadcasting()Z

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    const-string v2, "BasePreassembleDelegateImpl"

    .line 27
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0}, Lmc;->isNeedDynamicBroadcasting()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lmc;->b()V

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    return v0
.end method
