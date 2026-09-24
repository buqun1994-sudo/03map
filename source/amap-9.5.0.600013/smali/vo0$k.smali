.class public Lvo0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvo0;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$k;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "4#"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x18ef4

    .line 10
    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 13
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 15
    invoke-static {v0}, Lvo0;->M(Lvo0;)V

    .line 18
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lvo0;->E(Lvo0;Z)Z

    .line 24
    invoke-static {}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->stop()I

    .line 27
    invoke-static {}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->destory()I

    .line 30
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 32
    invoke-static {v0}, Lvo0;->N(Lvo0;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 40
    invoke-static {v0}, Lvo0;->N(Lvo0;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapHandlerThread;->getAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 52
    invoke-static {v0}, Lvo0;->N(Lvo0;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapHandlerThread;->getAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapLooper;->quit()V

    .line 63
    :cond_0
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Lvo0;->i(Lvo0;Lcom/amap/location/support/handler/AmapHandlerThread;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 69
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 71
    invoke-static {v0, v1}, Lvo0;->v(Lvo0;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 74
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 76
    invoke-static {v0}, Lvo0;->O(Lvo0;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lvo0$k;->a:Lvo0;

    .line 84
    invoke-static {v0}, Lvo0;->O(Lvo0;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapHandlerThread;->getAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapLooper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    const-string v1, "GnssSoftLocator"

    .line 99
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_1
    :goto_0
    return-void
.end method
