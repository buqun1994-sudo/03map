.class public Lcom/amap/location/signal/c/a/b;
.super Lcom/amap/location/support/dispatch/ListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/ListenerWrapper<",
        "Lcom/amap/location/support/signal/gnss/AmapLocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/amap/location/support/bean/location/AmapLocation;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/dispatch/ListenerWrapper;-><init>(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 4

    .line 1
    const/4 p3, 0x1

    .line 2
    if-eq p1, p3, :cond_3

    .line 4
    const/4 p3, 0x2

    .line 5
    if-eq p1, p3, :cond_2

    .line 7
    const/4 p2, 0x3

    .line 8
    if-eq p1, p2, :cond_1

    .line 10
    const/4 p2, 0x4

    .line 11
    if-eq p1, p2, :cond_0

    .line 13
    goto/16 :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 21
    check-cast p4, Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p4}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 26
    goto/16 :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 34
    check-cast p4, Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p4}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 39
    goto/16 :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 47
    check-cast p4, Ljava/lang/String;

    .line 49
    invoke-virtual {p1, p4, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onStatusChanged(Ljava/lang/String;I)V

    .line 52
    goto/16 :goto_0

    .line 54
    :cond_3
    if-nez p4, :cond_4

    .line 56
    return-void

    .line 57
    :cond_4
    check-cast p4, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 59
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 65
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->isFilterMock()Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 71
    invoke-virtual {p4}, Lcom/amap/location/type/location/Location;->getDiagnosisType()I

    .line 74
    move-result p1

    .line 75
    if-lez p1, :cond_5

    .line 77
    return-void

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 84
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    .line 87
    move-result-wide p1

    .line 88
    const-wide/16 v0, 0x3e8

    .line 90
    cmp-long p3, p1, v0

    .line 92
    if-gtz p3, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 100
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    .line 103
    move-result-wide p1

    .line 104
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 106
    cmpg-double p3, p1, v0

    .line 108
    if-gtz p3, :cond_6

    .line 110
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 116
    invoke-virtual {p1, p4}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 119
    goto :goto_0

    .line 120
    :cond_6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 127
    move-result-wide p1

    .line 128
    iget-wide v0, p0, Lcom/amap/location/signal/c/a/b;->b:J

    .line 130
    sub-long/2addr p1, v0

    .line 131
    iget-object p3, p0, Lcom/amap/location/signal/c/a/b;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 133
    invoke-virtual {p4, p3}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 136
    move-result-wide v0

    .line 137
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 140
    move-result-object p3

    .line 141
    check-cast p3, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 143
    invoke-virtual {p3}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    .line 146
    move-result-wide v2

    .line 147
    cmpl-double p3, v0, v2

    .line 149
    if-gtz p3, :cond_7

    .line 151
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 154
    move-result-object p3

    .line 155
    check-cast p3, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 157
    invoke-virtual {p3}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    .line 160
    move-result-wide v0

    .line 161
    cmp-long p3, p1, v0

    .line 163
    if-lez p3, :cond_8

    .line 165
    :cond_7
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 168
    move-result-object p1

    .line 169
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 172
    move-result-wide p1

    .line 173
    iput-wide p1, p0, Lcom/amap/location/signal/c/a/b;->b:J

    .line 175
    iput-object p4, p0, Lcom/amap/location/signal/c/a/b;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 177
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/ListenerWrapper;->getListener()Ljava/lang/Object;

    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 183
    invoke-virtual {p1, p4}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 186
    :cond_8
    :goto_0
    return-void
.end method
