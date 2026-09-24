.class public Lcom/amap/location/signal/c/b/b;
.super Lcom/amap/location/support/dispatch/Dispatcher;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/Dispatcher<",
        "Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;",
        ">;",
        "Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/dispatch/Dispatcher;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/amap/location/signal/c/b/b;->a:[Ljava/lang/Object;

    .line 9
    const-wide/16 v0, 0x1f4

    .line 11
    iput-wide v0, p0, Lcom/amap/location/signal/c/b/b;->c:J

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;",
            "Lcom/amap/location/support/handler/AmapLooper;",
            ")",
            "Lcom/amap/location/support/dispatch/ListenerWrapper<",
            "Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amap/location/signal/c/b/a;

    invoke-direct {v0, p1, p2}, Lcom/amap/location/signal/c/b/a;-><init>(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)V

    return-object v0
.end method

.method public a()[Ljava/lang/Object;
    .locals 5

    .line 2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/location/signal/c/b/b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/c/b/b;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic newListenInstance(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;
    .locals 0

    .line 1
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/amap/location/signal/c/b/b;->a(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onGnssMeasurementsReceived(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;",
            ">;",
            "Lcom/amap/location/support/bean/gnss/AmapGnssClock;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/amap/location/signal/c/b/b;->c:J

    .line 11
    const-wide/16 v4, 0x0

    .line 13
    cmp-long v6, v2, v4

    .line 15
    if-lez v6, :cond_0

    .line 17
    iget-wide v6, p0, Lcom/amap/location/signal/c/b/b;->b:J

    .line 19
    cmp-long v8, v6, v4

    .line 21
    if-lez v8, :cond_0

    .line 23
    sub-long v4, v0, v6

    .line 25
    cmp-long v6, v4, v2

    .line 27
    if-gez v6, :cond_0

    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/amap/location/signal/c/b/b;->a:[Ljava/lang/Object;

    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object p1, v2, v3

    .line 35
    const/4 v4, 0x1

    .line 36
    aput-object p2, v2, v4

    .line 38
    iput-wide v0, p0, Lcom/amap/location/signal/c/b/b;->b:J

    .line 40
    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    aput-object p1, v0, v3

    .line 45
    aput-object p2, v0, v4

    .line 47
    invoke-virtual {p0, v4, v0}, Lcom/amap/location/support/dispatch/Dispatcher;->callback(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public onListenChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getSize()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "maxrgminter"

    .line 17
    const/16 v2, 0x1f4

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 22
    move-result v0

    .line 23
    int-to-long v0, v0

    .line 24
    iput-wide v0, p0, Lcom/amap/location/signal/c/b/b;->c:J

    .line 26
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, p0, v1}, Lcom/amap/location/signal/e/c;->registerGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getSize()I

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 47
    iget-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 49
    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/amap/location/support/dispatch/Dispatcher;->mHasStart:Z

    .line 54
    invoke-static {}, Lcom/amap/location/signal/e/c;->a()Lcom/amap/location/signal/e/c;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Lcom/amap/location/signal/e/c;->unregisterGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;)Z

    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->callback(ILjava/lang/Object;)V

    .line 9
    return-void
.end method
