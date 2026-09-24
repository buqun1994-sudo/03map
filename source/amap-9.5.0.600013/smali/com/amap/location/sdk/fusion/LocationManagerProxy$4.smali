.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/h/b;->a()Lcom/amap/location/sdk/h/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/h/b;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 8
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "sdkrcm"

    .line 14
    invoke-virtual {v0, v1}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v1, "get main loc callback:"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, " drive:"

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 45
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->G(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    .line 48
    move-result v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ""

    .line 66
    invoke-static {p1, v1}, Lcom/amap/location/support/util/TextUtils;->getSimpleLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 80
    move-result-object v1

    .line 81
    const v2, 0xea60

    .line 84
    const v3, 0x1ae2b

    .line 87
    invoke-static {v3, v1, v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[BI)V

    .line 90
    const-string v1, "mainmgrproxy"

    .line 92
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Z)Z

    .line 99
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 101
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_0

    .line 107
    if-eqz p1, :cond_0

    .line 109
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Lcom/amap/location/support/log/StartTimeConsumingLog;->setLocation(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 122
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/amap/location/sdk/i/a;->a()Lcom/amap/location/sdk/i/a;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/amap/location/sdk/i/a;->a(Z)V

    .line 136
    const v1, 0x1899e

    .line 139
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 142
    const-string v1, "gps"

    .line 144
    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_2

    .line 162
    const v2, 0x18f47

    .line 165
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 168
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 170
    invoke-static {v2, p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_1

    .line 176
    const v3, 0x18f4f

    .line 179
    invoke-static {v3}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 182
    :cond_1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_2

    .line 188
    const v3, 0x18fab

    .line 191
    invoke-static {v3}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 194
    if-eqz v2, :cond_2

    .line 196
    const v2, 0x18fb3

    .line 199
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 202
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 205
    move-result-wide v2

    .line 206
    iget-wide v4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->b:J

    .line 208
    sub-long v4, v2, v4

    .line 210
    const-wide/16 v6, 0x7d0

    .line 212
    cmp-long v8, v4, v6

    .line 214
    if-gez v8, :cond_3

    .line 216
    iget v4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->c:I

    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 220
    iput v4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->c:I

    .line 222
    const/16 v5, 0xa

    .line 224
    if-lt v4, v5, :cond_4

    .line 226
    const v4, 0x189a0

    .line 229
    invoke-static {v4}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 232
    iput v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->c:I

    .line 234
    goto :goto_0

    .line 235
    :cond_3
    iput v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->c:I

    .line 237
    :cond_4
    :goto_0
    iput-wide v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->b:J

    .line 239
    if-eqz p1, :cond_5

    .line 241
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->setLastLocation(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 244
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_5

    .line 254
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->setLastLocationGnss(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 257
    :cond_5
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 11
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 11
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$4;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 11
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onStatusChanged(Ljava/lang/String;I)V

    .line 18
    :cond_0
    return-void
.end method
