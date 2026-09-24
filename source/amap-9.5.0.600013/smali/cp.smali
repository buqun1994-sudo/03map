.class public Lcp;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lap;


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;

.field public c:Lnj;

.field public d:Ljava/nio/channels/Selector;

.field public e:Ljava/nio/channels/SocketChannel;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/StringBuilder;

.field public h:Z

.field public i:Z

.field public j:Lym0;

.field public k:I

.field public final l:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lnj;Lym0;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    const-string v0, "192.168.49.1"

    .line 6
    iput-object v0, p0, Lcp;->f:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iput-object v0, p0, Lcp;->g:Ljava/lang/StringBuilder;

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcp;->h:Z

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcp;->i:Z

    .line 21
    const/4 v0, 0x5

    .line 22
    iput v0, p0, Lcp;->k:I

    .line 24
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x1

    .line 28
    const-wide/16 v4, 0x1

    .line 30
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    const/16 v1, 0x64

    .line 36
    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 39
    move-object v1, v0

    .line 40
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 43
    iput-object v0, p0, Lcp;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    iput-object p1, p0, Lcp;->c:Lnj;

    .line 47
    iput-object p2, p0, Lcp;->j:Lym0;

    .line 49
    invoke-static {}, Lpc0;->d()Lpc0;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lpc0;->b()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p2, Lym0;->l:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcp;->j:Lym0;

    .line 61
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 63
    iput-object p2, p1, Lym0;->j:Ljava/lang/String;

    .line 65
    invoke-static {}, Ldx;->c()Ldx;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ldx;->d()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    iput-object p2, p1, Lym0;->k:Ljava/lang/String;

    .line 75
    new-instance p1, Landroid/os/HandlerThread;

    .line 77
    const-string p2, "HeartbeatClientMessageThread"

    .line 79
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcp;->a:Landroid/os/HandlerThread;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 87
    new-instance p1, Lcp$a;

    .line 89
    iget-object p2, p0, Lcp;->a:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p0, p2}, Lcp$a;-><init>(Lcp;Landroid/os/Looper;)V

    .line 98
    iput-object p1, p0, Lcp;->b:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method public static synthetic f(Lcp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcp;->m(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic g(Lcp;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 3
    return-object p0
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
    invoke-virtual {p0, v0, p1}, Lcp;->q(ILjava/lang/String;)V

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
    invoke-virtual {p0, v0, p1}, Lcp;->q(ILjava/lang/String;)V

    .line 9
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcp;->p(I)V

    .line 5
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcp;->p(I)V

    .line 5
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "HeartbeatClient"

    .line 6
    const-string v3, "stopRunning "

    .line 8
    invoke-static {v2, v3, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v1, p0, Lcp;->h:Z

    .line 13
    if-eqz v1, :cond_2

    .line 15
    iput-boolean v0, p0, Lcp;->h:Z

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcp;->c:Lnj;

    .line 20
    iget-object v1, p0, Lcp;->b:Landroid/os/Handler;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 27
    iput-object v0, p0, Lcp;->b:Landroid/os/Handler;

    .line 29
    :cond_0
    iget-object v1, p0, Lcp;->a:Landroid/os/HandlerThread;

    .line 31
    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 36
    iput-object v0, p0, Lcp;->a:Landroid/os/HandlerThread;

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcp;->h()V

    .line 41
    :cond_2
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcp;->d:Ljava/nio/channels/Selector;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "HeartbeatClient"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 12
    iget-object v0, p0, Lcp;->d:Ljava/nio/channels/Selector;

    .line 14
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 17
    iput-object v1, p0, Lcp;->d:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const-string v4, "close selector exception."

    .line 23
    new-array v5, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v3, v4, v0, v5}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 30
    if-eqz v0, :cond_1

    .line 32
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 35
    iput-object v1, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v0

    .line 39
    const-string v1, "close server exception."

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v3, v1, v0, v2}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    :cond_1
    :goto_1
    return-void
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcp;->k:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcp;->k:I

    .line 7
    if-gtz v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final j(Ljava/nio/channels/SelectionKey;)V
    .locals 9

    .line 1
    const-string v0, "aabbaa"

    .line 3
    const-string v1, "HeartbeatClient"

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
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 19
    iget-object v4, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 21
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 27
    iget-object v4, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 29
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 32
    iget-object v4, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 34
    iget-object v5, p0, Lcp;->d:Ljava/nio/channels/Selector;

    .line 36
    invoke-virtual {v4, v5, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 39
    :cond_0
    iget-boolean v4, p0, Lcp;->i:Z

    .line 41
    if-nez v4, :cond_1

    .line 43
    invoke-virtual {p0, v2}, Lcp;->p(I)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_7

    .line 52
    const/16 v4, 0x400

    .line 54
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 57
    move-result-object v4

    .line 58
    iget-object v5, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 60
    invoke-virtual {v5, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 63
    move-result v5

    .line 64
    const-string v6, "readBytes = {?}"

    .line 66
    new-array v7, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v8

    .line 72
    aput-object v8, v7, v2

    .line 74
    invoke-static {v1, v6, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    if-lez v5, :cond_5

    .line 79
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 82
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 85
    move-result v5

    .line 86
    new-array v5, v5, [B

    .line 88
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 91
    new-instance v4, Ljava/lang/String;

    .line 93
    const-string v6, "UTF-8"

    .line 95
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 98
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 101
    move-result v5

    .line 102
    const/4 v6, -0x1

    .line 103
    if-ne v5, v6, :cond_2

    .line 105
    iget-object v0, p0, Lcp;->g:Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    const/4 v6, 0x0

    .line 116
    :goto_0
    array-length v7, v5

    .line 117
    if-ge v6, v7, :cond_7

    .line 119
    iget-object v7, p0, Lcp;->g:Ljava/lang/StringBuilder;

    .line 121
    aget-object v8, v5, v6

    .line 123
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    array-length v7, v5

    .line 127
    sub-int/2addr v7, v3

    .line 128
    if-eq v6, v7, :cond_3

    .line 130
    iget-object v7, p0, Lcp;->g:Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {p0, v7}, Lcp;->n(Ljava/lang/String;)V

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    iput-object v7, p0, Lcp;->g:Ljava/lang/StringBuilder;

    .line 146
    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_4

    .line 153
    iget-object v7, p0, Lcp;->g:Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {p0, v7}, Lcp;->n(Ljava/lang/String;)V

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iput-object v7, p0, Lcp;->g:Ljava/lang/StringBuilder;

    .line 169
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 171
    goto :goto_0

    .line 172
    :cond_5
    if-gez v5, :cond_7

    .line 174
    const-string v0, "readBytes <0"

    .line 176
    new-array v4, v2, [Ljava/lang/Object;

    .line 178
    invoke-static {v1, v0, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 184
    invoke-virtual {p0}, Lcp;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-array v3, v3, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    aput-object v0, v3, v2

    .line 197
    const-string v0, "handleInput :{?}"

    .line 199
    invoke-static {v1, v0, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    if-eqz p1, :cond_6

    .line 204
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 207
    :cond_6
    invoke-virtual {p0}, Lcp;->l()V

    .line 210
    :cond_7
    :goto_2
    return-void
.end method

.method public final k()V
    .locals 6

    .line 1
    const-string v0, "HeartbeatClient"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    const-string v3, "start HeartbeatClient init"

    .line 11
    invoke-static {v0, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const-wide/16 v2, 0x3e8

    .line 16
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 19
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Lcp;->d:Ljava/nio/channels/Selector;

    .line 25
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 31
    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 34
    iget-object v2, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 36
    iget-object v3, p0, Lcp;->d:Ljava/nio/channels/Selector;

    .line 38
    const/16 v4, 0x8

    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 43
    iget-object v2, p0, Lcp;->e:Ljava/nio/channels/SocketChannel;

    .line 45
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 47
    iget-object v4, p0, Lcp;->f:Ljava/lang/String;

    .line 49
    const/16 v5, 0x22c0

    .line 51
    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 57
    const-string v2, "HeartbeatClient inited"

    .line 59
    new-array v3, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {v0, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    const/4 v3, 0x1

    .line 67
    new-array v3, v3, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    aput-object v2, v3, v1

    .line 75
    const-string v1, "HeartbeatClient error :{?}"

    .line 77
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcp;->l()V

    .line 83
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcp;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-boolean v1, p0, Lcp;->h:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Lnj;->a()V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcp;->e()V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcp;->h()V

    .line 25
    invoke-virtual {p0}, Lcp;->k()V

    .line 28
    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "aabbaa"

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v2, v0, [Ljava/lang/Object;

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 15
    const-string v3, "HeartbeatClient"

    .line 17
    const-string v4, "receive msg = {?}"

    .line 19
    invoke-static {v3, v4, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const-string v2, "MSG_HANDSHAKE_RESPONSE"

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    iget-boolean v3, p0, Lcp;->i:Z

    .line 32
    if-nez v3, :cond_9

    .line 34
    iput-boolean v0, p0, Lcp;->i:Z

    .line 36
    invoke-virtual {p0, v0}, Lcp;->p(I)V

    .line 39
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 45
    iget-object v1, p0, Lcp;->f:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lym0;->d(Ljava/lang/String;)Lym0;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v0, v1, p1}, Lnj;->n(Ljava/lang/String;Lym0;)V

    .line 54
    goto/16 :goto_0

    .line 56
    :cond_0
    const-string v0, "MSG_CONNECT_REQUEST"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 70
    invoke-static {p1}, Lym0;->e(Ljava/lang/String;)Lym0;

    .line 73
    move-result-object p1

    .line 74
    invoke-interface {v0, p1}, Lnj;->p(Lym0;)V

    .line 77
    goto/16 :goto_0

    .line 79
    :cond_1
    const-string v0, "MSG_CONNECT_RESPONSE"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result p1

    .line 101
    invoke-interface {v0, p1}, Lnj;->i(I)V

    .line 104
    goto/16 :goto_0

    .line 106
    :cond_2
    const-string v0, "MSG_UNBIND_REQUEST"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 120
    invoke-static {p1}, Lym0;->e(Ljava/lang/String;)Lym0;

    .line 123
    move-result-object p1

    .line 124
    invoke-interface {v0, p1}, Lnj;->r(Lym0;)V

    .line 127
    goto/16 :goto_0

    .line 129
    :cond_3
    const-string v0, "MSG_UNBIND_RESPONSE"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 143
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    move-result p1

    .line 151
    invoke-interface {v0, p1}, Lnj;->h(Z)V

    .line 154
    goto :goto_0

    .line 155
    :cond_4
    const-string v0, "MSG_NET_STATE_REQUEST"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_5

    .line 163
    iget-object p1, p0, Lcp;->c:Lnj;

    .line 165
    invoke-interface {p1}, Lnj;->q()V

    .line 168
    goto :goto_0

    .line 169
    :cond_5
    const-string v0, "MSG_NET_STATE_RESPONSE"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_6

    .line 177
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    move-result p1

    .line 191
    invoke-interface {v0, p1}, Lnj;->f(Z)V

    .line 194
    goto :goto_0

    .line 195
    :cond_6
    const-string v0, "MSG_HANDSHAKE"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_7

    .line 203
    const/4 p1, 0x2

    .line 204
    invoke-virtual {p0, p1}, Lcp;->p(I)V

    .line 207
    goto :goto_0

    .line 208
    :cond_7
    const-string v0, "MSG_SEND_ONE_KEY_NAVI_MESSAGE_REQUEST"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_8

    .line 216
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 219
    move-result-object p1

    .line 220
    iget-object v0, p0, Lcp;->c:Lnj;

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 229
    move-result p1

    .line 230
    invoke-interface {v0, p1}, Lnj;->c(I)V

    .line 233
    goto :goto_0

    .line 234
    :cond_8
    const-string v0, "MSG_SEND_ONE_KEY_NAVI_MESSAGE_RESPONSE"

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_9

    .line 242
    iget-object p1, p0, Lcp;->c:Lnj;

    .line 244
    invoke-interface {p1}, Lnj;->k()V

    .line 247
    :cond_9
    :goto_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcp;->b:Landroid/os/Handler;

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
    iget-object p1, p0, Lcp;->b:Landroid/os/Handler;

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcp;->k:I

    .line 4
    return-void
.end method

.method public p(I)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0, p1, v0}, Lcp;->q(ILjava/lang/String;)V

    .line 6
    return-void
.end method

.method public q(ILjava/lang/String;)V
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
    iget-object p2, p0, Lcp;->j:Lym0;

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
    iget-object p2, p0, Lcp;->j:Lym0;

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
    iget-object p2, p0, Lcp;->j:Lym0;

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
    iget-object p2, p0, Lcp;->j:Lym0;

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
    invoke-virtual {p0, p1}, Lcp;->r(Ljava/lang/String;)V

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

.method public r(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "HeartbeatClient"

    .line 9
    const-string v2, "writeMessage:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcp;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    new-instance v1, Lcp$b;

    .line 18
    invoke-direct {v1, p0, p1}, Lcp$b;-><init>(Lcp;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    const-string v0, "HeartbeatClient"

    .line 3
    invoke-virtual {p0}, Lcp;->o()V

    .line 6
    invoke-virtual {p0}, Lcp;->k()V

    .line 9
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcp;->h:Z

    .line 11
    if-eqz v1, :cond_2

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcp;->d:Ljava/nio/channels/Selector;

    .line 16
    const-wide/16 v3, 0x7530

    .line 18
    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    .line 21
    iget-object v2, p0, Lcp;->d:Ljava/nio/channels/Selector;

    .line 23
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 33
    const-string v3, "read time out"

    .line 35
    new-array v4, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v0, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v3, p0, Lcp;->c:Lnj;

    .line 42
    invoke-interface {v3}, Lnj;->a()V

    .line 45
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v2

    .line 49
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 64
    invoke-virtual {p0, v3}, Lcp;->j(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    const/4 v3, 0x1

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    aput-object v2, v3, v1

    .line 78
    const-string v1, "HeartbeatClient error :{?}"

    .line 80
    invoke-static {v0, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcp;->l()V

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    return-void
.end method
