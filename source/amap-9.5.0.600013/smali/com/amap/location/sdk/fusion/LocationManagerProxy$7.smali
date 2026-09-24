.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$7;
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

.field private c:J


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$7;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_7

    .line 3
    const-string v0, "gps"

    .line 5
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_7

    .line 15
    const v0, 0x18f4a

    .line 18
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 21
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    const v0, 0x18fae

    .line 30
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x300

    .line 39
    if-ne v0, v1, :cond_1

    .line 41
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->getGnssBlockState()I

    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x1

    .line 47
    if-ne v0, v1, :cond_2

    .line 49
    return-void

    .line 50
    :cond_2
    const v0, 0x18f4b

    .line 53
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 56
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 62
    const v0, 0x18faf

    .line 65
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 68
    :cond_3
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_7

    .line 74
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 81
    move-result-wide v0

    .line 82
    iget-wide v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$7;->b:J

    .line 84
    const-wide/16 v4, 0x258

    .line 86
    const-wide/16 v6, 0x0

    .line 88
    cmp-long v8, v2, v6

    .line 90
    if-eqz v8, :cond_4

    .line 92
    sub-long v2, v0, v2

    .line 94
    cmp-long v8, v2, v4

    .line 96
    if-lez v8, :cond_5

    .line 98
    :cond_4
    const v2, 0x18fb1

    .line 101
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 104
    iput-wide v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$7;->b:J

    .line 106
    :cond_5
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 109
    move-result-wide v0

    .line 110
    iget-wide v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$7;->c:J

    .line 112
    cmp-long p1, v2, v6

    .line 114
    if-eqz p1, :cond_6

    .line 116
    sub-long v2, v0, v2

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 121
    move-result-wide v2

    .line 122
    cmp-long p1, v2, v4

    .line 124
    if-lez p1, :cond_7

    .line 126
    :cond_6
    const p1, 0x18fb2

    .line 129
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 132
    iput-wide v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$7;->c:J

    .line 134
    :cond_7
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
