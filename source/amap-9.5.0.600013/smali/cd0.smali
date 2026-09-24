.class public Lcd0;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "cd0"


# instance fields
.field public a:Ljava/net/ServerSocket;

.field public b:Z

.field public c:Landroid/os/Handler;

.field public d:Z

.field public e:I

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcd0;->b:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcd0;->d:Z

    .line 10
    iput v1, p0, Lcd0;->e:I

    .line 12
    iput v0, p0, Lcd0;->f:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    sget-object v2, Lcd0;->g:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, " , ServerReceiveThread init "

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    const-string v2, "hehe"

    .line 37
    invoke-static {v2, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iput-object p2, p0, Lcd0;->c:Landroid/os/Handler;

    .line 42
    new-instance p2, Ljava/net/ServerSocket;

    .line 44
    invoke-direct {p2, p1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 47
    iput-object p2, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/net/InterfaceAddress;

    .line 31
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-eqz v1, :cond_1

    .line 37
    return-object v1

    .line 38
    :catch_0
    :cond_2
    return-object v0
.end method

.method public final b()Ljava/net/InetAddress;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 5
    move-result-object v1

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/net/NetworkInterface;

    .line 18
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 21
    move-result-object v3

    .line 22
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 28
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/net/InetAddress;

    .line 34
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 40
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    const-string v6, "wlan0"

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 52
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    .line 59
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v5, :cond_1

    .line 62
    return-object v4

    .line 63
    :catch_0
    :cond_2
    return-object v0
.end method

.method public interrupt()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcd0;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " , ServerReceiveThread interrupt "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    const-string v3, "hehe"

    .line 25
    invoke-static {v3, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iput-boolean v1, p0, Lcd0;->b:Z

    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcd0;->d:Z

    .line 33
    :try_start_0
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 45
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 54
    return-void
.end method

.method public run()V
    .locals 15

    .line 1
    const-string v0, " , ServerReceiveThread finally"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    sget-object v2, Lcd0;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " , ServerReceiveThread run begin "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    const-string v4, "hehe"

    .line 27
    invoke-static {v4, v1, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :catch_0
    :goto_0
    const/4 v1, 0x0

    .line 31
    const/16 v3, 0xc8

    .line 33
    :try_start_0
    iget-boolean v5, p0, Lcd0;->d:Z

    .line 35
    if-nez v5, :cond_b

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    sget-object v6, Lcd0;->g:Ljava/lang/String;

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v7, " , ServerReceiveThread run begin -->kai shi xun huan --> "

    .line 49
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    new-array v7, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v4, v5, v7}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 61
    :try_start_1
    iget-object v5, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 63
    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 66
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 67
    const/4 v7, 0x1

    .line 68
    :try_start_2
    iput-boolean v7, p0, Lcd0;->b:Z

    .line 70
    iput-boolean v7, p0, Lcd0;->d:Z

    .line 72
    iget-object v8, p0, Lcd0;->c:Landroid/os/Handler;

    .line 74
    invoke-virtual {v8, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_0

    .line 80
    iget-object v8, p0, Lcd0;->c:Landroid/os/Handler;

    .line 82
    invoke-virtual {v8, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    :cond_0
    invoke-virtual {v5, v7}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 88
    const/16 v8, 0x1388

    .line 90
    invoke-virtual {v5, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 93
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 96
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    :try_start_3
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 100
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :try_start_4
    iget v10, p0, Lcd0;->e:I

    .line 103
    if-nez v10, :cond_1

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v11, " , ServerReceiveThread run begin -->kai shi xun huan --> huo qu shu ju"

    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v10

    .line 122
    new-array v11, v2, [Ljava/lang/Object;

    .line 124
    invoke-static {v4, v10, v11}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {v8}, Lnw;->b(Ljava/io/InputStream;)Lgw;

    .line 130
    move-result-object v10

    .line 131
    new-instance v11, Loj;

    .line 133
    invoke-direct {v11}, Loj;-><init>()V

    .line 136
    iget-object v12, v10, Lgw;->i:Ljava/lang/String;

    .line 138
    iput-object v12, v11, Loj;->a:Ljava/lang/String;

    .line 140
    iget-object v12, v10, Lgw;->f:Ljava/lang/String;

    .line 142
    iput-object v12, v11, Loj;->d:Ljava/lang/String;

    .line 144
    iget-object v12, v10, Lgw;->g:Ljava/lang/String;

    .line 146
    iput-object v12, v11, Loj;->c:Ljava/lang/String;

    .line 148
    iget-object v12, v10, Lgw;->b:Ljava/lang/String;

    .line 150
    iput-object v12, v11, Loj;->e:Ljava/lang/String;

    .line 152
    iget-object v13, v10, Lgw;->j:Ljava/lang/String;

    .line 154
    iput-object v13, v11, Loj;->b:Ljava/lang/String;

    .line 156
    iget-object v13, v10, Lgw;->l:Ljava/lang/String;

    .line 158
    iput-object v13, v11, Loj;->g:Ljava/lang/String;

    .line 160
    iget-object v10, v10, Lgw;->k:Ljava/lang/String;

    .line 162
    iput-object v10, v11, Loj;->f:Ljava/lang/String;

    .line 164
    const-string v10, "dis.sdkVersion = {?}"

    .line 166
    new-array v13, v7, [Ljava/lang/Object;

    .line 168
    aput-object v12, v13, v2

    .line 170
    invoke-static {v6, v10, v13}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v10, p0, Lcd0;->c:Landroid/os/Handler;

    .line 175
    const/16 v12, 0xca

    .line 177
    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 180
    move-result-object v10

    .line 181
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 184
    invoke-static {}, Ldx;->c()Ldx;

    .line 187
    move-result-object v10

    .line 188
    invoke-virtual {v10}, Ldx;->f()Lpd0;

    .line 191
    move-result-object v10

    .line 192
    invoke-virtual {v10}, Lpd0;->u()Ljava/lang/String;

    .line 195
    move-result-object v10

    .line 196
    const-string v11, "8721"

    .line 198
    invoke-static {v10, v11, v1}, Lnw;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 201
    move-result-object v10

    .line 202
    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 205
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 208
    new-instance v10, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v11, " , ServerReceiveThread run begin -->kai shi xun huan --> fa song shu ju"

    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v10

    .line 225
    new-array v11, v2, [Ljava/lang/Object;

    .line 227
    invoke-static {v4, v10, v11}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_1
    iput v2, p0, Lcd0;->e:I

    .line 232
    new-instance v10, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v6, " , ServerReceiveThread run --> wei chi socket -->"

    .line 242
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object v6

    .line 249
    new-array v10, v2, [Ljava/lang/Object;

    .line 251
    invoke-static {v4, v6, v10}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    const-string v6, "0"

    .line 256
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 259
    move-result-object v6

    .line 260
    const/4 v10, 0x0

    .line 261
    :cond_2
    :goto_1
    iget-boolean v11, p0, Lcd0;->b:Z

    .line 263
    if-eqz v11, :cond_5

    .line 265
    new-instance v11, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    sget-object v12, Lcd0;->g:Ljava/lang/String;

    .line 272
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v13, " , ServerReceiveThread run --> wei chi socket --> send message"

    .line 277
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v11

    .line 284
    new-array v13, v2, [Ljava/lang/Object;

    .line 286
    invoke-static {v4, v11, v13}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v11, p0, Lcd0;->c:Landroid/os/Handler;

    .line 291
    const-wide/16 v13, 0x7d0

    .line 293
    invoke-virtual {v11, v3, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v13, " , ServerReceiveThread run --> wei chi socket --> write data begin"

    .line 306
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v11

    .line 313
    new-array v13, v2, [Ljava/lang/Object;

    .line 315
    invoke-static {v4, v11, v13}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v9, v6}, Ljava/io/OutputStream;->write([B)V

    .line 321
    new-instance v11, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v13, " , ServerReceiveThread run --> wei chi socket --> write data success begin to flush"

    .line 331
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object v11

    .line 338
    new-array v13, v2, [Ljava/lang/Object;

    .line 340
    invoke-static {v4, v11, v13}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 346
    new-instance v11, Ljava/lang/StringBuilder;

    .line 348
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v13, " , ServerReceiveThread run --> wei chi socket --> write data flush success "

    .line 356
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    move-result-object v11

    .line 363
    new-array v13, v2, [Ljava/lang/Object;

    .line 365
    invoke-static {v4, v11, v13}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v11, p0, Lcd0;->c:Landroid/os/Handler;

    .line 370
    invoke-virtual {v11, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    new-instance v11, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v12, " , ServerReceiveThread run --> wei chi socket --> write data remove message"

    .line 383
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object v11

    .line 390
    new-array v12, v2, [Ljava/lang/Object;

    .line 392
    invoke-static {v4, v11, v12}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    const-wide/16 v11, 0x320

    .line 397
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 400
    goto/16 :goto_1

    .line 402
    :catch_1
    move-exception v11

    .line 403
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    .line 405
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    sget-object v13, Lcd0;->g:Ljava/lang/String;

    .line 410
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v14, " , ServerReceiveThread run --> wei chi socket --> Exception--> "

    .line 415
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    const-string v11, " ,sendTime--> "

    .line 423
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v11

    .line 433
    new-array v12, v2, [Ljava/lang/Object;

    .line 435
    invoke-static {v4, v11, v12}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    const/4 v11, 0x5

    .line 439
    if-ne v10, v11, :cond_4

    .line 441
    iput-boolean v2, p0, Lcd0;->b:Z

    .line 443
    iget v11, p0, Lcd0;->e:I

    .line 445
    if-lt v11, v7, :cond_3

    .line 447
    const/4 v12, 0x1

    .line 448
    goto :goto_2

    .line 449
    :cond_3
    const/4 v12, 0x0

    .line 450
    :goto_2
    iput-boolean v12, p0, Lcd0;->d:Z

    .line 452
    add-int/lit8 v11, v11, 0x1

    .line 454
    iput v11, p0, Lcd0;->e:I

    .line 456
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 458
    invoke-static {}, Ldz;->f()Z

    .line 461
    move-result v11

    .line 462
    if-eqz v11, :cond_2

    .line 464
    invoke-virtual {p0}, Lcd0;->b()Ljava/net/InetAddress;

    .line 467
    move-result-object v11

    .line 468
    new-instance v12, Ljava/lang/StringBuilder;

    .line 470
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v14, " , ServerReceiveThread run --> wei chi socket --> Exception--> address--> "

    .line 478
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    move-result-object v12

    .line 488
    new-array v14, v2, [Ljava/lang/Object;

    .line 490
    invoke-static {v4, v12, v14}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    if-eqz v11, :cond_2

    .line 495
    new-instance v12, Ljava/lang/StringBuilder;

    .line 497
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v13, " , ServerReceiveThread run --> wei chi socket --> Exception--> getBroadcast(address)--> "

    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p0, v11}, Lcd0;->a(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 511
    move-result-object v11

    .line 512
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    move-result-object v11

    .line 519
    new-array v12, v2, [Ljava/lang/Object;

    .line 521
    invoke-static {v4, v11, v12}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    goto/16 :goto_1

    .line 526
    :catch_2
    iput-boolean v2, p0, Lcd0;->b:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 528
    goto/16 :goto_1

    .line 530
    :cond_5
    if-eqz v8, :cond_6

    .line 532
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 535
    goto :goto_3

    .line 536
    :catch_3
    nop

    .line 537
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    .line 539
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 542
    :catch_4
    :cond_7
    :try_start_9
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 545
    goto/16 :goto_0

    .line 547
    :catchall_0
    move-exception v6

    .line 548
    goto :goto_5

    .line 549
    :catchall_1
    move-exception v6

    .line 550
    move-object v9, v1

    .line 551
    goto :goto_5

    .line 552
    :catchall_2
    move-exception v6

    .line 553
    move-object v8, v1

    .line 554
    goto :goto_4

    .line 555
    :catchall_3
    move-exception v6

    .line 556
    move-object v5, v1

    .line 557
    move-object v8, v5

    .line 558
    :goto_4
    move-object v9, v8

    .line 559
    :goto_5
    if-eqz v8, :cond_8

    .line 561
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 564
    goto :goto_6

    .line 565
    :catch_5
    nop

    .line 566
    :cond_8
    :goto_6
    if-eqz v9, :cond_9

    .line 568
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 571
    goto :goto_7

    .line 572
    :catch_6
    nop

    .line 573
    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    .line 575
    :try_start_c
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 578
    :catch_7
    :cond_a
    :try_start_d
    throw v6
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 579
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 581
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    sget-object v6, Lcd0;->g:Ljava/lang/String;

    .line 586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    move-result-object v0

    .line 596
    new-array v2, v2, [Ljava/lang/Object;

    .line 598
    invoke-static {v4, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    :try_start_e
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 603
    if-eqz v0, :cond_c

    .line 605
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 608
    move-result v0

    .line 609
    if-nez v0, :cond_c

    .line 611
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 613
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 616
    iput-object v1, p0, Lcd0;->a:Ljava/net/ServerSocket;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 618
    goto :goto_9

    .line 619
    :catch_8
    move-exception v0

    .line 620
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 623
    :cond_c
    :goto_9
    iget-object v0, p0, Lcd0;->c:Landroid/os/Handler;

    .line 625
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 628
    goto/16 :goto_a

    .line 630
    :catchall_4
    move-exception v5

    .line 631
    goto/16 :goto_b

    .line 633
    :catch_9
    move-exception v5

    .line 634
    :try_start_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 636
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    sget-object v7, Lcd0;->g:Ljava/lang/String;

    .line 641
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v8, " , ServerReceiveThread Exception--> "

    .line 646
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    move-result-object v5

    .line 656
    new-array v6, v2, [Ljava/lang/Object;

    .line 658
    invoke-static {v4, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    .line 663
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    move-result-object v0

    .line 676
    new-array v2, v2, [Ljava/lang/Object;

    .line 678
    invoke-static {v4, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    :try_start_10
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 683
    if-eqz v0, :cond_c

    .line 685
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 688
    move-result v0

    .line 689
    if-nez v0, :cond_c

    .line 691
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 693
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 696
    iput-object v1, p0, Lcd0;->a:Ljava/net/ServerSocket;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 698
    goto :goto_9

    .line 699
    :catch_a
    move-exception v0

    .line 700
    goto :goto_8

    .line 701
    :catch_b
    move-exception v5

    .line 702
    :try_start_11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 704
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    sget-object v7, Lcd0;->g:Ljava/lang/String;

    .line 709
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v8, " , ServerReceiveThread JSONException--> "

    .line 714
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    move-result-object v5

    .line 724
    new-array v6, v2, [Ljava/lang/Object;

    .line 726
    invoke-static {v4, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    .line 731
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    move-result-object v0

    .line 744
    new-array v2, v2, [Ljava/lang/Object;

    .line 746
    invoke-static {v4, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    :try_start_12
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 751
    if-eqz v0, :cond_c

    .line 753
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 756
    move-result v0

    .line 757
    if-nez v0, :cond_c

    .line 759
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 761
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 764
    iput-object v1, p0, Lcd0;->a:Ljava/net/ServerSocket;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 766
    goto/16 :goto_9

    .line 768
    :catch_c
    move-exception v0

    .line 769
    goto/16 :goto_8

    .line 771
    :catch_d
    move-exception v5

    .line 772
    :try_start_13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 774
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    sget-object v7, Lcd0;->g:Ljava/lang/String;

    .line 779
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v8, " , ServerReceiveThread IOException--> "

    .line 784
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    move-result-object v5

    .line 794
    new-array v6, v2, [Ljava/lang/Object;

    .line 796
    invoke-static {v4, v5, v6}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 799
    new-instance v5, Ljava/lang/StringBuilder;

    .line 801
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    move-result-object v0

    .line 814
    new-array v2, v2, [Ljava/lang/Object;

    .line 816
    invoke-static {v4, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    :try_start_14
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 821
    if-eqz v0, :cond_c

    .line 823
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 826
    move-result v0

    .line 827
    if-nez v0, :cond_c

    .line 829
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 831
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 834
    iput-object v1, p0, Lcd0;->a:Ljava/net/ServerSocket;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    .line 836
    goto/16 :goto_9

    .line 838
    :catch_e
    move-exception v0

    .line 839
    goto/16 :goto_8

    .line 841
    :goto_a
    return-void

    .line 842
    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 844
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    sget-object v7, Lcd0;->g:Ljava/lang/String;

    .line 849
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    move-result-object v0

    .line 859
    new-array v2, v2, [Ljava/lang/Object;

    .line 861
    invoke-static {v4, v0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    :try_start_15
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 866
    if-eqz v0, :cond_d

    .line 868
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 871
    move-result v0

    .line 872
    if-nez v0, :cond_d

    .line 874
    iget-object v0, p0, Lcd0;->a:Ljava/net/ServerSocket;

    .line 876
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 879
    iput-object v1, p0, Lcd0;->a:Ljava/net/ServerSocket;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    .line 881
    goto :goto_c

    .line 882
    :catch_f
    move-exception v0

    .line 883
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 886
    :cond_d
    :goto_c
    iget-object v0, p0, Lcd0;->c:Landroid/os/Handler;

    .line 888
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 891
    throw v5
.end method
