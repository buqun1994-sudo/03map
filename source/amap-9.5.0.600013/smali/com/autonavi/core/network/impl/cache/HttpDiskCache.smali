.class public Lcom/autonavi/core/network/impl/cache/HttpDiskCache;
.super Lcom/autonavi/core/network/impl/cache/AbsHttpDiskCache;
.source "SourceFile"


# static fields
.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTP_AUTONAVI:Ljava/lang/String; = "autonavi"

.field private static final HTTP_CACHE:Ljava/lang/String; = "httpcache"

.field private static final MAX_DISK_CACHE_SIZE:I = 0x3200000

.field private static final MIN_DISK_CACHE_SIZE:I = 0x500000


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/AbsHttpDiskCache;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Thread;

    .line 6
    new-instance v1, Lcom/autonavi/core/network/impl/cache/HttpDiskCache$1;

    .line 8
    invoke-direct {v1, p0, p1}, Lcom/autonavi/core/network/impl/cache/HttpDiskCache$1;-><init>(Lcom/autonavi/core/network/impl/cache/HttpDiskCache;Landroid/content/Context;)V

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 14
    const-string p1, "cache init"

    .line 16
    if-eqz p2, :cond_0

    .line 18
    const/16 v1, 0xfa

    .line 20
    invoke-virtual {p2, v0, v1, p1}, Lcom/autonavi/core/network/util/threadpool/ThreadPool;->execute(Ljava/lang/Runnable;ILjava/lang/String;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/core/network/impl/cache/HttpDiskCache;->createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static calculateDiskCacheSize(Ljava/io/File;)J
    .locals 7

    .line 1
    const-wide/32 v0, 0x500000

    .line 4
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    .line 16
    move-result p0

    .line 17
    int-to-long v3, p0

    .line 18
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    .line 21
    move-result p0

    .line 22
    int-to-long v5, p0

    .line 23
    mul-long v3, v3, v5

    .line 25
    const-wide/16 v5, 0x32

    .line 27
    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-wide v3, v0

    .line 30
    :goto_0
    const-wide/32 v5, 0x3200000

    .line 33
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 36
    move-result-wide v2

    .line 37
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 40
    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method private static final createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/autonavi/core/network/util/SdCardUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "autonavi"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "httpcache"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, "http"

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method
