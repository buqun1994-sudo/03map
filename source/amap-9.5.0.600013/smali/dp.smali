.class public Ldp;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldp$c;
    }
.end annotation


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;

.field public c:Lnj;

.field public d:Ljava/nio/channels/Selector;

.field public e:Ljava/nio/channels/ServerSocketChannel;

.field public f:Ljava/nio/channels/SocketChannel;

.field public g:Ljava/lang/StringBuilder;

.field public h:Lym0;

.field public i:Z

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lnj;Lym0;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iput-object v0, p0, Ldp;->g:Ljava/lang/StringBuilder;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ldp;->i:Z

    .line 14
    const-string v0, ""

    .line 16
    iput-object v0, p0, Ldp;->j:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x1

    .line 22
    const-wide/16 v4, 0x1

    .line 24
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    const/16 v1, 0x64

    .line 30
    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 33
    move-object v1, v0

    .line 34
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 37
    iput-object v0, p0, Ldp;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    iput-object p1, p0, Ldp;->c:Lnj;

    .line 41
    iput-object p2, p0, Ldp;->h:Lym0;

    .line 43
    invoke-static {}, Lpc0;->d()Lpc0;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lpc0;->b()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p2, Lym0;->l:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Ldp;->h:Lym0;

    .line 55
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 57
    iput-object p2, p1, Lym0;->j:Ljava/lang/String;

    .line 59
    invoke-static {}, Ldx;->c()Ldx;

    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Ldx;->d()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p1, Lym0;->k:Ljava/lang/String;

    .line 69
    new-instance p1, Landroid/os/HandlerThread;

    .line 71
    const-string p2, "HeartbeatServerMessageThread"

    .line 73
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Ldp;->a:Landroid/os/HandlerThread;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 81
    new-instance p1, Ldp$a;

    .line 83
    iget-object p2, p0, Ldp;->a:Landroid/os/HandlerThread;

    .line 85
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p1, p0, p2}, Ldp$a;-><init>(Ldp;Landroid/os/Looper;)V

    .line 92
    iput-object p1, p0, Ldp;->b:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method public static synthetic f(Ldp;Ldp$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldp;->m(Ldp$c;)V

    .line 4
    return-void
.end method

.method public static synthetic g(Ldp;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldp;->p()V

    .line 4
    return-void
.end method

.method public static synthetic h(Ldp;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldp;->l()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Ldp;->r(ILjava/lang/String;)V

    .line 10
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, v0, p1}, Ldp;->r(ILjava/lang/String;)V

    .line 9
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Ldp;->q(I)V

    .line 5
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Ldp;->q(I)V

    .line 5
    return-void
.end method

.method public declared-synchronized e()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "HeartbeatServer"

    .line 4
    const-string v1, "stopRunning"

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-boolean v0, p0, Ldp;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v0, :cond_0

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    iput-boolean v2, p0, Ldp;->i:Z

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Ldp;->c:Lnj;

    .line 23
    iget-object v1, p0, Ldp;->b:Landroid/os/Handler;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    iput-object v0, p0, Ldp;->b:Landroid/os/Handler;

    .line 32
    :cond_1
    iget-object v1, p0, Ldp;->a:Landroid/os/HandlerThread;

    .line 34
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 39
    iput-object v0, p0, Ldp;->a:Landroid/os/HandlerThread;

    .line 41
    :cond_2
    iget-object v1, p0, Ldp;->d:Ljava/nio/channels/Selector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-eqz v1, :cond_3

    .line 45
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 48
    iget-object v1, p0, Ldp;->d:Ljava/nio/channels/Selector;

    .line 50
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    .line 53
    iput-object v0, p0, Ldp;->d:Ljava/nio/channels/Selector;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    :try_start_3
    const-string v3, "HeartbeatServer"

    .line 59
    const-string v4, "close selector exception."

    .line 61
    new-array v5, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v3, v4, v1, v5}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 66
    :cond_3
    :goto_0
    iget-object v1, p0, Ldp;->e:Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    if-eqz v1, :cond_4

    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 73
    iput-object v0, p0, Ldp;->e:Ljava/nio/channels/ServerSocketChannel;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    :try_start_5
    const-string v1, "HeartbeatServer"

    .line 79
    const-string v3, "close server exception."

    .line 81
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    invoke-static {v1, v3, v0, v2}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :cond_4
    :goto_1
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    monitor-exit p0

    .line 90
    throw v0
.end method

.method public final i(Ljava/nio/channels/SelectionKey;)V
    .locals 10

    .line 1
    const-string v0, "HeartbeatServer"

    .line 3
    const-string v1, "aabbaa"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_7

    .line 13
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/nio/channels/ServerSocketChannel;

    .line 25
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 32
    iget-object v5, p0, Ldp;->d:Ljava/nio/channels/Selector;

    .line 34
    invoke-virtual {v4, v5, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 37
    const-string v4, "new socket come"

    .line 39
    new-array v5, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v0, v4, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_7

    .line 50
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/nio/channels/SocketChannel;

    .line 56
    const/16 v5, 0x400

    .line 58
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 65
    move-result v6

    .line 66
    if-lez v6, :cond_4

    .line 68
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 74
    move-result v6

    .line 75
    new-array v6, v6, [B

    .line 77
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 80
    new-instance v5, Ljava/lang/String;

    .line 82
    const-string v7, "UTF-8"

    .line 84
    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 90
    move-result v6

    .line 91
    const/4 v7, -0x1

    .line 92
    if-ne v6, v7, :cond_1

    .line 94
    iget-object v1, p0, Ldp;->g:Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    goto/16 :goto_3

    .line 101
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    const/4 v7, 0x0

    .line 106
    :goto_0
    array-length v8, v6

    .line 107
    if-ge v7, v8, :cond_7

    .line 109
    iget-object v8, p0, Ldp;->g:Ljava/lang/StringBuilder;

    .line 111
    aget-object v9, v6, v7

    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    array-length v8, v6

    .line 117
    sub-int/2addr v8, v3

    .line 118
    if-eq v7, v8, :cond_2

    .line 120
    new-instance v8, Ldp$c;

    .line 122
    iget-object v9, p0, Ldp;->g:Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v9

    .line 128
    invoke-direct {v8, p0, v9, v4}, Ldp$c;-><init>(Ldp;Ljava/lang/String;Ljava/nio/channels/SocketChannel;)V

    .line 131
    invoke-virtual {p0, v8}, Ldp;->n(Ldp$c;)V

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iput-object v8, p0, Ldp;->g:Ljava/lang/StringBuilder;

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_3

    .line 148
    new-instance v8, Ldp$c;

    .line 150
    iget-object v9, p0, Ldp;->g:Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v9

    .line 156
    invoke-direct {v8, p0, v9, v4}, Ldp$c;-><init>(Ldp;Ljava/lang/String;Ljava/nio/channels/SocketChannel;)V

    .line 159
    invoke-virtual {p0, v8}, Ldp;->n(Ldp$c;)V

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iput-object v8, p0, Ldp;->g:Ljava/lang/StringBuilder;

    .line 169
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 171
    goto :goto_0

    .line 172
    :cond_4
    if-gez v6, :cond_7

    .line 174
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 180
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 195
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 202
    invoke-virtual {p0, v1}, Ldp;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_3

    .line 206
    :catch_0
    move-exception v1

    .line 207
    new-array v3, v3, [Ljava/lang/Object;

    .line 209
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    aput-object v1, v3, v2

    .line 215
    const-string v1, "HeartbeatServer handleInput :{?}"

    .line 217
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    if-eqz p1, :cond_5

    .line 222
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 228
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 243
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 246
    move-result-object v1

    .line 247
    if-eqz v1, :cond_6

    .line 249
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    goto :goto_2

    .line 257
    :cond_5
    const/4 v0, 0x0

    .line 258
    :catch_1
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Ldp;->k(Ljava/lang/String;)V

    .line 261
    :cond_7
    :goto_3
    return-void
.end method

.method public final j()Z
    .locals 6

    .line 1
    const-string v0, "HeartbeatServer"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 11
    move-result-object v3

    .line 12
    iput-object v3, p0, Ldp;->d:Ljava/nio/channels/Selector;

    .line 14
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    .line 17
    move-result-object v3

    .line 18
    iput-object v3, p0, Ldp;->e:Ljava/nio/channels/ServerSocketChannel;

    .line 20
    invoke-virtual {v3, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 23
    iget-object v3, p0, Ldp;->e:Ljava/nio/channels/ServerSocketChannel;

    .line 25
    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 31
    const/16 v5, 0x22c0

    .line 33
    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 36
    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 39
    iget-object v3, p0, Ldp;->e:Ljava/nio/channels/ServerSocketChannel;

    .line 41
    iget-object v4, p0, Ldp;->d:Ljava/nio/channels/Selector;

    .line 43
    const/16 v5, 0x10

    .line 45
    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 48
    const-string v3, "HeartbeatServer init"

    .line 50
    new-array v4, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v0, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return v1

    .line 56
    :catch_0
    move-exception v3

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    aput-object v3, v1, v2

    .line 61
    const-string v3, "HeartbeatServer error :{?}"

    .line 63
    invoke-static {v0, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Ldp;->l()V

    .line 69
    return v2
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldp;->j:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Ldp;->j:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Ldp;->l()V

    .line 20
    :cond_1
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldp;->c:Lnj;

    .line 3
    invoke-virtual {p0}, Ldp;->e()V

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lnj;->a()V

    .line 11
    :cond_0
    return-void
.end method

.method public final m(Ldp$c;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Ldp$c;->a(Ldp$c;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v0, v2, v3

    .line 14
    invoke-static {p1}, Ldp$c;->b(Ldp$c;)Ljava/nio/channels/SocketChannel;

    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x1

    .line 19
    aput-object v4, v2, v5

    .line 21
    const-string v4, "HeartbeatServer"

    .line 23
    const-string v6, "receive msg = {?},socket = {?}"

    .line 25
    invoke-static {v4, v6, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-string v2, "aabbaa"

    .line 30
    const-string v6, ""

    .line 32
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    return-void

    .line 43
    :cond_1
    const-string v2, "MSG_HANDSHAKE_REQUEST"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_4

    .line 51
    new-array v7, v5, [Ljava/lang/Object;

    .line 53
    iget-object v8, p0, Ldp;->j:Ljava/lang/String;

    .line 55
    aput-object v8, v7, v3

    .line 57
    const-string v8, "reportMsg clientAddress = {?}"

    .line 59
    invoke-static {v4, v8, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v7, p0, Ldp;->j:Ljava/lang/String;

    .line 64
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_2

    .line 70
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-static {p1}, Ldp$c;->b(Ldp$c;)Ljava/nio/channels/SocketChannel;

    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Ldp;->f:Ljava/nio/channels/SocketChannel;

    .line 80
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Ldp;->j:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Ldp;->c:Lnj;

    .line 96
    invoke-static {v0}, Lym0;->d(Ljava/lang/String;)Lym0;

    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v1, p1, v0}, Lnj;->n(Ljava/lang/String;Lym0;)V

    .line 103
    invoke-virtual {p0, v5}, Ldp;->q(I)V

    .line 106
    goto/16 :goto_0

    .line 108
    :cond_2
    invoke-static {p1}, Ldp$c;->b(Ldp$c;)Ljava/nio/channels/SocketChannel;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    new-array v2, v1, [Ljava/lang/Object;

    .line 126
    iget-object v6, p0, Ldp;->j:Ljava/lang/String;

    .line 128
    aput-object v6, v2, v3

    .line 130
    aput-object v0, v2, v5

    .line 132
    const-string v3, "reportMsg clientAddress = {?},new address = {?}"

    .line 134
    invoke-static {v4, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Ldp;->j:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_3

    .line 145
    invoke-static {p1}, Ldp$c;->b(Ldp$c;)Ljava/nio/channels/SocketChannel;

    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Ldp;->f:Ljava/nio/channels/SocketChannel;

    .line 151
    invoke-virtual {p0, v5}, Ldp;->q(I)V

    .line 154
    goto/16 :goto_0

    .line 156
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    invoke-static {p1}, Ldp$c;->b(Ldp$c;)Ljava/nio/channels/SocketChannel;

    .line 163
    move-result-object p1

    .line 164
    const/4 v1, 0x4

    .line 165
    invoke-virtual {p0, v1, v0, p1}, Ldp;->s(ILjava/lang/String;Ljava/nio/channels/SocketChannel;)V

    .line 168
    goto/16 :goto_0

    .line 170
    :cond_4
    const-string p1, "MSG_HANDSHAKE_RESPONSE"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p0}, Ldp;->p()V

    .line 181
    goto/16 :goto_0

    .line 183
    :cond_5
    const-string p1, "MSG_CONNECT_REQUEST"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_6

    .line 191
    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    iget-object v0, p0, Ldp;->c:Lnj;

    .line 197
    invoke-static {p1}, Lym0;->e(Ljava/lang/String;)Lym0;

    .line 200
    move-result-object p1

    .line 201
    invoke-interface {v0, p1}, Lnj;->p(Lym0;)V

    .line 204
    goto/16 :goto_0

    .line 206
    :cond_6
    const-string p1, "MSG_CONNECT_RESPONSE"

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_7

    .line 214
    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 218
    iget-object v0, p0, Ldp;->c:Lnj;

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 227
    move-result p1

    .line 228
    invoke-interface {v0, p1}, Lnj;->i(I)V

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_7
    const-string p1, "MSG_UNBIND_REQUEST"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_8

    .line 241
    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 244
    move-result-object p1

    .line 245
    iget-object v0, p0, Ldp;->c:Lnj;

    .line 247
    invoke-static {p1}, Lym0;->e(Ljava/lang/String;)Lym0;

    .line 250
    move-result-object p1

    .line 251
    invoke-interface {v0, p1}, Lnj;->r(Lym0;)V

    .line 254
    goto/16 :goto_0

    .line 256
    :cond_8
    const-string p1, "MSG_UNBIND_RESPONSE"

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_9

    .line 264
    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 267
    move-result-object p1

    .line 268
    iget-object v0, p0, Ldp;->c:Lnj;

    .line 270
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 277
    move-result p1

    .line 278
    invoke-interface {v0, p1}, Lnj;->h(Z)V

    .line 281
    goto :goto_0

    .line 282
    :cond_9
    const-string p1, "MSG_NET_STATE_REQUEST"

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_a

    .line 290
    iget-object p1, p0, Ldp;->c:Lnj;

    .line 292
    invoke-interface {p1}, Lnj;->q()V

    .line 295
    goto :goto_0

    .line 296
    :cond_a
    const-string p1, "MSG_NET_STATE_RESPONSE"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_b

    .line 304
    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 307
    move-result-object p1

    .line 308
    iget-object v0, p0, Ldp;->c:Lnj;

    .line 310
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    move-result p1

    .line 318
    invoke-interface {v0, p1}, Lnj;->f(Z)V

    .line 321
    goto :goto_0

    .line 322
    :cond_b
    const-string p1, "MSG_HANDSHAKE"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_c

    .line 330
    invoke-virtual {p0}, Ldp;->o()V

    .line 333
    goto :goto_0

    .line 334
    :cond_c
    const-string p1, "MSG_SEND_ONE_KEY_NAVI_MESSAGE_REQUEST"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_d

    .line 342
    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 345
    move-result-object p1

    .line 346
    iget-object v0, p0, Ldp;->c:Lnj;

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 355
    move-result p1

    .line 356
    invoke-interface {v0, p1}, Lnj;->c(I)V

    .line 359
    goto :goto_0

    .line 360
    :cond_d
    const-string p1, "MSG_SEND_ONE_KEY_NAVI_MESSAGE_RESPONSE"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 365
    move-result p1

    .line 366
    if-eqz p1, :cond_e

    .line 368
    iget-object p1, p0, Ldp;->c:Lnj;

    .line 370
    invoke-interface {p1}, Lnj;->k()V

    .line 373
    :cond_e
    :goto_0
    return-void
.end method

.method public final n(Ldp$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldp;->b:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Ldp;->b:Landroid/os/Handler;

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldp;->b:Landroid/os/Handler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v0, p0, Ldp;->b:Landroid/os/Handler;

    .line 11
    const-wide/16 v2, 0x3a98

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ldp;->q(I)V

    .line 5
    iget-object v1, p0, Ldp;->b:Landroid/os/Handler;

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const-wide/16 v2, 0x1388

    .line 12
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0, p1, v0}, Ldp;->r(ILjava/lang/String;)V

    .line 6
    return-void
.end method

.method public r(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldp;->f:Ljava/nio/channels/SocketChannel;

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Ldp;->s(ILjava/lang/String;Ljava/nio/channels/SocketChannel;)V

    .line 6
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ldp;->j()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldp;->i:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    :try_start_0
    iget-object v0, p0, Ldp;->d:Ljava/nio/channels/Selector;

    .line 14
    const-wide/16 v1, 0x7530

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    .line 19
    iget-object v0, p0, Ldp;->d:Ljava/nio/channels/Selector;

    .line 21
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 44
    invoke-virtual {p0, v1}, Ldp;->i(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v1, 0x1

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    aput-object v0, v1, v2

    .line 59
    const-string v0, "HeartbeatServer"

    .line 61
    const-string v2, "HeartbeatServer error :{?}"

    .line 63
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Ldp;->l()V

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public s(ILjava/lang/String;Ljava/nio/channels/SocketChannel;)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    const-string p1, ""

    .line 6
    goto/16 :goto_0

    .line 8
    :pswitch_0
    const-string p1, "MSG_SEND_ONE_KEY_NAVI_MESSAGE_RESPONSE"

    .line 10
    goto/16 :goto_0

    .line 12
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v0, "MSG_SEND_ONE_KEY_NAVI_MESSAGE_REQUEST"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    goto/16 :goto_0

    .line 31
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v0, "MSG_NET_STATE_RESPONSE"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    goto/16 :goto_0

    .line 50
    :pswitch_3
    const-string p1, "MSG_NET_STATE_REQUEST"

    .line 52
    goto/16 :goto_0

    .line 54
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v0, "MSG_UNBIND_RESPONSE"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    goto/16 :goto_0

    .line 73
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string p2, "MSG_UNBIND_REQUEST"

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object p2, p0, Ldp;->h:Lym0;

    .line 85
    invoke-static {p2}, Lym0;->a(Lym0;)Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    goto :goto_0

    .line 97
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v0, "MSG_CONNECT_RESPONSE"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    goto :goto_0

    .line 115
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string p2, "MSG_CONNECT_REQUEST"

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object p2, p0, Ldp;->h:Lym0;

    .line 127
    invoke-static {p2}, Lym0;->a(Lym0;)Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    goto :goto_0

    .line 139
    :pswitch_8
    const-string p1, "MSG_HANDSHAKE"

    .line 141
    goto :goto_0

    .line 142
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    const-string p2, "MSG_HANDSHAKE_RESPONSE"

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object p2, p0, Ldp;->h:Lym0;

    .line 154
    invoke-static {p2}, Lym0;->b(Lym0;)Ljava/lang/String;

    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    goto :goto_0

    .line 166
    :pswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string p2, "MSG_HANDSHAKE_REQUEST"

    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object p2, p0, Ldp;->h:Lym0;

    .line 178
    invoke-static {p2}, Lym0;->b(Lym0;)Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 189
    :goto_0
    invoke-virtual {p0, p1, p3}, Ldp;->t(Ljava/lang/String;Ljava/nio/channels/SocketChannel;)V

    .line 192
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Ljava/lang/String;Ljava/nio/channels/SocketChannel;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p2, v0, v1

    .line 10
    const-string v1, "HeartbeatServer"

    .line 12
    const-string v2, "writeMessage:{?},socketChannel = {?}"

    .line 14
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Ldp;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    new-instance v1, Ldp$b;

    .line 21
    invoke-direct {v1, p0, p2, p1}, Ldp$b;-><init>(Ldp;Ljava/nio/channels/SocketChannel;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method
