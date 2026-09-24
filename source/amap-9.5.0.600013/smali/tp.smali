.class public Ltp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Ltp;->a:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltp;->b:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ltp$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltp;-><init>()V

    return-void
.end method

.method public static final a()Ltp;
    .locals 1

    .line 1
    invoke-static {}, Ltp$b;->a()Ltp;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;Lqr;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "HttpRequestManager"

    .line 4
    if-eqz p1, :cond_2

    .line 6
    if-nez p2, :cond_0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget v2, p0, Ltp;->a:I

    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 13
    iput v2, p0, Ltp;->a:I

    .line 15
    iput v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;->requestId:I

    .line 17
    iget-object v3, p0, Ltp;->b:Ljava/util/HashMap;

    .line 19
    if-eqz v3, :cond_1

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->nativeHttpRequest(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    .line 34
    const-string p2, "mHttpRequestCallBackHashMap is empty,please check!"

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    new-array p2, v0, [Ljava/lang/Object;

    .line 41
    const-string v0, "[request]"

    .line 43
    invoke-static {v1, v0, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    :goto_0
    return-void

    .line 47
    :cond_2
    :goto_1
    const-string p1, "[request]httpRequestParam == null || callBack == null"

    .line 49
    new-array p2, v0, [Ljava/lang/Object;

    .line 51
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public c(Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "HttpRequestManager"

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string p1, "[response]HttpResponseData == null,please check!"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    new-array v3, v2, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;->toString()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    aput-object v4, v3, v0

    .line 23
    const-string v4, "[response]{?}"

    .line 25
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v3, p0, Ltp;->b:Ljava/util/HashMap;

    .line 30
    if-eqz v3, :cond_2

    .line 32
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 35
    move-result v3

    .line 36
    if-lez v3, :cond_2

    .line 38
    iget-object v3, p0, Ltp;->b:Ljava/util/HashMap;

    .line 40
    iget v4, p1, Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;->requestId:I

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lqr;

    .line 52
    if-eqz v3, :cond_1

    .line 54
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;->resultCode:I

    .line 56
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;->dataJson:Ljava/lang/String;

    .line 58
    invoke-interface {v3, v0, v1}, Lqr;->a(ILjava/lang/String;)V

    .line 61
    iget-object v0, p0, Ltp;->b:Ljava/util/HashMap;

    .line 63
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;->requestId:I

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v3, 0x2

    .line 74
    new-array v3, v3, [Ljava/lang/Object;

    .line 76
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/HttpResponseData;->requestId:I

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object p1

    .line 82
    aput-object p1, v3, v0

    .line 84
    iget-object p1, p0, Ltp;->b:Ljava/util/HashMap;

    .line 86
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p1

    .line 94
    aput-object p1, v3, v2

    .line 96
    const-string p1, "[response]key({?}) no get IHttpRequestCallBack,size:{?}"

    .line 98
    invoke-static {v1, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const-string p1, "[response]mHttpRequestCallBackHashMap == null or size <= 0"

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-void
.end method
