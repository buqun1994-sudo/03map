.class Lcom/autonavi/common/filedownload/FileDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/common/filedownload/FileDownloader;->downLoad(Lcom/autonavi/common/filedownload/DownloadRequest;Lcom/autonavi/common/filedownload/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/common/filedownload/FileDownloader;

.field final synthetic val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

.field final synthetic val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

.field final synthetic val$outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/common/filedownload/DownloadRequest;Ljava/lang/String;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 3
    iput-object p2, p0, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 5
    iput-object p3, p0, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, ", keep callback:"

    .line 5
    const-string v3, ", support range:"

    .line 7
    const-string v4, ", path: "

    .line 9
    const-string v5, "finish download request, url:"

    .line 11
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 13
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 16
    move-result v0

    .line 17
    const-string v6, "FileDownloader"

    .line 19
    const/4 v7, 0x3

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v2, "download request is canceled, url: "

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 40
    invoke-virtual {v2}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 57
    invoke-virtual {v0}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 63
    iget-object v12, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 65
    iget-object v13, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 67
    invoke-static {v12, v13}, Lcom/autonavi/common/filedownload/FileDownloader;->access$000(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)Ljava/io/File;

    .line 70
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 71
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 74
    move-result v13

    .line 75
    if-eqz v13, :cond_3

    .line 77
    invoke-virtual {v12}, Ljava/io/File;->length()J

    .line 80
    move-result-wide v13

    .line 81
    iget-object v15, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 83
    const-string v9, "RANGE"

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v10, "bytes="

    .line 92
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string v10, "-"

    .line 100
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v15, v9, v8}, Lcom/autonavi/core/network/inter/request/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_4

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v9, "download request, url :"

    .line 123
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v9, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 128
    invoke-virtual {v9}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v9, ", range begin: "

    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v8

    .line 147
    invoke-static {v6, v8}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    const/4 v12, 0x0

    .line 152
    :cond_3
    const-wide/16 v13, 0x0

    .line 154
    :cond_4
    :goto_0
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 156
    invoke-static {v8}, Lcom/autonavi/common/filedownload/FileDownloader;->access$100(Lcom/autonavi/common/filedownload/FileDownloader;)Lcom/autonavi/core/network/inter/NetworkClient;

    .line 159
    move-result-object v8

    .line 160
    iget-object v9, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 162
    const-class v10, Lcom/autonavi/core/network/inter/response/InputStreamResponse;

    .line 164
    invoke-virtual {v8, v9, v10}, Lcom/autonavi/core/network/inter/NetworkClient;->send(Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Lcom/autonavi/core/network/inter/response/InputStreamResponse;

    .line 170
    invoke-virtual {v8}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 173
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 174
    :try_start_2
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 177
    move-result v10

    .line 178
    if-eqz v10, :cond_5

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    const-string v11, "download request, url: "

    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v11, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 192
    invoke-virtual {v11}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 195
    move-result-object v11

    .line 196
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v11, ", statusCode: "

    .line 201
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v10

    .line 211
    invoke-static {v6, v10}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_5
    const/4 v10, -0x3

    .line 215
    if-eqz v0, :cond_8

    .line 217
    sget v11, Lcom/autonavi/core/network/impl/http/HTTP;->RESPONSE_CODE_RANGE_NOT_SATISFIABLE:I

    .line 219
    if-ne v9, v11, :cond_8

    .line 221
    if-eqz v12, :cond_6

    .line 223
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_6

    .line 229
    invoke-virtual {v12}, Ljava/io/File;->length()J

    .line 232
    move-result-wide v13

    .line 233
    const-wide/16 v17, 0x0

    .line 235
    cmp-long v0, v13, v17

    .line 237
    if-lez v0, :cond_6

    .line 239
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 241
    iget-object v10, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 243
    iget-object v11, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 245
    invoke-static {v0, v10, v11, v8}, Lcom/autonavi/common/filedownload/FileDownloader;->access$200(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;Lcom/autonavi/core/network/inter/response/HttpResponse;)V

    .line 248
    goto :goto_1

    .line 249
    :cond_6
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 251
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 253
    iget-object v11, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 255
    invoke-static {v0, v8, v11, v10, v9}, Lcom/autonavi/common/filedownload/FileDownloader;->access$300(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 258
    :goto_1
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_7

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 274
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 294
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 297
    move-result v3

    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 306
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 309
    move-result v2

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v0

    .line 317
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_7
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 322
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 324
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 327
    const/4 v2, 0x0

    .line 328
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    return-void

    .line 335
    :cond_8
    const-wide/16 v17, 0x0

    .line 337
    if-eqz v0, :cond_d

    .line 339
    const/16 v11, 0xce

    .line 341
    if-eq v9, v11, :cond_d

    .line 343
    :try_start_3
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 346
    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 347
    const-string v15, "download request, url:"

    .line 349
    if-eqz v11, :cond_9

    .line 351
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v10, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 361
    invoke-virtual {v10}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 364
    move-result-object v10

    .line 365
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v10, ", server can not support range!"

    .line 370
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v10

    .line 377
    invoke-static {v6, v10}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_9
    if-eqz v12, :cond_d

    .line 382
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 385
    move-result v10

    .line 386
    if-eqz v10, :cond_d

    .line 388
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 391
    move-result v10

    .line 392
    if-nez v10, :cond_c

    .line 394
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 396
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 398
    iget-object v10, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 400
    const/4 v11, -0x1

    .line 401
    invoke-static {v0, v8, v10, v11, v9}, Lcom/autonavi/common/filedownload/FileDownloader;->access$300(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V

    .line 404
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_a

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 420
    invoke-virtual {v8}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 423
    move-result-object v8

    .line 424
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v8, "server can not support range, delete local file fail!"

    .line 429
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    move-result-object v0

    .line 436
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 439
    :cond_a
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_b

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 455
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 458
    move-result-object v5

    .line 459
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 467
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 475
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 478
    move-result v3

    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 487
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 490
    move-result v2

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    move-result-object v0

    .line 498
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_b
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 503
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 505
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 508
    const/4 v2, 0x0

    .line 509
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 512
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 515
    return-void

    .line 516
    :cond_c
    move-wide/from16 v13, v17

    .line 518
    :cond_d
    const/16 v10, 0x130

    .line 520
    if-ne v9, v10, :cond_f

    .line 522
    :try_start_5
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 524
    iget-object v10, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 526
    iget-object v11, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 528
    invoke-static {v0, v10, v11, v8}, Lcom/autonavi/common/filedownload/FileDownloader;->access$200(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 531
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_e

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    .line 539
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 547
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 550
    move-result-object v5

    .line 551
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 559
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 567
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 570
    move-result v3

    .line 571
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 579
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 582
    move-result v2

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    move-result-object v0

    .line 590
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_e
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 595
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 597
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 600
    const/4 v2, 0x0

    .line 601
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 604
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 607
    return-void

    .line 608
    :cond_f
    const/16 v10, 0x190

    .line 610
    if-lt v9, v10, :cond_11

    .line 612
    :try_start_6
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 614
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 616
    iget-object v10, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 618
    const/4 v11, -0x3

    .line 619
    invoke-static {v0, v8, v10, v11, v9}, Lcom/autonavi/common/filedownload/FileDownloader;->access$300(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 622
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 625
    move-result v0

    .line 626
    if-eqz v0, :cond_10

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    .line 630
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 638
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 641
    move-result-object v5

    .line 642
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 650
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 658
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 661
    move-result v3

    .line 662
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 670
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 673
    move-result v2

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    move-result-object v0

    .line 681
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_10
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 686
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 688
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 691
    const/4 v2, 0x0

    .line 692
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 695
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 698
    return-void

    .line 699
    :cond_11
    :try_start_7
    invoke-virtual {v8}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getContentLength()J

    .line 702
    move-result-wide v10

    .line 703
    add-long/2addr v10, v13

    .line 704
    invoke-virtual {v8}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getBodyInputStream()Ljava/io/InputStream;

    .line 707
    move-result-object v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 708
    if-eqz v15, :cond_1e

    .line 710
    :try_start_8
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 712
    invoke-virtual {v7}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 715
    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 716
    if-nez v7, :cond_14

    .line 718
    :try_start_9
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 720
    invoke-interface {v7}, Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;->get()Lcom/autonavi/common/filedownload/DownloadCallback;

    .line 723
    move-result-object v7

    .line 724
    if-eqz v7, :cond_12

    .line 726
    move-wide/from16 v20, v13

    .line 728
    invoke-virtual {v8}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getHeaders()Ljava/util/Map;

    .line 731
    move-result-object v13

    .line 732
    invoke-virtual {v8}, Lcom/autonavi/core/network/inter/response/HttpResponse;->getStatusCode()I

    .line 735
    move-result v14

    .line 736
    invoke-interface {v7, v10, v11, v13, v14}, Lcom/autonavi/common/filedownload/DownloadCallback;->onStart(JLjava/util/Map;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 739
    goto :goto_2

    .line 740
    :cond_12
    const/4 v7, 0x3

    .line 741
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 744
    move-result v0

    .line 745
    if-eqz v0, :cond_13

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    .line 749
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 757
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 760
    move-result-object v5

    .line 761
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 769
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 777
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 780
    move-result v3

    .line 781
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 789
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 792
    move-result v2

    .line 793
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    move-result-object v0

    .line 800
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_13
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 805
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 807
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 810
    const/4 v2, 0x0

    .line 811
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 814
    invoke-static {v2}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 817
    return-void

    .line 818
    :cond_14
    move-wide/from16 v20, v13

    .line 820
    :goto_2
    if-nez v12, :cond_17

    .line 822
    :try_start_a
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 824
    iget-object v13, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 826
    invoke-static {v7, v13}, Lcom/autonavi/common/filedownload/FileDownloader;->access$000(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)Ljava/io/File;

    .line 829
    move-result-object v12

    .line 830
    if-nez v0, :cond_17

    .line 832
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 835
    move-result v7

    .line 836
    if-eqz v7, :cond_17

    .line 838
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 841
    move-result v7

    .line 842
    if-nez v7, :cond_17

    .line 844
    const/4 v7, 0x3

    .line 845
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 848
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 849
    if-eqz v0, :cond_15

    .line 851
    :try_start_b
    const-string v0, "download file,  unsupported range, delete local file fail!"

    .line 853
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 856
    :cond_15
    :try_start_c
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 858
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 860
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 862
    const/4 v10, -0x1

    .line 863
    invoke-static {v0, v7, v8, v10, v9}, Lcom/autonavi/common/filedownload/FileDownloader;->access$300(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 866
    const/4 v7, 0x3

    .line 867
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 870
    move-result v0

    .line 871
    if-eqz v0, :cond_16

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    .line 875
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 883
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 886
    move-result-object v5

    .line 887
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 895
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 903
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 906
    move-result v3

    .line 907
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 915
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 918
    move-result v2

    .line 919
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    move-result-object v0

    .line 926
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_16
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 931
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 933
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 936
    const/4 v7, 0x0

    .line 937
    invoke-static {v7}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 940
    invoke-static {v7}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 943
    return-void

    .line 944
    :catchall_0
    move-exception v0

    .line 945
    const/4 v7, 0x0

    .line 946
    move-object v14, v7

    .line 947
    move-object/from16 v16, v14

    .line 949
    move-object v8, v12

    .line 950
    goto/16 :goto_a

    .line 952
    :cond_17
    const/4 v7, 0x0

    .line 953
    if-eqz v0, :cond_18

    .line 955
    :try_start_d
    new-instance v13, Ljava/io/FileOutputStream;

    .line 957
    iget-object v14, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 959
    const/4 v7, 0x1

    .line 960
    invoke-direct {v13, v14, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 963
    goto :goto_3

    .line 964
    :cond_18
    :try_start_e
    new-instance v13, Ljava/io/FileOutputStream;

    .line 966
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 968
    invoke-direct {v13, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 971
    :goto_3
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 973
    invoke-direct {v7, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 976
    :try_start_f
    new-instance v14, Ljava/io/BufferedOutputStream;

    .line 978
    invoke-direct {v14, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 981
    const/16 v13, 0x1000

    .line 983
    :try_start_10
    new-array v13, v13, [B

    .line 985
    :goto_4
    invoke-virtual {v7, v13}, Ljava/io/InputStream;->read([B)I

    .line 988
    move-result v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 989
    move/from16 v22, v9

    .line 991
    const/4 v9, -0x1

    .line 992
    if-eq v15, v9, :cond_1d

    .line 994
    :try_start_11
    iget-object v9, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 996
    invoke-interface {v9}, Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;->get()Lcom/autonavi/common/filedownload/DownloadCallback;

    .line 999
    move-result-object v9

    .line 1000
    if-eqz v9, :cond_1a

    .line 1002
    move-object/from16 v23, v8

    .line 1004
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1006
    invoke-virtual {v8}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 1009
    move-result v8

    .line 1010
    if-nez v8, :cond_1a

    .line 1012
    const/4 v8, 0x0

    .line 1013
    invoke-virtual {v14, v13, v8, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1016
    move-object/from16 v19, v7

    .line 1018
    int-to-long v7, v15

    .line 1019
    add-long v7, v20, v7

    .line 1021
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1024
    move-result-wide v20

    .line 1025
    sub-long v24, v20, v17

    .line 1027
    iget-object v15, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1029
    invoke-virtual {v15}, Lcom/autonavi/common/filedownload/DownloadRequest;->getProgressInterval()J

    .line 1032
    move-result-wide v26

    .line 1033
    cmp-long v15, v24, v26

    .line 1035
    if-ltz v15, :cond_19

    .line 1037
    invoke-interface {v9, v7, v8, v10, v11}, Lcom/autonavi/common/filedownload/DownloadCallback;->onProgressUpdate(JJ)V

    .line 1040
    move-wide/from16 v17, v20

    .line 1042
    :cond_19
    move-wide/from16 v20, v7

    .line 1044
    move-object/from16 v7, v19

    .line 1046
    move/from16 v9, v22

    .line 1048
    move-object/from16 v8, v23

    .line 1050
    goto :goto_4

    .line 1051
    :cond_1a
    move-object/from16 v19, v7

    .line 1053
    if-nez v0, :cond_1b

    .line 1055
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 1058
    move-result v0

    .line 1059
    if-eqz v0, :cond_1b

    .line 1061
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1064
    :cond_1b
    const/4 v7, 0x3

    .line 1065
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 1068
    move-result v0

    .line 1069
    if-eqz v0, :cond_1c

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1073
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1081
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 1084
    move-result-object v5

    .line 1085
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1093
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1101
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 1104
    move-result v3

    .line 1105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1113
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 1116
    move-result v2

    .line 1117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1123
    move-result-object v0

    .line 1124
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_1c
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1129
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1131
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 1134
    invoke-static {v14}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1137
    invoke-static/range {v19 .. v19}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1140
    return-void

    .line 1141
    :catchall_1
    move-exception v0

    .line 1142
    move-object/from16 v19, v7

    .line 1144
    goto :goto_5

    .line 1145
    :cond_1d
    move-object/from16 v19, v7

    .line 1147
    move-object/from16 v23, v8

    .line 1149
    :try_start_13
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1152
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1154
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1156
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 1158
    move-object/from16 v9, v23

    .line 1160
    invoke-static {v0, v7, v8, v9}, Lcom/autonavi/common/filedownload/FileDownloader;->access$200(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1163
    move-object/from16 v16, v14

    .line 1165
    move-object/from16 v8, v19

    .line 1167
    const/4 v7, 0x3

    .line 1168
    goto :goto_6

    .line 1169
    :catchall_2
    move-exception v0

    .line 1170
    :goto_5
    move-object v8, v12

    .line 1171
    move-object/from16 v16, v19

    .line 1173
    move/from16 v9, v22

    .line 1175
    goto/16 :goto_a

    .line 1177
    :catchall_3
    move-exception v0

    .line 1178
    move-object/from16 v19, v7

    .line 1180
    move/from16 v22, v9

    .line 1182
    move-object v8, v12

    .line 1183
    move-object/from16 v16, v19

    .line 1185
    goto/16 :goto_a

    .line 1187
    :catchall_4
    move-exception v0

    .line 1188
    move-object/from16 v19, v7

    .line 1190
    move/from16 v22, v9

    .line 1192
    move-object v8, v12

    .line 1193
    move-object/from16 v16, v19

    .line 1195
    const/4 v14, 0x0

    .line 1196
    goto/16 :goto_a

    .line 1198
    :catchall_5
    move-exception v0

    .line 1199
    move/from16 v22, v9

    .line 1201
    goto :goto_7

    .line 1202
    :cond_1e
    move/from16 v22, v9

    .line 1204
    :try_start_14
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1206
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1208
    iget-object v8, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 1210
    move/from16 v9, v22

    .line 1212
    const/4 v10, -0x3

    .line 1213
    :try_start_15
    invoke-static {v0, v7, v8, v10, v9}, Lcom/autonavi/common/filedownload/FileDownloader;->access$300(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1216
    const/4 v7, 0x3

    .line 1217
    const/4 v8, 0x0

    .line 1218
    const/16 v16, 0x0

    .line 1220
    :goto_6
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 1223
    move-result v0

    .line 1224
    if-eqz v0, :cond_1f

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1231
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1236
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 1239
    move-result-object v5

    .line 1240
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1248
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1256
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 1259
    move-result v3

    .line 1260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1263
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1268
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 1271
    move-result v2

    .line 1272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1278
    move-result-object v0

    .line 1279
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_1f
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1284
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1286
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 1289
    invoke-static/range {v16 .. v16}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1292
    invoke-static {v8}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1295
    goto/16 :goto_b

    .line 1297
    :catchall_6
    move-exception v0

    .line 1298
    move/from16 v9, v22

    .line 1300
    goto :goto_7

    .line 1301
    :catchall_7
    move-exception v0

    .line 1302
    :goto_7
    move-object v8, v12

    .line 1303
    goto :goto_9

    .line 1304
    :catchall_8
    move-exception v0

    .line 1305
    move-object v8, v12

    .line 1306
    goto :goto_8

    .line 1307
    :catchall_9
    move-exception v0

    .line 1308
    const/4 v8, 0x0

    .line 1309
    :goto_8
    const/4 v9, -0x1

    .line 1310
    :goto_9
    const/4 v14, 0x0

    .line 1311
    const/16 v16, 0x0

    .line 1313
    :goto_a
    :try_start_16
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1315
    invoke-static {v7, v0}, Lcom/autonavi/common/filedownload/FileDownloader;->access$400(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/Throwable;)I

    .line 1318
    move-result v0

    .line 1319
    iget-object v7, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1321
    iget-object v10, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1323
    iget-object v11, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$listenerRef:Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;

    .line 1325
    invoke-static {v7, v10, v11, v0, v9}, Lcom/autonavi/common/filedownload/FileDownloader;->access$300(Lcom/autonavi/common/filedownload/FileDownloader;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/common/filedownload/FileDownloader$ListenerKeeper;II)V

    .line 1328
    if-eqz v8, :cond_20

    .line 1330
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1332
    invoke-virtual {v0}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 1335
    move-result v0

    .line 1336
    if-nez v0, :cond_20

    .line 1338
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 1341
    :cond_20
    const/4 v7, 0x3

    .line 1342
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 1345
    move-result v0

    .line 1346
    if-eqz v0, :cond_21

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1350
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1353
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1358
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 1361
    move-result-object v5

    .line 1362
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1370
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1378
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 1381
    move-result v3

    .line 1382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1390
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 1393
    move-result v2

    .line 1394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1400
    move-result-object v0

    .line 1401
    invoke-static {v6, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_21
    iget-object v0, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1406
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1408
    invoke-static {v0, v2}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 1411
    invoke-static {v14}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1414
    invoke-static/range {v16 .. v16}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1417
    :goto_b
    return-void

    .line 1418
    :catchall_a
    move-exception v0

    .line 1419
    const/4 v7, 0x3

    .line 1420
    invoke-static {v7}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 1423
    move-result v7

    .line 1424
    if-eqz v7, :cond_22

    .line 1426
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1428
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    iget-object v5, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1436
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 1439
    move-result-object v5

    .line 1440
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    iget-object v4, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1448
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1456
    invoke-virtual {v3}, Lcom/autonavi/common/filedownload/DownloadRequest;->isSupportRange()Z

    .line 1459
    move-result v3

    .line 1460
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$downloadRequest:Lcom/autonavi/common/filedownload/DownloadRequest;

    .line 1468
    invoke-virtual {v2}, Lcom/autonavi/common/filedownload/DownloadRequest;->isNeedHoldCallback()Z

    .line 1471
    move-result v2

    .line 1472
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1478
    move-result-object v2

    .line 1479
    invoke-static {v6, v2}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_22
    iget-object v2, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->this$0:Lcom/autonavi/common/filedownload/FileDownloader;

    .line 1484
    iget-object v3, v1, Lcom/autonavi/common/filedownload/FileDownloader$1;->val$outputPath:Ljava/lang/String;

    .line 1486
    invoke-static {v2, v3}, Lcom/autonavi/common/filedownload/FileDownloader;->access$500(Lcom/autonavi/common/filedownload/FileDownloader;Ljava/lang/String;)V

    .line 1489
    invoke-static {v14}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1492
    invoke-static/range {v16 .. v16}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1495
    throw v0
.end method
