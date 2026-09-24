.class public Lcom/amap/location/support/network/gateway/LimitStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HEADER_LIMIT_E:Ljava/lang/String; = "LIMIT-E"

.field public static final HEADER_LIMIT_I:Ljava/lang/String; = "LIMIT-I"

.field public static final HEADER_LIMIT_S:Ljava/lang/String; = "LIMIT-S"

.field public static final HEADER_LIMIT_T:Ljava/lang/String; = "LIMIT-T"

.field public static final HEADER_UPDATE_TIME:Ljava/lang/String; = "UPDATE-TIME"

.field public static final SECONDS_OF_DAY:I = 0x15180

.field public static final SECONDS_OF_HOUR:I = 0xe10

.field public static final SP_KEY_PREFIX:Ljava/lang/String; = "GATEWAY_STRATEGY_"

.field private static final TAG:Ljava/lang/String; = "LimitStrategy"


# instance fields
.field private mExpirationTimeMillis:J

.field private mLastPassTime:J

.field public mLimitE:Ljava/lang/String;

.field public mLimitI:Ljava/lang/String;

.field private mLimitIntervalMillis:I

.field public mLimitT:Ljava/lang/String;

.field private mUpdateTimeMillis:J

.field public mUrlKey:Ljava/lang/String;

.field private final mValidTimeBuckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private final sSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 15
    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLastPassTime:J

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mValidTimeBuckets:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->clear()V

    .line 31
    return-void
.end method

