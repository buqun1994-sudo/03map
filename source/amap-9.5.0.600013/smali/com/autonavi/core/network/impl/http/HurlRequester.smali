.class public Lcom/autonavi/core/network/impl/http/HurlRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/impl/http/HurlRequester$HurlInputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ANet-HurlRequester"

.field private static final TIMEOUT:I = 0x3a98


# instance fields
.field private mHttpURLConnection:Ljava/net/HttpURLConnection;

.field private mInputStream:Lcom/autonavi/core/network/impl/http/HurlRequester$HurlInputStream;

.field private final mMethod:Ljava/lang/String;

.field private mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

.field private mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;

.field private mRequestDataLength:J

.field private mRequestURL:Ljava/net/URL;

.field private mRetryCount:I

.field private mRetryHandler:Lcom/autonavi/core/network/impl/http/HurlRetryHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestDataLength:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRetryCount:I

    .line 11
    new-instance v0, Ljava/net/URL;

    .line 13
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestURL:Ljava/net/URL;

    .line 18
    iput-object p2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mMethod:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 22
    new-instance p1, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;

    .line 24
    invoke-virtual {p3}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->getMaxRetryCount()I

    .line 27
    move-result p2

    .line 28
    invoke-direct {p1, p2}, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;-><init>(I)V

    .line 31
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRetryHandler:Lcom/autonavi/core/network/impl/http/HurlRetryHandler;

    .line 33
    return-void
.end method

.method private openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 7
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 14
    return-object p1
.end method

.method private postBody(Ljava/net/HttpURLConnection;Lcom/autonavi/core/network/impl/http/entity/HttpEntity;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-eqz p2, :cond_4

    .line 5
    invoke-interface {p2}, Lcom/autonavi/core/network/impl/http/entity/HttpEntity;->getContentType()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 15
    const-string v3, "Content-Type"

    .line 17
    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    instance-of v2, p2, Lcom/autonavi/core/network/impl/http/entity/ISupportProgress;

    .line 22
    if-eqz v2, :cond_1

    .line 24
    move-object v3, p2

    .line 25
    check-cast v3, Lcom/autonavi/core/network/impl/http/entity/ISupportProgress;

    .line 27
    iget-object v4, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;

    .line 29
    invoke-interface {v3, v4}, Lcom/autonavi/core/network/impl/http/entity/ISupportProgress;->setProgressCallback(Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;)V

    .line 32
    :cond_1
    instance-of v3, p2, Lcom/autonavi/core/network/impl/http/entity/IFixedLengthStreamingMode;

    .line 34
    if-eqz v3, :cond_2

    .line 36
    move-object v2, p2

    .line 37
    check-cast v2, Lcom/autonavi/core/network/impl/http/entity/IFixedLengthStreamingMode;

    .line 39
    invoke-interface {v2}, Lcom/autonavi/core/network/impl/http/entity/IFixedLengthStreamingMode;->length()I

    .line 42
    move-result v2

    .line 43
    if-lez v2, :cond_3

    .line 45
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-eqz v2, :cond_3

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p2, p1}, Lcom/autonavi/core/network/impl/http/entity/HttpEntity;->writeTo(Ljava/io/OutputStream;)J

    .line 62
    move-result-wide p1

    .line 63
    add-long/2addr v0, p1

    .line 64
    :cond_4
    return-wide v0
.end method

