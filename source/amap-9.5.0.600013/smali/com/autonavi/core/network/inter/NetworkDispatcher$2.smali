.class Lcom/autonavi/core/network/inter/NetworkDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/core/network/inter/NetworkDispatcher;->finishRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/core/network/inter/NetworkDispatcher;

.field final synthetic val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/NetworkDispatcher;Lcom/autonavi/core/network/inter/request/HttpRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;->this$0:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 3
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;->this$0:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 3
    invoke-static {v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->access$000(Lcom/autonavi/core/network/inter/NetworkDispatcher;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;->this$0:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 17
    invoke-static {v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->access$000(Lcom/autonavi/core/network/inter/NetworkDispatcher;)Ljava/util/Map;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$2;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-void
.end method
