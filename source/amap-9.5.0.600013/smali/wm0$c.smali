.class public Lwm0$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lwm0;


# direct methods
.method public constructor <init>(Lwm0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwm0$c;->a:Lwm0;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_5

    .line 3
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const-string v0, "wifi_state"

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result p2

    .line 22
    if-ne p2, v1, :cond_0

    .line 24
    iget-object p2, p0, Lwm0$c;->a:Lwm0;

    .line 26
    invoke-static {p2, p1}, Lwm0;->h(Lwm0;Landroid/content/Context;)V

    .line 29
    goto/16 :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x3

    .line 32
    if-ne p2, v0, :cond_5

    .line 34
    iget-object p2, p0, Lwm0$c;->a:Lwm0;

    .line 36
    invoke-static {p2, p1}, Lwm0;->i(Lwm0;Landroid/content/Context;)V

    .line 39
    goto/16 :goto_0

    .line 41
    :cond_1
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_5

    .line 53
    iget-object p2, p0, Lwm0$c;->a:Lwm0;

    .line 55
    invoke-static {p2}, Lwm0;->k(Lwm0;)Z

    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 61
    return-void

    .line 62
    :cond_2
    iget-object p2, p0, Lwm0$c;->a:Lwm0;

    .line 64
    invoke-static {p2}, Lwm0;->m(Lwm0;)Z

    .line 67
    move-result p2

    .line 68
    const-string v0, "wifi"

    .line 70
    if-nez p2, :cond_3

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 78
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 81
    move-result-object p2

    .line 82
    if-eqz p2, :cond_3

    .line 84
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_3

    .line 90
    iget-object p2, p0, Lwm0$c;->a:Lwm0;

    .line 92
    invoke-static {p2, p1}, Lwm0;->i(Lwm0;Landroid/content/Context;)V

    .line 95
    return-void

    .line 96
    :cond_3
    iget-object p2, p0, Lwm0$c;->a:Lwm0;

    .line 98
    invoke-static {p2}, Lwm0;->n(Lwm0;)I

    .line 101
    move-result p2

    .line 102
    const/4 v2, 0x2

    .line 103
    if-eq p2, v2, :cond_4

    .line 105
    iget-object p2, p0, Lwm0$c;->a:Lwm0;

    .line 107
    invoke-static {p2}, Lwm0;->n(Lwm0;)I

    .line 110
    move-result p2

    .line 111
    const/4 v3, 0x4

    .line 112
    if-ne p2, v3, :cond_5

    .line 114
    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 120
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 123
    move-result-object p1

    .line 124
    invoke-static {}, Lwm0;->a()Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    new-array v0, v2, [Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 133
    move-result v2

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v2

    .line 138
    const/4 v3, 0x0

    .line 139
    aput-object v2, v0, v3

    .line 141
    iget-object v2, p0, Lwm0$c;->a:Lwm0;

    .line 143
    invoke-static {v2}, Lwm0;->k(Lwm0;)Z

    .line 146
    move-result v2

    .line 147
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    move-result-object v2

    .line 151
    aput-object v2, v0, v1

    .line 153
    const-string v2, "scanResults.size = {?},mHasScanResult = {?}"

    .line 155
    invoke-static {p2, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_5

    .line 164
    iget-object p1, p0, Lwm0$c;->a:Lwm0;

    .line 166
    invoke-static {p1, v1}, Lwm0;->l(Lwm0;Z)Z

    .line 169
    :cond_5
    :goto_0
    return-void
.end method
