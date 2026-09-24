.class public Lcom/amap/location/g/j;
.super Lcom/amap/location/support/dispatch/ListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/ListenerWrapper<",
        "Lcom/amap/location/support/nl/NetworkLocationListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amap/location/support/nl/NetworkLocationListener;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/dispatch/ListenerWrapper;-><init>(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    if-eq p1, p2, :cond_0

    .line 4
    goto/16 :goto_1

    .line 6
    :cond_0
    if-nez p4, :cond_1

    .line 8
    return-void

    .line 9
    :cond_1
    check-cast p4, [Ljava/lang/Object;

    .line 11
    array-length p1, p4

    .line 12
    const/4 p3, 0x2

    .line 13
    if-ge p1, p3, :cond_2

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string p2, "objs size:"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    array-length p2, p4

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string p2, "nl"

    .line 35
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    aget-object p1, p4, p1

    .line 42
    const/4 p3, 0x0

    .line 43
    if-eqz p1, :cond_3

    .line 45
    check-cast p1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move-object p1, p3

    .line 49
    :goto_0
    aget-object p4, p4, p2

    .line 51
    if-eqz p4, :cond_4

    .line 53
    move-object p3, p4

    .line 54
    check-cast p3, Lcom/amap/location/support/bean/AmapFps;

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 62
    invoke-virtual {p4}, Lcom/amap/location/support/nl/NetworkLocationListener;->getOnlyOnline()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 68
    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getLocType()I

    .line 73
    move-result v0

    .line 74
    if-eq v0, p2, :cond_5

    .line 76
    return-void

    .line 77
    :cond_5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 84
    move-result-wide v0

    .line 85
    invoke-virtual {p4}, Lcom/amap/location/support/nl/NetworkLocationListener;->isOnlyOnce()Z

    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_6

    .line 91
    invoke-virtual {p4}, Lcom/amap/location/support/nl/NetworkLocationListener;->getLastLocatonTime()J

    .line 94
    move-result-wide v2

    .line 95
    sub-long v2, v0, v2

    .line 97
    invoke-virtual {p4}, Lcom/amap/location/support/nl/NetworkLocationListener;->getInterval()I

    .line 100
    move-result p2

    .line 101
    int-to-long v4, p2

    .line 102
    cmp-long p2, v2, v4

    .line 104
    if-gez p2, :cond_6

    .line 106
    return-void

    .line 107
    :cond_6
    invoke-virtual {p4, v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setLastLocationTime(J)V

    .line 110
    invoke-virtual {p4, p1, p3}, Lcom/amap/location/support/nl/NetworkLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocationNetwork;Lcom/amap/location/support/bean/AmapFps;)V

    .line 113
    :try_start_0
    invoke-virtual {p4}, Lcom/amap/location/support/nl/NetworkLocationListener;->isOnlyOnce()Z

    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_7

    .line 119
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p1, p4}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception p1

    .line 128
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 131
    :cond_7
    :goto_1
    return-void
.end method
