.class public Lcom/amap/location/support/util/CloudSdkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;
    }
.end annotation


# static fields
.field private static sConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sReplayMode:Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;

.field private static sStatisticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/support/util/CloudSdkUtils;->sStatisticsMap:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/amap/location/support/util/CloudSdkUtils;->sConfigMap:Ljava/util/Map;

    .line 15
    sget-object v0, Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;->SINGLE_THREAD:Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;

    .line 17
    sput-object v0, Lcom/amap/location/support/util/CloudSdkUtils;->sReplayMode:Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-class v0, Lcom/amap/location/support/util/CloudSdkUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x8

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    sget-object v1, Lcom/amap/location/support/util/CloudSdkUtils;->sConfigMap:Ljava/util/Map;

    .line 14
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public static declared-synchronized addCount(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lcom/amap/location/support/util/CloudSdkUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x8

    .line 10
    if-ne v1, v2, :cond_1

    .line 12
    sget-object v1, Lcom/amap/location/support/util/CloudSdkUtils;->sStatisticsMap:Ljava/util/Map;

    .line 14
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 21
    sget-object v1, Lcom/amap/location/support/util/CloudSdkUtils;->sStatisticsMap:Ljava/util/Map;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v1, Lcom/amap/location/support/util/CloudSdkUtils;->sStatisticsMap:Ljava/util/Map;

    .line 33
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v3

    .line 43
    add-int/2addr v3, v2

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0

    .line 55
    throw p0
.end method

.method public static declared-synchronized getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class v0, Lcom/amap/location/support/util/CloudSdkUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x8

    .line 10
    if-ne v1, v2, :cond_1

    .line 12
    sget-object v1, Lcom/amap/location/support/util/CloudSdkUtils;->sConfigMap:Ljava/util/Map;

    .line 14
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, p0

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return-object p1

    .line 24
    :cond_1
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public static declared-synchronized getCount(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-class v0, Lcom/amap/location/support/util/CloudSdkUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x8

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v2, :cond_1

    .line 13
    sget-object v1, Lcom/amap/location/support/util/CloudSdkUtils;->sStatisticsMap:Ljava/util/Map;

    .line 15
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez v1, :cond_0

    .line 21
    monitor-exit v0

    .line 22
    return v3

    .line 23
    :cond_0
    :try_start_1
    sget-object v1, Lcom/amap/location/support/util/CloudSdkUtils;->sStatisticsMap:Ljava/util/Map;

    .line 25
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v0

    .line 36
    return p0

    .line 37
    :cond_1
    monitor-exit v0

    .line 38
    return v3

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0

    .line 41
    throw p0
.end method

.method public static getReplayMode()Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/util/CloudSdkUtils;->sReplayMode:Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;

    .line 3
    return-object v0
.end method

.method public static declared-synchronized setReplayMode(Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;)V
    .locals 1

    .line 1
    const-class v0, Lcom/amap/location/support/util/CloudSdkUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/amap/location/support/util/CloudSdkUtils;->sReplayMode:Lcom/amap/location/support/util/CloudSdkUtils$ReplayMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
.end method
