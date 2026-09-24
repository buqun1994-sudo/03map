.class Lcom/amap/location/support/model/ModelLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/model/ModelLoader;->toDownLoad(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/model/ModelLoader;

.field final synthetic val$force:Z


# direct methods
.method public constructor <init>(Lcom/amap/location/support/model/ModelLoader;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 3
    iput-boolean p2, p0, Lcom/amap/location/support/model/ModelLoader$1;->val$force:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "version"

    .line 3
    const-string v1, "brand"

    .line 5
    :try_start_0
    new-instance v2, Lcom/amap/location/support/network/HttpRequest;

    .line 7
    invoke-direct {v2}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 10
    const-string v3, "Content-Type"

    .line 12
    const-string v4, "application/octet-stream"

    .line 14
    invoke-virtual {v2, v3, v4}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/amap/location/support/network/HttpRequest;->addProductHeader()V

    .line 20
    iget-object v3, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 22
    invoke-static {v3}, Lcom/amap/location/support/model/ModelLoader;->access$000(Lcom/amap/location/support/model/ModelLoader;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    iput-object v3, v2, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 28
    new-instance v3, Lorg/json/JSONObject;

    .line 30
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v4, "adiu"

    .line 35
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v4, "oaid"

    .line 44
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getOaid()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v4, "diu"

    .line 53
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v4, "utdid"

    .line 62
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getManufacturer()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v4, "model"

    .line 78
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMode()Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getBrand()Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "osVer"

    .line 94
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 97
    move-result v4

    .line 98
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v1, "productVer"

    .line 103
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "productName"

    .line 112
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductName()Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "adcode"

    .line 121
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    new-instance v1, Lorg/json/JSONObject;

    .line 130
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string v4, "name"

    .line 135
    iget-object v5, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 137
    invoke-static {v5}, Lcom/amap/location/support/model/ModelLoader;->access$100(Lcom/amap/location/support/model/ModelLoader;)Ljava/lang/String;

    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v4, "1.0.00"

    .line 146
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    new-instance v4, Lorg/json/JSONArray;

    .line 151
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 154
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    new-instance v1, Lorg/json/JSONObject;

    .line 159
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v5, "algName"

    .line 164
    iget-object v6, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 166
    invoke-static {v6}, Lcom/amap/location/support/model/ModelLoader;->access$100(Lcom/amap/location/support/model/ModelLoader;)Ljava/lang/String;

    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-boolean v5, p0, Lcom/amap/location/support/model/ModelLoader$1;->val$force:Z

    .line 175
    if-eqz v5, :cond_0

    .line 177
    const-string v5, ""

    .line 179
    goto :goto_0

    .line 180
    :cond_0
    iget-object v5, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 182
    invoke-static {v5}, Lcom/amap/location/support/model/ModelLoader;->access$200(Lcom/amap/location/support/model/ModelLoader;)Ljava/lang/String;

    .line 185
    move-result-object v5

    .line 186
    :goto_0
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    new-instance v0, Lorg/json/JSONArray;

    .line 191
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 194
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    new-instance v1, Lorg/json/JSONObject;

    .line 199
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 202
    const-string v5, "id"

    .line 204
    iget-object v6, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 206
    invoke-virtual {v6}, Lcom/amap/location/support/model/ModelLoader;->getAreaModelId()I

    .line 209
    move-result v6

    .line 210
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string v5, "modelVersionList"

    .line 215
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    new-instance v0, Lorg/json/JSONArray;

    .line 220
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 223
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 226
    new-instance v1, Lorg/json/JSONObject;

    .line 228
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 231
    const-string v5, "license"

    .line 233
    const-string v6, "94054b60-1b3c-4490-9e94-1e28c3681ffc"

    .line 235
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v5, "common"

    .line 240
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v3, "algorithmList"

    .line 245
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v3, "areaLevel"

    .line 250
    iget-object v4, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 252
    invoke-virtual {v4}, Lcom/amap/location/support/model/ModelLoader;->getAreaLevel()I

    .line 255
    move-result v4

    .line 256
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    const-string v3, "areaList"

    .line 261
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 271
    move-result-object v0

    .line 272
    iput-object v0, v2, Lcom/amap/location/support/network/HttpRequest;->body:[B

    .line 274
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    .line 277
    move-result-object v0

    .line 278
    new-instance v1, Lcom/amap/location/support/model/ModelLoader$1$1;

    .line 280
    invoke-direct {v1, p0}, Lcom/amap/location/support/model/ModelLoader$1$1;-><init>(Lcom/amap/location/support/model/ModelLoader$1;)V

    .line 283
    invoke-interface {v0, v2, v1}, Lcom/amap/location/support/network/INetwork;->post(Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/support/network/INetwork$ICallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    .line 288
    iget-object v1, p0, Lcom/amap/location/support/model/ModelLoader$1;->this$0:Lcom/amap/location/support/model/ModelLoader;

    .line 290
    const/4 v2, 0x0

    .line 291
    invoke-static {v1, v2}, Lcom/amap/location/support/model/ModelLoader;->access$402(Lcom/amap/location/support/model/ModelLoader;Z)Z

    .line 294
    const-string v1, "ModelLoader"

    .line 296
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :goto_1
    return-void
.end method
