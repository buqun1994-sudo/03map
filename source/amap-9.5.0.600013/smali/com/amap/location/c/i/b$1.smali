.class Lcom/amap/location/c/i/b$1;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/c/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/i/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/i/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

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
    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 17
    invoke-static {v0}, Lcom/amap/location/c/i/b;->a(Lcom/amap/location/c/i/b;)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->getGnssBlockState()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationDim()Z

    .line 44
    move-result v0

    .line 45
    if-nez v1, :cond_5

    .line 47
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 50
    move-result v1

    .line 51
    const/16 v2, 0x300

    .line 53
    if-eq v1, v2, :cond_5

    .line 55
    if-eqz v0, :cond_2

    .line 57
    goto/16 :goto_1

    .line 59
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/c/h/b;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 65
    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 68
    invoke-static {v0}, Lcom/amap/location/c/i/b;->b(Lcom/amap/location/c/i/b;)Lcom/amap/location/support/handler/AmapHandler;

    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 76
    invoke-static {v0}, Lcom/amap/location/c/i/b;->b(Lcom/amap/location/c/i/b;)Lcom/amap/location/support/handler/AmapHandler;

    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 82
    invoke-static {v1}, Lcom/amap/location/c/i/b;->c(Lcom/amap/location/c/i/b;)Ljava/lang/Runnable;

    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 91
    invoke-static {v0}, Lcom/amap/location/c/i/b;->b(Lcom/amap/location/c/i/b;)Lcom/amap/location/support/handler/AmapHandler;

    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 97
    invoke-static {v1}, Lcom/amap/location/c/i/b;->c(Lcom/amap/location/c/i/b;)Ljava/lang/Runnable;

    .line 100
    move-result-object v1

    .line 101
    const-wide/16 v2, 0x7530

    .line 103
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 108
    invoke-static {v0}, Lcom/amap/location/c/i/b;->d(Lcom/amap/location/c/i/b;)V

    .line 111
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 113
    invoke-static {v0}, Lcom/amap/location/c/i/b;->e(Lcom/amap/location/c/i/b;)Lcom/amap/location/c/i/b$a;

    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 121
    invoke-static {v0}, Lcom/amap/location/c/i/b;->f(Lcom/amap/location/c/i/b;)Lcom/amap/location/c/i/c;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/amap/location/c/i/c;->g()Lcom/amap/location/c/i/c$b;

    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Lcom/amap/location/c/b/b$a;

    .line 131
    invoke-direct {v1}, Lcom/amap/location/c/b/b$a;-><init>()V

    .line 134
    iput-object p1, v1, Lcom/amap/location/c/b/b$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 136
    iget-object v2, v0, Lcom/amap/location/c/i/c$b;->a:Ljava/util/List;

    .line 138
    iput-object v2, v1, Lcom/amap/location/c/b/b$a;->b:Ljava/util/List;

    .line 140
    iget-object v2, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 142
    invoke-static {v2}, Lcom/amap/location/c/i/b;->f(Lcom/amap/location/c/i/b;)Lcom/amap/location/c/i/c;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/amap/location/c/i/c;->e()J

    .line 149
    move-result-wide v2

    .line 150
    iput-wide v2, v1, Lcom/amap/location/c/b/b$a;->c:J

    .line 152
    iget-object v2, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 154
    invoke-static {v2}, Lcom/amap/location/c/i/b;->f(Lcom/amap/location/c/i/b;)Lcom/amap/location/c/i/c;

    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lcom/amap/location/c/i/c;->f()Z

    .line 161
    move-result v2

    .line 162
    iput-boolean v2, v1, Lcom/amap/location/c/b/b$a;->e:Z

    .line 164
    iget-wide v2, v0, Lcom/amap/location/c/i/c$b;->b:J

    .line 166
    iput-wide v2, v1, Lcom/amap/location/c/b/b$a;->d:J

    .line 168
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkType()I

    .line 179
    move-result v0

    .line 180
    int-to-byte v0, v0

    .line 181
    iput-byte v0, v1, Lcom/amap/location/c/b/b$a;->f:B

    .line 183
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    iput-object v0, v1, Lcom/amap/location/c/b/b$a;->g:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 199
    invoke-static {v0}, Lcom/amap/location/c/i/b;->g(Lcom/amap/location/c/i/b;)Lcom/amap/location/c/i/a;

    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/amap/location/c/i/a;->a()Ljava/util/List;

    .line 206
    move-result-object v0

    .line 207
    iput-object v0, v1, Lcom/amap/location/c/b/b$a;->h:Ljava/util/List;

    .line 209
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 211
    invoke-static {v0}, Lcom/amap/location/c/i/b;->g(Lcom/amap/location/c/i/b;)Lcom/amap/location/c/i/a;

    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/amap/location/c/i/a;->d()Z

    .line 218
    move-result v0

    .line 219
    iput-boolean v0, v1, Lcom/amap/location/c/b/b$a;->i:Z

    .line 221
    iget-object v0, p0, Lcom/amap/location/c/i/b$1;->a:Lcom/amap/location/c/i/b;

    .line 223
    invoke-static {v0}, Lcom/amap/location/c/i/b;->e(Lcom/amap/location/c/i/b;)Lcom/amap/location/c/i/b$a;

    .line 226
    move-result-object v0

    .line 227
    invoke-interface {v0, p1, v1}, Lcom/amap/location/c/i/b$a;->a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/c/b/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    goto :goto_1

    .line 231
    :catchall_0
    move-exception p1

    .line 232
    const-string v0, "SignalWrapper"

    .line 234
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    nop

    .line 238
    :cond_5
    :goto_1
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
