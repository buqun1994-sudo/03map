.class public Lcom/amap/location/signal/impl/manu/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = true

.field private static c:Ljava/lang/Boolean;

.field private static d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "d_get_dim"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/a;->d:Z

    .line 20
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 23
    move-result-object v0

    .line 24
    const-string v3, "dim"

    .line 26
    const/16 v4, 0xf

    .line 28
    invoke-virtual {v0, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 31
    move-result v0

    .line 32
    const/16 v3, 0x8

    .line 34
    and-int/2addr v0, v3

    .line 35
    if-ne v0, v3, :cond_1

    .line 37
    const/4 v2, 0x1

    .line 38
    :cond_1
    sput-boolean v2, Lcom/amap/location/signal/impl/manu/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "FakeHuaweiDimLocator"

    .line 44
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :goto_1
    return-void
.end method

.method public static a()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    const/16 v2, 0x1e

    .line 6
    if-lt v1, v2, :cond_0

    .line 8
    sget-boolean v1, Lcom/amap/location/signal/impl/manu/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    :cond_0
    return v0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    const-string v2, "FakeHuaweiDimLocator"

    .line 17
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    sget-boolean v0, Lcom/amap/location/signal/impl/manu/a;->d:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->c()V

    .line 16
    :cond_1
    sget-boolean v0, Lcom/amap/location/signal/impl/manu/a;->a:Z

    .line 18
    return v0
.end method

.method public static c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->a()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "com.huawei.permission.ACCESS_APPROXIMATELY_LOCATION"

    .line 10
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/a;->a:Z

    .line 16
    return-void
.end method

.method public static d()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/amap/location/signal/impl/manu/a;->c:Ljava/lang/Boolean;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isXiamo()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_5

    .line 16
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isOppo()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_5

    .line 22
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_5

    .line 28
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isVivo()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getManufacturer()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 45
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    sput-object v0, Lcom/amap/location/signal/impl/manu/a;->c:Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result v0

    .line 53
    return v0

    .line 54
    :cond_2
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 57
    move-result-object v1

    .line 58
    const-string v2, "fake_huawei"

    .line 60
    const-string v3, ""

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 72
    const-string v2, ","

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    array-length v2, v1

    .line 79
    const/4 v3, 0x0

    .line 80
    :goto_0
    if-ge v3, v2, :cond_4

    .line 82
    aget-object v4, v1, v3

    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 90
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    sput-object v0, Lcom/amap/location/signal/impl/manu/a;->c:Ljava/lang/Boolean;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    return v0

    .line 99
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    const-string v1, "FakeHuaweiDimLocator"

    .line 105
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 110
    sput-object v0, Lcom/amap/location/signal/impl/manu/a;->c:Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    move-result v0

    .line 116
    return v0

    .line 117
    :cond_5
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    sput-object v0, Lcom/amap/location/signal/impl/manu/a;->c:Ljava/lang/Boolean;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    move-result v0

    .line 125
    return v0
.end method
