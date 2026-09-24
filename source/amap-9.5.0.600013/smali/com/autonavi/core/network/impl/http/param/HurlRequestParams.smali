.class public Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

.field private mMaxRetryCount:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "UTF-8"

    .line 6
    iput-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mCharset:Ljava/lang/String;

    .line 8
    const/16 v0, 0x3a98

    .line 10
    iput v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mTimeout:I

    .line 12
    const/4 v0, 0x3

    .line 13
    iput v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mMaxRetryCount:I

    .line 15
    return-void
.end method


# virtual methods
.method public getBodyEntity()Lcom/autonavi/core/network/impl/http/entity/HttpEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 3
    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHeaders:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mMaxRetryCount:I

    .line 3
    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mTimeout:I

    .line 3
    return v0
.end method

.method public isSupportProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    instance-of v0, v0, Lcom/autonavi/core/network/impl/http/entity/ISupportProgress;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHeaders:Ljava/util/HashMap;

    .line 5
    return-void
.end method

.method public setHttpEntity(Lcom/autonavi/core/network/impl/http/entity/HttpEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 3
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;

    .line 9
    invoke-direct {v0, p1, p2}, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 14
    :cond_0
    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mMaxRetryCount:I

    .line 3
    return-void
.end method

.method public setMultiPartParams(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;

    .line 7
    iget-object v1, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mCharset:Ljava/lang/String;

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mHttpEntity:Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 14
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 3
    iput p1, p0, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->mTimeout:I

    .line 5
    :cond_0
    return-void
.end method
