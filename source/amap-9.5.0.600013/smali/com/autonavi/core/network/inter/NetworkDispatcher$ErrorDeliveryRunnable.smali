.class Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;
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
    name = "ErrorDeliveryRunnable"
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

.field private final mException:Lcom/autonavi/core/network/inter/response/ResponseException;

.field private final mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 6
    iput-object p3, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;->mException:Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 8
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;->mRequest:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 23
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$ErrorDeliveryRunnable;->mException:Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 25
    invoke-interface {v0, v1, v2}, Lcom/autonavi/core/network/inter/response/ResponseCallback;->onFailure(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V

    .line 28
    :cond_0
    return-void
.end method
