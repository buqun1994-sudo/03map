.class public Lcom/amap/location/signal/c/b/a;
.super Lcom/amap/location/support/dispatch/ListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/ListenerWrapper<",
        "Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/dispatch/ListenerWrapper;-><init>(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    if-ne p1, p3, :cond_2

    .line 4
    if-eqz p4, :cond_3

    .line 6
    :try_start_0
    check-cast p4, [Ljava/lang/Object;

    .line 8
    const/4 p1, 0x0

    .line 9
    aget-object p1, p4, p1

    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 14
    check-cast p1, Ljava/util/List;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, p2

    .line 18
    :goto_0
    aget-object p3, p4, p3

    .line 20
    if-eqz p3, :cond_1

    .line 22
    move-object p2, p3

    .line 23
    check-cast p2, Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 28
    move-result-object p3

    .line 29
    check-cast p3, Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 31
    invoke-interface {p3, p1, p2}, Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;->onGnssMeasurementsReceived(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p3, 0x2

    .line 41
    if-ne p1, p3, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 49
    invoke-interface {p1, p2}, Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;->onStatusChanged(I)V

    .line 52
    :cond_3
    :goto_1
    return-void
.end method
