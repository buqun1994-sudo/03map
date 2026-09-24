.class public Lcom/autonavi/core/network/impl/http/response/HurlResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBaseStream:Ljava/io/InputStream;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResponseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mResponseCode:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mResponseCode:I

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mBaseStream:Ljava/io/InputStream;

    .line 6
    iput p2, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mResponseCode:I

    .line 7
    iput-object p3, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mHeaders:Ljava/util/Map;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputStream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBaseStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mBaseStream:Ljava/io/InputStream;

    .line 3
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mHeaders:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mResponseCode:I

    .line 3
    return v0
.end method

.method public setBaseStream(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mBaseStream:Ljava/io/InputStream;

    .line 3
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mHeaders:Ljava/util/Map;

    .line 3
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/impl/http/response/HurlResponse;->mResponseCode:I

    .line 3
    return-void
.end method
