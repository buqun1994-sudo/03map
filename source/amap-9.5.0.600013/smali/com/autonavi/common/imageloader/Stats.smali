.class Lcom/autonavi/common/imageloader/Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/common/imageloader/Stats$StatsHandler;
    }
.end annotation


# static fields
.field private static final BITMAP_DECODE_FINISHED:I = 0x2

.field private static final BITMAP_TRANSFORMED_FINISHED:I = 0x3

.field private static final CACHE_HIT:I = 0x0

.field private static final CACHE_MISS:I = 0x1

.field private static final DOWNLOAD_FINISHED:I = 0x4

.field private static final STATS_THREAD_NAME:Ljava/lang/String; = "ImageLoader-Stats"


# instance fields
.field averageDownloadSize:J

.field averageOriginalBitmapSize:J

.field averageTransformedBitmapSize:J

.field final cache:Lcom/autonavi/common/imageloader/LruCache;

.field cacheHits:J

.field cacheMisses:J

.field downloadCount:I

.field final handler:Landroid/os/Handler;

.field originalBitmapCount:I

.field final statsThread:Landroid/os/HandlerThread;

.field totalDownloadSize:J

.field totalOriginalBitmapSize:J

.field totalTransformedBitmapSize:J

.field transformedBitmapCount:I


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/LruCache;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Stats;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 6
    new-instance p1, Landroid/os/HandlerThread;

    .line 8
    const-string v0, "ImageLoader-Stats"

    .line 10
    const/16 v1, 0xa

    .line 12
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Stats;->statsThread:Landroid/os/HandlerThread;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 20
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->flushStackLocalLeaks(Landroid/os/Looper;)V

    .line 27
    new-instance v0, Lcom/autonavi/common/imageloader/Stats$StatsHandler;

    .line 29
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1, p0}, Lcom/autonavi/common/imageloader/Stats$StatsHandler;-><init>(Landroid/os/Looper;Lcom/autonavi/common/imageloader/Stats;)V

    .line 36
    iput-object v0, p0, Lcom/autonavi/common/imageloader/Stats;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private static getAverage(IJ)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    div-long/2addr p1, v0

    .line 3
    return-wide p1
.end method

.method private processBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/autonavi/common/imageloader/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats;->handler:Landroid/os/Handler;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/autonavi/common/imageloader/StatsSnapshot;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v25, Lcom/autonavi/common/imageloader/StatsSnapshot;

    .line 5
    move-object/from16 v1, v25

    .line 7
    iget-object v2, v0, Lcom/autonavi/common/imageloader/Stats;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 9
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/LruCache;->maxSize()I

    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lcom/autonavi/common/imageloader/Stats;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 15
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/LruCache;->size()I

    .line 18
    move-result v3

    .line 19
    iget-wide v4, v0, Lcom/autonavi/common/imageloader/Stats;->cacheHits:J

    .line 21
    iget-wide v6, v0, Lcom/autonavi/common/imageloader/Stats;->cacheMisses:J

    .line 23
    iget-wide v8, v0, Lcom/autonavi/common/imageloader/Stats;->totalDownloadSize:J

    .line 25
    iget-wide v10, v0, Lcom/autonavi/common/imageloader/Stats;->totalOriginalBitmapSize:J

    .line 27
    iget-wide v12, v0, Lcom/autonavi/common/imageloader/Stats;->totalTransformedBitmapSize:J

    .line 29
    iget-wide v14, v0, Lcom/autonavi/common/imageloader/Stats;->averageDownloadSize:J

    .line 31
    move-object/from16 v26, v1

    .line 33
    move/from16 v27, v2

    .line 35
    iget-wide v1, v0, Lcom/autonavi/common/imageloader/Stats;->averageOriginalBitmapSize:J

    .line 37
    move-wide/from16 v16, v1

    .line 39
    iget-wide v1, v0, Lcom/autonavi/common/imageloader/Stats;->averageTransformedBitmapSize:J

    .line 41
    move-wide/from16 v18, v1

    .line 43
    iget v1, v0, Lcom/autonavi/common/imageloader/Stats;->downloadCount:I

    .line 45
    move/from16 v20, v1

    .line 47
    iget v1, v0, Lcom/autonavi/common/imageloader/Stats;->originalBitmapCount:I

    .line 49
    move/from16 v21, v1

    .line 51
    iget v1, v0, Lcom/autonavi/common/imageloader/Stats;->transformedBitmapCount:I

    .line 53
    move/from16 v22, v1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    move-result-wide v23

    .line 59
    move-object/from16 v1, v26

    .line 61
    move/from16 v2, v27

    .line 63
    invoke-direct/range {v1 .. v24}, Lcom/autonavi/common/imageloader/StatsSnapshot;-><init>(IIJJJJJJJJIIIJ)V

    .line 66
    return-object v25
.end method

.method public dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/autonavi/common/imageloader/Stats;->processBitmap(Landroid/graphics/Bitmap;I)V

    .line 5
    return-void
.end method

.method public dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/autonavi/common/imageloader/Stats;->processBitmap(Landroid/graphics/Bitmap;I)V

    .line 5
    return-void
.end method

.method public dispatchCacheHit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public dispatchCacheMiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public dispatchDownloadFinished(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats;->handler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    return-void
.end method

.method public performBitmapDecoded(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/Stats;->originalBitmapCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/autonavi/common/imageloader/Stats;->originalBitmapCount:I

    .line 7
    iget-wide v1, p0, Lcom/autonavi/common/imageloader/Stats;->totalOriginalBitmapSize:J

    .line 9
    add-long/2addr v1, p1

    .line 10
    iput-wide v1, p0, Lcom/autonavi/common/imageloader/Stats;->totalOriginalBitmapSize:J

    .line 12
    invoke-static {v0, v1, v2}, Lcom/autonavi/common/imageloader/Stats;->getAverage(IJ)J

    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/autonavi/common/imageloader/Stats;->averageOriginalBitmapSize:J

    .line 18
    return-void
.end method

.method public performBitmapTransformed(J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/Stats;->transformedBitmapCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/autonavi/common/imageloader/Stats;->transformedBitmapCount:I

    .line 7
    iget-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->totalTransformedBitmapSize:J

    .line 9
    add-long/2addr v0, p1

    .line 10
    iput-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->totalTransformedBitmapSize:J

    .line 12
    iget p1, p0, Lcom/autonavi/common/imageloader/Stats;->originalBitmapCount:I

    .line 14
    invoke-static {p1, v0, v1}, Lcom/autonavi/common/imageloader/Stats;->getAverage(IJ)J

    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lcom/autonavi/common/imageloader/Stats;->averageTransformedBitmapSize:J

    .line 20
    return-void
.end method

.method public performCacheHit()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->cacheHits:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->cacheHits:J

    .line 8
    return-void
.end method

.method public performCacheMiss()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->cacheMisses:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->cacheMisses:J

    .line 8
    return-void
.end method

.method public performDownloadFinished(Ljava/lang/Long;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/Stats;->downloadCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/autonavi/common/imageloader/Stats;->downloadCount:I

    .line 7
    iget-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->totalDownloadSize:J

    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->totalDownloadSize:J

    .line 16
    iget p1, p0, Lcom/autonavi/common/imageloader/Stats;->downloadCount:I

    .line 18
    invoke-static {p1, v0, v1}, Lcom/autonavi/common/imageloader/Stats;->getAverage(IJ)J

    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/autonavi/common/imageloader/Stats;->averageDownloadSize:J

    .line 24
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats;->statsThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    return-void
.end method
