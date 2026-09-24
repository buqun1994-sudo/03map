.class Lcom/amap/location/sdk/f/a/c$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/f/a/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/f/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/f/a/c$1;->a:Lcom/amap/location/sdk/f/a/c;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amap/location/sdk/f/a/c$1;->a:Lcom/amap/location/sdk/f/a/c;

    .line 3
    invoke-static {p1}, Lcom/amap/location/sdk/f/a/c;->a(Lcom/amap/location/sdk/f/a/c;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 9
    if-eqz p2, :cond_2

    .line 11
    const-string p1, "vivo.intent.action.location.garage_status_broadcast"

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 23
    :try_start_0
    new-instance p1, Lcom/amap/location/sdk/f/a/b;

    .line 25
    invoke-direct {p1}, Lcom/amap/location/sdk/f/a/b;-><init>()V

    .line 28
    const-string v0, "EventType"

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->a(Ljava/lang/String;)V

    .line 37
    const-string v0, "ParkCode"

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->b(Ljava/lang/String;)V

    .line 46
    const-string v0, "ParkLat"

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const-string v1, "ParkLon"

    .line 54
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/sdk/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "InTime"

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->c(Ljava/lang/String;)V

    .line 70
    const-string v0, "LanePOI"

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->d(Ljava/lang/String;)V

    .line 79
    const-string v0, "LaneLat"

    .line 81
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->e(Ljava/lang/String;)V

    .line 88
    const-string v0, "LaneLon"

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->f(Ljava/lang/String;)V

    .line 97
    const-string v0, "OutTime"

    .line 99
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->g(Ljava/lang/String;)V

    .line 106
    const-string v0, "InParkAcc"

    .line 108
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->h(Ljava/lang/String;)V

    .line 115
    const-string v0, "Exits"

    .line 117
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/amap/location/sdk/f/a/b;->i(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/amap/location/sdk/f/a/b;->b()Z

    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/amap/location/sdk/f/a/b;->c()Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/f/a/c$1;->a:Lcom/amap/location/sdk/f/a/c;

    .line 138
    invoke-static {v0, p1}, Lcom/amap/location/sdk/f/a/c;->a(Lcom/amap/location/sdk/f/a/c;Lcom/amap/location/sdk/f/a/b;)Lcom/amap/location/sdk/f/a/b;

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 158
    move-result-object p1

    .line 159
    const p2, 0x1ae5a

    .line 162
    invoke-static {p2, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/amap/location/sdk/f/a/c$1;->a:Lcom/amap/location/sdk/f/a/c;

    .line 167
    const-string p2, "get_garage"

    .line 169
    invoke-static {p1, p2}, Lcom/amap/location/sdk/f/a/c;->a(Lcom/amap/location/sdk/f/a/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 173
    :catch_0
    move-exception p1

    .line 174
    const-string p2, "VivoGarageRecognizer"

    .line 176
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :cond_2
    :goto_0
    return-void
.end method
