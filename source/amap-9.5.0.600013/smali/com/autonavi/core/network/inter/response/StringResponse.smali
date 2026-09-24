.class public Lcom/autonavi/core/network/inter/response/StringResponse;
.super Lcom/autonavi/core/network/inter/response/HttpResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/core/network/inter/response/HttpResponse<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic parseResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/StringResponse;->parseResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseResult()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getResponseBodyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
