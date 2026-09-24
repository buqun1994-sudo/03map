.class public Lcom/autonavi/common/imageloader/ImageDiskCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000

.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final HTTP_AUTONAVI:Ljava/lang/String; = "autonavi"

.field private static final HTTP_CACHE:Ljava/lang/String; = "httpcache"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static mCachePath:Ljava/lang/String;


# instance fields
.field protected bufferSize:I

.field private cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

.field protected compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field protected compressQuality:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 3
    sput-object v0, Lcom/autonavi/common/imageloader/ImageDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 2
    iput v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->bufferSize:I

    .line 3
    sget-object v0, Lcom/autonavi/common/imageloader/ImageDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->compressQuality:I

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/autonavi/common/imageloader/ImageDiskCache;->init(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 7
    iput v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->bufferSize:I

    .line 8
    sget-object v0, Lcom/autonavi/common/imageloader/ImageDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    .line 9
    iput v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->compressQuality:I

    .line 10
    sput-object p3, Lcom/autonavi/common/imageloader/ImageDiskCache;->mCachePath:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/autonavi/common/imageloader/ImageDiskCache;->init(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/common/imageloader/ImageDiskCache;->createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$102(Lcom/autonavi/common/imageloader/ImageDiskCache;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 3
    return-object p1
.end method

.method private static final createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/autonavi/core/network/util/SdCardUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/autonavi/common/imageloader/ImageDiskCache;->mCachePath:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Ljava/io/File;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "autonavi"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "httpcache"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p0, "image"

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-object p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->mCachePath:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lcom/autonavi/common/imageloader/ImageDiskCache$1;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/autonavi/common/imageloader/ImageDiskCache$1;-><init>(Lcom/autonavi/common/imageloader/ImageDiskCache;Landroid/content/Context;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    if-eqz p2, :cond_0

    .line 13
    const/16 p1, 0xfa

    .line 15
    const-string v1, "cache init"

    .line 17
    invoke-virtual {p2, v0, p1, v1}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->execute(Ljava/lang/Runnable;ILjava/lang/String;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clearCache()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->clearCache()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :catch_0
    monitor-exit p0

    .line 14
    return v1

    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catch_0
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

.method public declared-synchronized get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->get(Ljava/lang/String;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Snapshot;

    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    .line 20
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return-object v1

    .line 23
    :catch_0
    monitor-exit p0

    .line 24
    return-object v1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public declared-synchronized getSize()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size()J

    .line 9
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    const-wide/16 v0, 0x0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public declared-synchronized save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->edit(Ljava/lang/String;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 12
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    if-nez p1, :cond_1

    .line 15
    monitor-exit p0

    .line 16
    return v1

    .line 17
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 19
    invoke-virtual {p1, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->bufferSize:I

    .line 25
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    :try_start_3
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 30
    iget v2, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->compressQuality:I

    .line 32
    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 35
    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 39
    if-eqz p2, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->commit()V

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :goto_0
    monitor-exit p0

    .line 49
    return p2

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_5
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 54
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache;->cache:Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0

    .line 13
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    .line 14
    return-void
.end method
