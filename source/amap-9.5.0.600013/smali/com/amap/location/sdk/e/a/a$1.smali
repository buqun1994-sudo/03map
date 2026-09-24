.class Lcom/amap/location/sdk/e/a/a$1;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/e/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/e/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/e/a/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/e/a/a$1;->a:Lcom/amap/location/sdk/e/a/a;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$1;->a:Lcom/amap/location/sdk/e/a/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->a(Lcom/amap/location/sdk/e/a/a;)Landroid/os/HandlerThread;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/amap/location/sdk/e/a/a$1;->a:Lcom/amap/location/sdk/e/a/a;

    .line 16
    new-instance v2, Lcom/amap/location/sdk/e/a/a$1$1;

    .line 18
    invoke-direct {v2, p0, v0}, Lcom/amap/location/sdk/e/a/a$1$1;-><init>(Lcom/amap/location/sdk/e/a/a$1;Landroid/os/Looper;)V

    .line 21
    invoke-static {v1, v2}, Lcom/amap/location/sdk/e/a/a;->a(Lcom/amap/location/sdk/e/a/a;Landroid/os/Handler;)Landroid/os/Handler;

    .line 24
    iget-object v0, p0, Lcom/amap/location/sdk/e/a/a$1;->a:Lcom/amap/location/sdk/e/a/a;

    .line 26
    invoke-static {v0}, Lcom/amap/location/sdk/e/a/a;->c(Lcom/amap/location/sdk/e/a/a;)Landroid/os/Handler;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/amap/location/sdk/e/a/a$1;->a:Lcom/amap/location/sdk/e/a/a;

    .line 32
    invoke-static {v1}, Lcom/amap/location/sdk/e/a/a;->b(Lcom/amap/location/sdk/e/a/a;)Ljava/lang/Runnable;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method
