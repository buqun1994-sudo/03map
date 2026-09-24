.class Lcom/amap/location/support/network/FileDownLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/network/FileDownLoader;->downLoad(Lcom/amap/location/support/network/HttpRequest;Ljava/lang/String;Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/network/FileDownLoader;

.field final synthetic val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

.field final synthetic val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/network/FileDownLoader;Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;Lcom/amap/location/support/network/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 3
    iput-object p2, p0, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 5
    iput-object p3, p0, Lcom/amap/location/support/network/FileDownLoader$1;->val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

    .line 7
    iput-object p4, p0, Lcom/amap/location/support/network/FileDownLoader$1;->val$path:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, ""

    .line 5
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 7
    instance-of v3, v2, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 12
    move-object v3, v2

    .line 13
    check-cast v3, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v3, v4

    .line 17
    :goto_0
    const/4 v5, 0x0

    .line 18
    :try_start_0
    invoke-static {v2}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->access$000(Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;)Z

    .line 21
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 22
    const/4 v6, 0x3

    .line 23
    if-eqz v2, :cond_2

    .line 25
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 27
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    monitor-enter v2

    .line 32
    :try_start_1
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    if-eqz v3, :cond_1

    .line 41
    const-string v0, ""

    .line 43
    invoke-virtual {v3, v6, v5, v0, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 49
    invoke-virtual {v0, v6, v5, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 52
    :goto_1
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw v0

    .line 56
    :cond_2
    :try_start_3
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

    .line 58
    iput-boolean v5, v2, Lcom/amap/location/support/network/HttpRequest;->returnBytes:Z

    .line 60
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    .line 63
    move-result-object v2

    .line 64
    iget-object v7, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$baseRequest:Lcom/amap/location/support/network/HttpRequest;

    .line 66
    invoke-interface {v2, v7}, Lcom/amap/location/support/network/INetwork;->get(Lcom/amap/location/support/network/HttpRequest;)Lcom/amap/location/support/network/HttpResponse;

    .line 69
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    .line 70
    if-nez v2, :cond_4

    .line 72
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 74
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    monitor-enter v7

    .line 79
    :try_start_4
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    const/4 v0, 0x4

    .line 87
    if-eqz v3, :cond_3

    .line 89
    const-string v2, ""

    .line 91
    invoke-virtual {v3, v0, v5, v2, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 97
    invoke-virtual {v2, v0, v5, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 100
    :goto_2
    return-void

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    throw v0

    .line 104
    :cond_4
    :try_start_6
    iget v7, v2, Lcom/amap/location/support/network/HttpResponse;->statusCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    .line 106
    const/16 v8, 0x194

    .line 108
    if-ne v7, v8, :cond_6

    .line 110
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 112
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 115
    move-result-object v8

    .line 116
    monitor-enter v8

    .line 117
    :try_start_7
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 121
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    const/16 v0, 0x9

    .line 126
    if-eqz v3, :cond_5

    .line 128
    const-string v2, ""

    .line 130
    invoke-virtual {v3, v0, v7, v2, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 136
    invoke-virtual {v2, v0, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 139
    :goto_3
    return-void

    .line 140
    :catchall_2
    move-exception v0

    .line 141
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 142
    throw v0

    .line 143
    :cond_6
    const/16 v8, 0x190

    .line 145
    if-lt v7, v8, :cond_8

    .line 147
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 149
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 152
    move-result-object v8

    .line 153
    monitor-enter v8

    .line 154
    :try_start_9
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 158
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 161
    const/4 v0, 0x6

    .line 162
    if-eqz v3, :cond_7

    .line 164
    const-string v2, ""

    .line 166
    invoke-virtual {v3, v0, v7, v2, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    goto :goto_4

    .line 170
    :cond_7
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 172
    invoke-virtual {v2, v0, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 175
    :goto_4
    return-void

    .line 176
    :catchall_3
    move-exception v0

    .line 177
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 178
    throw v0

    .line 179
    :cond_8
    const/4 v8, 0x1

    .line 180
    if-eqz v3, :cond_a

    .line 182
    :try_start_b
    const-string v0, "ETag"

    .line 184
    invoke-virtual {v2, v0}, Lcom/amap/location/support/network/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    .line 188
    const/16 v11, 0x130

    .line 190
    if-ne v7, v11, :cond_9

    .line 192
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 194
    invoke-static {v2}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 197
    move-result-object v11

    .line 198
    monitor-enter v11

    .line 199
    :try_start_c
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 203
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-virtual {v3, v8, v7, v0, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    return-void

    .line 210
    :catchall_4
    move-exception v0

    .line 211
    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 212
    throw v0

    .line 213
    :cond_9
    :try_start_e
    const-string v11, "Content-Length"

    .line 215
    invoke-virtual {v2, v11}, Lcom/amap/location/support/network/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v11

    .line 219
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 222
    move-result v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 223
    int-to-long v11, v11

    .line 224
    goto :goto_5

    .line 225
    :catch_0
    :cond_a
    const-wide/16 v11, 0x0

    .line 227
    :goto_5
    :try_start_f
    iget-object v2, v2, Lcom/amap/location/support/network/HttpResponse;->stream:Ljava/io/InputStream;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 229
    if-nez v2, :cond_c

    .line 231
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 233
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 236
    move-result-object v13

    .line 237
    monitor-enter v13

    .line 238
    :try_start_10
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    monitor-exit v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 242
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 245
    const/4 v0, 0x5

    .line 246
    if-eqz v3, :cond_b

    .line 248
    const-string v2, ""

    .line 250
    invoke-virtual {v3, v0, v7, v2, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    goto :goto_6

    .line 254
    :cond_b
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 256
    invoke-virtual {v2, v0, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 259
    :goto_6
    return-void

    .line 260
    :catchall_5
    move-exception v0

    .line 261
    :try_start_11
    monitor-exit v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 262
    throw v0

    .line 263
    :cond_c
    const/16 v13, 0xc8

    .line 265
    if-eq v7, v13, :cond_e

    .line 267
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 269
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 272
    move-result-object v13

    .line 273
    monitor-enter v13

    .line 274
    :try_start_12
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 277
    monitor-exit v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 278
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    const/16 v0, 0x8

    .line 283
    if-eqz v3, :cond_d

    .line 285
    const-string v2, ""

    .line 287
    invoke-virtual {v3, v0, v7, v2, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    goto :goto_7

    .line 291
    :cond_d
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 293
    invoke-virtual {v2, v0, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 296
    :goto_7
    return-void

    .line 297
    :catchall_6
    move-exception v0

    .line 298
    :try_start_13
    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 299
    throw v0

    .line 300
    :cond_e
    :try_start_14
    iget-object v13, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 302
    invoke-static {v13}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 305
    move-result-object v13

    .line 306
    monitor-enter v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 307
    :try_start_15
    new-instance v14, Ljava/io/File;

    .line 309
    iget-object v15, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$path:Ljava/lang/String;

    .line 311
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    .line 317
    move-result v15

    .line 318
    if-eqz v15, :cond_10

    .line 320
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 323
    move-result v15

    .line 324
    if-nez v15, :cond_10

    .line 326
    monitor-exit v13
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 327
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 329
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 332
    move-result-object v5

    .line 333
    monitor-enter v5

    .line 334
    :try_start_16
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 338
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 341
    const/4 v0, 0x2

    .line 342
    if-eqz v3, :cond_f

    .line 344
    const-string v2, ""

    .line 346
    invoke-virtual {v3, v0, v7, v2, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    goto :goto_8

    .line 350
    :cond_f
    iget-object v2, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 352
    invoke-virtual {v2, v0, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 355
    :goto_8
    return-void

    .line 356
    :catchall_7
    move-exception v0

    .line 357
    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 358
    throw v0

    .line 359
    :cond_10
    :try_start_18
    new-instance v15, Ljava/io/BufferedOutputStream;

    .line 361
    new-instance v9, Ljava/io/FileOutputStream;

    .line 363
    invoke-direct {v9, v14, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 366
    invoke-direct {v15, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 369
    const/16 v9, 0x1000

    .line 371
    :try_start_19
    new-array v9, v9, [B

    .line 373
    :goto_9
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    .line 376
    move-result v10

    .line 377
    const/4 v8, -0x1

    .line 378
    if-eq v10, v8, :cond_13

    .line 380
    iget-object v8, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 382
    invoke-static {v8}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->access$000(Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;)Z

    .line 385
    move-result v8

    .line 386
    if-eqz v8, :cond_12

    .line 388
    monitor-exit v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 389
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 391
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 394
    move-result-object v5

    .line 395
    monitor-enter v5

    .line 396
    :try_start_1a
    invoke-static {v15}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 399
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 400
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 403
    if-eqz v3, :cond_11

    .line 405
    const-string v0, ""

    .line 407
    invoke-virtual {v3, v6, v7, v0, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    goto :goto_a

    .line 411
    :cond_11
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 413
    invoke-virtual {v0, v6, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 416
    :goto_a
    return-void

    .line 417
    :catchall_8
    move-exception v0

    .line 418
    :try_start_1b
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 419
    throw v0

    .line 420
    :cond_12
    :try_start_1c
    invoke-virtual {v15, v9, v5, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 423
    const/4 v8, 0x1

    .line 424
    goto :goto_9

    .line 425
    :cond_13
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 428
    invoke-virtual {v14}, Ljava/io/File;->length()J

    .line 431
    move-result-wide v8

    .line 432
    const-wide/16 v16, 0x0

    .line 434
    cmp-long v5, v11, v16

    .line 436
    if-lez v5, :cond_15

    .line 438
    cmp-long v5, v8, v11

    .line 440
    if-eqz v5, :cond_15

    .line 442
    monitor-exit v13
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 443
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 445
    invoke-static {v0}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 448
    move-result-object v5

    .line 449
    monitor-enter v5

    .line 450
    :try_start_1d
    invoke-static {v15}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 453
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 454
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 457
    if-eqz v3, :cond_14

    .line 459
    const-string v0, ""

    .line 461
    invoke-virtual {v3, v6, v7, v0, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    goto :goto_b

    .line 465
    :cond_14
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 467
    invoke-virtual {v0, v6, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 470
    :goto_b
    return-void

    .line 471
    :catchall_9
    move-exception v0

    .line 472
    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 473
    throw v0

    .line 474
    :cond_15
    :try_start_1f
    monitor-exit v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 475
    iget-object v5, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 477
    invoke-static {v5}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 480
    move-result-object v5

    .line 481
    monitor-enter v5

    .line 482
    :try_start_20
    invoke-static {v15}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 485
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 486
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 489
    if-eqz v3, :cond_16

    .line 491
    const/4 v2, 0x1

    .line 492
    invoke-virtual {v3, v2, v7, v0, v4}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    goto :goto_f

    .line 496
    :cond_16
    const/4 v2, 0x1

    .line 497
    iget-object v0, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 499
    invoke-virtual {v0, v2, v7, v4}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 502
    goto :goto_f

    .line 503
    :catchall_a
    move-exception v0

    .line 504
    :try_start_21
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 505
    throw v0

    .line 506
    :catchall_b
    move-exception v0

    .line 507
    move-object v4, v15

    .line 508
    goto :goto_c

    .line 509
    :catchall_c
    move-exception v0

    .line 510
    :goto_c
    :try_start_22
    monitor-exit v13
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    .line 511
    :try_start_23
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 512
    :catchall_d
    move-exception v0

    .line 513
    goto :goto_d

    .line 514
    :catchall_e
    move-exception v0

    .line 515
    move-object v2, v4

    .line 516
    :goto_d
    move v5, v7

    .line 517
    goto :goto_e

    .line 518
    :catchall_f
    move-exception v0

    .line 519
    move-object v2, v4

    .line 520
    :goto_e
    iget-object v6, v1, Lcom/amap/location/support/network/FileDownLoader$1;->this$0:Lcom/amap/location/support/network/FileDownLoader;

    .line 522
    invoke-static {v6}, Lcom/amap/location/support/network/FileDownLoader;->access$100(Lcom/amap/location/support/network/FileDownLoader;)Ljava/lang/Object;

    .line 525
    move-result-object v6

    .line 526
    monitor-enter v6

    .line 527
    :try_start_24
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 530
    monitor-exit v6
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    .line 531
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 534
    const/4 v2, 0x7

    .line 535
    if-eqz v3, :cond_17

    .line 537
    const-string v4, ""

    .line 539
    invoke-virtual {v3, v2, v5, v4, v0}, Lcom/amap/location/support/network/FileDownLoader$OSSCompletedCallback;->onFinish(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    goto :goto_f

    .line 543
    :cond_17
    iget-object v3, v1, Lcom/amap/location/support/network/FileDownLoader$1;->val$callback:Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;

    .line 545
    invoke-virtual {v3, v2, v5, v0}, Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;->onFinish(IILjava/lang/Throwable;)V

    .line 548
    :goto_f
    return-void

    .line 549
    :catchall_10
    move-exception v0

    .line 550
    :try_start_25
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    .line 551
    throw v0
.end method
