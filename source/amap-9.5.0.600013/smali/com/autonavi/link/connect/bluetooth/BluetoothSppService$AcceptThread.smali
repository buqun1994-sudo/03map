.class public Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcceptThread"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/bluetooth/BluetoothServerSocket;

.field public d:Landroid/bluetooth/BluetoothSocket;

.field public e:Lxc;

.field public f:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

.field public g:Z

.field public h:Lcom/autonavi/link/transmit/inter/LinkProxyError;

.field public final synthetic i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;


# direct methods
.method public constructor <init>(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->a:Z

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->b:Z

    .line 12
    new-instance p1, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread$1;

    .line 14
    invoke-direct {p1, p0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread$1;-><init>(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;)V

    .line 17
    iput-object p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->h:Lcom/autonavi/link/transmit/inter/LinkProxyError;

    .line 19
    iput-boolean p2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->g:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->e:Lxc;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lxc;->a()V

    .line 9
    iput-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->e:Lxc;

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->a:Z

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->c:Landroid/bluetooth/BluetoothServerSocket;

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 21
    iput-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->c:Landroid/bluetooth/BluetoothServerSocket;

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;

    .line 25
    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v5, "cancel111 IOException e: "

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {v3, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 60
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 63
    move-result-object v0

    .line 64
    const/4 v2, -0x6

    .line 65
    const/4 v3, -0x1

    .line 66
    const/4 v4, 0x2

    .line 67
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 74
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->f:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 76
    if-eqz v0, :cond_3

    .line 78
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d()Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 81
    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->f:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 84
    invoke-virtual {v0, v2}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->h(Lcom/autonavi/link/transmit/inter/Connection;)V

    .line 87
    iput-object v1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->f:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 89
    :cond_3
    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    const-string v3, "AcceptThread run"

    .line 10
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 15
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/bluetooth/BluetoothAdapter;

    .line 18
    move-result-object v0

    .line 19
    const/4 v2, -0x3

    .line 20
    const/4 v3, -0x1

    .line 21
    const/4 v4, 0x2

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v5, "AcceptThread run mBluetoothAdapter == null"

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v0, v5, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 37
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 48
    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->g:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 51
    const-string v5, "Bluetooth Secure"

    .line 53
    if-eqz v0, :cond_1

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 57
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/bluetooth/BluetoothAdapter;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->d()Ljava/util/UUID;

    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->c:Landroid/bluetooth/BluetoothServerSocket;

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 74
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->b(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/bluetooth/BluetoothAdapter;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->e()Ljava/util/UUID;

    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->c:Landroid/bluetooth/BluetoothServerSocket;

    .line 88
    :goto_0
    new-instance v0, Lxc;

    .line 90
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 92
    invoke-static {v5}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 95
    move-result-object v5

    .line 96
    invoke-direct {v0, v5}, Lxc;-><init>(Landroid/os/Handler;)V

    .line 99
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->e:Lxc;

    .line 101
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    const-string v5, "AcceptThread, #end-of-try-block"

    .line 107
    new-array v6, v1, [Ljava/lang/Object;

    .line 109
    invoke-static {v0, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 112
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 114
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 117
    move-result-object v0

    .line 118
    const/4 v2, 0x3

    .line 119
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 128
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->f(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)I

    .line 131
    move-result v0

    .line 132
    if-eq v0, v2, :cond_8

    .line 134
    iget-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->a:Z

    .line 136
    if-eqz v0, :cond_8

    .line 138
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    const-string v5, "AcceptThread while"

    .line 144
    new-array v6, v1, [Ljava/lang/Object;

    .line 146
    invoke-static {v0, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->c:Landroid/bluetooth/BluetoothServerSocket;

    .line 151
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 157
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    const-string v5, "AcceptThread while end"

    .line 163
    new-array v6, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {v0, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;

    .line 170
    if-eqz v0, :cond_2

    .line 172
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string v6, "AcceptThread while mState: "

    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v6, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 188
    invoke-static {v6}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->f(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)I

    .line 191
    move-result v6

    .line 192
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v5

    .line 199
    new-array v6, v1, [Ljava/lang/Object;

    .line 201
    invoke-static {v0, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 206
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->f(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)I

    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_6

    .line 212
    const/4 v5, 0x1

    .line 213
    if-eq v0, v5, :cond_3

    .line 215
    if-eq v0, v4, :cond_3

    .line 217
    if-eq v0, v2, :cond_6

    .line 219
    goto :goto_1

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->e:Lxc;

    .line 222
    if-eqz v0, :cond_5

    .line 224
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;

    .line 226
    invoke-virtual {v0, v5}, Lxc;->c(Landroid/bluetooth/BluetoothSocket;)Z

    .line 229
    move-result v0

    .line 230
    iput-boolean v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->b:Z

    .line 232
    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 236
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->e:Lxc;

    .line 238
    invoke-virtual {v5}, Lxc;->d()Loj;

    .line 241
    move-result-object v5

    .line 242
    invoke-static {v0, v5}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->g(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;Loj;)Loj;

    .line 245
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 248
    move-result-object v0

    .line 249
    const-string v5, "AcceptThread Bluetooth server handshake success."

    .line 251
    new-array v6, v1, [Ljava/lang/Object;

    .line 253
    invoke-static {v0, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    goto :goto_2

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 259
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 262
    move-result-object v0

    .line 263
    const/4 v2, -0x2

    .line 264
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 271
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    const-string v2, "AcceptThread Bluetooth server handshake failed in acc thread."

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    .line 279
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    return-void

    .line 283
    :cond_5
    :goto_2
    new-instance v0, Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 285
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;

    .line 287
    invoke-direct {v0, v5}, Lcom/autonavi/link/transmit/impl/BluetoothConnection;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 290
    iput-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->f:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 292
    invoke-static {}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->d()Lcom/autonavi/link/transmit/proxy/LinkProxy;

    .line 295
    move-result-object v0

    .line 296
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->f:Lcom/autonavi/link/transmit/impl/BluetoothConnection;

    .line 298
    iget-object v6, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->h:Lcom/autonavi/link/transmit/inter/LinkProxyError;

    .line 300
    invoke-virtual {v0, v5, v6}, Lcom/autonavi/link/transmit/proxy/LinkProxy;->a(Lcom/autonavi/link/transmit/inter/Connection;Lcom/autonavi/link/transmit/inter/LinkProxyError;)V

    .line 303
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 305
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;

    .line 307
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v0, v5}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->i(Landroid/bluetooth/BluetoothDevice;)V

    .line 314
    goto/16 :goto_1

    .line 316
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;

    .line 318
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 321
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 324
    move-result-object v0

    .line 325
    const-string v5, "AcceptThread socket bluetoothSocket close"

    .line 327
    new-array v6, v1, [Ljava/lang/Object;

    .line 329
    invoke-static {v0, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 332
    goto/16 :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 338
    move-result-object v2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    const-string v4, "AcceptThread socket bluetoothSocket close Exception: "

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object v0

    .line 356
    new-array v1, v1, [Ljava/lang/Object;

    .line 358
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    return-void

    .line 362
    :catch_1
    move-exception v0

    .line 363
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 366
    move-result-object v2

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    .line 369
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    const-string v4, "AcceptThread socket bluetoothSocket close NullPointerException: "

    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object v0

    .line 384
    new-array v1, v1, [Ljava/lang/Object;

    .line 386
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    return-void

    .line 390
    :catch_2
    move-exception v0

    .line 391
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 394
    move-result-object v5

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    .line 397
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    const-string v7, "AcceptThread socket bluetoothSocket close IOException: "

    .line 402
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object v0

    .line 412
    new-array v6, v1, [Ljava/lang/Object;

    .line 414
    invoke-static {v5, v0, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    const/4 v0, -0x6

    .line 418
    :try_start_4
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->d:Landroid/bluetooth/BluetoothSocket;

    .line 420
    if-eqz v5, :cond_7

    .line 422
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 425
    goto :goto_3

    .line 426
    :catch_3
    move-exception v5

    .line 427
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 430
    move-result-object v6

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    const-string v8, "AcceptThread socket bluetoothSocket close IOException2: "

    .line 438
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    move-result-object v5

    .line 448
    new-array v7, v1, [Ljava/lang/Object;

    .line 450
    invoke-static {v6, v5, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 455
    invoke-static {v5}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 458
    move-result-object v5

    .line 459
    invoke-virtual {v5, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 466
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 468
    invoke-static {v5}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v5, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 479
    goto/16 :goto_1

    .line 481
    :catch_4
    move-exception v0

    .line 482
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 485
    move-result-object v2

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    .line 488
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    const-string v4, "AcceptThread while NullPointerException: "

    .line 493
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    move-result-object v0

    .line 503
    new-array v1, v1, [Ljava/lang/Object;

    .line 505
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    return-void

    .line 509
    :catch_5
    move-exception v0

    .line 510
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 513
    move-result-object v2

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    .line 516
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    const-string v6, "AcceptThread while IOException: "

    .line 521
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    move-result-object v0

    .line 531
    new-array v1, v1, [Ljava/lang/Object;

    .line 533
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 538
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 541
    move-result-object v0

    .line 542
    const/4 v1, -0x4

    .line 543
    invoke-virtual {v0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 550
    :cond_8
    return-void

    .line 551
    :catch_6
    move-exception v0

    .line 552
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 555
    move-result-object v5

    .line 556
    const-string v6, "AcceptThread Exception "

    .line 558
    new-array v1, v1, [Ljava/lang/Object;

    .line 560
    invoke-static {v5, v6, v0, v1}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 565
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    return-void

    .line 577
    :catch_7
    move-exception v0

    .line 578
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 581
    move-result-object v5

    .line 582
    const-string v6, "AcceptThread IOException "

    .line 584
    new-array v1, v1, [Ljava/lang/Object;

    .line 586
    invoke-static {v5, v6, v0, v1}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 591
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 602
    return-void
.end method
