.class public Lcom/autonavi/core/network/inter/statistics/RequestStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile bizId:Ljava/lang/String;

.field public volatile body:[B

.field public volatile extra:Ljava/lang/Object;

.field public volatile method:Ljava/lang/String;

.field public volatile netType:Ljava/lang/String;

.field public volatile recDataSize:J

.field public volatile receiveStartTime:J

.field public volatile requestEndTime:J

.field public volatile requestStartTime:J

.field public volatile result:I

.field public volatile retryTimes:I

.field public volatile sendDataSize:J

.field public volatile start:J

.field public volatile statusCode:I

.field public volatile stepId:J

.field public volatile trace:Ljava/lang/StringBuffer;

.field public volatile url:Ljava/lang/String;

.field public volatile userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->netType:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->statusCode:I

    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->trace:Ljava/lang/StringBuffer;

    .line 18
    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->start:J

    .line 22
    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->requestStartTime:J

    .line 24
    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->sendDataSize:J

    .line 26
    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->receiveStartTime:J

    .line 28
    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->recDataSize:J

    .line 30
    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->requestEndTime:J

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->userInfo:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public mark(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->trace:Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ",bizId="

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    const/16 v2, 0x100

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 10
    const-string v2, "[RequestStatistics]result="

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    iget v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->result:I

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 20
    const-string v2, ",statusCode="

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    iget v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->statusCode:I

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 30
    const-string v2, ",method="

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    iget-object v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->method:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v2, ",netType="

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->netType:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v2, ",retryTime="

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->retryTimes:I

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    iget-object v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->bizId:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v2, ",stepId="

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-wide v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->stepId:J

    .line 75
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->bizId:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v0, ",sendSize="

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-wide v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->sendDataSize:J

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 96
    const-string v0, ",recDataSize="

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-wide v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->recDataSize:J

    .line 103
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 106
    const-string v0, ",start="

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-wide v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->start:J

    .line 113
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 116
    const-string v0, ",requestStartTime="

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-wide v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->requestStartTime:J

    .line 123
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 126
    const-string v0, ",requestEndTime="

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-wide v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->requestEndTime:J

    .line 133
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 136
    const-string v0, ",url="

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->url:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v0, ",trace="

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->trace:Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    const-string v0, ",body="

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->body:[B

    .line 163
    if-nez v0, :cond_0

    .line 165
    const-string v0, "null"

    .line 167
    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->body:[B

    .line 172
    const-string v3, "utf-8"

    .line 174
    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 177
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    :goto_1
    const-string v0, ",extra="

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->extra:Ljava/lang/Object;

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 198
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    return-object v0

    .line 200
    :catchall_0
    const-string v0, ""

    .line 202
    return-object v0
.end method
