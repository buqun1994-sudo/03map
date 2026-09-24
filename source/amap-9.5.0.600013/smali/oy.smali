.class public abstract Loy;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"

# interfaces
.implements Lxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loy$g;
    }
.end annotation


# instance fields
.field public A:Ljava/util/HashSet;

.field public B:Landroid/os/Handler;

.field public C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

.field public d:I

.field public volatile e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:F

.field public j:I

.field public k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

.field public l:Z

.field public m:Z

.field public n:Lik0;

.field public o:Lcom/amap/location/support/bean/location/AmapLocation;

.field public p:Lcom/amap/location/support/bean/location/AmapLocation;

.field public q:I

.field public r:J

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:J

.field public final w:Ljava/lang/Object;

.field public volatile x:Lzx$d;

.field public volatile y:Ljava/util/List;

.field public z:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Loy;->d:I

    .line 7
    iput-boolean v0, p0, Loy;->e:Z

    .line 9
    iput-boolean v0, p0, Loy;->f:Z

    .line 11
    iput-boolean v0, p0, Loy;->g:Z

    .line 13
    const-wide/16 v1, 0x3e8

    .line 15
    iput-wide v1, p0, Loy;->h:J

    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Loy;->i:F

    .line 20
    const/4 v1, 0x3

    .line 21
    iput v1, p0, Loy;->j:I

    .line 23
    iput-boolean v0, p0, Loy;->l:Z

    .line 25
    iput-boolean v0, p0, Loy;->m:Z

    .line 27
    iput-boolean v0, p0, Loy;->s:Z

    .line 29
    iput-boolean v0, p0, Loy;->t:Z

    .line 31
    iput-boolean v0, p0, Loy;->u:Z

    .line 33
    const-wide/16 v1, 0x0

    .line 35
    iput-wide v1, p0, Loy;->v:J

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v1, p0, Loy;->y:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/HashSet;

    .line 46
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 49
    iput-object v1, p0, Loy;->A:Ljava/util/HashSet;

    .line 51
    new-instance v1, Loy$e;

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v1, p0, v2}, Loy$e;-><init>(Loy;Landroid/os/Looper;)V

    .line 60
    iput-object v1, p0, Loy;->B:Landroid/os/Handler;

    .line 62
    new-instance v1, Loy$f;

    .line 64
    invoke-direct {v1, p0}, Loy$f;-><init>(Loy;)V

    .line 67
    iput-object v1, p0, Loy;->C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 69
    invoke-virtual {p0}, Loy;->B()V

    .line 72
    invoke-static {}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->getInstance()Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 78
    invoke-virtual {v1, p1, v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->init(Landroid/content/Context;Z)V

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    const/16 v2, 0x18

    .line 85
    if-ge v1, v2, :cond_0

    .line 87
    new-instance v1, Loy$a;

    .line 89
    invoke-direct {v1, p0}, Loy$a;-><init>(Loy;)V

    .line 92
    iput-object v1, p0, Loy;->w:Ljava/lang/Object;

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Loy$b;

    .line 97
    invoke-direct {v1, p0}, Loy$b;-><init>(Loy;)V

    .line 100
    iput-object v1, p0, Loy;->w:Ljava/lang/Object;

    .line 102
    :goto_0
    iget-object v1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 104
    new-instance v2, Loy$g;

    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-direct {v2, v3}, Loy$g;-><init>(Loy$a;)V

    .line 110
    invoke-virtual {v1, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->setLocationExternalImpl(Lcom/amap/location/sdk/fusion/ILocationExternalProvider;)V

    .line 113
    invoke-static {}, Lzx;->h()Lzx;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, p0}, Lzx;->i(Lxy;)V

    .line 120
    new-instance v1, Lzx$d;

    .line 122
    invoke-direct {v1}, Lzx$d;-><init>()V

    .line 125
    iput-object v1, p0, Loy;->x:Lzx$d;

    .line 127
    invoke-static {}, Lzm;->d()Lzm;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lzm;->f()I

    .line 134
    move-result v1

    .line 135
    invoke-static {}, Lzm;->d()Lzm;

    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lzm;->b()I

    .line 142
    move-result v2

    .line 143
    iput v2, p0, Loy;->q:I

    .line 145
    iput-boolean v0, p0, Loy;->e:Z

    .line 147
    if-lez v1, :cond_1

    .line 149
    int-to-long v1, v1

    .line 150
    goto :goto_1

    .line 151
    :cond_1
    iget-wide v1, p0, Loy;->h:J

    .line 153
    :goto_1
    iput-wide v1, p0, Loy;->h:J

    .line 155
    const/4 v3, 0x1

    .line 156
    new-array v3, v3, [Ljava/lang/Object;

    .line 158
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    move-result-object v1

    .line 162
    aput-object v1, v3, v0

    .line 164
    const-string v0, "LocationInstrument"

    .line 166
    const-string v1, "inteval = {?}"

    .line 168
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance v0, Loy$c;

    .line 173
    invoke-direct {v0, p0, p1}, Loy$c;-><init>(Loy;Landroid/content/Context;)V

    .line 176
    invoke-static {v0}, Lbg0;->c(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public static synthetic r(Loy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Loy;->H(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic s(Loy;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Loy;->l:Z

    .line 3
    return p0
.end method

.method public static synthetic t(Loy;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Loy;->l:Z

    .line 3
    return p1
.end method

.method public static synthetic u(Loy;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Loy;->A:Ljava/util/HashSet;

    .line 3
    return-object p0
.end method

.method public static synthetic v(Loy;)I
    .locals 0

    .line 1
    iget p0, p0, Loy;->j:I

    .line 3
    return p0
.end method

.method public static synthetic w(Loy;I)I
    .locals 0

    .line 1
    iput p1, p0, Loy;->j:I

    .line 3
    return p1
.end method

.method public static synthetic x(Loy;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Loy;->h:J

    .line 3
    return-wide v0
.end method

.method public static synthetic y(Loy;)F
    .locals 0

    .line 1
    iget p0, p0, Loy;->i:F

    .line 3
    return p0
.end method

.method public static synthetic z(Loy;)Landroid/location/GpsStatus$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Loy;->z:Landroid/location/GpsStatus$Listener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "location"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/location/LocationManager;

    .line 17
    const-string v1, "gps"

    .line 19
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Loy;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    const-string v0, "LocationInstrument"

    .line 28
    const-string v1, "GPS\u6a21\u5757\u4e0d\u5b58\u5728\u6216\u6ca1\u6709\u6dfb\u52a0GPS\u4f7f\u7528\u6743\u9650\u6216\u7528\u6237\u5173\u95ed\u4e86\u5f53\u524d\u5e94\u7528\u7684GPS\u4f7f\u7528\u6743\u9650."

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Loy;->m:Z

    .line 36
    :goto_0
    return-void
.end method

.method public C()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Loy;->e:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Loy;->e:Z

    .line 9
    invoke-static {}, Lai;->e()Z

    .line 12
    move-result v1

    .line 13
    iput-boolean v1, p0, Loy;->f:Z

    .line 15
    invoke-static {}, Lai;->f()Z

    .line 18
    move-result v1

    .line 19
    iput-boolean v1, p0, Loy;->g:Z

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p0, Loy;->v:J

    .line 27
    invoke-static {}, Lzm;->d()Lzm;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lzm;->g()I

    .line 34
    move-result v1

    .line 35
    if-ne v1, v0, :cond_1

    .line 37
    iput v0, p0, Loy;->j:I

    .line 39
    :cond_1
    iget-boolean v1, p0, Loy;->m:Z

    .line 41
    sget-object v2, Lxy$a;->c:Lxy$a;

    .line 43
    iget v3, p0, Loy;->j:I

    .line 45
    invoke-virtual {p0, v2, v3}, Loy;->F(Lxy$a;I)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 51
    or-int/lit8 v1, v1, 0x2

    .line 53
    :cond_2
    move v3, v1

    .line 54
    iput v3, p0, Loy;->j:I

    .line 56
    const-string v1, "LocationInstrument"

    .line 58
    const-string v2, "doStartLocate: requestLocationUpdates"

    .line 60
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v8, 0x0

    .line 64
    new-array v4, v8, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-wide v4, p0, Loy;->h:J

    .line 71
    iget v6, p0, Loy;->i:F

    .line 73
    move-object v2, p0

    .line 74
    move-object v7, p0

    .line 75
    invoke-virtual/range {v2 .. v7}, Loy;->I(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 78
    iget-object v2, p0, Loy;->n:Lik0;

    .line 80
    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {v2}, Lik0;->a()V

    .line 85
    :cond_3
    new-instance v2, Lik0;

    .line 87
    invoke-direct {v2}, Lik0;-><init>()V

    .line 90
    iput-object v2, p0, Loy;->n:Lik0;

    .line 92
    invoke-virtual {v2}, Lik0;->b()V

    .line 95
    invoke-static {}, Lzm;->d()Lzm;

    .line 98
    move-result-object v2

    .line 99
    sget-object v3, Lzm;->d:Ljava/lang/String;

    .line 101
    const/4 v4, -0x1

    .line 102
    invoke-virtual {v2, v3, v4}, Lzm;->e(Ljava/lang/String;I)I

    .line 105
    move-result v2

    .line 106
    if-ne v2, v0, :cond_5

    .line 108
    const-string v2, "doStartLocate addNmeaListener"

    .line 110
    new-array v3, v8, [Ljava/lang/Object;

    .line 112
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lrv;->H()Lrv;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 122
    move-result-object v2

    .line 123
    const-string v3, "location"

    .line 125
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Landroid/location/LocationManager;

    .line 131
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    const/16 v4, 0x18

    .line 135
    if-ge v3, v4, :cond_4

    .line 137
    :try_start_0
    const-class v3, Landroid/location/LocationManager;

    .line 139
    const-string v4, "addNmeaListener"

    .line 141
    new-array v5, v0, [Ljava/lang/Class;

    .line 143
    const-class v6, Landroid/location/GpsStatus$NmeaListener;

    .line 145
    aput-object v6, v5, v8

    .line 147
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 150
    move-result-object v3

    .line 151
    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Loy;->w:Ljava/lang/Object;

    .line 155
    check-cast v4, Landroid/location/GpsStatus$NmeaListener;

    .line 157
    aput-object v4, v0, v8

    .line 159
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v2, "ocuur an Exception!!!"

    .line 166
    new-array v3, v8, [Ljava/lang/Object;

    .line 168
    invoke-static {v1, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 171
    goto :goto_0

    .line 172
    :cond_4
    :try_start_1
    iget-object v0, p0, Loy;->w:Ljava/lang/Object;

    .line 174
    invoke-static {v0}, Lmy;->a(Ljava/lang/Object;)Landroid/location/OnNmeaMessageListener;

    .line 177
    move-result-object v0

    .line 178
    invoke-static {v2, v0}, Lny;->a(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    const-string v2, "addNmeaListener ocuur an Exception upper N!!!"

    .line 185
    new-array v3, v8, [Ljava/lang/Object;

    .line 187
    invoke-static {v1, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 190
    :cond_5
    :goto_0
    return-void
.end method

.method public D()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Loy;->e:Z

    .line 4
    invoke-static {}, Lzx;->h()Lzx;

    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Loy;->x:Lzx$d;

    .line 10
    invoke-virtual {v1, v2}, Lzx;->x(Lzx$d;)V

    .line 13
    iget-object v1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1, p0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->removeUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 20
    :cond_0
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v1, p0, Loy;->n:Lik0;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v1}, Lik0;->a()V

    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Loy;->n:Lik0;

    .line 31
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lzm;->d()Lzm;

    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lzm;->d:Ljava/lang/String;

    .line 38
    const/4 v3, -0x1

    .line 39
    invoke-virtual {v1, v2, v3}, Lzm;->e(Ljava/lang/String;I)I

    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_3

    .line 46
    invoke-static {}, Lrv;->H()Lrv;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 53
    move-result-object v1

    .line 54
    const-string v3, "location"

    .line 56
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/location/LocationManager;

    .line 62
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    const/16 v4, 0x18

    .line 66
    if-ge v3, v4, :cond_2

    .line 68
    :try_start_1
    const-class v3, Landroid/location/LocationManager;

    .line 70
    const-string v4, "removeNmeaListener"

    .line 72
    new-array v5, v2, [Ljava/lang/Class;

    .line 74
    const-class v6, Landroid/location/GpsStatus$NmeaListener;

    .line 76
    aput-object v6, v5, v0

    .line 78
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    move-result-object v3

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Loy;->w:Ljava/lang/Object;

    .line 86
    check-cast v4, Landroid/location/GpsStatus$NmeaListener;

    .line 88
    aput-object v4, v2, v0

    .line 90
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    const-string v2, "LocationInstrument"

    .line 97
    const-string v3, "ocuur an Exception!!!"

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    :try_start_2
    iget-object v2, p0, Loy;->w:Ljava/lang/Object;

    .line 107
    invoke-static {v2}, Lmy;->a(Ljava/lang/Object;)Landroid/location/OnNmeaMessageListener;

    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Ldr0;->a(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    .line 116
    const-string v2, "LocationInstrument"

    .line 118
    const-string v3, "removeNmeaListener ocuur an Exception upper N!!!"

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 125
    :cond_3
    :goto_0
    return-void

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    throw v0
.end method

.method public E()V
    .locals 0

    .line 1
    return-void
.end method

.method public final F(Lxy$a;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lxy$a;->b()I

    .line 4
    move-result p1

    .line 5
    and-int/2addr p1, p2

    .line 6
    if-lez p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public final G(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "notifyMapMatchFeedbackChanged size "

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Loy;->y:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    const-string v1, "LocationInstrument"

    .line 29
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Loy;->y:Ljava/util/List;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    move-result p1

    .line 38
    add-int/lit8 p1, p1, -0x1

    .line 40
    if-gez p1, :cond_0

    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Loy;->y:Ljava/util/List;

    .line 45
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 52
    const/4 p1, 0x0

    .line 53
    throw p1
.end method

.method public final H(Landroid/content/Context;)V
    .locals 10

    .line 1
    iget-object v0, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->isProviderEnabled(I)Z

    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-virtual {v2, v3}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->isProviderEnabled(I)Z

    .line 14
    move-result v2

    .line 15
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 17
    invoke-static {p1, v4}, Ltg;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-nez v4, :cond_0

    .line 24
    const/4 v4, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x0

    .line 27
    :goto_0
    invoke-static {p1}, Lpa;->n(Landroid/content/Context;)Z

    .line 30
    move-result p1

    .line 31
    invoke-static {}, Lzx;->h()Lzx;

    .line 34
    move-result-object v6

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v8, "isGpsOpen="

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v8, ",isNetLocateOpen="

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v8, ",hasGpsPermission="

    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v8, ",isNetAvailable="

    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v6, v7}, Lzx;->f(Ljava/lang/String;)V

    .line 79
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 81
    const/16 v7, 0xc

    .line 83
    new-array v7, v7, [Ljava/lang/Object;

    .line 85
    const v8, 0x9932c3

    .line 88
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v9

    .line 92
    aput-object v9, v7, v5

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v0

    .line 98
    aput-object v0, v7, v1

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v0

    .line 104
    aput-object v0, v7, v3

    .line 106
    const/4 v0, 0x3

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v2

    .line 111
    aput-object v2, v7, v0

    .line 113
    const/4 v0, 0x4

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object p1

    .line 118
    aput-object p1, v7, v0

    .line 120
    const/4 p1, 0x5

    .line 121
    const-string v0, ""

    .line 123
    aput-object v0, v7, p1

    .line 125
    const/4 p1, 0x6

    .line 126
    aput-object v0, v7, p1

    .line 128
    const/4 p1, 0x7

    .line 129
    aput-object v0, v7, p1

    .line 131
    const/16 p1, 0x8

    .line 133
    aput-object v0, v7, p1

    .line 135
    const/16 p1, 0x9

    .line 137
    aput-object v0, v7, p1

    .line 139
    const/16 p1, 0xa

    .line 141
    aput-object v0, v7, p1

    .line 143
    const/16 p1, 0xb

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v0

    .line 149
    aput-object v0, v7, p1

    .line 151
    const-string p1, "[%s][11][%d][%d][%d][%d][%s][%s][%s][%s][%s][%s][%d]"

    .line 153
    invoke-static {v6, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    new-array v0, v1, [Ljava/lang/Object;

    .line 159
    aput-object p1, v0, v5

    .line 161
    const-string v2, "requestGpsStartInfo"

    .line 163
    const-string v3, "collectionInfo = {?}"

    .line 165
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const-string v0, "mod_pos"

    .line 170
    invoke-static {v0, v8, p1, v1}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 173
    return-void
.end method

.method public abstract I(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V
.end method

.method public J(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;

    .line 3
    invoke-direct {v0, p1}, Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;-><init>(I)V

    .line 6
    new-instance p1, Lgo;

    .line 8
    invoke-direct {p1, v0}, Lgo;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;)V

    .line 11
    invoke-static {}, Ll30;->g()Ll30;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ll30;->a(Lec;)V

    .line 18
    return-void
.end method

.method public K()V
    .locals 7

    .line 1
    const-string v0, "Unknown"

    .line 3
    const-string v1, "UTF-8"

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    const-string v3, "dip"

    .line 14
    invoke-static {}, Lf30;->m()Ljava/lang/String;

    .line 17
    move-result-object v5

    .line 18
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v3, "div"

    .line 27
    invoke-static {}, Lf30;->p()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v3, "autodiv"

    .line 40
    invoke-static {}, Lf30;->f()Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v3, "dibv"

    .line 53
    invoke-static {}, Lf30;->k()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v3, "die"

    .line 66
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v3, "did"

    .line 71
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v3, "dic"

    .line 76
    invoke-static {}, Lf30;->l()Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_0

    .line 97
    const-string v3, "diu"

    .line 99
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_0
    const-string v3, "diu2"

    .line 112
    invoke-static {}, Lqf;->a()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v3, "diu3"

    .line 125
    invoke-static {}, Lf30;->s()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v3, "cifa"

    .line 138
    invoke-static {}, Lf30;->i()Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v3, "channel"

    .line 147
    invoke-static {}, Lf30;->h()Ljava/lang/String;

    .line 150
    move-result-object v5

    .line 151
    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v3, "from"

    .line 160
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v0, "tid"

    .line 165
    invoke-static {}, Lf30;->z()Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v0, "session"

    .line 174
    invoke-static {}, Lf30;->x()J

    .line 177
    move-result-wide v5

    .line 178
    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    const-string v0, "spm"

    .line 183
    invoke-static {}, Lf30;->y()Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 187
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "stepid"

    .line 196
    invoke-static {}, Lf30;->a()J

    .line 199
    move-result-wide v5

    .line 200
    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 203
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_1

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "location/"

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    const-string v1, "auto_log_path"

    .line 232
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    :cond_1
    const-string v0, "LocationInstrument"

    .line 237
    const-string v1, "setNetworkParams jo={?}"

    .line 239
    new-array v3, v2, [Ljava/lang/Object;

    .line 241
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 244
    move-result-object v5

    .line 245
    const/4 v6, 0x0

    .line 246
    aput-object v5, v3, v6

    .line 248
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {}, Lf30;->b()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_2

    .line 261
    const-string v0, "adiu"

    .line 263
    invoke-static {}, Lf30;->b()Ljava/lang/String;

    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    goto :goto_1

    .line 271
    :catchall_0
    nop

    .line 272
    move-object v3, v4

    .line 273
    goto :goto_0

    .line 274
    :catchall_1
    nop

    .line 275
    :goto_0
    move-object v4, v3

    .line 276
    :cond_2
    :goto_1
    iget-object v0, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 278
    invoke-virtual {v0, v2, v4}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->setParams(ILorg/json/JSONObject;)V

    .line 281
    new-instance v0, Loy$d;

    .line 283
    invoke-direct {v0, p0}, Loy$d;-><init>(Loy;)V

    .line 286
    const-wide/16 v1, 0x3e8

    .line 288
    invoke-static {v0, v1, v2}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 291
    invoke-static {}, Lai;->e()Z

    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_4

    .line 297
    invoke-static {}, Lai;->f()Z

    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_3

    .line 303
    goto :goto_2

    .line 304
    :cond_3
    new-instance v0, Lzx$d;

    .line 306
    invoke-direct {v0}, Lzx$d;-><init>()V

    .line 309
    iput-object v0, p0, Loy;->x:Lzx$d;

    .line 311
    invoke-static {}, Lzx;->h()Lzx;

    .line 314
    move-result-object v0

    .line 315
    iget-object v1, p0, Loy;->x:Lzx$d;

    .line 317
    invoke-virtual {v0, v1}, Lzx;->k(Lzx$d;)V

    .line 320
    :cond_4
    :goto_2
    return-void
.end method

.method public varargs L([Lxy$a;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const-string v1, "LocationInstrument"

    .line 13
    const-string v3, "setProvider:providers={?}"

    .line 15
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 20
    if-nez v0, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    if-eqz p1, :cond_4

    .line 25
    array-length v1, p1

    .line 26
    if-gtz v1, :cond_1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    array-length v0, p1

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v2, v0, :cond_3

    .line 33
    aget-object v1, p1, v2

    .line 35
    if-nez v1, :cond_2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v1}, Lxy$a;->b()I

    .line 41
    move-result v1

    .line 42
    or-int/2addr v1, v4

    .line 43
    move v4, v1

    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iput v4, p0, Loy;->j:I

    .line 49
    iget-wide v5, p0, Loy;->h:J

    .line 51
    iget v7, p0, Loy;->i:F

    .line 53
    move-object v3, p0

    .line 54
    move-object v8, p0

    .line 55
    invoke-virtual/range {v3 .. v8}, Loy;->I(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 58
    return-void

    .line 59
    :cond_4
    :goto_2
    invoke-virtual {v0, p0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->removeUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 62
    iput v2, p0, Loy;->j:I

    .line 64
    return-void
.end method

.method public a()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "LocationInstrument"

    .line 6
    const-string v3, "feedBackLog enter!"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, "feedBackLog locationManager != null!"

    .line 17
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    move-result-wide v3

    .line 31
    const-string v5, "adamt"

    .line 33
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    const-string v5, "feedBackLog locationManager PARA_FEEDBAK_TIME:{?}"

    .line 38
    const/4 v6, 0x1

    .line 39
    new-array v6, v6, [Ljava/lang/Object;

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v3

    .line 45
    aput-object v3, v6, v0

    .line 47
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v3, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 52
    const/4 v4, 0x3

    .line 53
    invoke-virtual {v3, v4, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->setParams(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    new-array v3, v0, [Ljava/lang/Object;

    .line 64
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    :goto_0
    const-string v1, "feedBackLog end!"

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Loy;->x:Lzx$d;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Loy;->x:Lzx$d;

    .line 7
    invoke-virtual {v0}, Lzx$d;->d()V

    .line 10
    :cond_0
    return-void
.end method

.method public c(IDDDIJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/location/GnssStatus$Callback;)V
    .locals 5

    .line 1
    const-string v0, "LocationInstrument"

    .line 3
    invoke-static {}, Lrv;->H()Lrv;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "location"

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/location/LocationManager;

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    :try_start_0
    invoke-static {v1, p1}, Lly;->a(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)Z

    .line 24
    move-result p1

    .line 25
    const-string v1, "registerGnssStatusCallback result = {?}"

    .line 27
    new-array v4, v3, [Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p1

    .line 33
    aput-object p1, v4, v2

    .line 35
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-array v1, v3, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    aput-object p1, v1, v2

    .line 48
    const-string p1, "registerGnssStatusCallback e = {?}"

    .line 50
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Loy;->x:Lzx$d;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Loy;->x:Lzx$d;

    .line 7
    invoke-virtual {v0}, Lzx$d;->c()V

    .line 10
    :cond_0
    return-void
.end method

.method public f(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v1, :cond_1

    .line 8
    if-eq p1, v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 13
    invoke-virtual {p1, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->isProviderEnabled(I)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 21
    invoke-virtual {p1, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->isProviderEnabled(I)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_3

    .line 27
    new-array p1, v2, [Lxy$a;

    .line 29
    sget-object v2, Lxy$a;->b:Lxy$a;

    .line 31
    aput-object v2, p1, v0

    .line 33
    sget-object v0, Lxy$a;->c:Lxy$a;

    .line 35
    aput-object v0, p1, v1

    .line 37
    invoke-virtual {p0, p1}, Loy;->L([Lxy$a;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 43
    invoke-virtual {p1, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->isProviderEnabled(I)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 49
    new-array p1, v1, [Lxy$a;

    .line 51
    sget-object v2, Lxy$a;->c:Lxy$a;

    .line 53
    aput-object v2, p1, v0

    .line 55
    invoke-virtual {p0, p1}, Loy;->L([Lxy$a;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 61
    invoke-virtual {p1, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->isProviderEnabled(I)Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 67
    new-array p1, v1, [Lxy$a;

    .line 69
    sget-object v2, Lxy$a;->b:Lxy$a;

    .line 71
    aput-object v2, p1, v0

    .line 73
    invoke-virtual {p0, p1}, Loy;->L([Lxy$a;)V

    .line 76
    :cond_3
    :goto_0
    return v1
.end method

.method public g(Landroid/location/GnssStatus$Callback;)V
    .locals 2

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "location"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/location/LocationManager;

    .line 17
    :try_start_0
    invoke-static {v0, p1}, Lat0;->a(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    aput-object p1, v0, v1

    .line 32
    const-string p1, "LocationInstrument"

    .line 34
    const-string v1, "unRegisterGnssStatusCallback e = {?}"

    .line 36
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void
.end method

.method public h(DIJ)V
    .locals 6

    .line 1
    invoke-static {}, Lzx;->h()Lzx;

    .line 4
    move-result-object v0

    .line 5
    move-wide v1, p1

    .line 6
    move v3, p3

    .line 7
    move-wide v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lzx;->w(DIJ)V

    .line 11
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Landroid/location/Location;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 8
    move-result-object p1

    .line 9
    :cond_0
    return-object p1
.end method

.method public l(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Loy;->z:Landroid/location/GpsStatus$Listener;

    .line 4
    iget-object p1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Loy;->C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 10
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->unregisterSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    const-string v1, "proxy_set"

    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string p1, "proxy_host"

    .line 17
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string p1, "proxy_port"

    .line 22
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object p1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 27
    const/16 p2, 0x11

    .line 29
    invoke-virtual {p1, p2, v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->setParams(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    new-array p2, p2, [Ljava/lang/Object;

    .line 41
    const-string p3, "LocationInstrument"

    .line 43
    invoke-static {p3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    :goto_0
    return-void
.end method

.method public n(Lcom/autonavi/amapauto/location/model/LocGpgsv;)V
    .locals 0

    .line 1
    return-void
.end method

.method public o(IFFFDIJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p1, "LocationInstrument"

    .line 6
    const-string v1, "onLocationChanged location is null"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "LocationInstrument"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v3, "onLocationChanged getLongitude = "

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, " getLatitude = "

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 41
    move-result-wide v3

    .line 42
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, " getSpeed = "

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 53
    move-result v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    const-string v3, " getBearing = "

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    .line 65
    move-result v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, " isGPS = "

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "gps"

    .line 76
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, "location.getTime()="

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 95
    move-result-wide v3

    .line 96
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    new-array v3, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const-string v1, "gps"

    .line 110
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 120
    iget v1, p0, Loy;->q:I

    .line 122
    int-to-long v1, v1

    .line 123
    const-wide/32 v3, 0x36ee80

    .line 126
    mul-long v1, v1, v3

    .line 128
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 131
    move-result-wide v3

    .line 132
    add-long/2addr v3, v1

    .line 133
    invoke-virtual {p1, v3, v4}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v1, p0, Loy;->B:Landroid/os/Handler;

    .line 139
    const/16 v2, 0xf3

    .line 141
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {}, Lzm;->d()Lzm;

    .line 152
    move-result-object v1

    .line 153
    sget-object v2, Lzm;->l:Ljava/lang/String;

    .line 155
    const/4 v3, 0x1

    .line 156
    invoke-virtual {v1, v2, v3}, Lzm;->e(Ljava/lang/String;I)I

    .line 159
    move-result v1

    .line 160
    if-ne v1, v3, :cond_1

    .line 162
    invoke-virtual {p0, v0}, Loy;->J(I)V

    .line 165
    :cond_1
    iget-boolean v1, p0, Loy;->t:Z

    .line 167
    if-nez v1, :cond_3

    .line 169
    const-string v1, "AmapAutoDRPos"

    .line 171
    const-string v2, ""

    .line 173
    invoke-virtual {p1, v1, v2}, Lcom/amap/location/type/location/Location;->getOptAttrString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_2

    .line 183
    invoke-static {}, Lzx;->h()Lzx;

    .line 186
    move-result-object v1

    .line 187
    const/4 v2, 0x2

    .line 188
    invoke-virtual {v1, v2, v0}, Lzx;->d(II)V

    .line 191
    :cond_2
    iput-boolean v3, p0, Loy;->t:Z

    .line 193
    goto :goto_0

    .line 194
    :catchall_0
    move-exception p1

    .line 195
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    throw p1

    .line 197
    :cond_3
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 200
    move-result-object v0

    .line 201
    new-instance v1, Le;

    .line 203
    invoke-direct {v1, p1}, Le;-><init>(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 206
    invoke-virtual {v0, v1}, Lse;->setGpsInfoV2(Le;)V

    .line 209
    invoke-static {}, Lrv;->H()Lrv;

    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 224
    move-result-wide v1

    .line 225
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 230
    mul-double v1, v1, v3

    .line 232
    double-to-int v1, v1

    .line 233
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 236
    move-result-wide v5

    .line 237
    mul-double v5, v5, v3

    .line 239
    double-to-int v2, v5

    .line 240
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 243
    move-result v3

    .line 244
    float-to-int v3, v3

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Lsi;->X(III)V

    .line 248
    invoke-static {}, Lrv;->H()Lrv;

    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 263
    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Lsi;->a0(F)V

    .line 267
    iget-object v0, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 269
    if-eqz v0, :cond_4

    .line 271
    iget-object v1, p0, Loy;->o:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 273
    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 282
    :cond_4
    const-string v0, "gps"

    .line 284
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_5

    .line 294
    iget-object p1, p0, Loy;->B:Landroid/os/Handler;

    .line 296
    const/16 v0, 0xf2

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 305
    :cond_5
    return-void
.end method

.method public onMapMatchFeedbackUpdate(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Loy;->G(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V

    .line 4
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Landroid/location/GpsStatus$Listener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Loy;->z:Landroid/location/GpsStatus$Listener;

    .line 3
    iget-object p1, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Loy;->C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->registerSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;Landroid/os/Looper;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public q(DDDDDDDDIIJ)V
    .locals 0

    .line 1
    return-void
.end method
