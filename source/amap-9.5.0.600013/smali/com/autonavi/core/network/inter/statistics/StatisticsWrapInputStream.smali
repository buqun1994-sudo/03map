.class public Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private mBaseInputStream:Ljava/io/InputStream;

.field private mReadSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    .line 10
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 8
    :cond_0
    return-void
.end method

.method public getReadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    .line 3
    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ltz p1, :cond_1

    .line 6
    iget-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    :cond_1
    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    .line 9
    iget-wide p2, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mReadSize:J

    :cond_1
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/statistics/StatisticsWrapInputStream;->mBaseInputStream:Ljava/io/InputStream;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-wide/16 p1, 0x0

    .line 7
    return-wide p1

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 11
    move-result-wide p1

    .line 12
    return-wide p1
.end method
