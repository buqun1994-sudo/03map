.class Lcom/autonavi/common/imageloader/Stats$StatsHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsHandler"
.end annotation


# instance fields
.field private final stats:Lcom/autonavi/common/imageloader/Stats;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/autonavi/common/imageloader/Stats;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iput-object p2, p0, Lcom/autonavi/common/imageloader/Stats$StatsHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    if-eqz v0, :cond_4

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1

    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_0

    .line 17
    sget-object v0, Lcom/autonavi/common/imageloader/ImageLoader;->HANDLER:Landroid/os/Handler;

    .line 19
    new-instance v1, Lcom/autonavi/common/imageloader/Stats$StatsHandler$1;

    .line 21
    invoke-direct {v1, p0, p1}, Lcom/autonavi/common/imageloader/Stats$StatsHandler$1;-><init>(Lcom/autonavi/common/imageloader/Stats$StatsHandler;Landroid/os/Message;)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats$StatsHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    check-cast p1, Ljava/lang/Long;

    .line 34
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Stats;->performDownloadFinished(Ljava/lang/Long;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats$StatsHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 40
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 42
    int-to-long v1, p1

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/common/imageloader/Stats;->performBitmapTransformed(J)V

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Stats$StatsHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 49
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 51
    int-to-long v1, p1

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/common/imageloader/Stats;->performBitmapDecoded(J)V

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/autonavi/common/imageloader/Stats$StatsHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 58
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Stats;->performCacheMiss()V

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-object p1, p0, Lcom/autonavi/common/imageloader/Stats$StatsHandler;->stats:Lcom/autonavi/common/imageloader/Stats;

    .line 64
    invoke-virtual {p1}, Lcom/autonavi/common/imageloader/Stats;->performCacheHit()V

    .line 67
    :goto_0
    return-void
.end method
