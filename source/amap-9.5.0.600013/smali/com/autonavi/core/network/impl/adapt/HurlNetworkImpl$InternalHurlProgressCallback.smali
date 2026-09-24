.class Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalHurlProgressCallback"
.end annotation


# instance fields
.field private mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/core/network/inter/response/UploadProgressCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/core/network/inter/response/UploadProgressCallback;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;->mRequestRef:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;->mCallbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/ref/WeakReference;Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;-><init>(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;->mRequestRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 10
    iget-object v0, p0, Lcom/autonavi/core/network/impl/adapt/HurlNetworkImpl$InternalHurlProgressCallback;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/autonavi/core/network/inter/response/UploadProgressCallback;

    .line 22
    :goto_0
    move-object v1, v0

    .line 23
    if-eqz v2, :cond_1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    move-wide v3, p1

    .line 28
    move-wide v5, p3

    .line 29
    invoke-interface/range {v1 .. v6}, Lcom/autonavi/core/network/inter/response/UploadProgressCallback;->onProgress(Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V

    .line 32
    :cond_1
    return-void
.end method
