.class Lcom/autonavi/common/imageloader/BitmapHunter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lcom/autonavi/common/imageloader/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lcom/autonavi/common/imageloader/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/autonavi/common/imageloader/LruCache;

.field final data:Lcom/autonavi/common/imageloader/Request;

.field final dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifOrientation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lcom/autonavi/common/imageloader/ImageLoader;

.field priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

.field final requestHandler:Lcom/autonavi/common/imageloader/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lcom/autonavi/common/imageloader/Stats;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/common/imageloader/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/autonavi/common/imageloader/BitmapHunter$1;

    .line 10
    invoke-direct {v0}, Lcom/autonavi/common/imageloader/BitmapHunter$1;-><init>()V

    .line 13
    sput-object v0, Lcom/autonavi/common/imageloader/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 20
    sput-object v0, Lcom/autonavi/common/imageloader/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v0, Lcom/autonavi/common/imageloader/BitmapHunter$2;

    .line 24
    invoke-direct {v0}, Lcom/autonavi/common/imageloader/BitmapHunter$2;-><init>()V

    .line 27
    sput-object v0, Lcom/autonavi/common/imageloader/BitmapHunter;->ERRORING_HANDLER:Lcom/autonavi/common/imageloader/RequestHandler;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageLoader;Lcom/autonavi/common/imageloader/Dispatcher;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/Stats;Lcom/autonavi/common/imageloader/Action;Lcom/autonavi/common/imageloader/RequestHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/autonavi/common/imageloader/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->sequence:I

    .line 12
    iput-object p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 14
    iput-object p2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 16
    iput-object p3, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 18
    iput-object p4, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 20
    iput-object p5, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 22
    invoke-virtual {p5}, Lcom/autonavi/common/imageloader/Action;->getKey()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->key:Ljava/lang/String;

    .line 28
    invoke-virtual {p5}, Lcom/autonavi/common/imageloader/Action;->getRequest()Lcom/autonavi/common/imageloader/Request;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 34
    invoke-virtual {p5}, Lcom/autonavi/common/imageloader/Action;->getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 40
    invoke-virtual {p5}, Lcom/autonavi/common/imageloader/Action;->getMemoryPolicy()I

    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->memoryPolicy:I

    .line 46
    invoke-virtual {p5}, Lcom/autonavi/common/imageloader/Action;->getNetworkPolicy()I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->networkPolicy:I

    .line 52
    iput-object p6, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->requestHandler:Lcom/autonavi/common/imageloader/RequestHandler;

    .line 54
    invoke-virtual {p6}, Lcom/autonavi/common/imageloader/RequestHandler;->getRetryCount()I

    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->retryCount:I

    .line 60
    return-void
.end method

