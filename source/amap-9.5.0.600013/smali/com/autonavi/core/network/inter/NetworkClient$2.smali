.class Lcom/autonavi/core/network/inter/NetworkClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/inter/response/UploadProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/core/network/inter/NetworkClient;->setupProgressCallback(Lcom/autonavi/core/network/inter/dependence/INetwork;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/core/network/inter/NetworkClient;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/NetworkClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/NetworkClient$2;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgress(Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "upload progress, totalProgress\uff1a"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " nowProgress: "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "\nurl:"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "ANet-NetworkClient"

    .line 47
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$2;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 52
    invoke-static {v0}, Lcom/autonavi/core/network/inter/NetworkClient;->access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 55
    move-result-object v1

    .line 56
    move-object v2, p1

    .line 57
    move-wide v3, p2

    .line 58
    move-wide v5, p4

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->postUploadProgress(Lcom/autonavi/core/network/inter/request/HttpRequest;JJ)V

    .line 62
    return-void
.end method
