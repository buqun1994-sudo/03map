.class public abstract Lcom/amap/location/support/fpsage/AgeEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UPDATE_INTERVAL:I = 0xea60


# instance fields
.field private mFile:Ljava/io/File;

.field private mHandler:Lcom/amap/location/support/handler/AmapHandler;

.field mHistoricalList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amap/location/support/fpsage/AgeEstimator<",
            "TT;>.SignalAge;>;"
        }
    .end annotation
.end field

.field private mNeedUpdate:Z

.field private mStart:Z

.field public mTag:Ljava/lang/String;

.field private mUpdateToDiskRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/location/support/handler/AmapHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mStart:Z

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 14
    new-instance v0, Lcom/amap/location/support/fpsage/AgeEstimator$2;

    .line 16
    invoke-direct {v0, p0}, Lcom/amap/location/support/fpsage/AgeEstimator$2;-><init>(Lcom/amap/location/support/fpsage/AgeEstimator;)V

    .line 19
    iput-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mUpdateToDiskRunnable:Ljava/lang/Runnable;

    .line 21
    iput-object p2, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 23
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 29
    const-string p1, "unknow"

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 33
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 35
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "_"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 75
    :goto_0
    invoke-direct {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->initFromDisk()V

    .line 78
    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/support/fpsage/AgeEstimator;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/amap/location/support/fpsage/AgeEstimator;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mNeedUpdate:Z

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/amap/location/support/fpsage/AgeEstimator;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mNeedUpdate:Z

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/amap/location/support/fpsage/AgeEstimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->updateToDisk()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/amap/location/support/fpsage/AgeEstimator;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/amap/location/support/fpsage/AgeEstimator;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mUpdateToDiskRunnable:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method private initFromDisk()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "restore from\uff1a\n"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mFile:Ljava/io/File;

    .line 10
    invoke-static {v1}, Lcom/amap/location/support/util/FileUtils;->readLines(Ljava/io/File;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 30
    :try_start_0
    invoke-static {v2}, Lcom/amap/location/support/util/SecurityUtils;->simpleTextDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, "\n"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, ","

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    array-length v3, v2

    .line 51
    const/4 v4, 0x3

    .line 52
    if-ge v3, v4, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    array-length v3, v2

    .line 56
    const/4 v5, 0x4

    .line 57
    if-lt v3, v5, :cond_2

    .line 59
    aget-object v3, v2, v4

    .line 61
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    move-result-wide v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 73
    move-result-wide v3

    .line 74
    :goto_1
    move-wide v10, v3

    .line 75
    iget-object v3, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 77
    const/4 v4, 0x0

    .line 78
    aget-object v4, v2, v4

    .line 80
    new-instance v12, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    .line 82
    const/4 v5, 0x1

    .line 83
    aget-object v5, v2, v5

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    move-result v7

    .line 89
    const/4 v5, 0x2

    .line 90
    aget-object v2, v2, v5

    .line 92
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 95
    move-result-wide v8

    .line 96
    move-object v5, v12

    .line 97
    move-object v6, p0

    .line 98
    invoke-direct/range {v5 .. v11}, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;-><init>(Lcom/amap/location/support/fpsage/AgeEstimator;IJJ)V

    .line 101
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    iget-object v3, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 108
    invoke-static {v3, v2}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private update(Ljava/lang/Object;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getUpdateTime(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 21
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/amap/location/support/fpsage/AgeEstimator;->setUpdateTime(Ljava/lang/Object;JZ)V

    .line 22
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    new-instance v10, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    invoke-virtual {p0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getSignal(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getUpdateTime(Ljava/lang/Object;)J

    move-result-wide v6

    move-object v3, v10

    move-object v4, p0

    move-wide v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;-><init>(Lcom/amap/location/support/fpsage/AgeEstimator;IJJ)V

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-boolean v2, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mNeedUpdate:Z

    goto :goto_0

    .line 24
    :cond_1
    iput-wide p2, v1, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->updateTimeMills:J

    .line 25
    iget v0, v1, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->signalStrength:I

    invoke-virtual {p0, p1, v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->strengthChange(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/amap/location/support/fpsage/AgeEstimator;->setUpdateTime(Ljava/lang/Object;JZ)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getSignal(Ljava/lang/Object;)I

    move-result p2

    iput p2, v1, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->signalStrength:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getUpdateTime(Ljava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->lastUpdateTimeMills:J

    .line 29
    iput-boolean v2, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mNeedUpdate:Z

    goto :goto_0

    .line 30
    :cond_2
    iget-wide p2, v1, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->lastUpdateTimeMills:J

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amap/location/support/fpsage/AgeEstimator;->setUpdateTime(Ljava/lang/Object;JZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private declared-synchronized updateToDisk()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitSize()I

    .line 5
    move-result v0

    .line 6
    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 13
    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitTime()J

    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    cmp-long v4, v0, v2

    .line 21
    if-lez v4, :cond_1

    .line 23
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 30
    move-result-wide v0

    .line 31
    iget-object v2, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 33
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    iget-object v4, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    .line 65
    iget-wide v3, v3, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->updateTimeMills:J

    .line 67
    sub-long v3, v0, v3

    .line 69
    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitTime()J

    .line 72
    move-result-wide v5

    .line 73
    cmp-long v7, v3, v5

    .line 75
    if-lez v7, :cond_0

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 83
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitSize()I

    .line 90
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-le v0, v1, :cond_3

    .line 93
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 95
    iget-object v2, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 97
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    new-instance v2, Lcom/amap/location/support/fpsage/AgeEstimator$1;

    .line 106
    invoke-direct {v2, p0}, Lcom/amap/location/support/fpsage/AgeEstimator$1;-><init>(Lcom/amap/location/support/fpsage/AgeEstimator;)V

    .line 109
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitSize()I

    .line 115
    move-result v2

    .line 116
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 119
    move-result v3

    .line 120
    if-ge v2, v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v4

    .line 128
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const-string v3, "del estimator surpass num:"

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v3, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 148
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 151
    move-result v3

    .line 152
    sub-int/2addr v0, v3

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    goto :goto_2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_2
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 167
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    .line 177
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 180
    move-result-object v1

    .line 181
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v1

    .line 185
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_4

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Ljava/util/Map$Entry;

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ljava/lang/String;

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v4, ","

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    .line 222
    iget v4, v4, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->signalStrength:I

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v4, ","

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 235
    move-result-object v4

    .line 236
    check-cast v4, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    .line 238
    iget-wide v4, v4, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->lastUpdateTimeMills:J

    .line 240
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 243
    const-string v4, ","

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    .line 254
    iget-wide v4, v2, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;->updateTimeMills:J

    .line 256
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v2

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-static {v2}, Lcom/amap/location/support/util/SecurityUtils;->simpleTextEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v2, "\n"

    .line 277
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    goto :goto_3

    .line 288
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_5

    .line 298
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mFile:Ljava/io/File;

    .line 300
    const/4 v2, 0x0

    .line 301
    invoke-static {v0, v1, v2}, Lcom/amap/location/support/util/FileUtils;->writeToFile(Ljava/lang/String;Ljava/io/File;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    goto :goto_4

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    goto :goto_5

    .line 307
    :catch_1
    move-exception v0

    .line 308
    :try_start_3
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 310
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :cond_5
    :goto_4
    monitor-exit p0

    .line 314
    return-void

    .line 315
    :goto_5
    monitor-exit p0

    .line 316
    throw v0
.end method


# virtual methods
.method public abstract getDelLimitSize()I
.end method

.method public abstract getDelLimitTime()J
.end method

.method public abstract getKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getSignal(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract getUpdateTime(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public abstract isInWifiFence()Z
.end method

.method public abstract setInWifiFence(Z)V
.end method

.method public abstract setUpdateTime(Ljava/lang/Object;JZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mStart:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mUpdateToDiskRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 16
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mUpdateToDiskRunnable:Ljava/lang/Runnable;

    .line 18
    const-wide/32 v2, 0xea60

    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 26
    const-string v1, "start"

    .line 28
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mStart:Z

    .line 34
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mUpdateToDiskRunnable:Ljava/lang/Runnable;

    .line 7
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mUpdateToDiskRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mStart:Z

    .line 18
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    .line 20
    const-string v1, "stop"

    .line 22
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public abstract strengthChange(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method

.method public declared-synchronized update(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/amap/location/support/fpsage/AgeEstimator;->update(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-direct {p0, v1, v8, v9}, Lcom/amap/location/support/fpsage/AgeEstimator;->update(Ljava/lang/Object;J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mNeedUpdate:Z

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitSize()I

    move-result v1

    if-gtz v1, :cond_5

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget-object v10, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mHistoricalList:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;

    invoke-virtual {p0, v1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getSignal(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/amap/location/support/fpsage/AgeEstimator;->getUpdateTime(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v1, v12

    move-object v2, p0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/amap/location/support/fpsage/AgeEstimator$SignalAge;-><init>(Lcom/amap/location/support/fpsage/AgeEstimator;IJJ)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/amap/location/support/fpsage/AgeEstimator;->getDelLimitSize()I

    move-result p1

    if-lez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/amap/location/support/fpsage/AgeEstimator;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "estimator reset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
