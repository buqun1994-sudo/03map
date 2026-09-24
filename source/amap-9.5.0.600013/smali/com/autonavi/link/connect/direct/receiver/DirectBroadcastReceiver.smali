.class public Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Lkj;


# direct methods
.method public constructor <init>(Lkj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a:Lkj;

    .line 6
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
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "\u63a5\u6536\u5230\u5e7f\u64ad\uff1a "

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    new-array v1, v0, [Ljava/lang/Object;

    .line 25
    const-string v2, "DirectBroadcastReceiver"

    .line 27
    invoke-static {v2, p1, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a:Lkj;

    .line 32
    if-nez p1, :cond_0

    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_6

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x2

    .line 57
    const/4 v3, 0x1

    .line 58
    const/4 v4, -0x1

    .line 59
    sparse-switch v1, :sswitch_data_0

    .line 62
    :goto_0
    const/4 v0, -0x1

    .line 63
    goto :goto_1

    .line 64
    :sswitch_0
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x4

    .line 74
    goto :goto_1

    .line 75
    :sswitch_1
    const-string v0, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_2

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x3

    .line 85
    goto :goto_1

    .line 86
    :sswitch_2
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const/4 v0, 0x2

    .line 96
    goto :goto_1

    .line 97
    :sswitch_3
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_4

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const/4 v0, 0x1

    .line 107
    goto :goto_1

    .line 108
    :sswitch_4
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_5

    .line 116
    goto :goto_0

    .line 117
    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 120
    goto :goto_2

    .line 121
    :pswitch_0
    const-string p1, "wifi_p2p_state"

    .line 123
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 126
    move-result p1

    .line 127
    iget-object p2, p0, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a:Lkj;

    .line 129
    invoke-interface {p2, p1}, Lkj;->j(I)V

    .line 132
    goto :goto_2

    .line 133
    :pswitch_1
    const-string p1, "discoveryState"

    .line 135
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 138
    move-result p1

    .line 139
    iget-object p2, p0, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a:Lkj;

    .line 141
    invoke-interface {p2, p1}, Lkj;->g(I)V

    .line 144
    goto :goto_2

    .line 145
    :pswitch_2
    const-string p1, "wifiP2pDeviceList"

    .line 147
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 153
    iget-object p2, p0, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a:Lkj;

    .line 155
    invoke-interface {p2, p1}, Lkj;->o(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 158
    goto :goto_2

    .line 159
    :pswitch_3
    const-string p1, "wifiP2pDevice"

    .line 161
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 167
    iget-object p2, p0, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a:Lkj;

    .line 169
    invoke-interface {p2, p1}, Lkj;->d(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 172
    goto :goto_2

    .line 173
    :pswitch_4
    const-string p1, "networkInfo"

    .line 175
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Landroid/net/NetworkInfo;

    .line 181
    iget-object p2, p0, Lcom/autonavi/link/connect/direct/receiver/DirectBroadcastReceiver;->a:Lkj;

    .line 183
    invoke-interface {p2, p1}, Lkj;->b(Landroid/net/NetworkInfo;)V

    .line 186
    :cond_6
    :goto_2
    return-void

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x69a8390a -> :sswitch_4
        -0x5d62fb1d -> :sswitch_3
        -0x532207c3 -> :sswitch_2
        -0x4f589d4a -> :sswitch_1
        0x6511c17d -> :sswitch_0
    .end sparse-switch

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
