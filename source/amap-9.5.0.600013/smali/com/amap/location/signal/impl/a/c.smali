.class public Lcom/amap/location/signal/impl/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/IGnssManager;


# instance fields
.field private a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private b:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field private c:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

.field private d:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

.field private e:Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;

.field private f:Lcom/amap/location/support/signal/gnss/AmapNmeaListener;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Landroid/location/GnssStatus$Callback;

.field private j:Landroid/location/GpsStatus$Listener;

.field private k:Landroid/location/GpsStatus;

.field private l:Landroid/location/OnNmeaMessageListener;

.field private m:Landroid/location/GpsStatus$NmeaListener;

.field private n:Landroid/location/GnssMeasurementsEvent$Callback;

.field private o:Landroid/location/GnssNavigationMessage$Callback;

.field private p:Z

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Landroid/location/LocationListener;

.field private v:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/c;->g:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/amap/location/signal/impl/a/c;->s:Z

    .line 10
    new-instance v2, Lcom/amap/location/signal/impl/a/c$7;

    .line 12
    invoke-direct {v2, p0}, Lcom/amap/location/signal/impl/a/c$7;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 15
    iput-object v2, p0, Lcom/amap/location/signal/impl/a/c;->u:Landroid/location/LocationListener;

    .line 17
    new-instance v2, Lcom/amap/location/signal/impl/a/c$8;

    .line 19
    invoke-direct {v2, p0}, Lcom/amap/location/signal/impl/a/c$8;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 22
    iput-object v2, p0, Lcom/amap/location/signal/impl/a/c;->v:Landroid/location/LocationListener;

    .line 24
    new-instance v2, Landroid/os/Handler;

    .line 26
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/amap/location/signal/impl/util/e;->a(Lcom/amap/location/support/handler/AmapLooper;)Landroid/os/Looper;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/amap/location/signal/impl/util/e;->a(Landroid/os/Looper;)Landroid/os/Looper;

    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    iput-object v2, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 43
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isXiamo()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 49
    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->a()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 57
    new-instance v3, Lcom/amap/location/signal/impl/a/c$1;

    .line 59
    invoke-direct {v3, p0}, Lcom/amap/location/signal/impl/a/c$1;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 62
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isVivo()Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 72
    invoke-static {}, Lcom/amap/location/signal/impl/manu/c;->a()Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 80
    new-instance v3, Lcom/amap/location/signal/impl/a/c$9;

    .line 82
    invoke-direct {v3, p0}, Lcom/amap/location/signal/impl/a/c$9;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 85
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 95
    invoke-static {}, Lcom/amap/location/signal/impl/manu/b;->a()Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 103
    new-instance v3, Lcom/amap/location/signal/impl/a/c$10;

    .line 105
    invoke-direct {v3, p0}, Lcom/amap/location/signal/impl/a/c$10;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 108
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->d()Z

    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 118
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->a()Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 126
    new-instance v3, Lcom/amap/location/signal/impl/a/c$11;

    .line 128
    invoke-direct {v3, p0}, Lcom/amap/location/signal/impl/a/c$11;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 131
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_3
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    const/16 v3, 0x18

    .line 138
    if-lt v2, v3, :cond_4

    .line 140
    new-instance v4, Lcom/amap/location/signal/impl/a/c$12;

    .line 142
    invoke-direct {v4, p0}, Lcom/amap/location/signal/impl/a/c$12;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 145
    iput-object v4, p0, Lcom/amap/location/signal/impl/a/c;->i:Landroid/location/GnssStatus$Callback;

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    new-instance v4, Lcom/amap/location/signal/impl/a/c$13;

    .line 150
    invoke-direct {v4, p0}, Lcom/amap/location/signal/impl/a/c$13;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 153
    iput-object v4, p0, Lcom/amap/location/signal/impl/a/c;->j:Landroid/location/GpsStatus$Listener;

    .line 155
    :goto_1
    if-lt v2, v3, :cond_5

    .line 157
    new-instance v4, Lcom/amap/location/signal/impl/a/c$14;

    .line 159
    invoke-direct {v4, p0}, Lcom/amap/location/signal/impl/a/c$14;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 162
    iput-object v4, p0, Lcom/amap/location/signal/impl/a/c;->l:Landroid/location/OnNmeaMessageListener;

    .line 164
    goto :goto_2

    .line 165
    :cond_5
    new-instance v4, Lcom/amap/location/signal/impl/a/c$15;

    .line 167
    invoke-direct {v4, p0}, Lcom/amap/location/signal/impl/a/c$15;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 170
    iput-object v4, p0, Lcom/amap/location/signal/impl/a/c;->m:Landroid/location/GpsStatus$NmeaListener;

    .line 172
    :goto_2
    if-lt v2, v3, :cond_6

    .line 174
    new-instance v4, Lcom/amap/location/signal/impl/a/c$16;

    .line 176
    invoke-direct {v4, p0}, Lcom/amap/location/signal/impl/a/c$16;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 179
    iput-object v4, p0, Lcom/amap/location/signal/impl/a/c;->n:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 181
    :cond_6
    if-lt v2, v3, :cond_7

    .line 183
    new-instance v2, Lcom/amap/location/signal/impl/a/c$2;

    .line 185
    invoke-direct {v2, p0}, Lcom/amap/location/signal/impl/a/c$2;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 188
    iput-object v2, p0, Lcom/amap/location/signal/impl/a/c;->o:Landroid/location/GnssNavigationMessage$Callback;

    .line 190
    :cond_7
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 193
    move-result-object v2

    .line 194
    const-string v3, "timeAlign"

    .line 196
    iget-wide v4, p0, Lcom/amap/location/signal/impl/a/c;->q:J

    .line 198
    invoke-virtual {v2, v3, v4, v5}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;J)J

    .line 201
    move-result-wide v2

    .line 202
    iput-wide v2, p0, Lcom/amap/location/signal/impl/a/c;->q:J

    .line 204
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 207
    move-result-object v2

    .line 208
    const-string v3, "sysrecscene"

    .line 210
    const-string v4, ""

    .line 212
    invoke-virtual {v2, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v2

    .line 216
    iput-object v2, p0, Lcom/amap/location/signal/impl/a/c;->r:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 221
    move-result-object v2

    .line 222
    const-string v3, "locExtras"

    .line 224
    invoke-virtual {v2, v3, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 227
    move-result v2

    .line 228
    if-ne v2, v1, :cond_8

    .line 230
    const/4 v0, 0x1

    .line 231
    :cond_8
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/c;->s:Z

    .line 233
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c;->k:Landroid/location/GpsStatus;

    return-object p1
.end method

.method private a(Landroid/location/GnssClock;)Lcom/amap/location/support/bean/gnss/AmapGnssClock;
    .locals 6

    .line 142
    new-instance v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    invoke-direct {v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;-><init>()V

    .line 143
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_8

    if-eqz p1, :cond_8

    .line 144
    invoke-static {p1}, Lct0;->a(Landroid/location/GnssClock;)I

    move-result v2

    iput v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->describeContents:I

    .line 145
    invoke-static {p1}, Lmt0;->a(Landroid/location/GnssClock;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lut0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    .line 146
    invoke-virtual {v0, v2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 147
    invoke-static {p1}, Lut0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasNanos:D

    .line 148
    :cond_0
    invoke-static {p1}, Lvt0;->a(Landroid/location/GnssClock;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lwt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    .line 149
    invoke-virtual {v0, v2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 150
    invoke-static {p1}, Lwt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasUncertaintyNanos:D

    .line 151
    :cond_1
    invoke-static {p1}, Lxt0;->a(Landroid/location/GnssClock;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lyt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x20

    .line 152
    invoke-virtual {v0, v2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 153
    invoke-static {p1}, Lyt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftNanosPerSecond:D

    .line 154
    :cond_2
    invoke-static {p1}, Ldt0;->a(Landroid/location/GnssClock;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Let0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x40

    .line 155
    invoke-virtual {v0, v2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 156
    invoke-static {p1}, Let0;->a(Landroid/location/GnssClock;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftUncertaintyNanosPerSecond:D

    :cond_3
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4

    .line 157
    invoke-static {p1}, Lft0;->a(Landroid/location/GnssClock;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Lgt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x100

    .line 158
    invoke-virtual {v0, v3}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 159
    invoke-static {p1}, Lgt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeUncertaintyNanos:D

    :cond_4
    if-lt v1, v2, :cond_5

    .line 160
    invoke-static {p1}, Lit0;->a(Landroid/location/GnssClock;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x80

    .line 161
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 162
    invoke-static {p1}, Ljt0;->a(Landroid/location/GnssClock;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeNanos:J

    .line 163
    :cond_5
    invoke-static {p1}, Lkt0;->a(Landroid/location/GnssClock;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Llt0;->a(Landroid/location/GnssClock;)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v1, 0x4

    .line 164
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 165
    invoke-static {p1}, Llt0;->a(Landroid/location/GnssClock;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->fullBiasNanos:J

    .line 166
    :cond_6
    invoke-static {p1}, Lnt0;->a(Landroid/location/GnssClock;)I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hardwareClockDiscontinuityCount:I

    .line 167
    invoke-static {p1}, Lot0;->a(Landroid/location/GnssClock;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lpt0;->a(Landroid/location/GnssClock;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_7

    const/4 v1, 0x1

    .line 168
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 169
    invoke-static {p1}, Lpt0;->a(Landroid/location/GnssClock;)I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->leapSecond:I

    .line 170
    :cond_7
    invoke-static {p1}, Lqt0;->a(Landroid/location/GnssClock;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeNanos:J

    .line 171
    invoke-static {p1}, Lrt0;->a(Landroid/location/GnssClock;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Ltt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x2

    .line 172
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->setFlag(I)V

    .line 173
    invoke-static {p1}, Ltt0;->a(Landroid/location/GnssClock;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeUncertaintyNanos:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "sysgnssprd"

    const-string v2, ""

    .line 174
    invoke-static {v1, v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;Landroid/location/GnssClock;)Lcom/amap/location/support/bean/gnss/AmapGnssClock;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Landroid/location/GnssClock;)Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/location/GnssNavigationMessage;)Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;
    .locals 3

    .line 175
    new-instance v0, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;

    invoke-direct {v0}, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;-><init>()V

    .line 176
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 177
    invoke-static {p1}, Los0;->a(Landroid/location/GnssNavigationMessage;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;->data:[B

    .line 178
    invoke-static {p1}, Lps0;->a(Landroid/location/GnssNavigationMessage;)I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;->messageId:I

    .line 179
    invoke-static {p1}, Lqs0;->a(Landroid/location/GnssNavigationMessage;)I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;->status:I

    .line 180
    invoke-static {p1}, Lrs0;->a(Landroid/location/GnssNavigationMessage;)I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;->submessageId:I

    .line 181
    invoke-static {p1}, Lss0;->a(Landroid/location/GnssNavigationMessage;)I

    move-result v1

    iput v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;->svid:I

    .line 182
    invoke-static {p1}, Lts0;->a(Landroid/location/GnssNavigationMessage;)I

    move-result p1

    iput p1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "sysgnssprd"

    const-string v2, ""

    .line 183
    invoke-static {v1, v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;Landroid/location/GnssNavigationMessage;)Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Landroid/location/GnssNavigationMessage;)Lcom/amap/location/support/bean/gnss/AmapGnssNavigation;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 14

    const-string v0, ""

    const-string v1, "sysgnssprd"

    .line 11
    new-instance v2, Lcom/amap/location/support/bean/location/AmapLocation;

    const/16 v3, -0x3e7

    const-string v4, "gps"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Ljava/lang/String;II)V

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->setLatitude(D)V

    .line 13
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->setLongitude(D)V

    .line 14
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->setLocationTickTime(J)V

    .line 17
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v4

    invoke-interface {v4}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v6

    .line 18
    iget-wide v8, p0, Lcom/amap/location/signal/impl/a/c;->q:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gtz v4, :cond_0

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    sub-long v8, v6, v8

    .line 20
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    iget-wide v12, p0, Lcom/amap/location/signal/impl/a/c;->q:J

    cmp-long v4, v8, v12

    if-ltz v4, :cond_1

    mul-long v10, v10, v6

    .line 21
    invoke-virtual {v2, v10, v11}, Lcom/amap/location/type/location/Location;->setLocationTickTime(J)V

    :cond_1
    const-string v4, "gnss_first_rec_time"

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 24
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 25
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isXiamo()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->d()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 27
    :cond_2
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isVivo()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/amap/location/signal/impl/manu/c;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/signal/impl/manu/c;->a(Landroid/os/Bundle;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 29
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setBearing(F)V

    .line 30
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setSpeed(F)V

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_4

    .line 31
    invoke-static {p1}, Lwo0;->a(Landroid/location/Location;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setBearingAccuracyDegrees(F)V

    .line 32
    invoke-static {p1}, Lyo0;->a(Landroid/location/Location;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    .line 33
    invoke-static {p1}, Lzo0;->a(Landroid/location/Location;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setVerticalAccuracyMeters(F)V

    .line 34
    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    .line 35
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 36
    :try_start_2
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_0

    .line 38
    :cond_5
    invoke-virtual {v2, v7, v8}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 39
    :try_start_3
    invoke-static {v6}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_6
    const-string v6, "satelliteCount"

    const-string v7, "satellites"

    .line 40
    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    .line 41
    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHonor()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    const-string v6, "SourceType"

    const/4 v7, -0x1

    .line 43
    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x80

    if-ne v6, v7, :cond_8

    const/16 v6, 0x300

    .line 44
    invoke-virtual {v2, v6}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    goto :goto_1

    :cond_8
    and-int/lit8 v7, v6, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    and-int/2addr v6, v4

    if-eq v6, v4, :cond_9

    const/16 v6, 0x302

    .line 45
    invoke-virtual {v2, v6}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 46
    :cond_9
    :goto_1
    iget-boolean v6, p0, Lcom/amap/location/signal/impl/a/c;->s:Z

    if-eqz v6, :cond_c

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "oe_"

    .line 49
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 50
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v6, "extrasKeys"

    .line 53
    invoke-virtual {v2, v6, v3}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v3

    .line 54
    :try_start_4
    invoke-static {v1, v0, v3}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_c
    :goto_4
    invoke-static {p1}, Lcom/amap/location/signal/impl/util/b;->a(Landroid/location/Location;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v5, 0x1

    :cond_d
    invoke-virtual {v2, v5}, Lcom/amap/location/type/location/Location;->setDiagnosisType(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 56
    invoke-static {v1, v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-object v2
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;Ljava/util/Collection;)Ljava/util/List;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/GnssMeasurement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_d

    if-eqz p1, :cond_d

    .line 98
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lhr0;->a(Ljava/lang/Object;)Landroid/location/GnssMeasurement;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    invoke-direct {v2}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;-><init>()V

    .line 100
    invoke-static {v1}, Lqr0;->a(Landroid/location/GnssMeasurement;)I

    move-result v3

    iput v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->describeContents:I

    .line 101
    invoke-static {v1}, Lyr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_0

    .line 102
    invoke-static {v1}, Lyr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeMeters:D

    .line 103
    :cond_0
    invoke-static {v1}, Lis0;->a(Landroid/location/GnssMeasurement;)I

    move-result v3

    iput v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeState:I

    .line 104
    invoke-static {v1}, Ljs0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_1

    .line 105
    invoke-static {v1}, Ljs0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeUncertaintyMeters:D

    .line 106
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    invoke-static {v1}, Lks0;->a(Landroid/location/GnssMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lms0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2000

    .line 107
    invoke-virtual {v2, v4}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->setFlag(I)V

    .line 108
    invoke-static {v1}, Lms0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->automaticGainControlLevelDb:D

    .line 109
    :cond_2
    invoke-static {v1}, Lir0;->a(Landroid/location/GnssMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Ljr0;->a(Landroid/location/GnssMeasurement;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x200

    .line 110
    invoke-virtual {v2, v4}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->setFlag(I)V

    .line 111
    invoke-static {v1}, Ljr0;->a(Landroid/location/GnssMeasurement;)F

    move-result v4

    iput v4, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierFrequencyHz:F

    .line 112
    :cond_3
    invoke-static {v1}, Lkr0;->a(Landroid/location/GnssMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Llr0;->a(Landroid/location/GnssMeasurement;)J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v4, v7, v9

    if-eqz v4, :cond_4

    const/16 v4, 0x400

    .line 113
    invoke-virtual {v2, v4}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->setFlag(I)V

    .line 114
    invoke-static {v1}, Llr0;->a(Landroid/location/GnssMeasurement;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierCycles:J

    .line 115
    :cond_4
    invoke-static {v1}, Lmr0;->a(Landroid/location/GnssMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lnr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x800

    .line 116
    invoke-virtual {v2, v4}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->setFlag(I)V

    .line 117
    invoke-static {v1}, Lnr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhase:D

    .line 118
    :cond_5
    invoke-static {v1}, Lor0;->a(Landroid/location/GnssMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1}, Lrr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x1000

    .line 119
    invoke-virtual {v2, v4}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->setFlag(I)V

    .line 120
    invoke-static {v1}, Lrr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhaseUncertainty:D

    .line 121
    :cond_6
    invoke-static {v1}, Lsr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_7

    .line 122
    invoke-static {v1}, Lsr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->cn0DbHz:D

    :cond_7
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_9

    .line 123
    invoke-static {v1}, Ltr0;->a(Landroid/location/GnssMeasurement;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x4000

    .line 124
    invoke-virtual {v2, v3}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->setFlag(I)V

    const-string v3, "UNKNOWN"

    .line 125
    invoke-static {v1}, Lur0;->a(Landroid/location/GnssMeasurement;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "0"

    goto :goto_1

    :cond_8
    invoke-static {v1}, Lur0;->a(Landroid/location/GnssMeasurement;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    .line 126
    :cond_9
    invoke-static {v1}, Lvr0;->a(Landroid/location/GnssMeasurement;)I

    move-result v3

    iput v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->constellationType:I

    .line 127
    invoke-static {v1}, Lwr0;->a(Landroid/location/GnssMeasurement;)I

    move-result v3

    iput v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->multipathIndicator:I

    .line 128
    invoke-static {v1}, Lxr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_a

    .line 129
    invoke-static {v1}, Lxr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateMetersPerSecond:D

    .line 130
    :cond_a
    invoke-static {v1}, Lzr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_b

    .line 131
    invoke-static {v1}, Lzr0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateUncertaintyMetersPerSecond:D

    .line 132
    :cond_b
    invoke-static {v1}, Lbs0;->a(Landroid/location/GnssMeasurement;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeNanos:J

    .line 133
    invoke-static {v1}, Lcs0;->a(Landroid/location/GnssMeasurement;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    .line 134
    invoke-static {v1}, Lds0;->a(Landroid/location/GnssMeasurement;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v1}, Les0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    .line 135
    invoke-virtual {v2, v3}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->setFlag(I)V

    .line 136
    invoke-static {v1}, Les0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->snrInDb:D

    .line 137
    :cond_c
    invoke-static {v1}, Lfs0;->a(Landroid/location/GnssMeasurement;)I

    move-result v3

    iput v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->state:I

    .line 138
    invoke-static {v1}, Lgs0;->a(Landroid/location/GnssMeasurement;)I

    move-result v3

    iput v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->svid:I

    .line 139
    invoke-static {v1}, Lhs0;->a(Landroid/location/GnssMeasurement;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->timeOffsetNanos:D

    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "sysgnssprd"

    const-string v2, ""

    .line 141
    invoke-static {v1, v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-object v0
.end method

.method private a()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->c:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;->onStarted()V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->c:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;->onFirstFix(I)V

    :cond_0
    return-void
.end method

.method private a(IFLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->c:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1, p2, p3}, Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;->onSatelliteChanged(IFLjava/util/List;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-wide/16 p1, 0x10

    invoke-static {p1, p2, v0}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendSignal(J[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->f:Lcom/amap/location/support/signal/gnss/AmapNmeaListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lcom/amap/location/support/signal/gnss/AmapNmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/location/GnssStatus;)V
    .locals 22

    move-object/from16 v0, p1

    .line 64
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_6

    if-eqz v0, :cond_6

    .line 65
    invoke-static/range {p1 .. p1}, Lpr0;->a(Landroid/location/GnssStatus;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    .line 67
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_1

    .line 68
    invoke-static {v0, v5}, Lht0;->a(Landroid/location/GnssStatus;I)Z

    move-result v9

    .line 69
    invoke-static {v0, v5}, Lst0;->a(Landroid/location/GnssStatus;I)F

    move-result v10

    move/from16 v20, v9

    move/from16 v21, v10

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 70
    :goto_1
    new-instance v9, Lcom/amap/location/support/bean/gnss/AmapSatellite;

    invoke-static {v0, v5}, Ldu0;->a(Landroid/location/GnssStatus;I)I

    move-result v12

    .line 71
    invoke-static {v0, v5}, Leu0;->a(Landroid/location/GnssStatus;I)I

    move-result v13

    invoke-static {v0, v5}, Lws0;->a(Landroid/location/GnssStatus;I)F

    move-result v14

    .line 72
    invoke-static {v0, v5}, Lls0;->a(Landroid/location/GnssStatus;I)Z

    move-result v15

    invoke-static {v0, v5}, Lfu0;->a(Landroid/location/GnssStatus;I)F

    move-result v16

    .line 73
    invoke-static {v0, v5}, Lfr0;->a(Landroid/location/GnssStatus;I)F

    move-result v17

    invoke-static {v0, v5}, Lgr0;->a(Landroid/location/GnssStatus;I)Z

    move-result v18

    .line 74
    invoke-static {v0, v5}, Las0;->a(Landroid/location/GnssStatus;I)Z

    move-result v19

    move-object v11, v9

    invoke-direct/range {v11 .. v21}, Lcom/amap/location/support/bean/gnss/AmapSatellite;-><init>(IIFZFFZZZF)V

    .line 75
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v0, v5}, Lls0;->a(Landroid/location/GnssStatus;I)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 77
    :cond_2
    invoke-static {v0, v5}, Lws0;->a(Landroid/location/GnssStatus;I)F

    move-result v9

    cmpl-float v9, v9, v3

    if-lez v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 78
    invoke-static {v0, v5}, Lws0;->a(Landroid/location/GnssStatus;I)F

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-float/2addr v7, v9

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    int-to-float v0, v6

    div-float/2addr v7, v0

    :cond_5
    move-object/from16 v1, p0

    .line 79
    :try_start_1
    invoke-direct {v1, v8, v7, v2}, Lcom/amap/location/signal/impl/a/c;->a(IFLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    move-object/from16 v1, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_2
    const-string v2, "sysgnssprd"

    const-string v3, ""

    .line 80
    invoke-static {v2, v3, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/c;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/c;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;JLjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/location/signal/impl/a/c;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;Landroid/location/GnssStatus;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/c;Ljava/lang/Iterable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method private a(Ljava/lang/Iterable;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/GpsSatellite;

    if-nez v6, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    new-instance v15, Lcom/amap/location/support/bean/gnss/AmapSatellite;

    const/4 v8, 0x0

    .line 84
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v9

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v10

    .line 85
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v11

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v12

    .line 86
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v13

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->hasEphemeris()Z

    move-result v14

    .line 87
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->hasAlmanac()Z

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v7, v15

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v7 .. v17}, Lcom/amap/location/support/bean/gnss/AmapSatellite;-><init>(IIFZFFZZZF)V

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 90
    :cond_3
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 91
    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-float/2addr v5, v2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    int-to-float v1, v3

    div-float/2addr v5, v1

    :cond_5
    move-object/from16 v1, p0

    .line 92
    :try_start_1
    invoke-direct {v1, v4, v5, v0}, Lcom/amap/location/signal/impl/a/c;->a(IFLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_1
    const-string v2, "sysgnssprd"

    const-string v3, ""

    .line 93
    invoke-static {v2, v3, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->c:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;->onStopped()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/amap/location/signal/impl/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/c;->b()V

    return-void
.end method

.method public static synthetic c(Lcom/amap/location/signal/impl/a/c;)Landroid/location/GpsStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/c;->k:Landroid/location/GpsStatus;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/c;->d:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/c;->e:Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/c;->a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/amap/location/signal/impl/a/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/c;->r:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/c;->b:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public addNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 6

    .line 1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result p2

    .line 7
    const-string v0, "sysgnssprd"

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 12
    const-string p1, "addNmeaListener: no loc permission"

    .line 14
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c;->f:Lcom/amap/location/support/signal/gnss/AmapNmeaListener;

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 p2, 0x18

    .line 24
    const-string v2, ""

    .line 26
    if-lt p1, p2, :cond_1

    .line 28
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->l:Landroid/location/OnNmeaMessageListener;

    .line 30
    if-eqz p1, :cond_2

    .line 32
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/c;->l:Landroid/location/OnNmeaMessageListener;

    .line 38
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 40
    invoke-static {p1, p2, v3}, Lns0;->a(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    .line 43
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-static {v0, v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->m:Landroid/location/GpsStatus$NmeaListener;

    .line 52
    if-eqz p1, :cond_2

    .line 54
    :try_start_1
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 57
    move-result-object p1

    .line 58
    const-string p2, "addNmeaListener"

    .line 60
    const/4 v3, 0x1

    .line 61
    new-array v4, v3, [Ljava/lang/Object;

    .line 63
    iget-object v5, p0, Lcom/amap/location/signal/impl/a/c;->m:Landroid/location/GpsStatus$NmeaListener;

    .line 65
    aput-object v5, v4, v1

    .line 67
    invoke-static {p1, p2, v4}, Lcom/amap/location/support/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 72
    :catch_1
    move-exception p1

    .line 73
    invoke-static {v0, v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_2
    :goto_0
    return v1
.end method

.method public getAmapMeasurements()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmapSatellites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCn0Count(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getGGA(J)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getGnssUpdatesSystemListenerId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c;->u:Landroid/location/LocationListener;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "@"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c;->u:Landroid/location/LocationListener;

    .line 26
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getGnssUpdatesSystemListenerIdentityHashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->u:Landroid/location/LocationListener;

    .line 3
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isGnssEnable()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "gps"

    .line 7
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isNetworkLocationBySystemEnable()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "network"

    .line 7
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isOnGnssRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/signal/impl/a/c;->g:Z

    .line 3
    return v0
.end method

.method public onListenChanged()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isXiamo()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/signal/impl/manu/XiaomiDimLocator;->a()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 15
    new-instance v1, Lcom/amap/location/signal/impl/a/c$3;

    .line 17
    invoke-direct {v1, p0}, Lcom/amap/location/signal/impl/a/c$3;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isVivo()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/amap/location/signal/impl/manu/c;->a()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 38
    new-instance v1, Lcom/amap/location/signal/impl/a/c$4;

    .line 40
    invoke-direct {v1, p0}, Lcom/amap/location/signal/impl/a/c$4;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lcom/amap/location/signal/impl/manu/b;->a()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 61
    new-instance v1, Lcom/amap/location/signal/impl/a/c$5;

    .line 63
    invoke-direct {v1, p0}, Lcom/amap/location/signal/impl/a/c$5;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->d()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 76
    invoke-static {}, Lcom/amap/location/signal/impl/manu/a;->a()Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 84
    new-instance v1, Lcom/amap/location/signal/impl/a/c$6;

    .line 86
    invoke-direct {v1, p0}, Lcom/amap/location/signal/impl/a/c$6;-><init>(Lcom/amap/location/signal/impl/a/c;)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_3
    :goto_0
    return-void
.end method

.method public registerGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 5

    .line 1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "sysgnssprd"

    .line 10
    if-nez p2, :cond_0

    .line 12
    const-string p1, "registerGnssMeasurementsCallback: no loc permission"

    .line 14
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c;->d:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 p2, 0x18

    .line 24
    if-le p1, p2, :cond_2

    .line 26
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/c;->n:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 28
    if-eqz p2, :cond_2

    .line 30
    const/16 p2, 0x1f

    .line 32
    const/4 v2, 0x1

    .line 33
    if-lt p1, p2, :cond_1

    .line 35
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 38
    move-result-object p1

    .line 39
    const-string p2, "gnss_full_tracking"

    .line 41
    invoke-virtual {p1, p2, v0}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-static {}, Lcu0;->a()V

    .line 50
    invoke-static {}, Lbu0;->a()Landroid/location/GnssMeasurementRequest$Builder;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1, v2}, Lvs0;->a(Landroid/location/GnssMeasurementRequest$Builder;Z)Landroid/location/GnssMeasurementRequest$Builder;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 61
    move-result-object p2

    .line 62
    invoke-static {p1}, Lxs0;->a(Landroid/location/GnssMeasurementRequest$Builder;)Landroid/location/GnssMeasurementRequest;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {}, Lcom/amap/location/signal/impl/util/e;->a()Ljava/util/concurrent/Executor;

    .line 69
    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/amap/location/signal/impl/a/c;->n:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 72
    invoke-static {p2, p1, v3, v4}, Lys0;->a(Landroid/location/LocationManager;Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    .line 75
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :try_start_1
    iput-boolean v2, p0, Lcom/amap/location/signal/impl/a/c;->t:Z

    .line 78
    const-string p2, "request rgm full"

    .line 80
    invoke-static {v1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lcom/amap/location/signal/impl/a/c;->t:Z

    .line 86
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 89
    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/c;->n:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 92
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 94
    invoke-static {p1, p2, v2}, Lzs0;->a(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    .line 97
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    :try_start_3
    const-string p2, "request rgm"

    .line 100
    invoke-static {v1, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 103
    :goto_0
    move v0, p1

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception p2

    .line 106
    move v0, p1

    .line 107
    goto :goto_1

    .line 108
    :catch_1
    move-exception p2

    .line 109
    :goto_1
    const-string p1, ""

    .line 111
    invoke-static {v1, p1, p2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_2
    :goto_2
    return v0
.end method

.method public registerGnssNavigationMessageCallback(Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 3

    .line 1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result p2

    .line 7
    const-string v0, "sysgnssprd"

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 12
    const-string p1, "registerGnssNavigationMessageCallback: no loc permission"

    .line 14
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c;->e:Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 p2, 0x18

    .line 24
    if-le p1, p2, :cond_1

    .line 26
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->o:Landroid/location/GnssNavigationMessage$Callback;

    .line 28
    if-eqz p1, :cond_1

    .line 30
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/c;->o:Landroid/location/GnssNavigationMessage$Callback;

    .line 36
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/c;->h:Landroid/os/Handler;

    .line 38
    invoke-static {p1, p2, v2}, Lbt0;->a(Landroid/location/LocationManager;Landroid/location/GnssNavigationMessage$Callback;Landroid/os/Handler;)Z

    .line 41
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    const-string p2, ""

    .line 46
    invoke-static {v0, p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_1
    :goto_0
    return v1
.end method

.method public registerSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 4

    .line 1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result p2

    .line 7
    const-string v0, "sysgnssprd"

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 12
    const-string p1, "registerSatelliteStatusCallback: no loc permission"

    .line 14
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c;->c:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 20
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 p2, 0x18

    .line 24
    if-lt p1, p2, :cond_1

    .line 26
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->i:Landroid/location/GnssStatus$Callback;

    .line 28
    if-eqz p1, :cond_2

    .line 30
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/c;->i:Landroid/location/GnssStatus$Callback;

    .line 36
    new-instance v2, Landroid/os/Handler;

    .line 38
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lcom/amap/location/signal/impl/util/e;->a(Lcom/amap/location/support/handler/AmapLooper;)Landroid/os/Looper;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/amap/location/signal/impl/util/e;->a(Landroid/os/Looper;)Landroid/os/Looper;

    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    invoke-static {p1, p2, v2}, Lzt0;->a(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->j:Landroid/location/GpsStatus$Listener;

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/c;->j:Landroid/location/GpsStatus$Listener;

    .line 68
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 71
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    move v1, p1

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    const-string p2, ""

    .line 77
    invoke-static {v0, p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_2
    :goto_1
    return v1
.end method

.method public removeGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/c;->u:Landroid/location/LocationListener;

    .line 8
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "system gps remove:"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, ","

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 47
    move-result-object p1

    .line 48
    const v1, 0x1ae3f

    .line 51
    invoke-static {v1, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 54
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/c;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    const-string v1, "sysgnssprd"

    .line 61
    const-string v2, "system gps remove error"

    .line 63
    invoke-static {v1, v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return v0
.end method

.method public removeNmeaListener(Lcom/amap/location/support/signal/gnss/AmapNmeaListener;)Z
    .locals 7

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v0, 0x18

    .line 5
    const-string v1, ""

    .line 7
    const-string v2, "sysgnssprd"

    .line 9
    const/4 v3, 0x1

    .line 10
    if-lt p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->l:Landroid/location/OnNmeaMessageListener;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->l:Landroid/location/OnNmeaMessageListener;

    .line 22
    invoke-static {p1, v0}, Ldr0;->a(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-static {v2, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->m:Landroid/location/GpsStatus$NmeaListener;

    .line 33
    if-eqz p1, :cond_1

    .line 35
    :try_start_1
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 38
    move-result-object p1

    .line 39
    const-string v0, "removeNmeaListener"

    .line 41
    new-array v4, v3, [Ljava/lang/Object;

    .line 43
    iget-object v5, p0, Lcom/amap/location/signal/impl/a/c;->m:Landroid/location/GpsStatus$NmeaListener;

    .line 45
    const/4 v6, 0x0

    .line 46
    aput-object v5, v4, v6

    .line 48
    invoke-static {p1, v0, v4}, Lcom/amap/location/support/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p1

    .line 53
    invoke-static {v2, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_1
    :goto_0
    return v3
.end method

.method public removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->v:Landroid/location/LocationListener;

    .line 7
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 10
    const-string p1, "2"

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 15
    move-result-object p1

    .line 16
    const v0, 0x1ae40

    .line 19
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    const-string v0, "sysgnssprd"

    .line 27
    const-string v1, ""

    .line 29
    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public requestGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 10

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "sysgnssprd"

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 14
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string p1, "requestGnssUpdates: no loc permission"

    .line 22
    invoke-static {v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return v1

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c;->a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 28
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 31
    move-result-object v3

    .line 32
    const-string v4, "gps"

    .line 34
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    .line 37
    move-result-wide v5

    .line 38
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    .line 41
    move-result-wide v7

    .line 42
    double-to-float v7, v7

    .line 43
    iget-object v8, p0, Lcom/amap/location/signal/impl/a/c;->u:Landroid/location/LocationListener;

    .line 45
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/e;->a(Lcom/amap/location/support/handler/AmapLooper;)Landroid/os/Looper;

    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/e;->a(Landroid/os/Looper;)Landroid/os/Looper;

    .line 52
    move-result-object v9

    .line 53
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v0, "system gps request:"

    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    .line 69
    move-result-wide v3

    .line 70
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, ","

    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    .line 81
    move-result-wide v3

    .line 82
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 92
    move-result-object p1

    .line 93
    const p2, 0x1ae3f

    .line 96
    invoke-static {p2, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 99
    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/amap/location/signal/impl/a/c;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return p1

    .line 103
    :catch_0
    move-exception p1

    .line 104
    const-string p2, "system gps request error"

    .line 106
    invoke-static {v2, p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    return v1
.end method

.method public requestPassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 10

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "sysgnssprd"

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 14
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string p1, "requestPassiveUpdates: no loc permission"

    .line 22
    invoke-static {v2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return v1

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c;->b:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 28
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 31
    move-result-object v3

    .line 32
    const-string v4, "passive"

    .line 34
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    .line 37
    move-result-wide v5

    .line 38
    invoke-virtual {p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinDistance()D

    .line 41
    move-result-wide v7

    .line 42
    double-to-float v7, v7

    .line 43
    iget-object v8, p0, Lcom/amap/location/signal/impl/a/c;->v:Landroid/location/LocationListener;

    .line 45
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/e;->a(Lcom/amap/location/support/handler/AmapLooper;)Landroid/os/Looper;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/amap/location/signal/impl/util/e;->a(Landroid/os/Looper;)Landroid/os/Looper;

    .line 52
    move-result-object v9

    .line 53
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 56
    const-string p1, "1"

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 61
    move-result-object p1

    .line 62
    const p2, 0x1ae40

    .line 65
    invoke-static {p2, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    const-string p2, ""

    .line 73
    invoke-static {v2, p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return v1
.end method

.method public resetGnssRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 3
    invoke-virtual {p0, v0}, Lcom/amap/location/signal/impl/a/c;->removeGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    .line 6
    iget-boolean v0, p0, Lcom/amap/location/signal/impl/a/c;->t:Z

    .line 8
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c;->d:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 10
    invoke-virtual {p0, v1}, Lcom/amap/location/signal/impl/a/c;->unregisterGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;)Z

    .line 13
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c;->a:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/amap/location/signal/impl/a/c;->requestGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 24
    :cond_0
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->d:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/amap/location/signal/impl/a/c;->registerGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 37
    :cond_1
    return-void
.end method

.method public setFilterGps(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amap/location/signal/impl/a/c;->p:Z

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v0, "filter gps:"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-boolean v0, p0, Lcom/amap/location/signal/impl/a/c;->p:Z

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string v0, "sysgnssprd"

    .line 24
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public unregisterGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;)Z
    .locals 2

    .line 1
    const-string p1, "sysgnssprd"

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/c;->t:Z

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v1, 0x18

    .line 10
    if-le v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->n:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c;->n:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 22
    invoke-static {v0, v1}, Lus0;->a(Landroid/location/LocationManager;Landroid/location/GnssMeasurementsEvent$Callback;)V

    .line 25
    const-string v0, "remove rgm"

    .line 27
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, ""

    .line 34
    invoke-static {p1, v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method public unregisterGnssNavigationMessageCallback(Lcom/amap/location/support/signal/gnss/AmapGnssNavigationListener;)Z
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v0, 0x18

    .line 5
    if-le p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->o:Landroid/location/GnssNavigationMessage$Callback;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->o:Landroid/location/GnssNavigationMessage$Callback;

    .line 17
    invoke-static {p1, v0}, Lau0;->a(Landroid/location/LocationManager;Landroid/location/GnssNavigationMessage$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    const-string v0, "sysgnssprd"

    .line 24
    const-string v1, ""

    .line 26
    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public unregisterSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;)Z
    .locals 2

    .line 1
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v0, 0x18

    .line 5
    if-lt p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->i:Landroid/location/GnssStatus$Callback;

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->i:Landroid/location/GnssStatus$Callback;

    .line 17
    invoke-static {p1, v0}, Lat0;->a(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c;->j:Landroid/location/GpsStatus$Listener;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c;->j:Landroid/location/GpsStatus$Listener;

    .line 31
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string v0, "sysgnssprd"

    .line 38
    const-string v1, ""

    .line 40
    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 44
    return p1
.end method
