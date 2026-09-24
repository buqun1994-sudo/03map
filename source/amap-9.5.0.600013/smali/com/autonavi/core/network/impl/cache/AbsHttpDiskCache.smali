.class public abstract Lcom/autonavi/core/network/impl/cache/AbsHttpDiskCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x2800


# instance fields
.field protected mCache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/autonavi/core/network/inter/response/HttpResponse;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1
.end method

.method public declared-synchronized save(Ljava/lang/String;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/AbsHttpDiskCache;->mCache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 10
    if-eqz v0, :cond_5

    .line 12
    if-eqz p2, :cond_5

    .line 14
    instance-of v0, p2, Lcom/autonavi/core/network/inter/response/InputStreamResponse;

    .line 16
    if-nez v0, :cond_5

    .line 18
    invoke-virtual {p2}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x130

    .line 24
    if-ne v0, v1, :cond_0

    .line 26
    goto :goto_5

    .line 27
    :cond_0
    new-instance v0, Lcom/autonavi/core/network/impl/cache/CacheResponse;

    .line 29
    invoke-direct {v0, p2}, Lcom/autonavi/core/network/impl/cache/CacheResponse;-><init>(Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    const/4 p2, 0x0

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/core/network/impl/cache/AbsHttpDiskCache;->mCache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 35
    invoke-virtual {v1, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->edit(Ljava/lang/String;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    new-instance v2, Ljava/io/ObjectOutputStream;

    .line 50
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 52
    const/16 v4, 0x2800

    .line 54
    invoke-direct {v3, v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 57
    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    move-object p2, v2

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    move-object p2, v2

    .line 70
    goto :goto_2

    .line 71
    :catch_0
    nop

    .line 72
    move-object p2, v2

    .line 73
    goto :goto_3

    .line 74
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->commit()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :cond_2
    if-eqz p2, :cond_4

    .line 79
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    goto :goto_4

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    :goto_2
    if-eqz p2, :cond_3

    .line 86
    :try_start_5
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 89
    :catch_1
    :cond_3
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 90
    :catch_2
    nop

    .line 91
    :goto_3
    if-eqz p2, :cond_4

    .line 93
    goto :goto_1

    .line 94
    :catch_3
    :cond_4
    :goto_4
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :cond_5
    :goto_5
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_2
    move-exception p1

    .line 99
    monitor-exit p0

    .line 100
    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/AbsHttpDiskCache;->mCache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method
