.class public Lpy$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpy;


# direct methods
.method public constructor <init>(Lpy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpy$a;->a:Lpy;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    sget-object p1, Lpy;->k:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "onReceive:intent.getAction()={?}"

    .line 15
    invoke-static {p1, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result v2

    .line 29
    const/4 v4, -0x1

    .line 30
    sparse-switch v2, :sswitch_data_0

    .line 33
    :goto_0
    const/4 v1, -0x1

    .line 34
    goto :goto_1

    .line 35
    :sswitch_0
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x4

    .line 45
    goto :goto_1

    .line 46
    :sswitch_1
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x3

    .line 56
    goto :goto_1

    .line 57
    :sswitch_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x2

    .line 67
    goto :goto_1

    .line 68
    :sswitch_3
    const-string v2, "android.location.PROVIDERS_CHANGED"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v1, 0x1

    .line 78
    goto :goto_1

    .line 79
    :sswitch_4
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_4

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const/4 v1, 0x0

    .line 89
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 92
    goto :goto_3

    .line 93
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lpy$a;->a:Lpy;

    .line 95
    invoke-static {p1}, Lpy;->a(Lpy;)Landroid/net/wifi/WifiManager;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_2

    .line 108
    :catch_0
    const/4 p1, 0x0

    .line 109
    :goto_2
    invoke-static {p1}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->wifiResultMonitor(I)V

    .line 112
    sget-object p2, Lpy;->k:Ljava/lang/String;

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object p1

    .line 120
    aput-object p1, v0, v3

    .line 122
    const-string p1, "getScanResults.size={?}"

    .line 124
    invoke-static {p2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    goto :goto_3

    .line 128
    :pswitch_1
    iget-object p2, p0, Lpy$a;->a:Lpy;

    .line 130
    invoke-virtual {p2}, Lpy;->f()I

    .line 133
    move-result p2

    .line 134
    invoke-static {v0, p2}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->switchState(II)V

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object p2

    .line 143
    aput-object p2, v0, v3

    .line 145
    const-string p2, "isAirpLane={?}"

    .line 147
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    goto :goto_3

    .line 151
    :pswitch_2
    iget-object p1, p0, Lpy$a;->a:Lpy;

    .line 153
    invoke-virtual {p1}, Lpy;->r()V

    .line 156
    goto :goto_3

    .line 157
    :pswitch_3
    iget-object p1, p0, Lpy$a;->a:Lpy;

    .line 159
    invoke-virtual {p1}, Lpy;->o()V

    .line 162
    goto :goto_3

    .line 163
    :pswitch_4
    const-string v1, "wifi_state"

    .line 165
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 168
    move-result p2

    .line 169
    new-array v0, v0, [Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object p2

    .line 175
    aput-object p2, v0, v3

    .line 177
    const-string p2, "state={?}"

    .line 179
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_3
    return-void

    .line 183
    :sswitch_data_0
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_4
        -0x469f6743 -> :sswitch_3
        -0x45e5283a -> :sswitch_2
        -0x402b4235 -> :sswitch_1
        0x6ff575fd -> :sswitch_0
    .end sparse-switch

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
