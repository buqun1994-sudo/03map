.class public Lrm0$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p2, v1, v2

    .line 7
    const-string v3, "WifiConnectUtils"

    .line 9
    const-string v4, "WifiStateReceiver onReceive intent = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p2, :cond_4

    .line 16
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    const-string v1, "networkInfo"

    .line 30
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/net/NetworkInfo;

    .line 36
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 39
    move-result-object v1

    .line 40
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 48
    const-string p1, "wifi\u65ad\u5f00"

    .line 50
    new-array p2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v3, p1, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {v2}, Lrm0;->a(Z)V

    .line 58
    const-string p1, ""

    .line 60
    invoke-static {v2, p1}, Lrm0;->x(ZLjava/lang/String;)V

    .line 63
    goto/16 :goto_1

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 68
    move-result-object p2

    .line 69
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 71
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_4

    .line 77
    invoke-static {p1}, Lrm0;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    aput-object p2, v0, v2

    .line 85
    const-string v1, "\u8fde\u63a5\u5230\u7f51\u7edc {?}"

    .line 87
    invoke-static {v3, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {p1}, Lrm0;->u(Landroid/content/Context;)Z

    .line 93
    move-result p1

    .line 94
    invoke-static {v2}, Lrm0;->a(Z)V

    .line 97
    invoke-static {p1, p2}, Lrm0;->x(ZLjava/lang/String;)V

    .line 100
    goto/16 :goto_1

    .line 102
    :cond_1
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Lrm0;->b()Z

    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_4

    .line 120
    invoke-static {}, Lrm0;->c()Z

    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_4

    .line 126
    const-string p1, "wifi_state"

    .line 128
    const/4 v0, -0x1

    .line 129
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 132
    move-result p1

    .line 133
    const-string v1, "previous_wifi_state"

    .line 135
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 138
    move-result p2

    .line 139
    invoke-static {}, Lrm0;->d()Ljava/lang/StringBuilder;

    .line 142
    move-result-object v0

    .line 143
    const-string v1, " preview state = "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string p2, " new state = "

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_4

    .line 172
    invoke-static {}, Lrm0;->b()Z

    .line 175
    move-result p2

    .line 176
    if-eqz p2, :cond_4

    .line 178
    invoke-static {}, Lrm0;->e()Z

    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_4

    .line 184
    const-string p2, "wifi"

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 192
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_4

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 201
    move-result-object p1

    .line 202
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_4

    .line 208
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    move-result-object p2

    .line 212
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .line 214
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_3

    .line 222
    iget-object p2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 224
    invoke-static {}, Lrm0;->g()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_3

    .line 234
    invoke-static {v2}, Lrm0;->f(Z)Z

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 240
    move-result-wide v0

    .line 241
    invoke-static {v0, v1}, Lrm0;->i(J)J

    .line 244
    invoke-static {}, Lrm0;->d()Ljava/lang/StringBuilder;

    .line 247
    move-result-object p2

    .line 248
    const-string v0, "findDeviceCostTime = "

    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {}, Lrm0;->h()J

    .line 256
    move-result-wide v0

    .line 257
    invoke-static {}, Lrm0;->j()J

    .line 260
    move-result-wide v3

    .line 261
    sub-long/2addr v0, v3

    .line 262
    const-wide/16 v3, 0x3e8

    .line 264
    div-long/2addr v0, v3

    .line 265
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    goto :goto_0

    .line 269
    :cond_4
    :goto_1
    return-void
.end method
