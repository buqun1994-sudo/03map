.class final Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/PicassoExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PicassoFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/autonavi/common/imageloader/BitmapHunter;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final hunter:Lcom/autonavi/common/imageloader/BitmapHunter;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/BitmapHunter;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;->hunter:Lcom/autonavi/common/imageloader/BitmapHunter;

    .line 7
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;->hunter:Lcom/autonavi/common/imageloader/BitmapHunter;

    invoke-virtual {v0}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;->hunter:Lcom/autonavi/common/imageloader/BitmapHunter;

    invoke-virtual {v1}, Lcom/autonavi/common/imageloader/BitmapHunter;->getPriority()Lcom/autonavi/common/imageloader/ImageLoader$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;->hunter:Lcom/autonavi/common/imageloader/BitmapHunter;

    iget v0, v0, Lcom/autonavi/common/imageloader/BitmapHunter;->sequence:I

    iget-object p1, p1, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;->hunter:Lcom/autonavi/common/imageloader/BitmapHunter;

    iget p1, p1, Lcom/autonavi/common/imageloader/BitmapHunter;->sequence:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;

    invoke-virtual {p0, p1}, Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;->compareTo(Lcom/autonavi/common/imageloader/PicassoExecutorService$PicassoFutureTask;)I

    move-result p1

    return p1
.end method
