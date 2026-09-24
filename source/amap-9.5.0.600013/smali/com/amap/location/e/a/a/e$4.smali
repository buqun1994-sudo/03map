.class Lcom/amap/location/e/a/a/e$4;
.super Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/a/a/e;
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
    iput-object p1, p0, Lcom/amap/location/e/a/a/e$4;->a:Lcom/amap/location/e/a/a/e;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(IIJ[F)V
    .locals 0

    .line 1
    const/16 p2, 0xf

    .line 3
    if-eq p1, p2, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    array-length p1, p5

    .line 7
    const/4 p2, 0x4

    .line 8
    if-ge p1, p2, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/amap/location/e/a/a/e$4;->a:Lcom/amap/location/e/a/a/e;

    .line 13
    invoke-static {p1}, Lcom/amap/location/e/a/a/e;->g(Lcom/amap/location/e/a/a/e;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 24
    :try_start_0
    new-instance p1, Lcom/amap/location/e/a/a/l;

    .line 26
    invoke-direct {p1, p3, p4, p5}, Lcom/amap/location/e/a/a/l;-><init>(J[F)V

    .line 29
    iget-object p2, p0, Lcom/amap/location/e/a/a/e$4;->a:Lcom/amap/location/e/a/a/e;

    .line 31
    invoke-static {p2}, Lcom/amap/location/e/a/a/e;->e(Lcom/amap/location/e/a/a/e;)Ljava/util/List;

    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 38
    move-result p2

    .line 39
    const/16 p3, 0x64

    .line 41
    if-ge p2, p3, :cond_2

    .line 43
    iget-object p2, p0, Lcom/amap/location/e/a/a/e$4;->a:Lcom/amap/location/e/a/a/e;

    .line 45
    invoke-static {p2}, Lcom/amap/location/e/a/a/e;->e(Lcom/amap/location/e/a/a/e;)Ljava/util/List;

    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/amap/location/e/a/a/e$4;->a:Lcom/amap/location/e/a/a/e;

    .line 54
    invoke-static {p1}, Lcom/amap/location/e/a/a/e;->g(Lcom/amap/location/e/a/a/e;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    iget-object p2, p0, Lcom/amap/location/e/a/a/e$4;->a:Lcom/amap/location/e/a/a/e;

    .line 69
    invoke-static {p2}, Lcom/amap/location/e/a/a/e;->g(Lcom/amap/location/e/a/a/e;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 80
    throw p1
.end method
