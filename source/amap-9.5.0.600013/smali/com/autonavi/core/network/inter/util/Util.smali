.class public Lcom/autonavi/core/network/inter/util/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpMethod(I)Ljava/lang/String;
    .locals 2

    const-string v0, "GET"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string p0, "POST"

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const-string p0, "HEAD"

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static wrapResponse(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;Lcom/autonavi/core/network/inter/dependence/INetResponse;)Lcom/autonavi/core/network/inter/response/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/autonavi/core/network/inter/response/HttpResponse;",
            ">(",
            "Lcom/autonavi/core/network/inter/request/HttpRequest;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/autonavi/core/network/inter/dependence/INetResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    const-string v0, " \u5fc5\u987b\u6709\u65e0\u53c2\u6570public\u9ed8\u8ba4\u6784\u9020\u65b9\u6cd5 "

    .line 3
    if-nez p2, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 13
    invoke-virtual {v1, p2}, Lcom/autonavi/core/network/inter/response/HttpResponse;->setImpl(Lcom/autonavi/core/network/inter/dependence/INetResponse;)V

    .line 16
    invoke-virtual {v1, p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->setRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 19
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/response/HttpResponse;->parse()V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v1

    .line 23
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 48
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
.end method
