.class Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/inter/NetworkDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDeliveryRunnable"
.end annotation


# instance fields
.field private final mNowProgress:J

.field private final mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

.field private final mTotal:J

.field private final mUploadProgressWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/core/network/inter/response/UploadProgressCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/response/UploadProgressCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mUploadProgressWeakReference:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 13
    iput-wide p3, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mTotal:J

    .line 15
    iput-wide p5, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mNowProgress:J

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mUploadProgressWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/autonavi/core/network/inter/response/UploadProgressCallback;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 24
    iget-wide v3, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mTotal:J

    .line 26
    iget-wide v5, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ProgressDeliveryRunnable;->mNowProgress:J

    .line 28
    invoke-interface/range {v1 .. v6}, Lcom/autonavi/core/network/inter/response/UploadProgressCallback;->onProgress(Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V

    .line 31
    :cond_0
    return-void
.end method
