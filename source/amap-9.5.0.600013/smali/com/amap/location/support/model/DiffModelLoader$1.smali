.class Lcom/amap/location/support/model/DiffModelLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/support/model/DiffModelLoader;->sendLocation(Lcom/amap/location/support/bean/location/AmapLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/model/DiffModelLoader;

.field final synthetic val$amapLocation:Lcom/amap/location/support/bean/location/AmapLocation;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/model/DiffModelLoader;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 3
    iput-object p2, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->val$amapLocation:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

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
    iget-object v3, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 22
    invoke-static {v3}, Lcom/amap/location/support/model/DiffModelLoader;->access$000(Lcom/amap/location/support/model/DiffModelLoader;)Ljava/lang/String;

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
    iget-object v5, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 137
    invoke-static {v5}, Lcom/amap/location/support/model/DiffModelLoader;->access$100(Lcom/amap/location/support/model/DiffModelLoader;)Ljava/lang/String;

    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v4, "1.0.0"

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
    iget-object v6, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 166
    invoke-static {v6}, Lcom/amap/location/support/model/DiffModelLoader;->access$100(Lcom/amap/location/support/model/DiffModelLoader;)Ljava/lang/String;

    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v5, ""

    .line 175
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    new-instance v0, Lorg/json/JSONArray;

    .line 180
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 183
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    new-instance v1, Lorg/json/JSONObject;

    .line 188
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 191
    const-string v5, "modelVersionList"

    .line 193
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    .line 198
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string v5, "lat"

    .line 203
    iget-object v6, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->val$amapLocation:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 205
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 208
    move-result-wide v6

    .line 209
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 214
    mul-double v6, v6, v8

    .line 216
    double-to-int v6, v6

    .line 217
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string v5, "lon"

    .line 222
    iget-object v6, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->val$amapLocation:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 224
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 227
    move-result-wide v6

    .line 228
    mul-double v6, v6, v8

    .line 230
    double-to-int v6, v6

    .line 231
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string v5, "type"

    .line 236
    const/4 v6, 0x1

    .line 237
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    new-instance v5, Lorg/json/JSONArray;

    .line 242
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 245
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    .line 250
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    const-string v6, "points"

    .line 255
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    new-instance v5, Lorg/json/JSONArray;

    .line 260
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 263
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 266
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 269
    new-instance v0, Lorg/json/JSONObject;

    .line 271
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 274
    const-string v1, "license"

    .line 276
    const-string v6, "94054b60-1b3c-4490-9e94-1e28c3681ffc"

    .line 278
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v1, "common"

    .line 283
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v1, "algorithmList"

    .line 288
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v1, "areaLevel"

    .line 293
    iget-object v3, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 295
    invoke-virtual {v3}, Lcom/amap/location/support/model/DiffModelLoader;->getAreaLevel()I

    .line 298
    move-result v3

    .line 299
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v1, "areaList"

    .line 304
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 314
    move-result-object v0

    .line 315
    iput-object v0, v2, Lcom/amap/location/support/network/HttpRequest;->body:[B

    .line 317
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    .line 320
    move-result-object v0

    .line 321
    new-instance v1, Lcom/amap/location/support/model/DiffModelLoader$1$1;

    .line 323
    invoke-direct {v1, p0}, Lcom/amap/location/support/model/DiffModelLoader$1$1;-><init>(Lcom/amap/location/support/model/DiffModelLoader$1;)V

    .line 326
    invoke-interface {v0, v2, v1}, Lcom/amap/location/support/network/INetwork;->post(Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/support/network/INetwork$ICallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    .line 331
    iget-object v1, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 333
    const/4 v2, 0x0

    .line 334
    invoke-static {v1, v2}, Lcom/amap/location/support/model/DiffModelLoader;->access$202(Lcom/amap/location/support/model/DiffModelLoader;Z)Z

    .line 337
    iget-object v1, p0, Lcom/amap/location/support/model/DiffModelLoader$1;->this$0:Lcom/amap/location/support/model/DiffModelLoader;

    .line 339
    const/4 v2, -0x6

    .line 340
    const/4 v3, 0x0

    .line 341
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/amap/location/support/model/DiffModelLoader;->onData(I[B[BLjava/lang/String;)V

    .line 344
    const-string v1, "DiffModelLoader"

    .line 346
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    :goto_0
    return-void
.end method
