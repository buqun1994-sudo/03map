.class Lcom/amap/location/sdk/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/inter/response/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/c/b;->a(Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/support/network/INetwork$ICallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/autonavi/core/network/inter/response/ResponseCallback<",
        "Lcom/autonavi/core/network/inter/response/ByteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/support/network/INetwork$ICallback;

.field final synthetic b:Lcom/amap/location/support/network/HttpRequest;

.field final synthetic c:Lcom/amap/location/sdk/c/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/c/b;Lcom/amap/location/support/network/INetwork$ICallback;Lcom/amap/location/support/network/HttpRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/c/b$2;->c:Lcom/amap/location/sdk/c/b;

    .line 3
    iput-object p2, p0, Lcom/amap/location/sdk/c/b$2;->a:Lcom/amap/location/support/network/INetwork$ICallback;

    .line 5
    iput-object p3, p0, Lcom/amap/location/sdk/c/b$2;->b:Lcom/amap/location/support/network/HttpRequest;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/core/network/inter/response/ByteResponse;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/amap/location/sdk/c/b$2;->a:Lcom/amap/location/support/network/INetwork$ICallback;

    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/amap/location/sdk/c/b$2;->b:Lcom/amap/location/support/network/HttpRequest;

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/amap/location/support/network/INetwork$ICallback;->onResponse(Lcom/amap/location/support/network/HttpResponse;Lcom/amap/location/support/network/HttpRequest;)V

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/amap/location/support/network/HttpResponse;

    .line 14
    invoke-direct {v0}, Lcom/amap/location/support/network/HttpResponse;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 23
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/amap/location/support/network/HttpResponse;->headers:Ljava/util/Map;

    .line 29
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getResult()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [B

    .line 35
    iput-object p1, v0, Lcom/amap/location/support/network/HttpResponse;->body:[B

    .line 37
    iget-object p1, p0, Lcom/amap/location/sdk/c/b$2;->a:Lcom/amap/location/support/network/INetwork$ICallback;

    .line 39
    iget-object v1, p0, Lcom/amap/location/sdk/c/b$2;->b:Lcom/amap/location/support/network/HttpRequest;

    .line 41
    invoke-interface {p1, v0, v1}, Lcom/amap/location/support/network/INetwork$ICallback;->onResponse(Lcom/amap/location/support/network/HttpResponse;Lcom/amap/location/support/network/HttpRequest;)V

    .line 44
    iget-object p1, p0, Lcom/amap/location/sdk/c/b$2;->c:Lcom/amap/location/sdk/c/b;

    .line 46
    invoke-static {p1}, Lcom/amap/location/sdk/c/b;->a(Lcom/amap/location/sdk/c/b;)Lcom/amap/location/support/network/gateway/LocalGateway;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/amap/location/support/network/gateway/LocalGateway;->isEnable()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/amap/location/sdk/c/b$2;->c:Lcom/amap/location/sdk/c/b;

    .line 58
    invoke-static {p1}, Lcom/amap/location/sdk/c/b;->a(Lcom/amap/location/sdk/c/b;)Lcom/amap/location/support/network/gateway/LocalGateway;

    .line 61
    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/amap/location/sdk/c/b$2;->b:Lcom/amap/location/support/network/HttpRequest;

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/support/network/gateway/LocalGateway;->handleResponse(Lcom/amap/location/support/network/HttpResponse;Lcom/amap/location/support/network/HttpRequest;)V

    .line 67
    :cond_1
    return-void
.end method

.method public onFailure(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/amap/location/support/network/HttpResponse;

    .line 3
    invoke-direct {p1}, Lcom/amap/location/support/network/HttpResponse;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p1, Lcom/amap/location/support/network/HttpResponse;->errorCode:I

    .line 9
    if-eqz p2, :cond_0

    .line 11
    iget-object v0, p2, Lcom/autonavi/core/network/inter/response/ResponseException;->exception:Ljava/lang/Exception;

    .line 13
    iget v1, p2, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 15
    invoke-static {v0, v1}, Lcom/amap/location/sdk/c/b;->a(Ljava/lang/Exception;I)I

    .line 18
    move-result v0

    .line 19
    iput v0, p1, Lcom/amap/location/support/network/HttpResponse;->errorCode:I

    .line 21
    iget-object p2, p2, Lcom/autonavi/core/network/inter/response/ResponseException;->exception:Ljava/lang/Exception;

    .line 23
    iput-object p2, p1, Lcom/amap/location/support/network/HttpResponse;->errorException:Ljava/lang/Exception;

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/amap/location/sdk/c/b$2;->a:Lcom/amap/location/support/network/INetwork$ICallback;

    .line 27
    iget-object v0, p0, Lcom/amap/location/sdk/c/b$2;->b:Lcom/amap/location/support/network/HttpRequest;

    .line 29
    invoke-interface {p2, p1, v0}, Lcom/amap/location/support/network/INetwork$ICallback;->onResponse(Lcom/amap/location/support/network/HttpResponse;Lcom/amap/location/support/network/HttpRequest;)V

    .line 32
    return-void
.end method

.method public synthetic onSuccess(Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/core/network/inter/response/ByteResponse;

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/location/sdk/c/b$2;->a(Lcom/autonavi/core/network/inter/response/ByteResponse;)V

    .line 6
    return-void
.end method
