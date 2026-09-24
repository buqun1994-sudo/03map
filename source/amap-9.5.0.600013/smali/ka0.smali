.class public abstract Lka0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lka0;->c(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V

    .line 4
    return-void
.end method

.method public static b(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "RequestLastOneKmHelper"

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, "[dispatchLastOneKmInfo] infoData == null "

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    new-array v3, v2, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;->toString()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    aput-object v4, v3, v0

    .line 23
    const-string v4, "[dispatchLastOneKmInfo]{?}"

    .line 25
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lse;->c()Lse;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2, p0}, Lse;->getLastOneKmParams(ILcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;

    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 38
    iget-object v3, v2, Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;->bodyContent:Ljava/lang/String;

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_1

    .line 46
    const-string v3, "invoke requestToken"

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {v2, p0}, Lka0;->d(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v2, "invoke requestLastOneKm"

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {p0}, Lka0;->c(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V

    .line 67
    :goto_0
    return-void
.end method

.method public static c(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1, p0}, Lse;->getLastOneKmParams(ILcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;

    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const/4 v2, 0x0

    .line 22
    aput-object v1, v0, v2

    .line 24
    const-string v1, "RequestLastOneKmHelper"

    .line 26
    const-string v3, "[requestLastOneKm]httpRequestParam={?}"

    .line 28
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-eqz p0, :cond_1

    .line 33
    invoke-static {}, Ltp;->a()Ltp;

    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lka0$b;

    .line 39
    invoke-direct {v1}, Lka0$b;-><init>()V

    .line 42
    invoke-virtual {v0, p0, v1}, Ltp;->b(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;Lqr;)V

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p0, "[requestLastOneKm]httpRequestParam == null"

    .line 48
    new-array v0, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_1
    return-void
.end method

.method public static d(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const-string v1, "RequestLastOneKmHelper"

    .line 17
    const-string v3, "[requestToken]httpRequestParam={?}"

    .line 19
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    if-eqz p0, :cond_1

    .line 24
    invoke-static {}, Ltp;->a()Ltp;

    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lka0$a;

    .line 30
    invoke-direct {v1, p1}, Lka0$a;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/LastOneKmInfoData;)V

    .line 33
    invoke-virtual {v0, p0, v1}, Ltp;->b(Lcom/autonavi/amapauto/jni/protocol/data/HttpRequestParam;Lqr;)V

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-string p0, "[requestToken]httpRequestParam == null"

    .line 39
    new-array p1, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v1, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_1
    return-void
.end method
