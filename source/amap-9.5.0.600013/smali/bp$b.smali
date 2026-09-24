.class public Lbp$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lbp;


# direct methods
.method public constructor <init>(Lbp;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbp$b;->b:Lbp;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0xbb8

    .line 8
    iput-wide v0, p0, Lbp$b;->a:J

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const-string v1, "HeartBeatServer.rzc"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "ReceiveWatchDog start ..."

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :try_start_0
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 18
    invoke-static {v3}, Lbp;->a(Lbp;)Ljava/net/ServerSocket;

    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_1

    .line 24
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 26
    new-instance v4, Ljava/net/ServerSocket;

    .line 28
    iget-object v5, p0, Lbp$b;->b:Lbp;

    .line 30
    invoke-static {v5}, Lbp;->c(Lbp;)I

    .line 33
    move-result v5

    .line 34
    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    .line 37
    invoke-static {v3, v4}, Lbp;->b(Lbp;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 40
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 42
    invoke-static {v3}, Lbp;->a(Lbp;)Ljava/net/ServerSocket;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 49
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 51
    invoke-static {v3}, Lbp;->a(Lbp;)Ljava/net/ServerSocket;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 58
    move-result-object v4

    .line 59
    invoke-static {v3, v4}, Lbp;->e(Lbp;Ljava/net/Socket;)Ljava/net/Socket;

    .line 62
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 64
    invoke-static {v3}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 71
    :cond_1
    sget-boolean v3, Lxj0;->a:Z

    .line 73
    const/4 v4, 0x2

    .line 74
    if-eqz v3, :cond_2

    .line 76
    const-string v3, "ReceiveWatchDog inetAddress = {?}, keepAlive = {?}, localAddress = {?}, localPort = {?}, port = {?}"

    .line 78
    const/4 v5, 0x5

    .line 79
    new-array v5, v5, [Ljava/lang/Object;

    .line 81
    iget-object v6, p0, Lbp$b;->b:Lbp;

    .line 83
    invoke-static {v6}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 90
    move-result-object v6

    .line 91
    aput-object v6, v5, v2

    .line 93
    iget-object v6, p0, Lbp$b;->b:Lbp;

    .line 95
    invoke-static {v6}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6}, Ljava/net/Socket;->getKeepAlive()Z

    .line 102
    move-result v6

    .line 103
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object v6

    .line 107
    aput-object v6, v5, v0

    .line 109
    iget-object v6, p0, Lbp$b;->b:Lbp;

    .line 111
    invoke-static {v6}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v6}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 118
    move-result-object v6

    .line 119
    aput-object v6, v5, v4

    .line 121
    iget-object v6, p0, Lbp$b;->b:Lbp;

    .line 123
    invoke-static {v6}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v6}, Ljava/net/Socket;->getLocalPort()I

    .line 130
    move-result v6

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v6

    .line 135
    const/4 v7, 0x3

    .line 136
    aput-object v6, v5, v7

    .line 138
    iget-object v6, p0, Lbp$b;->b:Lbp;

    .line 140
    invoke-static {v6}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    .line 147
    move-result v6

    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v6

    .line 152
    const/4 v7, 0x4

    .line 153
    aput-object v6, v5, v7

    .line 155
    invoke-static {v1, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_2
    :goto_0
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 160
    invoke-static {v3}, Lbp;->f(Lbp;)Z

    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_c

    .line 166
    sget-boolean v3, Lxj0;->a:Z

    .line 168
    if-eqz v3, :cond_3

    .line 170
    const-string v3, "ReceiveWatchDog running ..."

    .line 172
    new-array v5, v2, [Ljava/lang/Object;

    .line 174
    invoke-static {v1, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_3
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 179
    invoke-static {v3}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 186
    move-result-object v3

    .line 187
    const/16 v5, 0x400

    .line 189
    new-array v6, v5, [B

    .line 191
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    .line 194
    move-result v7

    .line 195
    if-lez v7, :cond_9

    .line 197
    :cond_4
    :goto_1
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    .line 200
    move-result v7

    .line 201
    const/4 v8, -0x1

    .line 202
    if-eq v8, v7, :cond_9

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    const/4 v9, 0x0

    .line 210
    :goto_2
    if-ge v9, v5, :cond_5

    .line 212
    aget-byte v10, v6, v9

    .line 214
    invoke-static {v10}, Le80;->a(B)Ljava/lang/String;

    .line 217
    move-result-object v10

    .line 218
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v10, " "

    .line 223
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v9, v9, 0x1

    .line 228
    goto :goto_2

    .line 229
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v8

    .line 233
    sget-boolean v9, Lxj0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    const-string v10, "HeartBeatServer.rzcRecData"

    .line 237
    if-eqz v9, :cond_6

    .line 239
    :try_start_1
    const-string v9, "\u6536\u5230\u5ba2\u6237\u7aef\u7684\u6570\u636e-----------------------------len = {?} data = {?} "

    .line 241
    new-array v11, v4, [Ljava/lang/Object;

    .line 243
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    move-result-object v12

    .line 247
    aput-object v12, v11, v2

    .line 249
    aput-object v8, v11, v0

    .line 251
    invoke-static {v10, v9, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_6
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 257
    move-result-object v8

    .line 258
    sget-boolean v9, Lxj0;->a:Z

    .line 260
    if-eqz v9, :cond_7

    .line 262
    const-string v9, "HeartBeatServer.rzcRecString"

    .line 264
    const-string v11, "\u6536\u5230\u5ba2\u6237\u7aef\u7684\u6570\u636e-----------------------------len = {?} bufferString = {?} "

    .line 266
    new-array v12, v4, [Ljava/lang/Object;

    .line 268
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    move-result-object v13

    .line 272
    aput-object v13, v12, v2

    .line 274
    aput-object v8, v12, v0

    .line 276
    invoke-static {v9, v11, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_7
    const/16 v8, 0x18

    .line 281
    if-ne v7, v8, :cond_8

    .line 283
    iget-object v7, p0, Lbp$b;->b:Lbp;

    .line 285
    invoke-static {v7}, Lbp;->d(Lbp;)Ljava/net/Socket;

    .line 288
    move-result-object v8

    .line 289
    invoke-static {v7, v6, v8}, Lbp;->g(Lbp;[BLjava/net/Socket;)V

    .line 292
    goto :goto_1

    .line 293
    :cond_8
    sget-boolean v7, Lxj0;->a:Z

    .line 295
    if-eqz v7, :cond_4

    .line 297
    const-string v7, "len != 24  "

    .line 299
    new-array v8, v2, [Ljava/lang/Object;

    .line 301
    invoke-static {v10, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    goto :goto_1

    .line 305
    :cond_9
    :try_start_2
    iget-wide v5, p0, Lbp$b;->a:J

    .line 307
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v3

    .line 313
    :try_start_3
    sget-boolean v5, Lxj0;->a:Z

    .line 315
    if-eqz v5, :cond_a

    .line 317
    const-string v5, "ReceiveWatchDog InterruptedException e = {?}"

    .line 319
    new-array v6, v0, [Ljava/lang/Object;

    .line 321
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 324
    move-result-object v7

    .line 325
    aput-object v7, v6, v2

    .line 327
    invoke-static {v1, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    iget-object v3, p0, Lbp$b;->b:Lbp;

    .line 335
    invoke-virtual {v3}, Lbp;->p()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    goto/16 :goto_0

    .line 340
    :catch_1
    move-exception v3

    .line 341
    sget-boolean v4, Lxj0;->a:Z

    .line 343
    if-eqz v4, :cond_b

    .line 345
    new-array v0, v0, [Ljava/lang/Object;

    .line 347
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 350
    move-result-object v4

    .line 351
    aput-object v4, v0, v2

    .line 353
    const-string v2, "ReceiveWatchDog Exception = {?}"

    .line 355
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    iget-object v0, p0, Lbp$b;->b:Lbp;

    .line 363
    invoke-virtual {v0}, Lbp;->p()V

    .line 366
    :cond_c
    return-void
.end method
