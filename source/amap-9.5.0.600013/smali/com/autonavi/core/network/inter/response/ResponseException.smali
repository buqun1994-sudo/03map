.class public Lcom/autonavi/core/network/inter/response/ResponseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final CACHE_NO_RESULT_ERROR:I = 0x2

.field public static final CALLBACK_ERROR:I = 0xa

.field public static final CONNECT_TIMEOUT:I = 0xc

.field public static final IO_EXCEPTION:I = 0xd

.field public static final MALFORMED_URL:I = 0xe

.field public static final NETWORK_ERROR:I = 0x1

.field public static final REQUEST_ERROR:I = 0x3

.field public static final SOCKET_TIMEOUT:I = 0xb


# instance fields
.field public errorCode:I

.field public exception:Ljava/lang/Exception;

.field public isCallbackError:Z

.field public response:Lcom/autonavi/core/network/inter/response/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 7
    return-void
.end method

.method public static exception2ResponseException(Ljava/lang/Exception;)Lcom/autonavi/core/network/inter/response/ResponseException;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 10
    if-nez p0, :cond_1

    .line 12
    const-string v1, "unknown exception"

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-direct {v0, v1}, Lcom/autonavi/core/network/inter/response/ResponseException;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p0, v0, Lcom/autonavi/core/network/inter/response/ResponseException;->exception:Ljava/lang/Exception;

    .line 24
    invoke-static {p0}, Lcom/autonavi/core/network/inter/response/ResponseException;->getErrorCodeByException(Ljava/lang/Exception;)I

    .line 27
    move-result p0

    .line 28
    iput p0, v0, Lcom/autonavi/core/network/inter/response/ResponseException;->errorCode:I

    .line 30
    return-object v0
.end method

.method private static getErrorCodeByException(Ljava/lang/Exception;)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/16 p0, 0xb

    .line 7
    return p0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const/16 p0, 0xc

    .line 14
    return p0

    .line 15
    :cond_1
    instance-of v0, p0, Ljava/net/MalformedURLException;

    .line 17
    if-eqz v0, :cond_2

    .line 19
    const/16 p0, 0xe

    .line 21
    return p0

    .line 22
    :cond_2
    instance-of p0, p0, Ljava/io/IOException;

    .line 24
    if-eqz p0, :cond_3

    .line 26
    const/16 p0, 0xd

    .line 28
    return p0

    .line 29
    :cond_3
    const/4 p0, 0x1

    .line 30
    return p0
.end method
