.class public Lcom/autonavi/core/network/inter/request/HeadRequest;
.super Lcom/autonavi/core/network/inter/request/HttpRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/inter/request/HttpRequest;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->mMethod:I

    .line 7
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 9
    invoke-static {v0}, Lcom/autonavi/core/network/inter/util/Util;->getHttpMethod(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, v1, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->method:Ljava/lang/String;

    .line 15
    return-void
.end method
