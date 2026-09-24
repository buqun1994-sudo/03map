.class Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;
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
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/core/network/inter/response/ResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponse:Lcom/autonavi/core/network/inter/response/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;->mResponse:Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;->mResponse:Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getRequest()Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;->mResponse:Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 27
    invoke-interface {v0, v1}, Lcom/autonavi/core/network/inter/response/ResponseCallback;->onSuccess(Lcom/autonavi/core/network/inter/response/HttpResponse;)V

    .line 30
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ResponseDeliveryRunnable;->mResponse:Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 32
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    :cond_0
    return-void
.end method