.method private requestServer()Lcom/autonavi/core/network/impl/http/response/HurlResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "do not need keepConnection:"

    .line 3
    const-string v1, "ANet-HurlRequester"

    .line 5
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestURL:Ljava/net/URL;

    .line 7
    invoke-direct {p0, v2}, Lcom/autonavi/core/network/impl/http/HurlRequester;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 10
    move-result-object v2

    .line 11
    iput-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 13
    const/4 v3, 0x5

    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    iget-object v5, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 17
    const/16 v6, 0x3a98

    .line 19
    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {v5}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->getTimeout()I

    .line 24
    move-result v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v5, 0x3a98

    .line 28
    :goto_0
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 31
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 33
    iget-object v5, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 35
    if-eqz v5, :cond_1

    .line 37
    invoke-virtual {v5}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->getTimeout()I

    .line 40
    move-result v6

    .line 41
    :cond_1
    invoke-virtual {v2, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 44
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 50
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 52
    iget-object v6, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 54
    invoke-direct {p0, v2, v6}, Lcom/autonavi/core/network/impl/http/HurlRequester;->setupHeaders(Ljava/net/HttpURLConnection;Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;)V

    .line 57
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 59
    iget-object v6, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mMethod:Ljava/lang/String;

    .line 61
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mMethod:Ljava/lang/String;

    .line 66
    const-string v6, "POST"

    .line 68
    if-ne v2, v6, :cond_2

    .line 70
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 72
    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 76
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 79
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 81
    iget-object v6, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 83
    invoke-virtual {v6}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->getBodyEntity()Lcom/autonavi/core/network/impl/http/entity/HttpEntity;

    .line 86
    move-result-object v6

    .line 87
    invoke-direct {p0, v2, v6}, Lcom/autonavi/core/network/impl/http/HurlRequester;->postBody(Ljava/net/HttpURLConnection;Lcom/autonavi/core/network/impl/http/entity/HttpEntity;)J

    .line 90
    move-result-wide v6

    .line 91
    iput-wide v6, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestDataLength:J

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getResponseCode()I

    .line 96
    move-result v2

    .line 97
    const/4 v6, -0x1

    .line 98
    if-eq v2, v6, :cond_8

    .line 100
    sget v6, Lcom/autonavi/core/network/impl/http/HTTP;->RESPONSE_CODE_RANGE_NOT_SATISFIABLE:I

    .line 102
    if-ne v2, v6, :cond_4

    .line 104
    new-instance v5, Lcom/autonavi/core/network/impl/http/response/HurlResponse;

    .line 106
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 108
    new-array v7, v4, [B

    .line 110
    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 115
    invoke-direct {v5, v6, v2, v7}, Lcom/autonavi/core/network/impl/http/response/HurlResponse;-><init>(Ljava/io/InputStream;ILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {v3}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 146
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 149
    return-object v5

    .line 150
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getInputStream()Ljava/io/InputStream;

    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_5

    .line 156
    const/4 v4, 0x1

    .line 157
    :cond_5
    new-instance v5, Lcom/autonavi/core/network/impl/http/response/HurlResponse;

    .line 159
    invoke-virtual {p0}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getHeaderMap()Ljava/util/Map;

    .line 162
    move-result-object v7

    .line 163
    invoke-direct {v5, v6, v2, v7}, Lcom/autonavi/core/network/impl/http/response/HurlResponse;-><init>(Ljava/io/InputStream;ILjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    if-nez v4, :cond_7

    .line 168
    invoke-static {v3}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_6

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 196
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 199
    :cond_7
    return-object v5

    .line 200
    :cond_8
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    .line 202
    const-string v5, "Could not retrieve response code from HttpUrlConnection."

    .line 204
    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :catchall_0
    move-exception v2

    .line 209
    if-nez v4, :cond_a

    .line 211
    invoke-static {v3}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_9

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 227
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 239
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 242
    :cond_a
    throw v2
.end method

.method private setupHeaders(Ljava/net/HttpURLConnection;Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->getHeaders()Ljava/util/HashMap;

    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p2

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeaderMap()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mInputStream:Lcom/autonavi/core/network/impl/http/HurlRequester$HurlInputStream;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/autonavi/core/network/impl/http/HurlRequester$HurlInputStream;

    .line 11
    iget-object v1, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 13
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/autonavi/core/network/impl/http/HurlRequester$HurlInputStream;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 20
    iput-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mInputStream:Lcom/autonavi/core/network/impl/http/HurlRequester$HurlInputStream;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mInputStream:Lcom/autonavi/core/network/impl/http/HurlRequester$HurlInputStream;

    .line 24
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mMethod:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getParams()Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mParams:Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 3
    return-object v0
.end method

.method public getRequestDataLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestDataLength:J

    .line 3
    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getInputStream()Ljava/io/InputStream;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const/16 v0, 0xc8

    .line 18
    return v0

    .line 19
    :cond_1
    const/16 v0, 0x194

    .line 21
    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRetryCount:I

    .line 3
    return v0
.end method

.method public sendRequest()Lcom/autonavi/core/network/impl/http/response/HurlResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :goto_0
    if-eqz v2, :cond_2

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/http/HurlRequester;->requestServer()Lcom/autonavi/core/network/impl/http/response/HurlResponse;

    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v2

    .line 12
    iget-object v3, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRetryHandler:Lcom/autonavi/core/network/impl/http/HurlRetryHandler;

    .line 14
    add-int/2addr v1, v0

    .line 15
    invoke-virtual {v3, v2, v1, p0}, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->needRetry(Ljava/lang/Throwable;ILcom/autonavi/core/network/impl/http/HurlRequester;)Z

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x4

    .line 20
    invoke-static {v4}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v5, "retry, retryTimes: "

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v5, "error: "

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, ", url: "

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v5, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestURL:Ljava/net/URL;

    .line 58
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    const-string v5, "ANet-HurlRequester"

    .line 71
    invoke-static {v5, v4}, Lcom/autonavi/core/network/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    if-eqz v3, :cond_1

    .line 76
    const-wide/16 v4, 0x0

    .line 78
    iput-wide v4, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestDataLength:J

    .line 80
    iput v1, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRetryCount:I

    .line 82
    move v2, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    throw v2

    .line 85
    :cond_2
    const/4 v0, 0x0

    .line 86
    return-object v0
.end method

.method public setProgressCallback(Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/HurlRequester;->mRequestURL:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
