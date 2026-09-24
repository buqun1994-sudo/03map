.class Lcom/autonavi/core/network/inter/NetworkDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/core/network/inter/NetworkDispatcher;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/core/network/inter/NetworkDispatcher;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/NetworkDispatcher;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$1;->this$0:Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 3
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$1;->val$handler:Landroid/os/Handler;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkDispatcher$1;->val$handler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
.end method
