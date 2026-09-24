.class public Lcom/amap/location/icecream/IcecreamFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IcecreamFilter"

.field private static final VALAID_VERSION_NAME:Ljava/lang/String; = "(\\d+)\\.(\\d+)\\.(\\d+)"

.field private static final sCloudPlugin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
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
    sput-object v0, Lcom/amap/location/icecream/IcecreamFilter;->sCloudPlugin:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/amap/location/icecream/IcecreamFilter;->parseJsonArray(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/amap/location/icecream/IcecreamFilter;->sCloudPlugin:Ljava/util/HashMap;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 31
    if-eqz v2, :cond_0

    .line 33
    sget-object v3, Lcom/amap/location/icecream/IcecreamFilter;->sCloudPlugin:Ljava/util/HashMap;

    .line 35
    iget-object v4, v2, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 37
    const-string v5, "_"

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x0

    .line 44
    aget-object v4, v4, v5

    .line 46
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/amap/location/icecream/IcecreamFilter;->initStartAndDownloadList(Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;)V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/icecream/IcecreamFilter;->sCloudPlugin:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 18
    iget-object p0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->md5:Ljava/lang/String;

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method private static getVersionCodeByName(Ljava/lang/String;)[I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [I

    .line 4
    const-string v2, "\\."

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    array-length v2, p0

    .line 11
    if-lt v2, v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    aget-object v2, p0, v0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    move-result v2

    .line 20
    aput v2, v1, v0

    .line 22
    const/4 v0, 0x1

    .line 23
    aget-object v2, p0, v0

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result v2

    .line 29
    aput v2, v1, v0

    .line 31
    const/4 v0, 0x2

    .line 32
    aget-object p0, p0, v0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    move-result p0

    .line 38
    aput p0, v1, v0

    .line 40
    :cond_0
    return-object v1
.end method

.method private static initStartAndDownloadList(Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->getPluginsRootPath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 32
    move-result-object v0

    .line 33
    array-length v1, v0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v1, :cond_5

    .line 37
    aget-object v3, v0, v2

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_4

    .line 49
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 55
    iget-object v6, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->md5:Ljava/lang/String;

    .line 57
    invoke-static {v3, v6}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->checkFileMD5(Ljava/io/File;Ljava/lang/String;)Z

    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3

    .line 63
    iget-object v3, v5, Lcom/amap/location/support/icecream/IcecreamInfo;->type:Ljava/lang/String;

    .line 65
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 71
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {v3}, Lcom/amap/location/support/util/FileUtils;->deleteFileOrDir(Ljava/io/File;)Z

    .line 81
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 87
    move-result-object p0

    .line 88
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object p0

    .line 92
    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_7

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/util/Map$Entry;

    .line 104
    if-eqz p1, :cond_6

    .line 106
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 112
    if-eqz p1, :cond_6

    .line 114
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 122
    :cond_7
    return-void
.end method

.method public static parseJsonArray(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "_"

    .line 3
    invoke-static {}, Lcom/amap/location/support/icecream/SPUtil;->getBlackList()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/amap/location/support/icecream/SPUtil;->clearBlackList()V

    .line 10
    new-instance v2, Ljava/util/HashMap;

    .line 12
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    if-eqz p0, :cond_3

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 20
    move-result-object v3

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_3

    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/String;

    .line 33
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 39
    const-string v5, "list_"

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v5, "n"

    .line 56
    const-string v6, ""

    .line 58
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    const-string v6, "md"

    .line 64
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    const-string v7, "url"

    .line 70
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    const-string v7, "mc"

    .line 75
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v7, "so"

    .line 80
    const/4 v8, 0x0

    .line 81
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 84
    const-string v7, "v"

    .line 86
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v7

    .line 90
    const-string v9, "t"

    .line 92
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    invoke-static {v7}, Lcom/amap/location/icecream/IcecreamFilter;->versionSafe(Ljava/lang/String;)Z

    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_0

    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    move-result-object v7

    .line 105
    aget-object v7, v7, v8

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_2

    .line 131
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    .line 134
    move-result-object v4

    .line 135
    const v5, 0x186e7

    .line 138
    invoke-static {v5, v4}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 141
    invoke-static {v7, v6}, Lcom/amap/location/support/icecream/SPUtil;->addToBlackList(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    invoke-static {v4}, Lcom/amap/location/support/icecream/IcecreamInfo;->buildIcecream(Lorg/json/JSONObject;)Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    goto/16 :goto_0

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 158
    :cond_3
    return-object v2
.end method

.method private static versionSafe(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "(\\d+)\\.(\\d+)\\.(\\d+)"

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_3

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_3

    .line 20
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_3

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 32
    invoke-static {p0}, Lcom/amap/location/icecream/IcecreamFilter;->getVersionCodeByName(Ljava/lang/String;)[I

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v1}, Lcom/amap/location/icecream/IcecreamFilter;->getVersionCodeByName(Ljava/lang/String;)[I

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    array-length v3, p0

    .line 42
    const/4 v4, 0x1

    .line 43
    if-ge v1, v3, :cond_2

    .line 45
    aget v3, p0, v1

    .line 47
    aget v5, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-eq v3, v5, :cond_1

    .line 51
    if-le v3, v5, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 54
    :cond_0
    return v2

    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return v4

    .line 59
    :catch_0
    move-exception p0

    .line 60
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 63
    :cond_3
    return v2
.end method
