.class public Lcom/amap/location/support/icecream/SPUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SP_KEY_APPP_BLACK_LIST:Ljava/lang/String; = "app_black_list"

.field private static final SP_NAME:Ljava/lang/String; = "location_icecream"

.field private static mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToBlackList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lcom/amap/location/support/icecream/SPUtil;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/icecream/SPUtil;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, "_"

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    sget-object v1, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 29
    const-string v2, "app_black_list"

    .line 31
    const-string v3, ""

    .line 33
    invoke-interface {v1, v2, v3}, Lcom/amap/location/support/storage/KeyValueStorer;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    sget-object p1, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 45
    const-string v1, "app_black_list"

    .line 47
    invoke-interface {p1, v1, p0}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_1

    .line 57
    sget-object p0, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 59
    const-string v2, "app_black_list"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "&"

    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p0, v2, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 86
    invoke-interface {p0}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_2
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_1
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    monitor-exit v0

    .line 98
    throw p0
.end method

.method public static declared-synchronized clearBlackList()V
    .locals 4

    .line 1
    const-class v0, Lcom/amap/location/support/icecream/SPUtil;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/icecream/SPUtil;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sget-object v1, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 9
    const-string v2, "app_black_list"

    .line 11
    const-string v3, ""

    .line 13
    invoke-interface {v1, v2, v3}, Lcom/amap/location/support/storage/KeyValueStorer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 18
    invoke-interface {v1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    :try_start_2
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_1
    move-exception v1

    .line 29
    monitor-exit v0

    .line 30
    throw v1
.end method

.method public static declared-synchronized getBlackList()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/amap/location/support/icecream/SPUtil;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/icecream/SPUtil;->init()V

    .line 7
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    sget-object v2, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 11
    const-string v3, "app_black_list"

    .line 13
    const-string v4, ""

    .line 15
    invoke-interface {v2, v3, v4}, Lcom/amap/location/support/storage/KeyValueStorer;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :catchall_0
    :try_start_2
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    monitor-exit v0

    .line 31
    throw v1
.end method

.method private static init()V
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "location_icecream"

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/storage/IKeyValueStorerManager;->create(Ljava/lang/String;)Lcom/amap/location/support/storage/KeyValueStorer;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/amap/location/support/icecream/SPUtil;->mKeyValueStorer:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 17
    :cond_0
    return-void
.end method
