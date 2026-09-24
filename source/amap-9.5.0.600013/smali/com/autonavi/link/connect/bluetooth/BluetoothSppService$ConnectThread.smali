.class public Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectThread"
.end annotation


# instance fields
.field public a:Landroid/bluetooth/BluetoothSocket;

.field public final b:Landroid/bluetooth/BluetoothDevice;

.field public c:Lxc;

.field public d:Z

.field public e:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

.field public f:Lcom/autonavi/link/transmit/inter/LinkProxyError;

.field public final synthetic g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;


# direct methods
.method public constructor <init>(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->d:Z

    .line 9
    new-instance v1, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread$1;

    .line 11
    invoke-direct {v1, p0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread$1;-><init>(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;)V

    .line 14
    iput-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->f:Lcom/autonavi/link/transmit/inter/LinkProxyError;

    .line 16
    iput-object p2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->b:Landroid/bluetooth/BluetoothDevice;

    .line 18
    if-eqz p3, :cond_0

    .line 20
    :try_start_0
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d()Ljava/util/UUID;

    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 30
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v1, "ConnectThread isAndroid mBluetoothSocket: "

    .line 41
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 46
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p3

    .line 53
    new-array v1, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {p2, p3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->e()Ljava/util/UUID;

    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 69
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string v1, "ConnectThread notAndroid mBluetoothSocket: "

    .line 80
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 85
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p3

    .line 92
    new-array v1, v0, [Ljava/lang/Object;

    .line 94
    invoke-static {p2, p3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p2

    .line 99
    invoke-static {p1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 102
    move-result-object p3

    .line 103
    const/4 v1, -0x2

    .line 104
    const/4 v2, -0x1

    .line 105
    const/4 v3, 0x2

    .line 106
    invoke-virtual {p3, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 113
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 116
    move-result-object p3

    .line 117
    const/4 v1, 0x1

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    aput-object p2, v1, v0

    .line 122
    const-string p2, "ConnectThread isAndroid IOException"

    .line 124
    invoke-static {p3, p2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_0
    new-instance p2, Lxc;

    .line 129
    invoke-static {p1}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p2, p1}, Lxc;-><init>(Landroid/os/Handler;)V

    .line 136
    iput-object p2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->c:Lxc;

    .line 138
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->c:Lxc;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lxc;->a()V

    .line 9
    iput-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->c:Lxc;

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    const-string v3, "ConnectThread cannel"

    .line 18
    new-array v4, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "ConnectThread cannel close"

    .line 33
    new-array v4, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {v2, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 40
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v5, "IOException cancel e: "

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    invoke-static {v3, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 73
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 76
    move-result-object v0

    .line 77
    const/4 v2, -0x6

    .line 78
    const/4 v3, -0x1

    .line 79
    const/4 v4, 0x2

    .line 80
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->e:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 89
    if-eqz v0, :cond_2

    .line 91
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d()Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 94
    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->e:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 97
    invoke-virtual {v0, v2}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->h(Lcom/autonavi/link/transmit/inter/Connection;)V

    .line 100
    iput-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->e:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 102
    :cond_2
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    const-string v3, "ConnectThread running"

    .line 10
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 15
    const/4 v2, -0x2

    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, 0x2

    .line 18
    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v5, "ConnectThread isAndroid mBluetoothSocket == null"

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v5, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 33
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    return-void

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 47
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/bluetooth/BluetoothAdapter;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 56
    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    const-string v5, "ConnectThread connect"

    .line 64
    new-array v6, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {v0, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 71
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->c:Lxc;

    .line 76
    if-eqz v0, :cond_3

    .line 78
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 80
    invoke-virtual {v0, v5}, Lxc;->b(Landroid/bluetooth/BluetoothSocket;)Z

    .line 83
    move-result v0

    .line 84
    iput-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->d:Z

    .line 86
    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 90
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->c:Lxc;

    .line 92
    invoke-virtual {v2}, Lxc;->d()Loj;

    .line 95
    move-result-object v2

    .line 96
    invoke-static {v0, v2}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->g(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;Loj;)Loj;

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 102
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    const-string v2, "Bluetooth server handshake failed in conn thread."

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void

    .line 125
    :cond_3
    :goto_0
    new-instance v0, Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 127
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 129
    invoke-direct {v0, v2}, Lcom/autonavi/link/transmit/impl/BluetoothConnection;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 132
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->e:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 134
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d()Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 137
    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->e:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 140
    iget-object v3, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->f:Lcom/autonavi/link/transmit/inter/LinkProxyError;

    .line 142
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->a(Lcom/autonavi/link/transmit/inter/Connection;Lcom/autonavi/link/transmit/inter/LinkProxyError;)V

    .line 145
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 147
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->b:Landroid/bluetooth/BluetoothDevice;

    .line 149
    invoke-virtual {v0, v2}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->i(Landroid/bluetooth/BluetoothDevice;)V

    .line 152
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    const-string v2, "Bluetooth server connect success."

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    .line 160
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    return-void

    .line 164
    :catch_1
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    const-string v2, "ConnectThread connect NullPointerException"

    .line 170
    new-array v1, v1, [Ljava/lang/Object;

    .line 172
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    return-void

    .line 176
    :catch_2
    move-exception v0

    .line 177
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 180
    move-result-object v5

    .line 181
    const/4 v6, 0x1

    .line 182
    new-array v6, v6, [Ljava/lang/Object;

    .line 184
    aput-object v0, v6, v1

    .line 186
    const-string v0, "ConnectThread connect IOException"

    .line 188
    invoke-static {v5, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 193
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 206
    if-eqz v0, :cond_4

    .line 208
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    const-string v2, "ConnectThread connect IOException close"

    .line 214
    new-array v5, v1, [Ljava/lang/Object;

    .line 216
    invoke-static {v0, v2, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->a:Landroid/bluetooth/BluetoothSocket;

    .line 221
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 224
    goto :goto_1

    .line 225
    :catch_3
    move-exception v0

    .line 226
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 229
    move-result-object v2

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    const-string v6, "IOException connectThread e2: "

    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    new-array v1, v1, [Ljava/lang/Object;

    .line 249
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$ConnectThread;->g:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 254
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 257
    move-result-object v0

    .line 258
    const/4 v1, -0x6

    .line 259
    invoke-virtual {v0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 266
    :cond_4
    :goto_1
    return-void
.end method
