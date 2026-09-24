.class public Lq90;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Lr90;


# direct methods
.method public constructor <init>(Lr90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-object p1, p0, Lq90;->a:Lr90;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lq90;->a:Lr90;

    .line 3
    iget-boolean v0, v0, Lr90;->w:Z

    .line 5
    if-nez v0, :cond_9

    .line 7
    const/16 v0, 0x5dc

    .line 9
    new-array v1, v0, [B

    .line 11
    new-instance v2, Ljava/net/DatagramPacket;

    .line 13
    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 16
    iget-object v0, p0, Lq90;->a:Lr90;

    .line 18
    iget-boolean v3, v0, Lr90;->d:Z

    .line 20
    if-nez v3, :cond_1

    .line 22
    :try_start_0
    iget-object v0, v0, Lr90;->a:Ljava/net/DatagramSocket;

    .line 24
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    iget-object v3, p0, Lq90;->a:Lr90;

    .line 31
    iget-boolean v3, v3, Lr90;->w:Z

    .line 33
    if-nez v3, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_1
    iget-object v0, v0, Lr90;->b:Ljava/net/MulticastSocket;

    .line 41
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    goto :goto_1

    .line 45
    :catch_1
    move-exception v0

    .line 46
    iget-object v3, p0, Lq90;->a:Lr90;

    .line 48
    iget-boolean v3, v3, Lr90;->w:Z

    .line 50
    if-nez v3, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :goto_1
    new-instance v0, Lmb0;

    .line 57
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    .line 60
    move-result v3

    .line 61
    invoke-direct {v0, v1, v3}, Lmb0;-><init>([BI)V

    .line 64
    invoke-virtual {v0}, Lmb0;->j()J

    .line 67
    move-result-wide v3

    .line 68
    iget-object v1, p0, Lq90;->a:Lr90;

    .line 70
    iget-wide v5, v1, Lr90;->f:J

    .line 72
    cmp-long v7, v5, v3

    .line 74
    if-nez v7, :cond_2

    .line 76
    invoke-virtual {v1}, Lr90;->j()V

    .line 79
    :cond_2
    invoke-virtual {v0}, Lmb0;->c()[J

    .line 82
    move-result-object v1

    .line 83
    const/4 v5, 0x0

    .line 84
    if-eqz v1, :cond_4

    .line 86
    const/4 v6, 0x0

    .line 87
    :goto_2
    array-length v7, v1

    .line 88
    if-ge v6, v7, :cond_4

    .line 90
    aget-wide v7, v1, v6

    .line 92
    iget-object v9, p0, Lq90;->a:Lr90;

    .line 94
    iget-wide v10, v9, Lr90;->f:J

    .line 96
    cmp-long v12, v7, v10

    .line 98
    if-nez v12, :cond_3

    .line 100
    invoke-virtual {v9}, Lr90;->j()V

    .line 103
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget-object v1, p0, Lq90;->a:Lr90;

    .line 108
    iget-object v1, v1, Lr90;->p:Ll50;

    .line 110
    invoke-virtual {v1, v3, v4}, Ll50;->d(J)Lk50;

    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_5

    .line 116
    new-instance v1, Lk50;

    .line 118
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/net/InetSocketAddress;

    .line 124
    invoke-virtual {v0}, Lmb0;->j()J

    .line 127
    move-result-wide v6

    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-direct {v1, v3, v4, v6, v7}, Lk50;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;J)V

    .line 132
    const/4 v3, 0x1

    .line 133
    iput-boolean v3, v1, Lk50;->a:Z

    .line 135
    iget-object v4, p0, Lq90;->a:Lr90;

    .line 137
    iget-object v4, v4, Lr90;->p:Ll50;

    .line 139
    invoke-virtual {v4, v3, v1}, Ll50;->a(ILk50;)I

    .line 142
    :cond_5
    iget-object v3, v1, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 144
    if-eqz v3, :cond_7

    .line 146
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 149
    move-result-object v3

    .line 150
    iget-object v4, v1, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 152
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_6

    .line 162
    goto :goto_3

    .line 163
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string v4, "RTPReceiverThread: Got an unexpected packet from "

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Lmb0;->j()J

    .line 176
    move-result-wide v6

    .line 177
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    const-string v4, " the sending ip-address was "

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v4, ", we expected from "

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v4, v1, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 203
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    new-array v4, v5, [Ljava/lang/Object;

    .line 216
    const-string v5, "RTPSession"

    .line 218
    invoke-static {v5, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    goto :goto_4

    .line 222
    :cond_7
    :goto_3
    iget-object v3, v1, Lk50;->F:La60;

    .line 224
    if-eqz v3, :cond_8

    .line 226
    invoke-virtual {v3, v0}, La60;->a(Lmb0;)I

    .line 229
    goto :goto_4

    .line 230
    :cond_8
    new-instance v3, La60;

    .line 232
    iget-object v4, p0, Lq90;->a:Lr90;

    .line 234
    invoke-direct {v3, v4, v1, v0}, La60;-><init>(Lr90;Lk50;Lmb0;)V

    .line 237
    iput-object v3, v1, Lk50;->F:La60;

    .line 239
    :goto_4
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    .line 242
    move-result v2

    .line 243
    invoke-virtual {v1, v2, v0}, Lk50;->c(ILmb0;)V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 249
    move-result-wide v2

    .line 250
    iput-wide v2, v1, Lk50;->G:J

    .line 252
    iget-object v0, p0, Lq90;->a:Lr90;

    .line 254
    iget-object v0, v0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 256
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    :try_start_2
    iget-object v0, p0, Lq90;->a:Lr90;

    .line 261
    iget-object v0, v0, Lr90;->v:Ljava/util/concurrent/locks/Condition;

    .line 263
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    iget-object v0, p0, Lq90;->a:Lr90;

    .line 268
    iget-object v0, v0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 270
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 273
    goto/16 :goto_0

    .line 275
    :catchall_0
    move-exception v0

    .line 276
    iget-object v1, p0, Lq90;->a:Lr90;

    .line 278
    iget-object v1, v1, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 280
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    throw v0

    .line 284
    :cond_9
    return-void
.end method
