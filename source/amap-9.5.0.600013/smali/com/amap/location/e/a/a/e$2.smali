.class Lcom/amap/location/e/a/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a/a/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/a/a/e;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/a/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 3
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->a(Lcom/amap/location/e/a/a/e;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 16
    move-result-object v1

    .line 17
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 19
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->b(Lcom/amap/location/e/a/a/e;)Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 22
    move-result-object v2

    .line 23
    const/16 v3, 0xf

    .line 25
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 27
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->c(Lcom/amap/location/e/a/a/e;)I

    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 34
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->d(Lcom/amap/location/e/a/a/e;)Lcom/amap/location/support/handler/AmapHandler;

    .line 37
    move-result-object v6

    .line 38
    invoke-interface/range {v1 .. v6}, Lcom/amap/location/support/signal/sensor/ISensorManager;->registerListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;IIILcom/amap/location/support/handler/AmapHandler;)Z

    .line 41
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 43
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->e(Lcom/amap/location/e/a/a/e;)Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    const-string v0, "gnssalgo"

    .line 52
    const-string v1, "GameRotationVector start"

    .line 54
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 59
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->d(Lcom/amap/location/e/a/a/e;)Lcom/amap/location/support/handler/AmapHandler;

    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 65
    invoke-static {v1}, Lcom/amap/location/e/a/a/e;->f(Lcom/amap/location/e/a/a/e;)Ljava/lang/Runnable;

    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 74
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->d(Lcom/amap/location/e/a/a/e;)Lcom/amap/location/support/handler/AmapHandler;

    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 80
    invoke-static {v1}, Lcom/amap/location/e/a/a/e;->f(Lcom/amap/location/e/a/a/e;)Ljava/lang/Runnable;

    .line 83
    move-result-object v1

    .line 84
    const-wide/16 v2, 0x7d0

    .line 86
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$2;->a:Lcom/amap/location/e/a/a/e;

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-static {v0, v1}, Lcom/amap/location/e/a/a/e;->b(Lcom/amap/location/e/a/a/e;Z)Z

    .line 95
    return-void
.end method
