.class public Lxc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "xc"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Z

.field public c:Loj;

.field public d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lxc;->d:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lxc;->a:Landroid/os/Handler;

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lxc;->b:Z

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxc;->b:Z

    .line 4
    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothSocket;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-eqz v1, :cond_1

    .line 12
    if-eqz p1, :cond_1

    .line 14
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lxc;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    invoke-static {v2, v2, v2}, Lnw;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v1, p1, v2}, Lxc;->f(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z

    .line 29
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    if-nez v0, :cond_1

    .line 32
    :catch_0
    :cond_1
    return v0
.end method

.method public c(Landroid/bluetooth/BluetoothSocket;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-eqz v1, :cond_1

    .line 12
    if-eqz p1, :cond_1

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_1
    invoke-static {v2, v2, v2}, Lnw;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v1, p1, v2}, Lxc;->f(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 25
    return v0

    .line 26
    :cond_0
    invoke-virtual {p0, v1, p1}, Lxc;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 29
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    if-nez v0, :cond_1

    .line 32
    :catch_0
    :cond_1
    return v0
.end method

.method public d()Loj;
    .locals 2

    .line 1
    iget-object v0, p0, Lxc;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lxc;->c:Loj;

    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final e(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    :goto_0
    iget-boolean v3, v1, Lxc;->b:Z

    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_8

    .line 12
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    .line 15
    move-result v5

    .line 16
    if-lez v5, :cond_7

    .line 18
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 20
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    const/16 v6, 0x16

    .line 25
    new-array v7, v6, [B

    .line 27
    const/16 v8, 0x10

    .line 29
    new-array v9, v8, [B

    .line 31
    const/4 v10, 0x1

    .line 32
    const-wide/16 v11, -0x1

    .line 34
    const/4 v13, 0x1

    .line 35
    const/4 v14, 0x0

    .line 36
    :goto_1
    iget-boolean v15, v1, Lxc;->b:Z

    .line 38
    const-wide/16 v16, 0x0

    .line 40
    if-nez v15, :cond_3

    .line 42
    if-eqz v13, :cond_1

    .line 44
    new-array v15, v10, [B

    .line 46
    invoke-virtual {v0, v15, v4, v10}, Ljava/io/InputStream;->read([BII)I

    .line 49
    add-int/lit8 v3, v14, 0x1

    .line 51
    aget-byte v15, v15, v4

    .line 53
    aput-byte v15, v7, v14

    .line 55
    if-ne v3, v6, :cond_0

    .line 57
    aget-byte v14, v7, v4

    .line 59
    if-ne v14, v8, :cond_3

    .line 61
    aget-byte v14, v7, v10

    .line 63
    const/16 v15, 0x55

    .line 65
    if-ne v14, v15, :cond_3

    .line 67
    const/4 v9, 0x6

    .line 68
    const/4 v11, 0x2

    .line 69
    invoke-static {v7, v11, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 72
    move-result-object v12

    .line 73
    invoke-static {v12}, Lmd;->a([B)I

    .line 76
    move-result v11

    .line 77
    int-to-long v11, v11

    .line 78
    invoke-static {v7, v9, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 81
    move-result-object v9

    .line 82
    const/4 v13, 0x0

    .line 83
    :cond_0
    move v14, v3

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/16 v3, 0xffc

    .line 87
    new-array v3, v3, [B

    .line 89
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 92
    move-result v15

    .line 93
    invoke-virtual {v5, v3, v4, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 96
    move-object/from16 v18, v7

    .line 98
    int-to-long v6, v15

    .line 99
    sub-long/2addr v11, v6

    .line 100
    cmp-long v6, v11, v16

    .line 102
    if-gtz v6, :cond_2

    .line 104
    const/4 v13, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    move-object/from16 v7, v18

    .line 108
    const/16 v6, 0x16

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    :goto_2
    iget-boolean v3, v1, Lxc;->b:Z

    .line 113
    if-eqz v3, :cond_4

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    cmp-long v3, v11, v16

    .line 118
    if-nez v3, :cond_7

    .line 120
    if-eqz v13, :cond_7

    .line 122
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 125
    move-result-object v3

    .line 126
    invoke-static {v3, v9}, Lmd;->b([B[B)Z

    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_6

    .line 132
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 134
    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 137
    invoke-static {v0}, Lnw;->b(Ljava/io/InputStream;)Lgw;

    .line 140
    move-result-object v0

    .line 141
    iget-object v3, v1, Lxc;->d:Ljava/lang/Object;

    .line 143
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :try_start_1
    iget-object v5, v1, Lxc;->c:Loj;

    .line 146
    if-nez v5, :cond_5

    .line 148
    new-instance v5, Loj;

    .line 150
    invoke-direct {v5}, Loj;-><init>()V

    .line 153
    iput-object v5, v1, Lxc;->c:Loj;

    .line 155
    :cond_5
    iget-object v5, v1, Lxc;->c:Loj;

    .line 157
    iget-object v6, v0, Lgw;->i:Ljava/lang/String;

    .line 159
    iput-object v6, v5, Loj;->a:Ljava/lang/String;

    .line 161
    iget-object v6, v0, Lgw;->j:Ljava/lang/String;

    .line 163
    iput-object v6, v5, Loj;->b:Ljava/lang/String;

    .line 165
    iget-object v6, v0, Lgw;->k:Ljava/lang/String;

    .line 167
    iput-object v6, v5, Loj;->f:Ljava/lang/String;

    .line 169
    iget-object v6, v0, Lgw;->l:Ljava/lang/String;

    .line 171
    iput-object v6, v5, Loj;->g:Ljava/lang/String;

    .line 173
    iget-object v0, v0, Lgw;->b:Ljava/lang/String;

    .line 175
    iput-object v0, v5, Loj;->e:Ljava/lang/String;

    .line 177
    const-string v0, "127.0.0.1"

    .line 179
    iput-object v0, v5, Loj;->d:Ljava/lang/String;

    .line 181
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-static {v10}, Lmd;->d(I)[B

    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    const/4 v4, 0x1

    .line 190
    goto :goto_3

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    :try_start_4
    throw v0

    .line 194
    :cond_6
    invoke-static {v4}, Lmd;->d(I)[B

    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 201
    :cond_7
    const-wide/16 v5, 0xa

    .line 203
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 206
    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    iget-object v2, v1, Lxc;->a:Landroid/os/Handler;

    .line 211
    const/4 v3, -0x2

    .line 212
    const/4 v5, -0x1

    .line 213
    const/4 v6, 0x2

    .line 214
    invoke-virtual {v2, v6, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 221
    sget-object v2, Lxc;->e:Ljava/lang/String;

    .line 223
    const-string v3, "Bluetooth handshake, caught an exception while calling read()"

    .line 225
    new-array v5, v4, [Ljava/lang/Object;

    .line 227
    invoke-static {v2, v3, v0, v5}, Ldz;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 230
    :cond_8
    :goto_3
    return v4
.end method

.method public final f(Ljava/io/InputStream;Ljava/io/OutputStream;[B)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 6
    iget-boolean v3, p0, Lxc;->b:Z

    .line 8
    if-nez v3, :cond_2

    .line 10
    const/16 v3, 0x10

    .line 12
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 15
    const/16 v3, 0x55

    .line 17
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 20
    array-length v3, p3

    .line 21
    invoke-static {v3}, Lmd;->d(I)[B

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 28
    invoke-static {p3}, Lmd;->c([B)[B

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 35
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 38
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 41
    const/4 v3, 0x4

    .line 42
    new-array v4, v3, [B

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_1
    iget-boolean v6, p0, Lxc;->b:Z

    .line 47
    if-nez v6, :cond_0

    .line 49
    const/4 v6, 0x1

    .line 50
    new-array v7, v6, [B

    .line 52
    invoke-virtual {p1, v7, v0, v6}, Ljava/io/InputStream;->read([BII)I

    .line 55
    add-int/lit8 v8, v5, 0x1

    .line 57
    aget-byte v7, v7, v0

    .line 59
    aput-byte v7, v4, v5

    .line 61
    if-ne v8, v3, :cond_1

    .line 63
    invoke-static {v4}, Lmd;->a([B)I

    .line 66
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-ne v3, v6, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 70
    const/4 v2, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v5, v8

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    iget-object p1, p0, Lxc;->a:Landroid/os/Handler;

    .line 76
    const/4 p2, -0x2

    .line 77
    const/4 p3, -0x1

    .line 78
    const/4 v0, 0x2

    .line 79
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 86
    :cond_2
    return v2
.end method
