.class public Lbp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbp$b;,
        Lbp$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/Thread;

.field public f:Ljava/lang/Thread;

.field public g:Lx70;

.field public h:Ljava/net/ServerSocket;

.field public volatile i:Z

.field public j:Ljava/net/Socket;

.field public k:Lxe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "10.255.255.101"

    .line 6
    iput-object v0, p0, Lbp;->a:Ljava/lang/String;

    .line 8
    const-string v0, "10.255.255.106"

    .line 10
    iput-object v0, p0, Lbp;->b:Ljava/lang/String;

    .line 12
    const/16 v0, 0x404

    .line 14
    iput v0, p0, Lbp;->c:I

    .line 16
    const/16 v0, 0x2342

    .line 18
    iput v0, p0, Lbp;->d:I

    .line 20
    new-instance v0, Lx70;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lx70;-><init>(Landroid/os/Looper;)V

    .line 29
    iput-object v0, p0, Lbp;->g:Lx70;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lbp;->h:Ljava/net/ServerSocket;

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lbp;->i:Z

    .line 37
    return-void
.end method

.method public static synthetic a(Lbp;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lbp;->h:Ljava/net/ServerSocket;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lbp;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iput-object p1, p0, Lbp;->h:Ljava/net/ServerSocket;

    .line 3
    return-object p1
.end method

.method public static synthetic c(Lbp;)I
    .locals 0

    .line 1
    iget p0, p0, Lbp;->c:I

    .line 3
    return p0
.end method

.method public static synthetic d(Lbp;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lbp;->j:Ljava/net/Socket;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lbp;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 1
    iput-object p1, p0, Lbp;->j:Ljava/net/Socket;

    .line 3
    return-object p1
.end method

.method public static synthetic f(Lbp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lbp;->i:Z

    .line 3
    return p0
.end method

.method public static synthetic g(Lbp;[BLjava/net/Socket;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lbp;->i([BLjava/net/Socket;)V

    .line 4
    return-void
.end method

.method public static synthetic h(Lbp;)Lx70;
    .locals 0

    .line 1
    iget-object p0, p0, Lbp;->g:Lx70;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final i([BLjava/net/Socket;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 3
    sget-boolean v0, Lxj0;->a:Z

    .line 5
    const-string v1, "HeartBeatServer.rzcRecData"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "dealReceiveData"

    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lbp;->j([B)I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, p1}, Lbp;->k([B)I

    .line 24
    move-result p1

    .line 25
    sget-boolean v3, Lxj0;->a:Z

    .line 27
    const/4 v4, 0x2

    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v3, :cond_1

    .line 31
    new-array v3, v4, [Ljava/lang/Object;

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v6

    .line 37
    aput-object v6, v3, v2

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v6

    .line 43
    aput-object v6, v3, v5

    .line 45
    const-string v6, "dealReceiveData functionId = {?}, order = {?}"

    .line 47
    invoke-static {v1, v6, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_1
    const-string v1, "HeartBeatServer.rzc"

    .line 52
    packed-switch v0, :pswitch_data_0

    .line 55
    sget-boolean p1, Lxj0;->a:Z

    .line 57
    if-eqz p1, :cond_5

    .line 59
    const-string p1, "\u4e0d\u5904\u7406"

    .line 61
    new-array p2, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    goto/16 :goto_0

    .line 68
    :pswitch_0
    sget-boolean p1, Lxj0;->a:Z

    .line 70
    if-eqz p1, :cond_5

    .line 72
    const-string p1, "\u8c03\u7528\u53d1\u9001\u5fc3\u8df3\u5305"

    .line 74
    new-array p2, v2, [Ljava/lang/Object;

    .line 76
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    goto/16 :goto_0

    .line 81
    :pswitch_1
    const/16 v0, 0x9

    .line 83
    if-nez p1, :cond_2

    .line 85
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 87
    if-eqz p1, :cond_5

    .line 89
    invoke-virtual {p1, p2}, Lx70;->a(Ljava/net/Socket;)V

    .line 92
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    sget-boolean p1, Lxj0;->a:Z

    .line 99
    if-eqz p1, :cond_5

    .line 101
    const-string p1, "KeepAliveWatchDog send package 302 \u6253\u5f00\u8def\u53e3\u5927\u56fe"

    .line 103
    new-array p2, v2, [Ljava/lang/Object;

    .line 105
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    goto/16 :goto_0

    .line 110
    :cond_2
    if-ne p1, v5, :cond_5

    .line 112
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 114
    if-eqz p1, :cond_5

    .line 116
    invoke-virtual {p1, p2}, Lx70;->a(Ljava/net/Socket;)V

    .line 119
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    sget-boolean p1, Lxj0;->a:Z

    .line 126
    if-eqz p1, :cond_5

    .line 128
    const-string p1, "KeepAliveWatchDog send package 302 \u5173\u95ed\u8def\u53e3\u5927\u56fe"

    .line 130
    new-array p2, v2, [Ljava/lang/Object;

    .line 132
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    goto :goto_0

    .line 136
    :pswitch_2
    const/4 v0, 0x6

    .line 137
    if-nez p1, :cond_4

    .line 139
    iget-object p1, p0, Lbp;->k:Lxe;

    .line 141
    invoke-interface {p1}, Lxe;->d()Z

    .line 144
    move-result p1

    .line 145
    iget-object v3, p0, Lbp;->g:Lx70;

    .line 147
    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {v3, p2}, Lx70;->a(Ljava/net/Socket;)V

    .line 152
    if-eqz p1, :cond_3

    .line 154
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 161
    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    sget-boolean p1, Lxj0;->a:Z

    .line 166
    if-eqz p1, :cond_5

    .line 168
    const-string p1, "KeepAliveWatchDog send package 301 \u6253\u5f00\u89c6\u9891\u6d41\u8fdb\u5165\u5168\u666f\u5730\u56fe\u6216\u8005\u80cc\u666f\u5730\u56fe"

    .line 170
    new-array p2, v2, [Ljava/lang/Object;

    .line 172
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    goto :goto_0

    .line 176
    :cond_3
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 178
    const/4 p2, 0x5

    .line 179
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    sget-boolean p1, Lxj0;->a:Z

    .line 184
    if-eqz p1, :cond_5

    .line 186
    const-string p1, "KeepAliveWatchDog send package 301 MSG_ID_RESPONSE_BACKGROUND_MAP_ERROR"

    .line 188
    new-array p2, v2, [Ljava/lang/Object;

    .line 190
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    goto :goto_0

    .line 194
    :cond_4
    if-ne p1, v5, :cond_5

    .line 196
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 198
    if-eqz p1, :cond_5

    .line 200
    invoke-virtual {p1, p2}, Lx70;->a(Ljava/net/Socket;)V

    .line 203
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-object p1, p0, Lbp;->g:Lx70;

    .line 210
    const/4 p2, 0x3

    .line 211
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    sget-boolean p1, Lxj0;->a:Z

    .line 216
    if-eqz p1, :cond_5

    .line 218
    const-string p1, "KeepAliveWatchDog send package 301 \u5173\u95ed\u89c6\u9891\u6d41"

    .line 220
    new-array p2, v2, [Ljava/lang/Object;

    .line 222
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_5
    :goto_0
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j([B)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 4
    const/4 v1, 0x4

    .line 5
    aget-byte v1, p1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-byte v1, v0, v2

    .line 10
    const/4 v1, 0x5

    .line 11
    aget-byte p1, p1, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    aput-byte p1, v0, v1

    .line 16
    invoke-virtual {p0, v0}, Lbp;->l([B)I

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final k([B)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 4
    const/16 v1, 0x17

    .line 6
    aget-byte p1, p1, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-byte p1, v0, v1

    .line 11
    invoke-virtual {p0, v0}, Lbp;->l([B)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final l([B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v0, v2, :cond_0

    .line 6
    shl-int/lit8 v1, v1, 0x8

    .line 8
    aget-byte v2, p1, v0

    .line 10
    and-int/lit16 v2, v2, 0xff

    .line 12
    or-int/2addr v1, v2

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v1
.end method

.method public declared-synchronized m(Lxe;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lbp;->k:Lxe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public n()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lbp;->i:Z

    .line 3
    const-string v1, "HeartBeatServer.rzc"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 8
    sget-boolean v0, Lxj0;->a:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string v0, "running stop"

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lbp;->g:Lx70;

    .line 21
    if-eqz v0, :cond_1

    .line 23
    iget-object v3, p0, Lbp;->j:Ljava/net/Socket;

    .line 25
    invoke-virtual {v0, v3}, Lx70;->a(Ljava/net/Socket;)V

    .line 28
    iget-object v0, p0, Lbp;->g:Lx70;

    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    sget-boolean v0, Lxj0;->a:Z

    .line 36
    if-eqz v0, :cond_1

    .line 38
    const-string v0, "KeepAliveWatchDog send package"

    .line 40
    new-array v3, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_1
    iput-boolean v2, p0, Lbp;->i:Z

    .line 47
    :cond_2
    iget-object v0, p0, Lbp;->j:Ljava/net/Socket;

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v0, :cond_4

    .line 52
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_3
    :goto_0
    iput-object v3, p0, Lbp;->j:Ljava/net/Socket;

    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    sget-boolean v4, Lxj0;->a:Z

    .line 66
    if-eqz v4, :cond_3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v5, "stop e = "

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    new-array v4, v2, [Ljava/lang/Object;

    .line 91
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    goto :goto_0

    .line 95
    :goto_1
    iput-object v3, p0, Lbp;->j:Ljava/net/Socket;

    .line 97
    throw v0

    .line 98
    :cond_4
    :goto_2
    iget-object v0, p0, Lbp;->h:Ljava/net/ServerSocket;

    .line 100
    if-eqz v0, :cond_6

    .line 102
    :try_start_2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :cond_5
    :goto_3
    iput-object v3, p0, Lbp;->h:Ljava/net/ServerSocket;

    .line 107
    goto :goto_5

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    goto :goto_4

    .line 110
    :catch_1
    move-exception v0

    .line 111
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    sget-boolean v4, Lxj0;->a:Z

    .line 116
    if-eqz v4, :cond_5

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v5, "mServer stop e = "

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    new-array v4, v2, [Ljava/lang/Object;

    .line 141
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    goto :goto_3

    .line 145
    :goto_4
    iput-object v3, p0, Lbp;->h:Ljava/net/ServerSocket;

    .line 147
    throw v0

    .line 148
    :cond_6
    :goto_5
    iget-object v0, p0, Lbp;->g:Lx70;

    .line 150
    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    iput-object v3, p0, Lbp;->g:Lx70;

    .line 157
    :cond_7
    sget-boolean v0, Lxj0;->a:Z

    .line 159
    if-eqz v0, :cond_8

    .line 161
    const-string v0, "\u5173\u95ed\u5ba2\u6237\u7aef"

    .line 163
    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_8
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbp;->i:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lbp;->i:Z

    .line 9
    new-instance v0, Ljava/lang/Thread;

    .line 11
    new-instance v1, Lbp$b;

    .line 13
    invoke-direct {v1, p0}, Lbp$b;-><init>(Lbp;)V

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    iput-object v0, p0, Lbp;->f:Ljava/lang/Thread;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    new-instance v0, Ljava/lang/Thread;

    .line 26
    new-instance v1, Lbp$a;

    .line 28
    invoke-direct {v1, p0}, Lbp$a;-><init>(Lbp;)V

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    iput-object v0, p0, Lbp;->e:Ljava/lang/Thread;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    return-void
.end method

.method public p()V
    .locals 0

    .line 1
    return-void
.end method
