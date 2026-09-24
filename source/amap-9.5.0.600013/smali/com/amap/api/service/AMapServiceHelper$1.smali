.class Lcom/amap/api/service/AMapServiceHelper$1;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/service/AMapServiceHelper;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/service/AMapServiceHelper;


# direct methods
.method public constructor <init>(Lcom/amap/api/service/AMapServiceHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 3
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->a(Lcom/amap/api/service/AMapServiceHelper;)Landroid/os/HandlerThread;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 10
    new-instance v2, Landroid/os/Handler;

    .line 12
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 15
    move-result-object v3

    .line 16
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    invoke-static {v1, v2}, Lcom/amap/api/service/AMapServiceHelper;->a(Lcom/amap/api/service/AMapServiceHelper;Landroid/os/Handler;)Landroid/os/Handler;

    .line 22
    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 24
    invoke-static {v1}, Lcom/amap/api/service/AMapServiceHelper;->b(Lcom/amap/api/service/AMapServiceHelper;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 32
    invoke-static {v1}, Lcom/amap/api/service/AMapServiceHelper;->c(Lcom/amap/api/service/AMapServiceHelper;)Landroid/os/Handler;

    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/amap/api/service/AMapServiceHelper$1$1;

    .line 38
    invoke-direct {v2, p0}, Lcom/amap/api/service/AMapServiceHelper$1$1;-><init>(Lcom/amap/api/service/AMapServiceHelper$1;)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-static {v0, v1}, Lcom/amap/location/sdk/a;->a(Landroid/os/Looper;Z)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, "basic cloud: "

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/amap/location/support/cloud/AmapCloudManager;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 83
    move-result-object v0

    .line 84
    const v2, 0x1ae2e

    .line 87
    invoke-static {v2, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 90
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 95
    new-instance v2, Lcom/amap/location/sdk/d/a;

    .line 97
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v2, v3}, Lcom/amap/location/sdk/d/a;-><init>(Landroid/os/Looper;)V

    .line 104
    invoke-static {v0, v2}, Lcom/amap/api/service/AMapServiceHelper;->a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/sdk/d/a;)Lcom/amap/location/sdk/d/a;

    .line 107
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 109
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->d(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/d/a;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/amap/location/sdk/d/a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 121
    :goto_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 124
    move-result v0

    .line 125
    const/16 v2, 0x1d

    .line 127
    if-lt v0, v2, :cond_3

    .line 129
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDic()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_3

    .line 139
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDic()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    const-string v2, "C3090"

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_3

    .line 151
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_1

    .line 157
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHonor()Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_2

    .line 163
    :cond_1
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    .line 166
    move-result-object v0

    .line 167
    const-string v2, "9"

    .line 169
    const-class v3, Lnp;

    .line 171
    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_2
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_3

    .line 180
    invoke-static {}, Lcom/amap/location/support/location/LocatorFactory;->getInstance()Lcom/amap/location/support/location/LocatorFactory;

    .line 183
    move-result-object v0

    .line 184
    const-string v2, "2"

    .line 186
    const-class v3, Llp;

    .line 188
    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_3
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCart;->getInstance()Lcom/amap/location/icecream/IcecreamCart;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/amap/location/icecream/IcecreamCart;->clearData()V

    .line 198
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 200
    new-instance v2, Lcom/amap/location/fusion/LocationProvider;

    .line 202
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->e(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 205
    move-result-object v3

    .line 206
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 209
    move-result-object v4

    .line 210
    invoke-interface {v4}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 213
    move-result-object v4

    .line 214
    invoke-direct {v2, v3, v1, v4}, Lcom/amap/location/fusion/LocationProvider;-><init>(Lcom/amap/location/support/signal/gnss/AmapLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 217
    invoke-static {v0, v2}, Lcom/amap/api/service/AMapServiceHelper;->a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/fusion/LocationProvider;)Lcom/amap/location/fusion/LocationProvider;

    .line 220
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 222
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 225
    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/amap/location/fusion/LocationProvider;->setMainProvider(Lcom/amap/location/fusion/LocationProvider;)V

    .line 229
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 237
    new-instance v1, Lcom/amap/location/sdk/b/b;

    .line 239
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->g(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/b/b$a;

    .line 242
    move-result-object v2

    .line 243
    invoke-direct {v1, v2}, Lcom/amap/location/sdk/b/b;-><init>(Lcom/amap/location/sdk/b/b$a;)V

    .line 246
    invoke-static {v0, v1}, Lcom/amap/api/service/AMapServiceHelper;->a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/sdk/b/b;)Lcom/amap/location/sdk/b/b;

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 251
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 254
    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 257
    invoke-static {v1}, Lcom/amap/api/service/AMapServiceHelper;->h(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/b;

    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->setOnFailListener(Lcom/amap/location/fusion/b;)V

    .line 264
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 266
    invoke-static {}, Lcom/amap/location/sdk/c/a;->a()Lcom/amap/location/sdk/c/a;

    .line 269
    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Lcom/amap/api/service/AMapServiceHelper;->a(Lcom/amap/api/service/AMapServiceHelper;Lcom/amap/location/sdk/c/a;)Lcom/amap/location/sdk/c/a;

    .line 273
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 275
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->i(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/c/a;

    .line 278
    move-result-object v0

    .line 279
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lcom/amap/location/sdk/c/a;->a(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 286
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 288
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->j(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/api/service/LocationServiceImpl;

    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 296
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->j(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/api/service/LocationServiceImpl;

    .line 299
    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 302
    invoke-static {v1}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/location/fusion/LocationProvider;)V

    .line 309
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 311
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->j(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/api/service/LocationServiceImpl;

    .line 314
    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 317
    invoke-static {v1}, Lcom/amap/api/service/AMapServiceHelper;->i(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/c/a;

    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/location/sdk/c/a;)V

    .line 324
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$1;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 326
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->j(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/api/service/LocationServiceImpl;

    .line 329
    move-result-object v0

    .line 330
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 333
    move-result-object v1

    .line 334
    invoke-interface {v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Lcom/amap/api/service/LocationServiceImpl;->a(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 341
    :cond_5
    invoke-static {}, Lcom/amap/location/sdk/f/a;->a()Lcom/amap/location/sdk/f/a;

    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/amap/location/sdk/f/a;->b()V

    .line 348
    const-string v0, "amapservicehelper"

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    const-string v2, "loc thread id is :"

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 363
    move-result v2

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const v0, 0x18784

    .line 377
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 380
    return-void

    .line 381
    :catchall_0
    move-exception v1

    .line 382
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    throw v1
.end method
