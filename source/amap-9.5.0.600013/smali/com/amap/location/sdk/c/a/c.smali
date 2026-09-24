.class public Lcom/amap/location/sdk/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[[I = null

.field private static b:Z = false

.field private static c:Lcom/amap/location/sdk/c/a/a; = null

.field private static d:Lcom/amap/location/sdk/c/a/b; = null

.field private static e:Lcom/amap/location/sdk/c/a/b; = null

.field private static f:Lcom/amap/location/sdk/c/a/b; = null

.field private static g:Lcom/amap/location/sdk/c/a/b; = null

.field private static volatile h:Lcom/amap/location/support/storage/KeyValueStorer; = null

.field private static i:Z = true

.field private static j:I

.field private static k:Z

.field private static l:Lcom/amap/location/support/cloud/IAmapCloudListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/location/sdk/c/a/c$2;

    .line 3
    const-string v1, "l"

    .line 5
    invoke-direct {v0, v1}, Lcom/amap/location/sdk/c/a/c$2;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/amap/location/sdk/c/a/c;->l:Lcom/amap/location/support/cloud/IAmapCloudListener;

    .line 10
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/amap/location/sdk/c/a/c;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v1

    sget-object v2, Lcom/amap/location/sdk/c/a/c;->l:Lcom/amap/location/support/cloud/IAmapCloudListener;

    invoke-virtual {v1, v2}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lcom/amap/location/k/b;->c()V

    const/4 v1, 0x0

    .line 52
    sput-object v1, Lcom/amap/location/sdk/c/a/c;->c:Lcom/amap/location/sdk/c/a/a;

    .line 53
    sput-object v1, Lcom/amap/location/sdk/c/a/c;->d:Lcom/amap/location/sdk/c/a/b;

    .line 54
    sput-object v1, Lcom/amap/location/sdk/c/a/c;->f:Lcom/amap/location/sdk/c/a/b;

    .line 55
    sput-object v1, Lcom/amap/location/sdk/c/a/c;->g:Lcom/amap/location/sdk/c/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/amap/location/k/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static declared-synchronized a(Z)V
    .locals 8

    const-class v0, Lcom/amap/location/sdk/c/a/c;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/amap/location/k/a;

    invoke-direct {v1}, Lcom/amap/location/k/a;-><init>()V

    .line 2
    new-instance v2, Lcom/amap/location/sdk/c/a/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/amap/location/sdk/c/a/a;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/amap/location/sdk/c/a/c;->c:Lcom/amap/location/sdk/c/a/a;

    iput-object v2, v1, Lcom/amap/location/k/a;->a:Lcom/amap/location/k/b/a;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    const-string v6, "enableUploadWifi"

    .line 4
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "enableUploadMobile"

    .line 5
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "maxSizeInDB"

    if-eqz p0, :cond_0

    const v7, 0x3d0900

    goto :goto_0

    :cond_0
    const v7, 0x7a120

    .line 6
    :goto_0
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 7
    :try_start_2
    invoke-static {v6}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 8
    :goto_1
    new-instance v6, Lcom/amap/location/sdk/c/a/b;

    invoke-direct {v6, v2}, Lcom/amap/location/sdk/c/a/b;-><init>(Lorg/json/JSONObject;)V

    sput-object v6, Lcom/amap/location/sdk/c/a/c;->d:Lcom/amap/location/sdk/c/a/b;

    iput-object v6, v1, Lcom/amap/location/k/a;->b:Lcom/amap/location/k/b/b;

    .line 9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    const-string v6, "enableUploadWifi"

    .line 10
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "enableUploadMobile"

    .line 11
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "maxSizeInDB"

    const v7, 0x989680

    .line 12
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "bufferSize"

    const/16 v7, 0x3e8

    .line 13
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "blockCount"

    .line 14
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "storePeriod"

    const/16 v6, 0x4e20

    .line 15
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "sizeOfPerRequestWifi"

    const v6, 0x186a0

    .line 16
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "uploadTimeout"

    const v6, 0x493e0

    .line 17
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    .line 18
    :try_start_4
    invoke-static {v4}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p0, :cond_1

    .line 19
    new-instance v3, Lcom/amap/location/sdk/c/a/b;

    invoke-direct {v3, v2}, Lcom/amap/location/sdk/c/a/b;-><init>(Lorg/json/JSONObject;)V

    :cond_1
    sput-object v3, Lcom/amap/location/sdk/c/a/c;->e:Lcom/amap/location/sdk/c/a/b;

    iput-object v3, v1, Lcom/amap/location/k/a;->c:Lcom/amap/location/k/b/b;

    .line 20
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const v3, 0x2625a0

    .line 21
    :try_start_5
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->k()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object v4

    const-string v6, "is_key_log_switch"

    .line 22
    invoke-interface {v4, v6, v5}, Lcom/amap/location/support/storage/KeyValueStorer;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "enableUploadWifi"

    .line 23
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "enableUploadMobile"

    .line 24
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "timeGapOfAutoUpload"

    const v6, 0x1b7740

    .line 25
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "maxSizeInDB"

    if-eqz p0, :cond_2

    const v6, 0x2625a0

    goto :goto_3

    :cond_2
    const v6, 0xf4240

    .line 26
    :goto_3
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    .line 27
    :try_start_6
    invoke-static {v4}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 28
    :goto_4
    new-instance v4, Lcom/amap/location/sdk/c/a/b;

    invoke-direct {v4, v2}, Lcom/amap/location/sdk/c/a/b;-><init>(Lorg/json/JSONObject;)V

    sput-object v4, Lcom/amap/location/sdk/c/a/c;->f:Lcom/amap/location/sdk/c/a/b;

    iput-object v4, v1, Lcom/amap/location/k/a;->d:Lcom/amap/location/k/b/b;

    .line 29
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 30
    :try_start_7
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->k()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object v4

    const-string v6, "is_trace_open"

    .line 31
    invoke-interface {v4, v6, v5}, Lcom/amap/location/support/storage/KeyValueStorer;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "enableUploadWifi"

    .line 32
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "enableUploadMobile"

    .line 33
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "maxSizeInDB"

    if-eqz p0, :cond_3

    const v3, 0x5b8d80

    .line 34
    :cond_3
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "timeGapOfAutoUpload"

    const v3, 0x36ee80

    .line 35
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "validityTimeInDB"

    const v3, 0x19bfcc00

    .line 36
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    .line 37
    :try_start_8
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 38
    :goto_5
    new-instance p0, Lcom/amap/location/sdk/c/a/b;

    invoke-direct {p0, v2}, Lcom/amap/location/sdk/c/a/b;-><init>(Lorg/json/JSONObject;)V

    sput-object p0, Lcom/amap/location/sdk/c/a/c;->g:Lcom/amap/location/sdk/c/a/b;

    iput-object p0, v1, Lcom/amap/location/k/a;->e:Lcom/amap/location/k/b/b;

    .line 39
    invoke-static {}, Lcom/amap/location/d/e;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 40
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->d()V

    .line 41
    :cond_4
    invoke-static {v1}, Lcom/amap/location/k/b;->a(Lcom/amap/location/k/a;)V

    const-string p0, "uptunnel_peaktime_key"

    .line 42
    invoke-static {p0}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimesFromSp(Ljava/lang/String;)[[I

    move-result-object p0

    sput-object p0, Lcom/amap/location/sdk/c/a/c;->a:[[I

    const-string p0, "uptunnel_randomtime_key"

    .line 43
    invoke-static {p0}, Lcom/amap/location/support/util/PeakTimesHelper;->getDelayRandomTimeFromSp(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/amap/location/sdk/c/a/c;->j:I

    .line 44
    sget-object v1, Lcom/amap/location/sdk/c/a/c;->a:[[I

    if-nez v1, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    const-string p0, "uptunnelwp"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uptunnel peaktime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amap/location/sdk/c/a/c;->a:[[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",random"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/amap/location/sdk/c/a/c;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_6
    new-instance p0, Lcom/amap/location/sdk/c/a/c$1;

    invoke-direct {p0}, Lcom/amap/location/sdk/c/a/c$1;-><init>()V

    .line 47
    invoke-static {p0}, Lcom/amap/location/support/AmapContext;->initUptunnel(Lcom/amap/location/support/uptunnel/IUpTunnel;)V

    .line 48
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object p0

    sget-object v1, Lcom/amap/location/sdk/c/a/c;->l:Lcom/amap/location/support/cloud/IAmapCloudListener;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 49
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/amap/location/sdk/c/a/c;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/location/k/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic b(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/location/sdk/c/a/c;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static declared-synchronized b(Z)V
    .locals 6

    const-class v0, Lcom/amap/location/sdk/c/a/c;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/sdk/j/b;->a()J

    move-result-wide v1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf731400

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const/4 p0, 0x1

    .line 6
    :cond_0
    sget-object v1, Lcom/amap/location/sdk/c/a/c;->g:Lcom/amap/location/sdk/c/a/b;

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "enableUploadWifi"

    .line 8
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    :try_start_2
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    sget-object p0, Lcom/amap/location/sdk/c/a/c;->g:Lcom/amap/location/sdk/c/a/b;

    invoke-virtual {p0, v1}, Lcom/amap/location/sdk/c/a/b;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()V
    .locals 2

    const-class v0, Lcom/amap/location/sdk/c/a/c;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/k/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "lts"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 11
    invoke-static {v0}, Lcom/amap/location/sdk/c/a/c;->d(Z)V

    const/4 v0, 0x3

    .line 12
    invoke-static {v0}, Lcom/amap/location/k/a/c;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/sdk/c/a/c;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x4

    .line 13
    invoke-static {v0}, Lcom/amap/location/k/a/c;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/sdk/c/a/c;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v1}, Lcom/amap/location/sdk/c/a/c;->d(Z)V

    :goto_0
    const-string v0, "lkls"

    .line 15
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/amap/location/sdk/c/a/c;->e(Z)V

    const-string v0, "event"

    .line 16
    sget-boolean v2, Lcom/amap/location/sdk/c/a/c;->i:Z

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amap/location/sdk/c/a/c;->i:Z

    const-string v0, "feedback"

    .line 17
    sget-boolean v2, Lcom/amap/location/sdk/c/a/c;->b:Z

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amap/location/sdk/c/a/c;->b:Z

    const-string v0, "drt"

    .line 18
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/amap/location/sdk/c/a/c;->j:I

    const-string v1, "uptunnel_randomtime_key"

    .line 19
    invoke-static {v1, v0}, Lcom/amap/location/support/util/PeakTimesHelper;->saveDelayRandomTime(Ljava/lang/String;I)V

    const-string v0, "peaktime"

    .line 20
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "uptunnel_peaktime_key"

    .line 21
    invoke-static {v0, p0}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimes(Ljava/lang/String;Ljava/lang/String;)[[I

    move-result-object p0

    sput-object p0, Lcom/amap/location/sdk/c/a/c;->a:[[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static declared-synchronized c(Z)V
    .locals 3

    const-class v0, Lcom/amap/location/sdk/c/a/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/location/sdk/c/a/c;->f:Lcom/amap/location/sdk/c/a/b;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "enableUploadWifi"

    .line 5
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    :try_start_2
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    sget-object p0, Lcom/amap/location/sdk/c/a/c;->f:Lcom/amap/location/sdk/c/a/b;

    invoke-virtual {p0, v1}, Lcom/amap/location/sdk/c/a/b;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amap/location/sdk/c/a/c$3;

    invoke-direct {v0}, Lcom/amap/location/sdk/c/a/c$3;-><init>()V

    invoke-static {v0}, Lcom/amap/location/support/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Z)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->k()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object v0

    const-string v1, "is_trace_open"

    invoke-interface {v0, v1, p0}, Lcom/amap/location/support/storage/KeyValueStorer;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->k()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V

    .line 3
    invoke-static {p0}, Lcom/amap/location/sdk/c/a/c;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static e(Z)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->k()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object v0

    const-string v1, "is_key_log_switch"

    invoke-interface {v0, v1, p0}, Lcom/amap/location/support/storage/KeyValueStorer;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->k()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V

    .line 3
    invoke-static {p0}, Lcom/amap/location/sdk/c/a/c;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static e()Z
    .locals 1

    .line 5
    sget-boolean v0, Lcom/amap/location/sdk/c/a/c;->k:Z

    return v0
.end method

.method public static f()J
    .locals 2

    .line 1
    sget v0, Lcom/amap/location/sdk/c/a/c;->j:I

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/util/PeakTimesHelper;->getDelayRadomTime(I)I

    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method public static g()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Lcom/amap/location/sdk/c/a/c;->a:[[I

    .line 11
    invoke-static {v0, v1, v2}, Lcom/amap/location/support/util/PeakTimesHelper;->hitPeakTimes(J[[I)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static synthetic h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/location/sdk/c/a/c;->i:Z

    .line 3
    return v0
.end method

.method public static synthetic i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/amap/location/sdk/c/a/c;->b:Z

    .line 3
    return v0
.end method

.method public static synthetic j()Lcom/amap/location/support/storage/KeyValueStorer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->k()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static k()Lcom/amap/location/support/storage/KeyValueStorer;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/sdk/c/a/c;->h:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "SP_TRACE_CLOUD"

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/storage/IKeyValueStorerManager;->create(Ljava/lang/String;)Lcom/amap/location/support/storage/KeyValueStorer;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/amap/location/sdk/c/a/c;->h:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 17
    :cond_0
    sget-object v0, Lcom/amap/location/sdk/c/a/c;->h:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 19
    return-object v0
.end method