.method private formatSeconds(I)Ljava/lang/String;
    .locals 3

    .line 1
    div-int/lit16 v0, p1, 0xe10

    .line 3
    rem-int/lit16 v1, p1, 0xe10

    .line 5
    div-int/lit8 v1, v1, 0x3c

    .line 7
    rem-int/lit8 p1, p1, 0x3c

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, ":"

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private parse()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mValidTimeBuckets:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitT:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    const v1, 0x15180

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitT:Ljava/lang/String;

    .line 20
    const-string v3, "_"

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    array-length v3, v0

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v3, :cond_1

    .line 30
    aget-object v5, v0, v4

    .line 32
    const-string v6, "-"

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    aget-object v6, v5, v2

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    move-result v6

    .line 44
    const/4 v7, 0x1

    .line 45
    aget-object v5, v5, v7

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    move-result v5

    .line 51
    add-int/2addr v5, v6

    .line 52
    if-ltz v6, :cond_0

    .line 54
    if-lt v5, v6, :cond_0

    .line 56
    if-gt v5, v1, :cond_0

    .line 58
    iget-object v7, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mValidTimeBuckets:Ljava/util/List;

    .line 60
    filled-new-array {v6, v5}, [I

    .line 63
    move-result-object v5

    .line 64
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 74
    :cond_1
    const-wide/16 v3, 0x0

    .line 76
    iput-wide v3, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mExpirationTimeMillis:J

    .line 78
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitE:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitE:Ljava/lang/String;

    .line 88
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 91
    move-result-wide v5

    .line 92
    cmp-long v0, v5, v3

    .line 94
    if-lez v0, :cond_2

    .line 96
    const-wide/16 v3, 0x2d0

    .line 98
    cmp-long v0, v5, v3

    .line 100
    if-gtz v0, :cond_2

    .line 102
    const-wide/16 v3, 0xe10

    .line 104
    mul-long v5, v5, v3

    .line 106
    const-wide/16 v3, 0x3e8

    .line 108
    mul-long v5, v5, v3

    .line 110
    iget-wide v3, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUpdateTimeMillis:J

    .line 112
    add-long/2addr v5, v3

    .line 113
    iput-wide v5, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mExpirationTimeMillis:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 120
    :cond_2
    :goto_1
    iput v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitIntervalMillis:I

    .line 122
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitI:Ljava/lang/String;

    .line 124
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_3

    .line 130
    :try_start_2
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitI:Ljava/lang/String;

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_3

    .line 138
    if-gt v0, v1, :cond_3

    .line 140
    mul-int/lit16 v0, v0, 0x3e8

    .line 142
    iput v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitIntervalMillis:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    goto :goto_2

    .line 145
    :catch_2
    move-exception v0

    .line 146
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 149
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitT:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitE:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitI:Ljava/lang/String;

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUpdateTimeMillis:J

    .line 13
    iput-wide v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mExpirationTimeMillis:J

    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitIntervalMillis:I

    .line 18
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mValidTimeBuckets:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " strategy destory"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "LimitStrategy"

    .line 22
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->clear()V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v1, "GATEWAY_STRATEGY_"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/amap/location/support/network/gateway/Utils;->removeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public getTime(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getValidRestTime()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mExpirationTimeMillis:J

    .line 11
    sub-long/2addr v2, v0

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public hitRequestInterval(J)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitIntervalMillis:I

    .line 3
    int-to-long v1, v0

    .line 4
    iget-wide v3, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLastPassTime:J

    .line 6
    sub-long/2addr p1, v3

    .line 7
    sub-long/2addr v1, p1

    .line 8
    const-wide/16 p1, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 12
    cmp-long v0, v1, p1

    .line 14
    if-lez v0, :cond_0

    .line 16
    return-wide v1

    .line 17
    :cond_0
    return-wide p1
.end method

.method public hitValidTimeBucket(J)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mValidTimeBuckets:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    if-nez v0, :cond_3

    .line 11
    const-wide/16 v3, 0x3e8

    .line 13
    div-long/2addr p1, v3

    .line 14
    const-wide/16 v3, 0x7080

    .line 16
    add-long/2addr p1, v3

    .line 17
    const-wide/32 v3, 0x15180

    .line 20
    rem-long/2addr p1, v3

    .line 21
    long-to-int p2, p1

    .line 22
    iget-object p1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mValidTimeBuckets:Ljava/util/List;

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 28
    const v0, 0x15180

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, [I

    .line 43
    if-eqz v3, :cond_0

    .line 45
    array-length v4, v3

    .line 46
    const/4 v5, 0x2

    .line 47
    if-ne v4, v5, :cond_0

    .line 49
    const/4 v4, 0x0

    .line 50
    aget v4, v3, v4

    .line 52
    if-gt v4, p2, :cond_1

    .line 54
    const/4 v5, 0x1

    .line 55
    aget v3, v3, v5

    .line 57
    if-gt p2, v3, :cond_1

    .line 59
    return-wide v1

    .line 60
    :cond_1
    sub-int/2addr v4, p2

    .line 61
    if-lez v4, :cond_0

    .line 63
    if-ge v4, v0, :cond_0

    .line 65
    move v0, v4

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    mul-int/lit16 v0, v0, 0x3e8

    .line 69
    int-to-long p1, v0

    .line 70
    return-wide p1

    .line 71
    :cond_3
    return-wide v1
.end method

.method public pass(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLastPassTime:J

    .line 3
    return-void
.end method

.method public readFromLocal()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->clear()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "GATEWAY_STRATEGY_"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, ""

    .line 25
    invoke-static {v0, v1}, Lcom/amap/location/support/network/gateway/Utils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 35
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 37
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v0, "LIMIT-T"

    .line 42
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitT:Ljava/lang/String;

    .line 48
    const-string v0, "LIMIT-E"

    .line 50
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitE:Ljava/lang/String;

    .line 56
    const-string v0, "LIMIT-I"

    .line 58
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitI:Ljava/lang/String;

    .line 64
    const-string v0, "UPDATE-TIME"

    .line 66
    const-wide/16 v3, 0x0

    .line 68
    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUpdateTimeMillis:J

    .line 74
    invoke-direct {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->parse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "mUrlKey:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "\n"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "valid:"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->getValidRestTime()J

    .line 29
    move-result-wide v2

    .line 30
    const-wide/16 v4, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    const/4 v7, 0x0

    .line 34
    cmp-long v8, v2, v4

    .line 36
    if-lez v8, :cond_0

    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "mUpdateTimeMillis:"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-wide v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUpdateTimeMillis:J

    .line 54
    invoke-virtual {p0, v2, v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->getTime(J)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "mExpirationTimeMillis:"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-wide v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mExpirationTimeMillis:J

    .line 71
    invoke-virtual {p0, v2, v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->getTime(J)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, "mLimitIntervalMillis:"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitIntervalMillis:I

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "mLastPassTime:"

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-wide v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLastPassTime:J

    .line 101
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v2, "mValidTimeBuckets:"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mValidTimeBuckets:Ljava/util/List;

    .line 114
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v2

    .line 118
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v3

    .line 128
    check-cast v3, [I

    .line 130
    const-string v4, "["

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    aget v4, v3, v7

    .line 137
    invoke-direct {p0, v4}, Lcom/amap/location/support/network/gateway/LimitStrategy;->formatSeconds(I)Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v4, ","

    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    aget v3, v3, v6

    .line 151
    invoke-direct {p0, v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->formatSeconds(I)Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v3, "] "

    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitT:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitE:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitI:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 14
    move-result-wide p1

    .line 15
    iput-wide p1, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUpdateTimeMillis:J

    .line 17
    invoke-direct {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->parse()V

    .line 20
    invoke-virtual {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->updateToLocal()V

    .line 23
    sget-boolean p1, Lcom/amap/location/support/AmapContext;->DEBUG:Z

    .line 25
    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iget-object p2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string p2, " update:\n"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    const-string p2, "LimitStrategy"

    .line 55
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public updateToLocal()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "LIMIT-T"

    .line 8
    iget-object v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitT:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "LIMIT-E"

    .line 15
    iget-object v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitE:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "LIMIT-I"

    .line 22
    iget-object v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mLimitI:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "UPDATE-TIME"

    .line 29
    iget-wide v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUpdateTimeMillis:J

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v2, "GATEWAY_STRATEGY_"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v2, p0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/amap/location/support/network/gateway/Utils;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 65
    :goto_0
    return-void
.end method
