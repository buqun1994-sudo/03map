.class public Lcom/amap/location/signal/impl/manu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = true

.field private static c:Z


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
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/b;->c:Z

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
    const/4 v3, 0x4

    .line 33
    and-int/2addr v0, v3

    .line 34
    if-ne v0, v3, :cond_1

    .line 36
    const/4 v2, 0x1

    .line 37
    :cond_1
    sput-boolean v2, Lcom/amap/location/signal/impl/manu/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "HuaweiDimLocator"

    .line 43
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
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
    const/16 v2, 0x17

    .line 6
    if-lt v1, v2, :cond_0

    .line 8
    sget-boolean v1, Lcom/amap/location/signal/impl/manu/b;->b:Z
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
    const-string v2, "HuaweiDimLocator"

    .line 17
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/b;->a()Z

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
    sget-boolean v0, Lcom/amap/location/signal/impl/manu/b;->c:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/amap/location/signal/impl/manu/b;->c()V

    .line 16
    :cond_1
    sget-boolean v0, Lcom/amap/location/signal/impl/manu/b;->a:Z

    .line 18
    return v0
.end method

.method public static c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/signal/impl/manu/b;->a()Z

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
    sput-boolean v0, Lcom/amap/location/signal/impl/manu/b;->a:Z

    .line 16
    return-void
.end method
