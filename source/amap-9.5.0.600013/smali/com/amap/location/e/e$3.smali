.class Lcom/amap/location/e/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/e;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/e$3;->a:Lcom/amap/location/e/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/e$3;->a:Lcom/amap/location/e/e;

    .line 3
    invoke-static {v0}, Lcom/amap/location/e/e;->g(Lcom/amap/location/e/e;)Lcom/amap/location/support/fence/FenceLoader;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/e/e$3;->a:Lcom/amap/location/e/e;

    .line 11
    invoke-static {v0}, Lcom/amap/location/e/e;->g(Lcom/amap/location/e/e;)Lcom/amap/location/support/fence/FenceLoader;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/amap/location/support/fence/FenceLoader;->downloadFence()V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/e$3;->a:Lcom/amap/location/e/e;

    .line 20
    invoke-static {v0}, Lcom/amap/location/e/e;->h(Lcom/amap/location/e/e;)Lcom/amap/location/support/handler/AmapHandler;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/amap/location/e/e$3;->a:Lcom/amap/location/e/e;

    .line 28
    invoke-static {v0}, Lcom/amap/location/e/e;->h(Lcom/amap/location/e/e;)Lcom/amap/location/support/handler/AmapHandler;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/amap/location/e/e$3;->a:Lcom/amap/location/e/e;

    .line 34
    invoke-static {v1}, Lcom/amap/location/e/e;->e(Lcom/amap/location/e/e;)Ljava/lang/Runnable;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/amap/location/e/e$3;->a:Lcom/amap/location/e/e;

    .line 40
    iget v2, v2, Lcom/amap/location/e/e;->b:I

    .line 42
    int-to-long v2, v2

    .line 43
    const-wide/16 v4, 0x3c

    .line 45
    mul-long v2, v2, v4

    .line 47
    const-wide/16 v4, 0x3e8

    .line 49
    mul-long v2, v2, v4

    .line 51
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_1
    return-void
.end method
