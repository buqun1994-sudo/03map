.class Lcom/amap/location/e/a/a/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/a/a/e;->c()V
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
    iput-object p1, p0, Lcom/amap/location/e/a/a/e$3;->a:Lcom/amap/location/e/a/a/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$3;->a:Lcom/amap/location/e/a/a/e;

    .line 3
    invoke-static {v0}, Lcom/amap/location/e/a/a/e;->a(Lcom/amap/location/e/a/a/e;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/amap/location/e/a/a/e$3;->a:Lcom/amap/location/e/a/a/e;

    .line 19
    invoke-static {v1}, Lcom/amap/location/e/a/a/e;->b(Lcom/amap/location/e/a/a/e;)Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/sensor/ISensorManager;->unregisterListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;)V

    .line 26
    const-string v0, "gnssalgo"

    .line 28
    const-string v1, "GameRotationVector stop"

    .line 30
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/a/a/e$3;->a:Lcom/amap/location/e/a/a/e;

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1}, Lcom/amap/location/e/a/a/e;->b(Lcom/amap/location/e/a/a/e;Z)Z

    .line 39
    return-void
.end method
