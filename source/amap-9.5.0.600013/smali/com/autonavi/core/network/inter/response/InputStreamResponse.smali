.class public Lcom/autonavi/core/network/inter/response/InputStreamResponse;
.super Lcom/autonavi/core/network/inter/response/HttpResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/core/network/inter/response/HttpResponse<",
        "Ljava/io/InputStream;",
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
.method public parseResult()Ljava/io/InputStream;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/core/network/inter/response/InputStreamResponse;->parseResult()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
