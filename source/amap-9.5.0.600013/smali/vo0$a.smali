.class public Lvo0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvo0;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 10

    .line 1
    const-string v0, "&"

    .line 3
    const-string v1, ""

    .line 5
    iget-object v2, p0, Lvo0$a;->a:Lvo0;

    .line 7
    invoke-static {v2, p1}, Lvo0;->j(Lvo0;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/handler/AmapLooper;

    .line 10
    iget-object v2, p0, Lvo0$a;->a:Lvo0;

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-interface {v3, p1, v4}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {v2, p1}, Lvo0;->h(Lvo0;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 24
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 27
    move-result-object p1

    .line 28
    const-string v2, "ams_gnss"

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    .line 32
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 35
    invoke-virtual {p1, v2, v3}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 38
    move-result-object p1

    .line 39
    const-string v2, "nac"

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 45
    move-result v2

    .line 46
    iget-object v4, p0, Lvo0$a;->a:Lvo0;

    .line 48
    const-string v5, "logLevel"

    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 54
    move-result v5

    .line 55
    invoke-static {v4, v5}, Lvo0;->d(Lvo0;I)I

    .line 58
    iget-object v4, p0, Lvo0$a;->a:Lvo0;

    .line 60
    const-string v5, "report"

    .line 62
    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 65
    move-result v5

    .line 66
    invoke-static {v4, v5}, Lvo0;->s(Lvo0;Z)Z

    .line 69
    iget-object v4, p0, Lvo0$a;->a:Lvo0;

    .line 71
    const-string v5, "matchRoadClass"

    .line 73
    const-string v7, "#0#1#2#3#4#5#6#7#8#9#10#-1#"

    .line 75
    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    invoke-static {v4, v5}, Lvo0;->n(Lvo0;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lvo0$a;->a:Lvo0;

    .line 84
    const-string v5, "highwayClass"

    .line 86
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    invoke-static {v4, v5}, Lvo0;->w(Lvo0;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lvo0$a;->a:Lvo0;

    .line 95
    const-string v5, "score"

    .line 97
    invoke-static {v4}, Lvo0;->c(Lvo0;)I

    .line 100
    move-result v7

    .line 101
    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 104
    move-result v5

    .line 105
    invoke-static {v4, v5}, Lvo0;->t(Lvo0;I)I

    .line 108
    iget-object v4, p0, Lvo0$a;->a:Lvo0;

    .line 110
    const-string v5, "sensor"

    .line 112
    invoke-static {v4}, Lvo0;->z(Lvo0;)Z

    .line 115
    move-result v7

    .line 116
    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 119
    move-result p1

    .line 120
    invoke-static {v4, p1}, Lvo0;->A(Lvo0;Z)Z

    .line 123
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 125
    new-instance v4, Lgw0;

    .line 127
    invoke-static {p1}, Lvo0;->D(Lvo0;)Lcom/amap/location/support/handler/AmapLooper;

    .line 130
    move-result-object v5

    .line 131
    invoke-direct {v4, v5}, Lgw0;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 134
    invoke-static {p1, v4}, Lvo0;->m(Lvo0;Lgw0;)Lgw0;

    .line 137
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 139
    new-instance v4, Lvo0$a$a;

    .line 141
    invoke-static {p1}, Lvo0;->D(Lvo0;)Lcom/amap/location/support/handler/AmapLooper;

    .line 144
    move-result-object v5

    .line 145
    const-string v7, "rtk"

    .line 147
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 150
    move-result v8

    .line 151
    const/16 v9, 0xf

    .line 153
    if-ne v8, v9, :cond_0

    .line 155
    const-string v8, "https://aloc-modeldata.aimap.com/model/get"

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    const-string v8, "https://aloc-modeldata.amap.com/model/get"

    .line 160
    :goto_0
    invoke-direct {v4, p0, v5, v7, v8}, Lvo0$a$a;-><init>(Lvo0$a;Lcom/amap/location/support/handler/AmapLooper;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p1, v4}, Lvo0;->l(Lvo0;Lcom/amap/location/support/model/ModelLoader;)Lcom/amap/location/support/model/ModelLoader;

    .line 166
    if-eqz v2, :cond_1

    .line 168
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 170
    new-instance v2, Lvo0$a$b;

    .line 172
    invoke-direct {v2, p0}, Lvo0$a$b;-><init>(Lvo0$a;)V

    .line 175
    const-wide/16 v4, 0x1388

    .line 177
    invoke-static {p1, v2, v4, v5}, Lvo0;->p(Lvo0;Ljava/lang/Runnable;J)V

    .line 180
    const-string p1, "ams_gnss_settings"

    .line 182
    invoke-static {p1, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    const-string v2, "\n"

    .line 188
    const-string v4, ";"

    .line 190
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_1

    .line 200
    const-string v2, "#"

    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 205
    move-result-object p1

    .line 206
    array-length v2, p1

    .line 207
    if-le v2, v3, :cond_1

    .line 209
    iget-object v1, p0, Lvo0$a;->a:Lvo0;

    .line 211
    aget-object v2, p1, v6

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 217
    invoke-static {v1, v2}, Lvo0;->C(Lvo0;Ljava/lang/String;)J

    .line 220
    move-result-wide v1

    .line 221
    aget-object p1, p1, v3

    .line 223
    move-wide v2, v1

    .line 224
    move-object v1, p1

    .line 225
    goto :goto_1

    .line 226
    :cond_1
    const-wide/16 v2, 0x0

    .line 228
    :goto_1
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 230
    invoke-static {p1, v1}, Lvo0;->F(Lvo0;Ljava/lang/String;)I

    .line 233
    move-result p1

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    .line 236
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    const-string v5, "1#"

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 264
    invoke-static {p1}, Lvo0;->L(Lvo0;)Z

    .line 267
    move-result p1

    .line 268
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 278
    move-result-object p1

    .line 279
    const v0, 0x18ef4

    .line 282
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 285
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 287
    invoke-static {p1}, Lvo0;->J(Lvo0;)Z

    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_2

    .line 293
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 295
    invoke-static {p1}, Lvo0;->L(Lvo0;)Z

    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_2

    .line 301
    iget-object p1, p0, Lvo0$a;->a:Lvo0;

    .line 303
    invoke-virtual {p1}, Lvo0;->startLocation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    goto :goto_2

    .line 307
    :catchall_0
    move-exception p1

    .line 308
    const-string v0, "GnssSoftLocator"

    .line 310
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    :cond_2
    :goto_2
    return-void
.end method
