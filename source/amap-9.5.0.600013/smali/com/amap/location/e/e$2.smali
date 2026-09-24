.class Lcom/amap/location/e/e$2;
.super Lcom/amap/location/support/fence/FenceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/e;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/e;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/amap/location/support/fence/FenceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 3
    invoke-static {v0}, Lcom/amap/location/e/e;->f(Lcom/amap/location/e/e;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isCityFence()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseFence(Ljava/io/File;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p1, "file is null"

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 8
    move-result-object p1

    .line 9
    const v0, 0x1ae49

    .line 12
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/amap/location/support/util/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    const-string v1, "110153"

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string p1, "file read is null"

    .line 30
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 36
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 41
    invoke-static {p1}, Lcom/amap/location/e/e;->c(Lcom/amap/location/e/e;)Ljava/util/List;

    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48
    const/4 p1, 0x0

    .line 49
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 52
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    const-string v3, ","

    .line 55
    if-ge p1, v2, :cond_4

    .line 57
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lorg/json/JSONObject;

    .line 63
    new-instance v4, Lcom/amap/location/e/e$a;

    .line 65
    invoke-direct {v4}, Lcom/amap/location/e/e$a;-><init>()V

    .line 68
    const-string v5, "type"

    .line 70
    iget v6, v4, Lcom/amap/location/e/e$a;->a:I

    .line 72
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 75
    move-result v5

    .line 76
    iput v5, v4, Lcom/amap/location/e/e$a;->a:I

    .line 78
    const-string v5, "tileLevel"

    .line 80
    iget v6, v4, Lcom/amap/location/e/e$a;->b:I

    .line 82
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 85
    move-result v5

    .line 86
    iput v5, v4, Lcom/amap/location/e/e$a;->b:I

    .line 88
    const-string v5, "ver"

    .line 90
    iget-wide v6, v4, Lcom/amap/location/e/e$a;->c:J

    .line 92
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 95
    move-result-wide v5

    .line 96
    iput-wide v5, v4, Lcom/amap/location/e/e$a;->c:J

    .line 98
    const-string v5, "sources"

    .line 100
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5}, Lcom/amap/location/e/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    .line 107
    move-result-object v5

    .line 108
    iput-object v5, v4, Lcom/amap/location/e/e$a;->e:Ljava/util/List;

    .line 110
    const-string v5, "targets"

    .line 112
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Lcom/amap/location/e/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    .line 119
    move-result-object v5

    .line 120
    iput-object v5, v4, Lcom/amap/location/e/e$a;->d:Ljava/util/List;

    .line 122
    iget v6, v4, Lcom/amap/location/e/e$a;->a:I

    .line 124
    const/4 v7, -0x1

    .line 125
    if-eq v6, v7, :cond_3

    .line 127
    iget v6, v4, Lcom/amap/location/e/e$a;->b:I

    .line 129
    if-eq v6, v7, :cond_3

    .line 131
    iget-wide v6, v4, Lcom/amap/location/e/e$a;->c:J

    .line 133
    const-wide/16 v8, -0x1

    .line 135
    cmp-long v10, v6, v8

    .line 137
    if-eqz v10, :cond_3

    .line 139
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_3

    .line 145
    iget v5, v4, Lcom/amap/location/e/e$a;->a:I

    .line 147
    if-nez v5, :cond_2

    .line 149
    iget-object v5, v4, Lcom/amap/location/e/e$a;->e:Ljava/util/List;

    .line 151
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_2

    .line 157
    goto :goto_1

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 160
    invoke-static {v2}, Lcom/amap/location/e/e;->c(Lcom/amap/location/e/e;)Ljava/util/List;

    .line 163
    move-result-object v2

    .line 164
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_2

    .line 168
    :cond_3
    :goto_1
    const-string v4, "DualFenceDetector2"

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v6, "DualFence error:"

    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    invoke-static {v4, v2}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v2

    .line 206
    :try_start_2
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 209
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 215
    invoke-static {p1}, Lcom/amap/location/e/e;->c(Lcom/amap/location/e/e;)Ljava/util/List;

    .line 218
    move-result-object p1

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_5

    .line 225
    iget-object p1, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 227
    const/4 v0, 0x1

    .line 228
    invoke-static {p1, v0}, Lcom/amap/location/e/e;->b(Lcom/amap/location/e/e;Z)Z

    .line 231
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    const-string v0, "is ready: "

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v0, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 243
    invoke-static {v0}, Lcom/amap/location/e/e;->d(Lcom/amap/location/e/e;)Z

    .line 246
    move-result v0

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 255
    invoke-static {v0}, Lcom/amap/location/e/e;->c(Lcom/amap/location/e/e;)Ljava/util/List;

    .line 258
    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 262
    move-result v0

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object p1

    .line 280
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/amap/location/support/network/FileLoader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 285
    if-eqz p1, :cond_6

    .line 287
    iget-object v0, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 289
    invoke-static {v0}, Lcom/amap/location/e/e;->e(Lcom/amap/location/e/e;)Ljava/lang/Runnable;

    .line 292
    move-result-object v0

    .line 293
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object p1, p0, Lcom/amap/location/support/network/FileLoader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 298
    iget-object v0, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 300
    invoke-static {v0}, Lcom/amap/location/e/e;->e(Lcom/amap/location/e/e;)Ljava/lang/Runnable;

    .line 303
    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/amap/location/e/e$2;->a:Lcom/amap/location/e/e;

    .line 306
    iget v1, v1, Lcom/amap/location/e/e;->b:I

    .line 308
    int-to-long v1, v1

    .line 309
    const-wide/16 v3, 0x3c

    .line 311
    mul-long v1, v1, v3

    .line 313
    const-wide/16 v3, 0x3e8

    .line 315
    mul-long v1, v1, v3

    .line 317
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    goto :goto_3

    .line 321
    :catch_1
    move-exception p1

    .line 322
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 325
    :cond_6
    :goto_3
    return-void
.end method
