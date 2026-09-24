.class public Lcom/amap/location/k/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/k/d/a/a;

.field private b:Ljava/util/Calendar;

.field private c:Lcom/amap/location/support/storage/KeyValueStorer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/amap/location/k/d/b;->b:Ljava/util/Calendar;

    .line 10
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProcessName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "_tunnel"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Lcom/amap/location/support/storage/IKeyValueStorerManager;->create(Ljava/lang/String;)Lcom/amap/location/support/storage/KeyValueStorer;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 41
    invoke-static {}, Lcom/amap/location/k/d/a/a;->a()Lcom/amap/location/k/d/a/a;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/amap/location/k/d/b;->a:Lcom/amap/location/k/d/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "data_block"

    return-object p0

    :cond_1
    const-string p0, "log"

    return-object p0

    :cond_2
    const-string p0, "key_log"

    return-object p0

    :cond_3
    const-string p0, "event"

    return-object p0

    :cond_4
    const-string p0, "count"

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(II)J
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_upload_day_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/location/k/d/b;->b:Ljava/util/Calendar;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    iget-object v1, p0, Lcom/amap/location/k/d/b;->b:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-eq v1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last_upload_day_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lcom/amap/location/support/storage/KeyValueStorer;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploaded_size_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/storage/KeyValueStorer;->putLong(Ljava/lang/String;J)V

    .line 6
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploaded_size_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v3}, Lcom/amap/location/support/storage/KeyValueStorer;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object p1, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-wide v2

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploaded_size_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v3}, Lcom/amap/location/support/storage/KeyValueStorer;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IIJ)J
    .locals 6

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_upload_day_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/storage/KeyValueStorer;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/amap/location/k/d/b;->b:Ljava/util/Calendar;

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    iget-object v1, p0, Lcom/amap/location/k/d/b;->b:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-eq v1, v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last_upload_day_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lcom/amap/location/support/storage/KeyValueStorer;->putInt(Ljava/lang/String;I)V

    .line 14
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploaded_size_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Lcom/amap/location/support/storage/KeyValueStorer;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploaded_size_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v3}, Lcom/amap/location/support/storage/KeyValueStorer;->putLong(Ljava/lang/String;J)V

    .line 16
    iget-object p1, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-wide p3

    .line 18
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploaded_size_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/storage/KeyValueStorer;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploaded_size_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-long/2addr v0, p3

    invoke-interface {v2, p1, v0, v1}, Lcom/amap/location/support/storage/KeyValueStorer;->putLong(Ljava/lang/String;J)V

    .line 20
    iget-object p1, p0, Lcom/amap/location/k/d/b;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Lcom/amap/location/k/d/a/a;
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/d/b;->a:Lcom/amap/location/k/d/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 23
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    sget-boolean v1, Lcom/amap/location/k/b;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "http://aps.testing.amap.com/dataPipeline/uploadData"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    const-string v2, "cgicol.aimap.com/dataPipeline/uploadData"

    goto :goto_0

    :cond_1
    const-string v2, "cgicol.amap.com/dataPipeline/uploadData"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "?"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channel="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const-string p1, "statistics"

    goto :goto_2

    :cond_2
    const-string p1, "report"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&version="

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "v1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Lcom/amap/location/support/network/HttpRequestHelper;->getCommonParams()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/k/d/b;->b(I)Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p1, v1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/amap/location/k/d/b;->a:Lcom/amap/location/k/d/a/a;

    .line 12
    invoke-virtual {p1, v2}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;)J

    .line 15
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-wide/16 v3, 0x18

    .line 18
    mul-long v1, v1, v3

    .line 20
    :try_start_1
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    monitor-exit p0

    .line 24
    return-wide v1

    .line 25
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/amap/location/k/d/b;->a:Lcom/amap/location/k/d/a/a;

    .line 27
    new-array v3, v1, [Ljava/lang/String;

    .line 29
    const-string v1, "sum(size)"

    .line 31
    const/4 v8, 0x0

    .line 32
    aput-object v1, v3, v8

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    move-object v1, p1

    .line 39
    invoke-virtual/range {v1 .. v7}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 51
    invoke-interface {v0, v8}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 54
    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :try_start_3
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    monitor-exit p0

    .line 59
    return-wide v1

    .line 60
    :cond_1
    :goto_0
    :try_start_4
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_5
    const-string v1, "UpTunnel"

    .line 67
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 70
    goto :goto_0

    .line 71
    :goto_1
    monitor-exit p0

    .line 72
    const-wide/16 v0, -0x1

    .line 74
    return-wide v0

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :catchall_2
    move-exception p1

    .line 78
    :try_start_6
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 82
    :goto_2
    monitor-exit p0

    .line 83
    throw p1
.end method
