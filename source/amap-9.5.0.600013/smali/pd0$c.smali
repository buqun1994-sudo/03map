.class public Lpd0$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpd0;


# direct methods
.method public constructor <init>(Lpd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpd0$c;->a:Lpd0;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "BroadcastReceiver onReceive-----> "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v3, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    :try_start_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_3

    .line 45
    const-string p2, "connectivity"

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 53
    if-eqz p1, :cond_2

    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Ldz;->f()Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_0

    .line 66
    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v3, "BroadcastReceiver onReceive-----> wifiNetInfo.isConnected()--> "

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 85
    move-result v3

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    new-array v3, v2, [Ljava/lang/Object;

    .line 95
    invoke-static {p2, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_3

    .line 106
    :cond_1
    iget-object p2, p0, Lpd0$c;->a:Lpd0;

    .line 108
    invoke-static {p2, v0}, Lpd0;->m(Lpd0;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 111
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string v3, "BroadcastReceiver onReceive-----> \u65ad\u5f00 111--> wifiNetInfo--> "

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    new-array v1, v2, [Ljava/lang/Object;

    .line 134
    invoke-static {p2, p1, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lpd0$c;->a:Lpd0;

    .line 139
    invoke-static {p1}, Lpd0;->d(Lpd0;)V

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lpd0$c;->a:Lpd0;

    .line 145
    invoke-static {p1, v0}, Lpd0;->m(Lpd0;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 148
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    const-string p2, "BroadcastReceiver onReceive-----> \u65ad\u5f00 connectivityManager is null"

    .line 154
    new-array v1, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {p1, p2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object p1, p0, Lpd0$c;->a:Lpd0;

    .line 161
    invoke-static {p1}, Lpd0;->d(Lpd0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-exception p1

    .line 166
    iget-object p2, p0, Lpd0$c;->a:Lpd0;

    .line 168
    invoke-static {p2, v0}, Lpd0;->m(Lpd0;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 171
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 174
    move-result-object p2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    const-string v1, "BroadcastReceiver onReceive-----> \u65ad\u5f00 333--> "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    new-array v0, v2, [Ljava/lang/Object;

    .line 194
    invoke-static {p2, p1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_3
    :goto_0
    return-void
.end method
