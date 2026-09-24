.class Lcom/autonavi/core/network/inter/NetworkClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/core/network/inter/NetworkClient;->send(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/core/network/inter/NetworkClient;

.field final synthetic val$callback:Lcom/autonavi/core/network/inter/response/ResponseCallback;

.field final synthetic val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;


# direct methods
.method public constructor <init>(Lcom/autonavi/core/network/inter/NetworkClient;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 3
    iput-object p2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 5
    iput-object p3, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$callback:Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->isCancelled()Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "ANet-NetworkClient"

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 13
    iget-object v0, v0, Lcom/autonavi/core/network/inter/request/HttpRequest;->requestStatistics:Lcom/autonavi/core/network/inter/statistics/RequestStatistics;

    .line 15
    const-string v2, "canceled"

    .line 17
    invoke-virtual {v0, v2}, Lcom/autonavi/core/network/inter/statistics/RequestStatistics;->mark(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x3

    .line 21
    invoke-static {v0}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v2, "request is canceled, url: "

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 39
    invoke-virtual {v2}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 56
    invoke-static {v0}, Lcom/autonavi/core/network/inter/NetworkClient;->access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 59
    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 62
    iget-object v3, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$callback:Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 64
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->startRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseCallback;)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 69
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-static {}, Lcom/autonavi/core/network/inter/NetworkClient;->access$100()Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 76
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const-string v3, "\nafter url: "

    .line 79
    const/4 v4, 0x2

    .line 80
    if-eqz v2, :cond_2

    .line 82
    :try_start_1
    invoke-static {}, Lcom/autonavi/core/network/inter/NetworkClient;->access$100()Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 85
    move-result-object v2

    .line 86
    iget-object v5, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 88
    invoke-interface {v2, v5}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 91
    invoke-static {v4}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v5, "global filter request, before url:"

    .line 104
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v5, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 115
    invoke-virtual {v5}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Lcom/autonavi/core/network/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 131
    invoke-static {v2}, Lcom/autonavi/core/network/inter/NetworkClient;->access$200(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 134
    move-result-object v2

    .line 135
    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 139
    invoke-static {v2}, Lcom/autonavi/core/network/inter/NetworkClient;->access$200(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 142
    move-result-object v2

    .line 143
    iget-object v5, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 145
    invoke-interface {v2, v5}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 148
    invoke-static {v4}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_3

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    const-string v4, "local filter request, before url:"

    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 172
    invoke-virtual {v0}, Lcom/autonavi/core/network/inter/request/HttpRequest;->getUrl()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$callback:Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 188
    const/4 v1, 0x0

    .line 189
    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$callback:Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 197
    instance-of v2, v2, Lcom/autonavi/core/network/inter/response/ResponseCallbackOnUi;

    .line 199
    if-eqz v2, :cond_4

    .line 201
    const-class v2, Lcom/autonavi/core/network/inter/response/ResponseCallbackOnUi;

    .line 203
    goto :goto_0

    .line 204
    :cond_4
    const-class v2, Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 206
    :goto_0
    const/4 v3, 0x0

    .line 207
    invoke-static {v0, v2, v3}, Lcom/autonavi/core/network/inter/util/ReflectUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    .line 210
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    goto :goto_1

    .line 212
    :cond_5
    move-object v0, v1

    .line 213
    :goto_1
    if-nez v0, :cond_6

    .line 215
    move-object v0, v1

    .line 216
    goto :goto_2

    .line 217
    :cond_6
    :try_start_2
    check-cast v0, Ljava/lang/Class;

    .line 219
    :goto_2
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 221
    iget-object v3, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 223
    invoke-static {v2, v3, v0}, Lcom/autonavi/core/network/inter/NetworkClient;->access$300(Lcom/autonavi/core/network/inter/NetworkClient;Lcom/autonavi/core/network/inter/request/HttpRequest;Ljava/lang/Class;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 226
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    if-eqz v0, :cond_8

    .line 229
    :try_start_3
    invoke-static {}, Lcom/autonavi/core/network/inter/NetworkClient;->access$100()Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_7

    .line 235
    invoke-static {}, Lcom/autonavi/core/network/inter/NetworkClient;->access$100()Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 238
    move-result-object v1

    .line 239
    invoke-interface {v1, v0}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterResponse(Lcom/autonavi/core/network/inter/response/HttpResponse;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 242
    :cond_7
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 244
    invoke-static {v1}, Lcom/autonavi/core/network/inter/NetworkClient;->access$200(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 247
    move-result-object v1

    .line 248
    if-eqz v1, :cond_8

    .line 250
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 252
    invoke-static {v1}, Lcom/autonavi/core/network/inter/NetworkClient;->access$200(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/filter/INetworkFilter;

    .line 255
    move-result-object v1

    .line 256
    invoke-interface {v1, v0}, Lcom/autonavi/core/network/inter/filter/INetworkFilter;->filterResponse(Lcom/autonavi/core/network/inter/response/HttpResponse;)Lcom/autonavi/core/network/inter/response/HttpResponse;

    .line 259
    :cond_8
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 261
    invoke-static {v1}, Lcom/autonavi/core/network/inter/NetworkClient;->access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 264
    move-result-object v1

    .line 265
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$callback:Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 267
    iget-object v3, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 269
    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->postResponse(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/HttpResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 274
    invoke-static {v0}, Lcom/autonavi/core/network/inter/NetworkClient;->access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 277
    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 280
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->finishRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 283
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    :try_start_4
    invoke-static {v0}, Lcom/autonavi/core/network/inter/response/ResponseException;->exception2ResponseException(Ljava/lang/Exception;)Lcom/autonavi/core/network/inter/response/ResponseException;

    .line 288
    move-result-object v0

    .line 289
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 291
    invoke-static {v2}, Lcom/autonavi/core/network/inter/NetworkClient;->access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 294
    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$callback:Lcom/autonavi/core/network/inter/response/ResponseCallback;

    .line 297
    iget-object v4, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 299
    invoke-virtual {v2, v3, v4, v0}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->postError(Lcom/autonavi/core/network/inter/response/ResponseCallback;Lcom/autonavi/core/network/inter/request/HttpRequest;Lcom/autonavi/core/network/inter/response/ResponseException;)V

    .line 302
    invoke-static {v1}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 305
    iget-object v0, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 307
    invoke-static {v0}, Lcom/autonavi/core/network/inter/NetworkClient;->access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 310
    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 313
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->finishRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 316
    return-void

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    iget-object v1, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->this$0:Lcom/autonavi/core/network/inter/NetworkClient;

    .line 320
    invoke-static {v1}, Lcom/autonavi/core/network/inter/NetworkClient;->access$000(Lcom/autonavi/core/network/inter/NetworkClient;)Lcom/autonavi/core/network/inter/NetworkDispatcher;

    .line 323
    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/autonavi/core/network/inter/NetworkClient$1;->val$request:Lcom/autonavi/core/network/inter/request/HttpRequest;

    .line 326
    invoke-virtual {v1, v2}, Lcom/autonavi/core/network/inter/NetworkDispatcher;->finishRequest(Lcom/autonavi/core/network/inter/request/HttpRequest;)V

    .line 329
    throw v0
.end method
