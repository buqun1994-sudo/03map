.class Lcom/autonavi/common/imageloader/ImageDiskCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/common/imageloader/ImageDiskCache;->init(Landroid/content/Context;Lcom/autonavi/core/network/util/threadpool/ThreadPool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/common/imageloader/ImageDiskCache;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageDiskCache;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageDiskCache$1;->this$0:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 3
    iput-object p2, p0, Lcom/autonavi/common/imageloader/ImageDiskCache$1;->val$context:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache$1;->val$context:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/autonavi/common/imageloader/ImageDiskCache;->access$000(Landroid/content/Context;)Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/autonavi/common/imageloader/Utils;->calculateDiskCacheSize(Ljava/io/File;)J

    .line 10
    move-result-wide v4

    .line 11
    iget-object v0, p0, Lcom/autonavi/common/imageloader/ImageDiskCache$1;->this$0:Lcom/autonavi/common/imageloader/ImageDiskCache;

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x1

    .line 15
    const/16 v6, 0x7d0

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->open(Ljava/io/File;IIJI)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/autonavi/common/imageloader/ImageDiskCache;->access$102(Lcom/autonavi/common/imageloader/ImageDiskCache;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    return-void
.end method
