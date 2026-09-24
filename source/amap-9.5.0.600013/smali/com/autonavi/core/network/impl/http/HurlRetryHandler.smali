.class Lcom/autonavi/core/network/impl/http/HurlRetryHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mMaxRetryCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 8
    const-class v1, Ljava/net/MalformedURLException;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 15
    const-class v1, Ljava/net/URISyntaxException;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 22
    const-class v1, Ljava/net/NoRouteToHostException;

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 29
    const-class v1, Ljava/net/PortUnreachableException;

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 36
    const-class v1, Ljava/lang/NullPointerException;

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 43
    const-class v1, Ljava/io/FileNotFoundException;

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 50
    const-class v1, Lorg/json/JSONException;

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->mMaxRetryCount:I

    return-void
.end method


# virtual methods
.method public needRetry(Ljava/lang/Throwable;ILcom/autonavi/core/network/impl/http/HurlRequester;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->mMaxRetryCount:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-gt p2, v0, :cond_3

    .line 6
    if-nez p3, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getMethod()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    const-string v0, "POST"

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p2, v0, :cond_2

    .line 18
    invoke-virtual {p3}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getParams()Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/http/param/HurlRequestParams;->isSupportProgress()Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    invoke-virtual {p3}, Lcom/autonavi/core/network/impl/http/HurlRequester;->getMethod()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    const-string p3, "GET"

    .line 38
    if-ne p2, p3, :cond_3

    .line 40
    sget-object p2, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->sBlackList:Ljava/util/HashSet;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    xor-int/2addr p1, v2

    .line 51
    return p1

    .line 52
    :cond_3
    :goto_0
    return v1
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/impl/http/HurlRetryHandler;->mMaxRetryCount:I

    .line 3
    return-void
.end method