.method public static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/DrawableFactory;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_4

    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/autonavi/common/imageloader/DrawableFactory;

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    invoke-interface {v2, p1}, Lcom/autonavi/common/imageloader/DrawableFactory;->parseResource(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 18
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-nez v4, :cond_1

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v0, "DrawableFactory "

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {v2}, Lcom/autonavi/common/imageloader/DrawableFactory;->key()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, " returned null after "

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, " previous transformation(s).\n\nDrawableFactory list:\n"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p0

    .line 55
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/autonavi/common/imageloader/DrawableFactory;

    .line 67
    invoke-interface {v0}, Lcom/autonavi/common/imageloader/DrawableFactory;->key()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v0, 0xa

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    sget-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/autonavi/common/imageloader/BitmapHunter$4;

    .line 84
    invoke-direct {v0, p1}, Lcom/autonavi/common/imageloader/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    .line 87
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-object v3

    .line 91
    :cond_1
    if-ne v4, p1, :cond_2

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_2

    .line 99
    sget-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 101
    new-instance p1, Lcom/autonavi/common/imageloader/BitmapHunter$5;

    .line 103
    invoke-direct {p1, v2}, Lcom/autonavi/common/imageloader/BitmapHunter$5;-><init>(Lcom/autonavi/common/imageloader/DrawableFactory;)V

    .line 106
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-object v3

    .line 110
    :cond_2
    if-eq v4, p1, :cond_3

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_3

    .line 118
    sget-object p0, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 120
    new-instance p1, Lcom/autonavi/common/imageloader/BitmapHunter$6;

    .line 122
    invoke-direct {p1, v2}, Lcom/autonavi/common/imageloader/BitmapHunter$6;-><init>(Lcom/autonavi/common/imageloader/DrawableFactory;)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-object v3

    .line 129
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 131
    move-object p1, v4

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception p0

    .line 134
    sget-object p1, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/autonavi/common/imageloader/BitmapHunter$3;

    .line 138
    invoke-direct {v0, v2, p0}, Lcom/autonavi/common/imageloader/BitmapHunter$3;-><init>(Lcom/autonavi/common/imageloader/DrawableFactory;Ljava/lang/RuntimeException;)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-object v3

    .line 145
    :cond_4
    return-object p1
.end method

.method private computeNewPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;
    .locals 6

    .line 1
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader$Priority;->LOW:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 3
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget-object v4, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 20
    if-nez v4, :cond_2

    .line 22
    if-eqz v1, :cond_1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 28
    return-object v0

    .line 29
    :cond_3
    if-eqz v4, :cond_4

    .line 31
    invoke-virtual {v4}, Lcom/autonavi/common/imageloader/Action;->getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 34
    move-result-object v0

    .line 35
    :cond_4
    if-eqz v1, :cond_6

    .line 37
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    move-result v1

    .line 43
    :goto_2
    if-ge v3, v1, :cond_6

    .line 45
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/autonavi/common/imageloader/Action;

    .line 53
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/Action;->getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v4

    .line 61
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 64
    move-result v5

    .line 65
    if-le v4, v5, :cond_5

    .line 67
    move-object v0, v2

    .line 68
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_6
    return-object v0
.end method

.method public static decodeFromNetwork(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/Request;J)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 8
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    const/16 v1, 0x400

    .line 13
    new-array v2, v1, [B

    .line 15
    :goto_0
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 19
    move-result v4

    .line 20
    if-lez v4, :cond_0

    .line 22
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 29
    move-result-object v1

    .line 30
    const-wide/16 v4, 0x0

    .line 32
    cmp-long v2, p2, v4

    .line 34
    if-lez v2, :cond_2

    .line 36
    array-length v2, v1

    .line 37
    int-to-long v4, v2

    .line 38
    cmp-long v2, v4, p2

    .line 40
    if-nez v2, :cond_1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 45
    const-string p1, "stream is empty"

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0

    .line 51
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/autonavi/common/imageloader/RequestHandler;->createBitmapOptions(Lcom/autonavi/common/imageloader/Request;)Landroid/graphics/BitmapFactory$Options;

    .line 54
    move-result-object p2

    .line 55
    invoke-static {p2}, Lcom/autonavi/common/imageloader/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_3

    .line 61
    array-length p3, v1

    .line 62
    invoke-static {v1, v3, p3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 65
    iget p3, p1, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 67
    iget v2, p1, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 69
    invoke-static {p3, v2, p2, p1}, Lcom/autonavi/common/imageloader/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/autonavi/common/imageloader/Request;)V

    .line 72
    :cond_3
    array-length p1, v1

    .line 73
    invoke-static {v1, v3, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {p0}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    if-eqz p1, :cond_4

    .line 85
    return-object p1

    .line 86
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 88
    const-string p1, "Failed to decode stream."

    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
.end method

.method public static decodeStream(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/Request;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/autonavi/common/imageloader/MarkableInputStream;

    .line 3
    invoke-direct {v0, p0}, Lcom/autonavi/common/imageloader/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    const/16 p0, 0x400

    .line 8
    invoke-virtual {v0, p0}, Lcom/autonavi/common/imageloader/MarkableInputStream;->savePosition(I)J

    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    .line 15
    move-result p0

    .line 16
    iget-boolean v3, p1, Lcom/autonavi/common/imageloader/Request;->purgeable:Z

    .line 18
    invoke-static {p1}, Lcom/autonavi/common/imageloader/RequestHandler;->createBitmapOptions(Lcom/autonavi/common/imageloader/Request;)Landroid/graphics/BitmapFactory$Options;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Lcom/autonavi/common/imageloader/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    .line 25
    move-result v4

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/common/imageloader/MarkableInputStream;->reset(J)V

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez p0, :cond_2

    .line 32
    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v0, v5}, Lcom/autonavi/common/imageloader/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 37
    const/4 p0, 0x0

    .line 38
    invoke-static {v0, p0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 41
    iget p0, p1, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 43
    iget v4, p1, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 45
    invoke-static {p0, v4, v3, p1}, Lcom/autonavi/common/imageloader/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/autonavi/common/imageloader/Request;)V

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/common/imageloader/MarkableInputStream;->reset(J)V

    .line 51
    const/4 p0, 0x1

    .line 52
    invoke-virtual {v0, p0}, Lcom/autonavi/common/imageloader/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 55
    :cond_0
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->toByteArray(Ljava/io/InputStream;)[B

    .line 58
    move-result-object p0

    .line 59
    array-length p1, p0

    .line 60
    invoke-static {p0, v5, p1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 66
    return-object p0

    .line 67
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 69
    const-string p1, "Failed to decode stream."

    .line 71
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0

    .line 75
    :cond_2
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->toByteArray(Ljava/io/InputStream;)[B

    .line 78
    move-result-object p0

    .line 79
    if-eqz v4, :cond_3

    .line 81
    array-length v0, p0

    .line 82
    invoke-static {p0, v5, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 85
    iget v0, p1, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 87
    iget v1, p1, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 89
    invoke-static {v0, v1, v3, p1}, Lcom/autonavi/common/imageloader/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/autonavi/common/imageloader/Request;)V

    .line 92
    :cond_3
    array-length p1, p0

    .line 93
    invoke-static {p0, v5, p1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method public static decodeStreamWithOutWebP(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/Request;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/autonavi/common/imageloader/RequestHandler;->createBitmapOptions(Lcom/autonavi/common/imageloader/Request;)Landroid/graphics/BitmapFactory$Options;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/autonavi/common/imageloader/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Lcom/autonavi/common/imageloader/MarkableInputStream;

    .line 14
    invoke-direct {v1, p0}, Lcom/autonavi/common/imageloader/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 21
    const/16 p0, 0x400

    .line 23
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/MarkableInputStream;->savePosition(I)J

    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    iget p0, p1, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 32
    iget v5, p1, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 34
    invoke-static {p0, v5, v0, p1}, Lcom/autonavi/common/imageloader/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/autonavi/common/imageloader/Request;)V

    .line 37
    invoke-virtual {v1, v3, v4}, Lcom/autonavi/common/imageloader/MarkableInputStream;->reset(J)V

    .line 40
    const/4 p0, 0x1

    .line 41
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 44
    move-object p0, v1

    .line 45
    :cond_0
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 51
    return-object p0

    .line 52
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 54
    const-string p1, "Failed to decode stream."

    .line 56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public static forRequest(Lcom/autonavi/common/imageloader/ImageLoader;Lcom/autonavi/common/imageloader/Dispatcher;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/Stats;Lcom/autonavi/common/imageloader/Action;)Lcom/autonavi/common/imageloader/BitmapHunter;
    .locals 8

    .line 1
    invoke-virtual {p4}, Lcom/autonavi/common/imageloader/Action;->getRequest()Lcom/autonavi/common/imageloader/Request;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader;->requestHandlers:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v4, v3, :cond_1

    .line 14
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v5

    .line 18
    move-object v7, v5

    .line 19
    check-cast v7, Lcom/autonavi/common/imageloader/RequestHandler;

    .line 21
    invoke-virtual {v7, v0}, Lcom/autonavi/common/imageloader/RequestHandler;->canHandleRequest(Lcom/autonavi/common/imageloader/Request;)Z

    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 27
    new-instance v0, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move-object v6, p4

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/autonavi/common/imageloader/BitmapHunter;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Lcom/autonavi/common/imageloader/Dispatcher;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/Stats;Lcom/autonavi/common/imageloader/Action;Lcom/autonavi/common/imageloader/RequestHandler;)V

    .line 38
    return-object v0

    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 44
    sget-object v7, Lcom/autonavi/common/imageloader/BitmapHunter;->ERRORING_HANDLER:Lcom/autonavi/common/imageloader/RequestHandler;

    .line 46
    move-object v1, v0

    .line 47
    move-object v2, p0

    .line 48
    move-object v3, p1

    .line 49
    move-object v4, p2

    .line 50
    move-object v5, p3

    .line 51
    move-object v6, p4

    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/autonavi/common/imageloader/BitmapHunter;-><init>(Lcom/autonavi/common/imageloader/ImageLoader;Lcom/autonavi/common/imageloader/Dispatcher;Lcom/autonavi/common/imageloader/LruCache;Lcom/autonavi/common/imageloader/Stats;Lcom/autonavi/common/imageloader/Action;Lcom/autonavi/common/imageloader/RequestHandler;)V

    .line 55
    return-object v0
.end method

.method public static getExifRotation(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xb4

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getExifTranslation(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static shouldResize(ZIIII)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_0

    if-gt p1, p3, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static transformResult(Lcom/autonavi/common/imageloader/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    move-result v2

    .line 11
    iget-boolean v3, v0, Lcom/autonavi/common/imageloader/Request;->onlyScaleDown:Z

    .line 13
    new-instance v9, Landroid/graphics/Matrix;

    .line 15
    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/common/imageloader/Request;->needsMatrixTransform()Z

    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_1

    .line 24
    if-eqz p2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v2

    .line 28
    move-object v0, v9

    .line 29
    move v2, v1

    .line 30
    goto/16 :goto_b

    .line 32
    :cond_1
    :goto_0
    iget v4, v0, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 34
    iget v6, v0, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 36
    iget v7, v0, Lcom/autonavi/common/imageloader/Request;->rotationDegrees:F

    .line 38
    const/4 v8, 0x0

    .line 39
    cmpl-float v8, v7, v8

    .line 41
    if-eqz v8, :cond_3

    .line 43
    float-to-double v10, v7

    .line 44
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 47
    move-result-wide v12

    .line 48
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 51
    move-result-wide v12

    .line 52
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 55
    move-result-wide v10

    .line 56
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 59
    move-result-wide v10

    .line 60
    iget-boolean v4, v0, Lcom/autonavi/common/imageloader/Request;->hasRotationPivot:Z

    .line 62
    if-eqz v4, :cond_2

    .line 64
    iget v4, v0, Lcom/autonavi/common/imageloader/Request;->rotationPivotX:F

    .line 66
    iget v6, v0, Lcom/autonavi/common/imageloader/Request;->rotationPivotY:F

    .line 68
    invoke-virtual {v9, v7, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 71
    iget v4, v0, Lcom/autonavi/common/imageloader/Request;->rotationPivotX:F

    .line 73
    float-to-double v6, v4

    .line 74
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 76
    sub-double/2addr v14, v12

    .line 77
    mul-double v6, v6, v14

    .line 79
    iget v8, v0, Lcom/autonavi/common/imageloader/Request;->rotationPivotY:F

    .line 81
    move/from16 v16, v2

    .line 83
    move/from16 v17, v3

    .line 85
    float-to-double v2, v8

    .line 86
    mul-double v2, v2, v10

    .line 88
    add-double/2addr v6, v2

    .line 89
    float-to-double v2, v8

    .line 90
    mul-double v2, v2, v14

    .line 92
    float-to-double v14, v4

    .line 93
    mul-double v14, v14, v10

    .line 95
    sub-double/2addr v2, v14

    .line 96
    iget v4, v0, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 98
    int-to-double v14, v4

    .line 99
    mul-double v14, v14, v12

    .line 101
    add-double/2addr v14, v6

    .line 102
    move-wide/from16 v18, v6

    .line 104
    int-to-double v5, v4

    .line 105
    mul-double v5, v5, v10

    .line 107
    add-double/2addr v5, v2

    .line 108
    move-object/from16 v20, v9

    .line 110
    int-to-double v8, v4

    .line 111
    mul-double v8, v8, v12

    .line 113
    add-double v7, v18, v8

    .line 115
    iget v9, v0, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 117
    move/from16 v22, v1

    .line 119
    int-to-double v0, v9

    .line 120
    mul-double v0, v0, v10

    .line 122
    sub-double/2addr v7, v0

    .line 123
    int-to-double v0, v4

    .line 124
    mul-double v0, v0, v10

    .line 126
    add-double/2addr v0, v2

    .line 127
    move-wide/from16 v23, v5

    .line 129
    int-to-double v4, v9

    .line 130
    mul-double v4, v4, v12

    .line 132
    add-double/2addr v0, v4

    .line 133
    int-to-double v4, v9

    .line 134
    mul-double v4, v4, v10

    .line 136
    sub-double v4, v18, v4

    .line 138
    int-to-double v9, v9

    .line 139
    mul-double v9, v9, v12

    .line 141
    add-double/2addr v9, v2

    .line 142
    move-wide/from16 v11, v18

    .line 144
    move-wide/from16 v18, v9

    .line 146
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(DD)D

    .line 149
    move-result-wide v9

    .line 150
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 153
    move-result-wide v9

    .line 154
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 157
    move-result-wide v9

    .line 158
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 161
    move-result-wide v11

    .line 162
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    .line 165
    move-result-wide v6

    .line 166
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 169
    move-result-wide v4

    .line 170
    move-wide/from16 v6, v23

    .line 172
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 175
    move-result-wide v11

    .line 176
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 179
    move-result-wide v11

    .line 180
    move-wide/from16 v13, v18

    .line 182
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 185
    move-result-wide v11

    .line 186
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 189
    move-result-wide v2

    .line 190
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 193
    move-result-wide v0

    .line 194
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 197
    move-result-wide v0

    .line 198
    sub-double/2addr v9, v4

    .line 199
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 202
    move-result-wide v2

    .line 203
    double-to-int v4, v2

    .line 204
    sub-double/2addr v11, v0

    .line 205
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 208
    move-result-wide v0

    .line 209
    double-to-int v6, v0

    .line 210
    move-object/from16 v0, v20

    .line 212
    goto/16 :goto_1

    .line 214
    :cond_2
    move/from16 v22, v1

    .line 216
    move/from16 v16, v2

    .line 218
    move/from16 v17, v3

    .line 220
    move-object v0, v9

    .line 221
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 224
    move-object/from16 v1, p0

    .line 226
    iget v2, v1, Lcom/autonavi/common/imageloader/Request;->targetWidth:I

    .line 228
    int-to-double v3, v2

    .line 229
    mul-double v3, v3, v12

    .line 231
    int-to-double v5, v2

    .line 232
    mul-double v5, v5, v10

    .line 234
    int-to-double v7, v2

    .line 235
    mul-double v7, v7, v12

    .line 237
    iget v9, v1, Lcom/autonavi/common/imageloader/Request;->targetHeight:I

    .line 239
    int-to-double v14, v9

    .line 240
    mul-double v14, v14, v10

    .line 242
    sub-double/2addr v7, v14

    .line 243
    int-to-double v14, v2

    .line 244
    mul-double v14, v14, v10

    .line 246
    int-to-double v1, v9

    .line 247
    mul-double v1, v1, v12

    .line 249
    add-double/2addr v14, v1

    .line 250
    int-to-double v1, v9

    .line 251
    mul-double v1, v1, v10

    .line 253
    neg-double v1, v1

    .line 254
    int-to-double v9, v9

    .line 255
    mul-double v9, v9, v12

    .line 257
    const-wide/16 v11, 0x0

    .line 259
    move-wide/from16 v18, v9

    .line 261
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 264
    move-result-wide v9

    .line 265
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 268
    move-result-wide v9

    .line 269
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 272
    move-result-wide v9

    .line 273
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 276
    move-result-wide v3

    .line 277
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 280
    move-result-wide v3

    .line 281
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 284
    move-result-wide v1

    .line 285
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 288
    move-result-wide v3

    .line 289
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 292
    move-result-wide v3

    .line 293
    move-wide/from16 v7, v18

    .line 295
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 298
    move-result-wide v3

    .line 299
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 302
    move-result-wide v5

    .line 303
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 306
    move-result-wide v5

    .line 307
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 310
    move-result-wide v5

    .line 311
    sub-double/2addr v9, v1

    .line 312
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 315
    move-result-wide v1

    .line 316
    double-to-int v1, v1

    .line 317
    sub-double/2addr v3, v5

    .line 318
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 321
    move-result-wide v2

    .line 322
    double-to-int v6, v2

    .line 323
    move v4, v1

    .line 324
    goto :goto_1

    .line 325
    :cond_3
    move/from16 v22, v1

    .line 327
    move/from16 v16, v2

    .line 329
    move/from16 v17, v3

    .line 331
    move-object v0, v9

    .line 332
    :goto_1
    if-eqz p2, :cond_6

    .line 334
    invoke-static/range {p2 .. p2}, Lcom/autonavi/common/imageloader/BitmapHunter;->getExifRotation(I)I

    .line 337
    move-result v1

    .line 338
    invoke-static/range {p2 .. p2}, Lcom/autonavi/common/imageloader/BitmapHunter;->getExifTranslation(I)I

    .line 341
    move-result v2

    .line 342
    if-eqz v1, :cond_5

    .line 344
    int-to-float v3, v1

    .line 345
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 348
    const/16 v3, 0x5a

    .line 350
    if-eq v1, v3, :cond_4

    .line 352
    const/16 v3, 0x10e

    .line 354
    if-ne v1, v3, :cond_5

    .line 356
    :cond_4
    move/from16 v25, v6

    .line 358
    move v6, v4

    .line 359
    move/from16 v4, v25

    .line 361
    :cond_5
    const/4 v1, 0x1

    .line 362
    if-eq v2, v1, :cond_6

    .line 364
    int-to-float v1, v2

    .line 365
    const/high16 v2, 0x3f800000    # 1.0f

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 370
    :cond_6
    move-object/from16 v1, p0

    .line 372
    iget-boolean v2, v1, Lcom/autonavi/common/imageloader/Request;->centerCrop:Z

    .line 374
    if-eqz v2, :cond_c

    .line 376
    if-eqz v4, :cond_7

    .line 378
    int-to-float v1, v4

    .line 379
    move/from16 v2, v22

    .line 381
    int-to-float v3, v2

    .line 382
    div-float/2addr v1, v3

    .line 383
    move/from16 v3, v16

    .line 385
    goto :goto_2

    .line 386
    :cond_7
    move/from16 v2, v22

    .line 388
    int-to-float v1, v6

    .line 389
    move/from16 v3, v16

    .line 391
    int-to-float v5, v3

    .line 392
    div-float/2addr v1, v5

    .line 393
    :goto_2
    if-eqz v6, :cond_8

    .line 395
    int-to-float v5, v6

    .line 396
    int-to-float v7, v3

    .line 397
    goto :goto_3

    .line 398
    :cond_8
    int-to-float v5, v4

    .line 399
    int-to-float v7, v2

    .line 400
    :goto_3
    div-float/2addr v5, v7

    .line 401
    cmpl-float v7, v1, v5

    .line 403
    if-lez v7, :cond_9

    .line 405
    int-to-float v7, v3

    .line 406
    div-float/2addr v5, v1

    .line 407
    mul-float v7, v7, v5

    .line 409
    float-to-double v7, v7

    .line 410
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 413
    move-result-wide v7

    .line 414
    double-to-int v5, v7

    .line 415
    sub-int v7, v3, v5

    .line 417
    div-int/lit8 v7, v7, 0x2

    .line 419
    int-to-float v8, v6

    .line 420
    int-to-float v9, v5

    .line 421
    div-float/2addr v8, v9

    .line 422
    move v9, v5

    .line 423
    move/from16 v10, v17

    .line 425
    :goto_4
    const/16 v21, 0x0

    .line 427
    move v5, v2

    .line 428
    goto :goto_5

    .line 429
    :cond_9
    cmpg-float v7, v1, v5

    .line 431
    if-gez v7, :cond_a

    .line 433
    int-to-float v7, v2

    .line 434
    div-float/2addr v1, v5

    .line 435
    mul-float v7, v7, v1

    .line 437
    float-to-double v7, v7

    .line 438
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 441
    move-result-wide v7

    .line 442
    double-to-int v1, v7

    .line 443
    sub-int v7, v2, v1

    .line 445
    div-int/lit8 v7, v7, 0x2

    .line 447
    int-to-float v8, v4

    .line 448
    int-to-float v9, v1

    .line 449
    div-float/2addr v8, v9

    .line 450
    move v9, v3

    .line 451
    move/from16 v21, v7

    .line 453
    move/from16 v10, v17

    .line 455
    const/4 v7, 0x0

    .line 456
    move/from16 v25, v5

    .line 458
    move v5, v1

    .line 459
    move v1, v8

    .line 460
    move/from16 v8, v25

    .line 462
    goto :goto_5

    .line 463
    :cond_a
    move v9, v3

    .line 464
    move v1, v5

    .line 465
    move v8, v1

    .line 466
    move/from16 v10, v17

    .line 468
    const/4 v7, 0x0

    .line 469
    goto :goto_4

    .line 470
    :goto_5
    invoke-static {v10, v2, v3, v4, v6}, Lcom/autonavi/common/imageloader/BitmapHunter;->shouldResize(ZIIII)Z

    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_b

    .line 476
    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 479
    :cond_b
    move v6, v7

    .line 480
    move v8, v9

    .line 481
    move v7, v5

    .line 482
    move/from16 v5, v21

    .line 484
    goto :goto_c

    .line 485
    :cond_c
    move/from16 v3, v16

    .line 487
    move/from16 v10, v17

    .line 489
    move/from16 v2, v22

    .line 491
    iget-boolean v1, v1, Lcom/autonavi/common/imageloader/Request;->centerInside:Z

    .line 493
    if-eqz v1, :cond_10

    .line 495
    if-eqz v4, :cond_d

    .line 497
    int-to-float v1, v4

    .line 498
    int-to-float v5, v2

    .line 499
    goto :goto_6

    .line 500
    :cond_d
    int-to-float v1, v6

    .line 501
    int-to-float v5, v3

    .line 502
    :goto_6
    div-float/2addr v1, v5

    .line 503
    if-eqz v6, :cond_e

    .line 505
    int-to-float v5, v6

    .line 506
    int-to-float v7, v3

    .line 507
    goto :goto_7

    .line 508
    :cond_e
    int-to-float v5, v4

    .line 509
    int-to-float v7, v2

    .line 510
    :goto_7
    div-float/2addr v5, v7

    .line 511
    cmpg-float v7, v1, v5

    .line 513
    if-gez v7, :cond_f

    .line 515
    goto :goto_8

    .line 516
    :cond_f
    move v1, v5

    .line 517
    :goto_8
    invoke-static {v10, v2, v3, v4, v6}, Lcom/autonavi/common/imageloader/BitmapHunter;->shouldResize(ZIIII)Z

    .line 520
    move-result v4

    .line 521
    if-eqz v4, :cond_15

    .line 523
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 526
    goto :goto_b

    .line 527
    :cond_10
    if-nez v4, :cond_11

    .line 529
    if-eqz v6, :cond_15

    .line 531
    :cond_11
    if-ne v4, v2, :cond_12

    .line 533
    if-eq v6, v3, :cond_15

    .line 535
    :cond_12
    if-eqz v4, :cond_13

    .line 537
    int-to-float v1, v4

    .line 538
    int-to-float v5, v2

    .line 539
    goto :goto_9

    .line 540
    :cond_13
    int-to-float v1, v6

    .line 541
    int-to-float v5, v3

    .line 542
    :goto_9
    div-float/2addr v1, v5

    .line 543
    if-eqz v6, :cond_14

    .line 545
    int-to-float v5, v6

    .line 546
    int-to-float v7, v3

    .line 547
    goto :goto_a

    .line 548
    :cond_14
    int-to-float v5, v4

    .line 549
    int-to-float v7, v2

    .line 550
    :goto_a
    div-float/2addr v5, v7

    .line 551
    invoke-static {v10, v2, v3, v4, v6}, Lcom/autonavi/common/imageloader/BitmapHunter;->shouldResize(ZIIII)Z

    .line 554
    move-result v4

    .line 555
    if-eqz v4, :cond_15

    .line 557
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 560
    :cond_15
    :goto_b
    move v7, v2

    .line 561
    move v8, v3

    .line 562
    const/4 v5, 0x0

    .line 563
    const/4 v6, 0x0

    .line 564
    :goto_c
    const/4 v10, 0x1

    .line 565
    move-object/from16 v4, p1

    .line 567
    move-object v9, v0

    .line 568
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 571
    move-result-object v0

    .line 572
    move-object/from16 v1, p1

    .line 574
    if-eq v0, v1, :cond_16

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 579
    goto :goto_d

    .line 580
    :cond_16
    move-object v0, v1

    .line 581
    :goto_d
    return-object v0
.end method

.method public static updateThreadName(Lcom/autonavi/common/imageloader/Request;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/Request;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/autonavi/common/imageloader/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    const/16 v2, 0xc

    .line 19
    add-int/2addr v1, v2

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public attach(Lcom/autonavi/common/imageloader/Action;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 3
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 5
    iget-object v1, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 7
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 9
    const-string v3, "to "

    .line 11
    const-string v4, "joined"

    .line 13
    const-string v5, "Hunter"

    .line 15
    if-nez v2, :cond_3

    .line 17
    iput-object p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 19
    if-eqz v0, :cond_2

    .line 21
    iget-object p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, v3}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v5, v4, p1, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string v0, "to empty hunter"

    .line 50
    invoke-static {v5, v4, p1, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    :goto_1
    return-void

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 56
    if-nez v2, :cond_4

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    const/4 v6, 0x3

    .line 61
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    iput-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 66
    :cond_4
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 68
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {p0, v3}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-static {v5, v4, v0, v1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_5
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 91
    move-result v0

    .line 92
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 97
    move-result v1

    .line 98
    if-le v0, v1, :cond_6

    .line 100
    iput-object p1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 102
    :cond_6
    return-void
.end method

.method public cancel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1
    return v1
.end method

.method public detach(Lcom/autonavi/common/imageloader/Action;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Action;->getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 28
    if-ne v0, v1, :cond_2

    .line 30
    invoke-direct {p0}, Lcom/autonavi/common/imageloader/BitmapHunter;->computeNewPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 38
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 40
    if-eqz v0, :cond_3

    .line 42
    iget-object p1, p1, Lcom/autonavi/common/imageloader/Action;->request:Lcom/autonavi/common/imageloader/Request;

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string v0, "from "

    .line 50
    invoke-static {p0, v0}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Hunter"

    .line 56
    const-string v2, "removed"

    .line 58
    invoke-static {v1, v2, p1, v0}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_3
    return-void
.end method

.method public getAction()Lcom/autonavi/common/imageloader/Action;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->action:Lcom/autonavi/common/imageloader/Action;

    .line 3
    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/common/imageloader/Action;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->actions:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getData()Lcom/autonavi/common/imageloader/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 3
    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->key:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLoadedFrom()Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->loadedFrom:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 3
    return-object v0
.end method

.method public getMemoryPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->memoryPolicy:I

    .line 3
    return v0
.end method

.method public getPicasso()Lcom/autonavi/common/imageloader/ImageLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 3
    return-object v0
.end method

.method public getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->priority:Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    .line 3
    return-object v0
.end method

.method public getResult()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 3
    return-object v0
.end method

.method public hunt()Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->memoryPolicy:I

    .line 3
    invoke-static {v0}, Lcom/autonavi/common/imageloader/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->cache:Lcom/autonavi/common/imageloader/LruCache;

    .line 11
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->key:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Lcom/autonavi/common/imageloader/LruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 19
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 21
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Stats;->dispatchCacheHit()V

    .line 24
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->MEMORY:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 26
    iput-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->loadedFrom:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 28
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 30
    iget-boolean v1, v1, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 32
    if-eqz v1, :cond_0

    .line 34
    const-string v1, "Hunter"

    .line 36
    const-string v2, "decoded"

    .line 38
    iget-object v3, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 40
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    const-string v4, "from cache"

    .line 46
    invoke-static {v1, v2, v3, v4}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 53
    iget v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->retryCount:I

    .line 55
    if-nez v2, :cond_3

    .line 57
    sget-object v2, Lcom/autonavi/common/imageloader/NetworkPolicy;->OFFLINE:Lcom/autonavi/common/imageloader/NetworkPolicy;

    .line 59
    iget v2, v2, Lcom/autonavi/common/imageloader/NetworkPolicy;->index:I

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->networkPolicy:I

    .line 64
    :goto_0
    iput v2, v1, Lcom/autonavi/common/imageloader/Request;->networkPolicy:I

    .line 66
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->requestHandler:Lcom/autonavi/common/imageloader/RequestHandler;

    .line 68
    iget v3, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->networkPolicy:I

    .line 70
    invoke-virtual {v2, v1, v3}, Lcom/autonavi/common/imageloader/RequestHandler;->load(Lcom/autonavi/common/imageloader/Request;I)Lcom/autonavi/common/imageloader/RequestHandler$Result;

    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_4

    .line 76
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/RequestHandler$Result;->getLoadedFrom()Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->loadedFrom:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 82
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/RequestHandler$Result;->getExifOrientation()I

    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exifOrientation:I

    .line 88
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_4

    .line 94
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/RequestHandler$Result;->getStream()Ljava/io/InputStream;

    .line 97
    move-result-object v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 100
    invoke-static {v0, v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->decodeStream(Ljava/io/InputStream;Lcom/autonavi/common/imageloader/Request;)Landroid/graphics/Bitmap;

    .line 103
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 107
    move-object v0, v1

    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    invoke-static {v0}, Lcom/autonavi/common/imageloader/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 113
    throw v1

    .line 114
    :cond_4
    :goto_1
    if-eqz v0, :cond_b

    .line 116
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 118
    iget-boolean v1, v1, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 120
    if-eqz v1, :cond_5

    .line 122
    const-string v1, "Hunter"

    .line 124
    const-string v2, "decoded"

    .line 126
    iget-object v3, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 128
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    invoke-static {v1, v2, v3}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_5
    sget-object v1, Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;->NETWORK:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 137
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->loadedFrom:Lcom/autonavi/common/imageloader/ImageLoader$LoadedFrom;

    .line 139
    if-ne v1, v2, :cond_6

    .line 141
    iget v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->networkPolicy:I

    .line 143
    invoke-static {v1}, Lcom/autonavi/common/imageloader/NetworkPolicy;->shouldWriteToDiskCache(I)Z

    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 151
    iget-object v1, v1, Lcom/autonavi/common/imageloader/ImageLoader;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 153
    if-eqz v1, :cond_6

    .line 155
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 157
    iget-object v1, v1, Lcom/autonavi/common/imageloader/Request;->uri:Landroid/net/Uri;

    .line 159
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Lcom/autonavi/common/imageloader/Utils;->generateImageName(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 169
    iget-object v2, v2, Lcom/autonavi/common/imageloader/ImageLoader;->diskCache:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 171
    invoke-virtual {v2, v1, v0}, Lcom/autonavi/common/imageloader/ImageDiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 174
    move-result v1

    .line 175
    const-string v2, "Hunter"

    .line 177
    const-string v3, "disk_cache"

    .line 179
    iget-object v4, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 181
    invoke-virtual {v4}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string v6, "Disk cache "

    .line 192
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-static {v2, v3, v4, v1}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_6
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 207
    invoke-virtual {v1, v0}, Lcom/autonavi/common/imageloader/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 210
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 212
    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/Request;->needsTransformation()Z

    .line 215
    move-result v1

    .line 216
    if-nez v1, :cond_7

    .line 218
    iget v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exifOrientation:I

    .line 220
    if-eqz v1, :cond_b

    .line 222
    :cond_7
    sget-object v1, Lcom/autonavi/common/imageloader/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 224
    monitor-enter v1

    .line 225
    :try_start_1
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 227
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/Request;->needsMatrixTransform()Z

    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_8

    .line 233
    iget v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exifOrientation:I

    .line 235
    if-eqz v2, :cond_9

    .line 237
    :cond_8
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 239
    iget v3, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exifOrientation:I

    .line 241
    invoke-static {v2, v0, v3}, Lcom/autonavi/common/imageloader/BitmapHunter;->transformResult(Lcom/autonavi/common/imageloader/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 244
    move-result-object v0

    .line 245
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 247
    iget-boolean v2, v2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 249
    if-eqz v2, :cond_9

    .line 251
    const-string v2, "Hunter"

    .line 253
    const-string v3, "transformed"

    .line 255
    iget-object v4, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 257
    invoke-virtual {v4}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 260
    move-result-object v4

    .line 261
    invoke-static {v2, v3, v4}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_9
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 266
    invoke-virtual {v2}, Lcom/autonavi/common/imageloader/Request;->hasCustomTransformations()Z

    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_a

    .line 272
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 274
    iget-object v2, v2, Lcom/autonavi/common/imageloader/Request;->transformations:Ljava/util/List;

    .line 276
    invoke-static {v2, v0}, Lcom/autonavi/common/imageloader/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 279
    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 282
    iget-boolean v2, v2, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 284
    if-eqz v2, :cond_a

    .line 286
    const-string v2, "Hunter"

    .line 288
    const-string v3, "transformed"

    .line 290
    iget-object v4, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 292
    invoke-virtual {v4}, Lcom/autonavi/common/imageloader/Request;->logId()Ljava/lang/String;

    .line 295
    move-result-object v4

    .line 296
    const-string v5, "from custom transformations"

    .line 298
    invoke-static {v2, v3, v4, v5}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_a
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    if-eqz v0, :cond_b

    .line 304
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 306
    invoke-virtual {v1, v0}, Lcom/autonavi/common/imageloader/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    .line 309
    goto :goto_2

    .line 310
    :catchall_1
    move-exception v0

    .line 311
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    throw v0

    .line 313
    :cond_b
    :goto_2
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    .line 1
    const-string v0, "ImageLoader-Idle"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->data:Lcom/autonavi/common/imageloader/Request;

    .line 5
    invoke-static {v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->updateThreadName(Lcom/autonavi/common/imageloader/Request;)V

    .line 8
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 10
    iget-boolean v1, v1, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    const-string v1, "Hunter"

    .line 16
    const-string v2, "executing"

    .line 18
    invoke-static {p0}, Lcom/autonavi/common/imageloader/Utils;->getLogIdsForHunter(Lcom/autonavi/common/imageloader/BitmapHunter;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3}, Lcom/autonavi/common/imageloader/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/common/imageloader/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 31
    if-nez v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 35
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchFailed(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 41
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchComplete(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    :try_end_0
    .catch Lcom/autonavi/common/imageloader/IDownloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/autonavi/common/imageloader/NetworkRequestHandler$ContentLengthException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception v1

    .line 48
    :try_start_1
    iput-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 50
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 52
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchFailed(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    .line 57
    new-instance v2, Ljava/io/StringWriter;

    .line 59
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 62
    iget-object v3, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 64
    invoke-virtual {v3}, Lcom/autonavi/common/imageloader/Stats;->createSnapshot()Lcom/autonavi/common/imageloader/StatsSnapshot;

    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Ljava/io/PrintWriter;

    .line 70
    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 73
    invoke-virtual {v3, v4}, Lcom/autonavi/common/imageloader/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 76
    new-instance v3, Ljava/lang/RuntimeException;

    .line 78
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    iput-object v3, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 87
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 89
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchFailed(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 92
    goto :goto_0

    .line 93
    :catch_2
    move-exception v1

    .line 94
    iput-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 96
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 98
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchRetry(Lcom/autonavi/common/imageloader/BitmapHunter;)V

    .line 101
    goto :goto_0

    .line 102
    :catch_3
    move-exception v1

    .line 103
    iput-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 105
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 107
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchRetry(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 117
    goto :goto_1

    .line 118
    :catch_4
    move-exception v1

    .line 119
    :try_start_2
    iget-boolean v2, v1, Lcom/autonavi/common/imageloader/IDownloader$ResponseException;->localCacheOnly:Z

    .line 121
    if-eqz v2, :cond_2

    .line 123
    iget v2, v1, Lcom/autonavi/common/imageloader/IDownloader$ResponseException;->responseCode:I

    .line 125
    const/16 v3, 0x1f8

    .line 127
    if-eq v2, v3, :cond_3

    .line 129
    :cond_2
    iput-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 133
    invoke-virtual {v1, p0}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchFailed(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    goto :goto_0

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 139
    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->picasso:Lcom/autonavi/common/imageloader/ImageLoader;

    .line 143
    if-eqz v0, :cond_4

    .line 145
    iget-boolean v0, v0, Lcom/autonavi/common/imageloader/ImageLoader;->loggingEnabled:Z

    .line 147
    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    :cond_4
    return-void

    .line 155
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 162
    throw v1
.end method

.method public shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->retryCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-nez v3, :cond_1

    .line 12
    return v2

    .line 13
    :cond_1
    sub-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->retryCount:I

    .line 16
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->requestHandler:Lcom/autonavi/common/imageloader/RequestHandler;

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/common/imageloader/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public supportsReplay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/BitmapHunter;->requestHandler:Lcom/autonavi/common/imageloader/RequestHandler;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/RequestHandler;->supportsReplay()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
