.class Lcom/amap/location/support/model/DiffModelLoader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/network/INetwork$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/model/DiffModelLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amap/location/support/model/DiffModelLoader$1;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/model/DiffModelLoader$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amap/location/support/network/HttpResponse;Lcom/amap/location/support/network/HttpRequest;)V
    .locals 8

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "model download response:"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    if-nez p1, :cond_0

    .line 13
    const-string v0, "no res"

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p1, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    const-string v0, "DiffModelLoader"

    .line 31
    invoke-static {v0, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 36
    iget-object p2, p2, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {p2, v1}, Lcom/amap/location/support/model/DiffModelLoader;->access$202(Lcom/amap/location/support/model/DiffModelLoader;Z)Z

    .line 42
    const/4 p2, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 47
    iget-object p1, p1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 49
    const/4 v0, -0x1

    .line 50
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 53
    return-void

    .line 54
    :cond_1
    iget v2, p1, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 56
    const/16 v3, 0xc8

    .line 58
    if-eq v2, v3, :cond_2

    .line 60
    iget-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 62
    iget-object p1, p1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 64
    invoke-virtual {p1, v2, p2, p2, p2}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 67
    return-void

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/amap/location/support/network/HttpResponse;->body:[B

    .line 70
    if-eqz p1, :cond_b

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->parseFrom([B)Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;

    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getErrorCode()I

    .line 81
    move-result v2

    .line 82
    if-eq v2, v3, :cond_3

    .line 84
    iget-object v1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 86
    iget-object v1, v1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 88
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getErrorCode()I

    .line 91
    move-result p1

    .line 92
    invoke-virtual {v1, p1, p2, p2, p2}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 95
    return-void

    .line 96
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getAlgorithmModelDataCount()I

    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_4

    .line 102
    iget-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 104
    iget-object p1, p1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 106
    const/4 v1, -0x2

    .line 107
    invoke-virtual {p1, v1, p2, p2, p2}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 110
    return-void

    .line 111
    :cond_4
    invoke-virtual {p1, v1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getAlgorithmModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->getModelDataList()Ljava/util/List;

    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_a

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 124
    move-result v1

    .line 125
    const/4 v2, 0x3

    .line 126
    if-ge v1, v2, :cond_5

    .line 128
    goto :goto_2

    .line 129
    :cond_5
    const-string v1, ""

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object p1

    .line 135
    move-object v2, p2

    .line 136
    move-object v4, v2

    .line 137
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_9

    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;

    .line 149
    const-string v6, "meta"

    .line 151
    invoke-virtual {v5}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getModelName()Ljava/lang/String;

    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_7

    .line 161
    invoke-virtual {v5}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getByteData()Lcom/google/protobuf/ByteString;

    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    .line 168
    move-result-object v2

    .line 169
    goto :goto_1

    .line 170
    :cond_7
    const-string v6, "obs"

    .line 172
    invoke-virtual {v5}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getModelName()Ljava/lang/String;

    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_8

    .line 182
    invoke-virtual {v5}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getByteData()Lcom/google/protobuf/ByteString;

    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    .line 189
    move-result-object v4

    .line 190
    goto :goto_1

    .line 191
    :cond_8
    const-string v6, "config"

    .line 193
    invoke-virtual {v5}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getModelName()Ljava/lang/String;

    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_6

    .line 203
    new-instance v1, Ljava/lang/String;

    .line 205
    invoke-virtual {v5}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getByteData()Lcom/google/protobuf/ByteString;

    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    .line 212
    move-result-object v5

    .line 213
    const-string v6, "UTF-8"

    .line 215
    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 218
    goto :goto_1

    .line 219
    :cond_9
    iget-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 221
    iget-object p1, p1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 223
    invoke-virtual {p1, v3, v2, v4, v1}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 226
    goto :goto_3

    .line 227
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 229
    iget-object p1, p1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 231
    const/4 v1, -0x3

    .line 232
    invoke-virtual {p1, v1, p2, p2, p2}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    return-void

    .line 236
    :catchall_0
    move-exception p1

    .line 237
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    iget-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 242
    iget-object p1, p1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 244
    const/4 v0, -0x5

    .line 245
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 248
    goto :goto_3

    .line 249
    :cond_b
    iget-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1$1;->this$1:Lcom/amap/location/support/model/DiffModelLoader$1;

    .line 251
    iget-object p1, p1, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 253
    const/4 v0, -0x4

    .line 254
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 257
    :goto_3
    return-void
.end method
