.class Lcom/amap/location/support/model/ModelLoader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/network/INetwork$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/model/ModelLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amap/location/support/model/ModelLoader$1;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/model/ModelLoader$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/model/ModelLoader$1$1;->this$1:Lcom/amap/location/support/model/ModelLoader$1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amap/location/support/network/HttpResponse;Lcom/amap/location/support/network/HttpRequest;)V
    .locals 7

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
    const-string v0, "ModelLoader"

    .line 31
    invoke-static {v0, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_7

    .line 37
    iget-object v1, p1, Lcom/amap/location/support/network/HttpResponse;->body:[B

    .line 39
    if-eqz v1, :cond_7

    .line 41
    iget p1, p1, Lcom/amap/location/support/network/HttpResponse;->statusCode:I

    .line 43
    const/16 v2, 0xc8

    .line 45
    if-ne p1, v2, :cond_7

    .line 47
    :try_start_0
    invoke-static {v1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->parseFrom([B)Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;

    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_5

    .line 53
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getErrorCode()I

    .line 56
    move-result v1

    .line 57
    if-ne v1, v2, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getAlgorithmModelDataCount()I

    .line 62
    move-result v1

    .line 63
    if-lez v1, :cond_4

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getAlgorithmModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->getModelDataCount()I

    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_3

    .line 75
    invoke-virtual {p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getAlgorithmModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->getModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getVersion()J

    .line 86
    move-result-wide v1

    .line 87
    invoke-virtual {p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getAlgorithmModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->getModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;

    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getNotModified()Z

    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_1

    .line 101
    const/4 v3, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const/4 v3, 0x0

    .line 104
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getAlgorithmModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, p2}, Lcom/google/protobuf/model/ModelDataResponseBean$AlgorithmModelData;->getModelData(I)Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelData;->getTextModel()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v5, "model ready to load. isModified:"

    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    const-string v5, ", setting:"

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v5, ", version:"

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 149
    invoke-static {v0, v4}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz v3, :cond_2

    .line 154
    iget-object v4, p0, Lcom/amap/location/support/model/ModelLoader$1$1;->this$1:Lcom/amap/location/support/model/ModelLoader$1;

    .line 156
    iget-object v4, v4, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v6, ""

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v5

    .line 175
    invoke-static {v4, v5}, Lcom/amap/location/support/model/ModelLoader;->access$300(Lcom/amap/location/support/model/ModelLoader;Ljava/lang/String;)V

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/amap/location/support/model/ModelLoader$1$1;->this$1:Lcom/amap/location/support/model/ModelLoader$1;

    .line 180
    iget-object v4, v4, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 182
    invoke-virtual {v4, v3, v1, v2, p1}, Lcom/amap/location/support/model/ModelLoader;->parseContext(ZJLjava/lang/String;)V

    .line 185
    goto :goto_3

    .line 186
    :cond_3
    const-string p1, "model data is 0"

    .line 188
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    goto :goto_3

    .line 192
    :cond_4
    const-string p1, "model algorithm is 0"

    .line 194
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    goto :goto_3

    .line 198
    :cond_5
    if-nez p1, :cond_6

    .line 200
    const-string p1, "model parse failed\uff1a"

    .line 202
    goto :goto_2

    .line 203
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    const-string v2, "model info error\uff1a"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getErrorCode()I

    .line 216
    move-result v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, ","

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/model/ModelDataResponseBean$ModelDataResponse;->getErrorMessage()Ljava/lang/String;

    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 236
    :goto_2
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    goto :goto_3

    .line 240
    :catchall_0
    move-exception p1

    .line 241
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/amap/location/support/model/ModelLoader$1$1;->this$1:Lcom/amap/location/support/model/ModelLoader$1;

    .line 246
    iget-object p1, p1, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 248
    invoke-static {p1, p2}, Lcom/amap/location/support/model/ModelLoader;->access$402(Lcom/amap/location/support/model/ModelLoader;Z)Z

    .line 251
    return-void
.end method
