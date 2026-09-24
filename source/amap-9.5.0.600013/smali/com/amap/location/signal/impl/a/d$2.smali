.class Lcom/amap/location/signal/impl/a/d$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/signal/impl/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/signal/impl/a/d;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_c

    .line 3
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 5
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    goto/16 :goto_3

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string v0, "android.location.PROVIDERS_CHANGED"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    if-nez p1, :cond_b

    .line 26
    const-string p1, "android.location.MODE_CHANGED"

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 38
    goto/16 :goto_2

    .line 40
    :cond_1
    const-string p1, "android.intent.action.AIRPLANE_MODE"

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 52
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 54
    const/4 p2, 0x2

    .line 55
    invoke-static {p1, p2, v0}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V

    .line 58
    goto/16 :goto_3

    .line 60
    :cond_2
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 74
    const/4 p2, 0x3

    .line 75
    invoke-static {p1, p2, v0}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V

    .line 78
    goto/16 :goto_3

    .line 80
    :cond_3
    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_a

    .line 92
    const-string p1, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_4

    .line 104
    goto/16 :goto_1

    .line 106
    :cond_4
    const-string p1, "android.net.wifi.STATE_CHANGE"

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_5

    .line 118
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 120
    const/4 p2, 0x5

    .line 121
    invoke-static {p1, p2, v0}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_9

    .line 137
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_6

    .line 149
    goto :goto_0

    .line 150
    :cond_6
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_8

    .line 162
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 168
    move-result p1

    .line 169
    const/16 p2, 0xc

    .line 171
    if-eq p1, p2, :cond_7

    .line 173
    const/16 p2, 0xa

    .line 175
    if-ne p1, p2, :cond_c

    .line 177
    :cond_7
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 179
    const/16 p2, 0x8

    .line 181
    invoke-static {p1, p2, v0}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V

    .line 184
    goto :goto_3

    .line 185
    :cond_8
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_c

    .line 197
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 199
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 202
    move-result-object p1

    .line 203
    const-wide/16 v1, 0x40

    .line 205
    invoke-interface {p1, v1, v2, v0}, Lcom/amap/location/support/signal/status/PhoneStatListener;->onChange(JLorg/json/JSONObject;)V

    .line 208
    goto :goto_3

    .line 209
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 211
    const/4 p2, 0x6

    .line 212
    invoke-static {p1, p2, v0}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V

    .line 215
    goto :goto_3

    .line 216
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 218
    const/4 p2, 0x4

    .line 219
    invoke-static {p1, p2, v0}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V

    .line 222
    goto :goto_3

    .line 223
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/d$2;->a:Lcom/amap/location/signal/impl/a/d;

    .line 225
    const/4 p2, 0x1

    .line 226
    invoke-static {p1, p2, v0}, Lcom/amap/location/signal/impl/a/d;->a(Lcom/amap/location/signal/impl/a/d;ILjava/lang/Object;)V

    .line 229
    :cond_c
    :goto_3
    return-void
.end method
