.class Lcom/amap/location/support/fence/FenceLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/fence/FenceLoader;->loadFence(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/fence/FenceLoader;

.field final synthetic val$needDownload:Z


# direct methods
.method public constructor <init>(Lcom/amap/location/support/fence/FenceLoader;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceLoader$1;->this$0:Lcom/amap/location/support/fence/FenceLoader;

    .line 3
    iput-boolean p2, p0, Lcom/amap/location/support/fence/FenceLoader$1;->val$needDownload:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "run task"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/amap/location/support/fence/FenceLoader$1;->this$0:Lcom/amap/location/support/fence/FenceLoader;

    .line 13
    iget-object v1, v1, Lcom/amap/location/support/network/FileLoader;->mName:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FenceLoader"

    .line 24
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceLoader$1;->this$0:Lcom/amap/location/support/fence/FenceLoader;

    .line 29
    invoke-static {v0}, Lcom/amap/location/support/fence/FenceLoader;->access$000(Lcom/amap/location/support/fence/FenceLoader;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceLoader$1;->this$0:Lcom/amap/location/support/fence/FenceLoader;

    .line 37
    invoke-static {v0}, Lcom/amap/location/support/fence/FenceLoader;->access$100(Lcom/amap/location/support/fence/FenceLoader;)Ljava/io/File;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/amap/location/support/fence/FenceLoader;->parseFence(Ljava/io/File;)V

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/support/fence/FenceLoader$1;->val$needDownload:Z

    .line 46
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/amap/location/support/fence/FenceLoader$1;->this$0:Lcom/amap/location/support/fence/FenceLoader;

    .line 50
    invoke-static {v0}, Lcom/amap/location/support/fence/FenceLoader;->access$200(Lcom/amap/location/support/fence/FenceLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method
