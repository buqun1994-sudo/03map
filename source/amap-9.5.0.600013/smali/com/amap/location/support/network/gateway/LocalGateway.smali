.class public Lcom/amap/location/support/network/gateway/LocalGateway;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOMAIN_PROXY_BLACK:Ljava/lang/String; = "control.aps.amap.com"

.field private static final TAG:Ljava/lang/String; = "LocalGateway"


# instance fields
.field private mAllowDomainProxy:Z

.field private mAllowRequestLimit:Z

.field private final mDomainProxy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mHasInitStrategy:Z

.field private final mLimitStrategy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amap/location/support/network/gateway/LimitStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mDomainProxy:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 18
    return-void
.end method

.method private initLimitStrategy()V
    .locals 10

    .line 1
    const-string v0, "GATEWAY_STRATEGY_"

    .line 3
    iget-boolean v1, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mHasInitStrategy:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mHasInitStrategy:Z

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 16
    invoke-static {}, Lcom/amap/location/support/network/gateway/Utils;->getAllKey()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_4

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 48
    const-string v3, ""

    .line 50
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lcom/amap/location/support/network/gateway/LimitStrategy;

    .line 56
    invoke-direct {v3, v2}, Lcom/amap/location/support/network/gateway/LimitStrategy;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->readFromLocal()V

    .line 62
    sget-boolean v4, Lcom/amap/location/support/AmapContext;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const-string v5, "LocalGateway"

    .line 66
    if-eqz v4, :cond_2

    .line 68
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v6, "init limit strategy:"

    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->toString()Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    invoke-static {v5, v4}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    invoke-virtual {v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->getValidRestTime()J

    .line 95
    move-result-wide v6

    .line 96
    const-wide/16 v8, 0x0

    .line 98
    cmp-long v4, v6, v8

    .line 100
    if-lez v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 104
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v6, "limit strategy delete when init of "

    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-static {v5, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 136
    :cond_4
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/amap/location/support/network/HttpRequest;)Lcom/amap/location/support/network/gateway/LocalHttpResponse;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mEnable:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 6
    if-nez p1, :cond_0

    .line 8
    goto/16 :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowDomainProxy:Z

    .line 12
    const-string v2, "LocalGateway"

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Lcom/amap/location/support/network/gateway/Utils;->getUrlHost(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 28
    iget-object v3, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mDomainProxy:Ljava/util/Map;

    .line 30
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 36
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 42
    iget-object v4, p1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 44
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 50
    sget-boolean v0, Lcom/amap/location/support/AmapContext;->DEBUG:Z

    .line 52
    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v3, "\u539f\u59cbURL\uff1a"

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "\u66ff\u6362\u4e3a:"

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v3, p1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowRequestLimit:Z

    .line 86
    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p1, Lcom/amap/location/support/network/HttpRequest;->headers:Ljava/util/Map;

    .line 90
    const-string v3, "LIMIT-S"

    .line 92
    const-string v4, "TI"

    .line 94
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p1, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/amap/location/support/network/gateway/Utils;->getUrlKey(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 111
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/amap/location/support/network/gateway/LimitStrategy;

    .line 117
    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->getValidRestTime()J

    .line 122
    move-result-wide v3

    .line 123
    const-wide/16 v5, 0x0

    .line 125
    cmp-long v7, v3, v5

    .line 127
    if-lez v7, :cond_4

    .line 129
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 136
    move-result-wide v2

    .line 137
    invoke-virtual {v0, v2, v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->hitValidTimeBucket(J)J

    .line 140
    move-result-wide v7

    .line 141
    cmp-long p1, v7, v5

    .line 143
    if-lez p1, :cond_2

    .line 145
    new-instance p1, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 147
    const/4 v1, 0x1

    .line 148
    invoke-direct {p1, v1}, Lcom/amap/location/support/network/gateway/LocalHttpResponse;-><init>(I)V

    .line 151
    invoke-virtual {v0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->getValidRestTime()J

    .line 154
    move-result-wide v0

    .line 155
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 158
    move-result-wide v0

    .line 159
    iput-wide v0, p1, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->arg1:J

    .line 161
    return-object p1

    .line 162
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->hitRequestInterval(J)J

    .line 165
    move-result-wide v7

    .line 166
    cmp-long p1, v7, v5

    .line 168
    if-lez p1, :cond_3

    .line 170
    new-instance p1, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    .line 172
    const/4 v1, 0x2

    .line 173
    invoke-direct {p1, v1}, Lcom/amap/location/support/network/gateway/LocalHttpResponse;-><init>(I)V

    .line 176
    invoke-virtual {v0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->getValidRestTime()J

    .line 179
    move-result-wide v0

    .line 180
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 183
    move-result-wide v0

    .line 184
    iput-wide v0, p1, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->arg1:J

    .line 186
    return-object p1

    .line 187
    :cond_3
    invoke-virtual {v0, v2, v3}, Lcom/amap/location/support/network/gateway/LimitStrategy;->pass(J)V

    .line 190
    goto :goto_0

    .line 191
    :cond_4
    if-eqz v0, :cond_5

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v4, "strategy delete as timeout of "

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v4, v0, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v3

    .line 212
    invoke-static {v2, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/amap/location/support/network/gateway/LimitStrategy;->destroy()V

    .line 218
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 220
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_5
    :goto_0
    return-object v1
.end method

.method public handleResponse(Lcom/amap/location/support/network/HttpResponse;Lcom/amap/location/support/network/HttpRequest;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mEnable:Z

    .line 3
    if-eqz v0, :cond_4

    .line 5
    if-eqz p2, :cond_4

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowRequestLimit:Z

    .line 12
    if-eqz v0, :cond_4

    .line 14
    :try_start_0
    const-string v0, "LIMIT-T"

    .line 16
    invoke-virtual {p1, v0}, Lcom/amap/location/support/network/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "LIMIT-E"

    .line 22
    invoke-virtual {p1, v1}, Lcom/amap/location/support/network/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "LIMIT-I"

    .line 28
    invoke-virtual {p1, v2}, Lcom/amap/location/support/network/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p2, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcom/amap/location/support/network/gateway/Utils;->getUrlKey(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 44
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 50
    iget-object p1, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 52
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/amap/location/support/network/gateway/LimitStrategy;

    .line 58
    if-eqz p1, :cond_1

    .line 60
    const-string p2, "LocalGateway"

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v1, "strategy delete as server of "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p1, Lcom/amap/location/support/network/gateway/LimitStrategy;->mUrlKey:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {p2, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/amap/location/support/network/gateway/LimitStrategy;->destroy()V

    .line 87
    :cond_1
    return-void

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 90
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/amap/location/support/network/gateway/LimitStrategy;

    .line 96
    if-nez v2, :cond_3

    .line 98
    new-instance v2, Lcom/amap/location/support/network/gateway/LimitStrategy;

    .line 100
    invoke-direct {v2, p2}, Lcom/amap/location/support/network/gateway/LimitStrategy;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mLimitStrategy:Ljava/util/Map;

    .line 105
    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3
    invoke-virtual {v2, v0, v1, p1}, Lcom/amap/location/support/network/gateway/LimitStrategy;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception p1

    .line 113
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 116
    :cond_4
    :goto_0
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mEnable:Z

    .line 3
    return v0
.end method

.method public update(Lcom/amap/location/support/network/gateway/LocalGatewayConfig;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->enable:Z

    .line 3
    iput-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mEnable:Z

    .line 5
    iget-boolean v1, p1, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->allowDomainProxy:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iput-boolean v1, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowDomainProxy:Z

    .line 18
    iget-boolean v1, p1, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->allowRequestLimit:Z

    .line 20
    if-eqz v1, :cond_1

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_1
    iput-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowRequestLimit:Z

    .line 29
    iget-object v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mDomainProxy:Ljava/util/Map;

    .line 31
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    iget-boolean v0, p1, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->allowDomainProxy:Z

    .line 36
    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p1, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->domainPairs:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 46
    :try_start_0
    iget-object p1, p1, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->domainPairs:Ljava/lang/String;

    .line 48
    const-string v0, "&"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    array-length v0, p1

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_2
    if-ge v1, v0, :cond_3

    .line 58
    aget-object v4, p1, v1

    .line 60
    const-string v5, "_"

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    array-length v5, v4

    .line 67
    if-le v5, v2, :cond_2

    .line 69
    const-string v5, "control.aps.amap.com"

    .line 71
    aget-object v6, v4, v3

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mDomainProxy:Ljava/util/Map;

    .line 81
    aget-object v6, v4, v3

    .line 83
    aget-object v4, v4, v2

    .line 85
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception p1

    .line 92
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 95
    :cond_3
    iget-boolean p1, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowRequestLimit:Z

    .line 97
    if-eqz p1, :cond_4

    .line 99
    invoke-direct {p0}, Lcom/amap/location/support/network/gateway/LocalGateway;->initLimitStrategy()V

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v0, "update enable:"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mEnable:Z

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v0, "\uff0cdomain:"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowDomainProxy:Z

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, "\uff0climit:"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-boolean v0, p0, Lcom/amap/location/support/network/gateway/LocalGateway;->mAllowRequestLimit:Z

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    const-string v0, "LocalGateway"

    .line 143
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method
