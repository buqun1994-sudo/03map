.class Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread$1;->this$0:Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread;

    .line 3
    iput-object p2, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread$1;->val$e:Ljava/lang/Exception;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    iget-object v1, p0, Lcom/autonavi/common/imageloader/ImageLoader$CleanupThread$1;->val$e:Ljava/lang/Exception;

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    throw v0
.end method
