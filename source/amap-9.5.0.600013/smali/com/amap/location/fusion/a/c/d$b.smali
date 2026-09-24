.class Lcom/amap/location/fusion/a/c/d$b;
.super Lcom/amap/location/support/fence/FenceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/c/d;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/amap/location/support/fence/FenceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 6
    iput-boolean p5, p0, Lcom/amap/location/fusion/a/c/d$b;->b:Z

    .line 8
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 3
    invoke-static {v0}, Lcom/amap/location/fusion/a/c/d;->e(Lcom/amap/location/fusion/a/c/d;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isCityFence()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/c/d$b;->b:Z

    .line 3
    return v0
.end method

.method public parseFence(Ljava/io/File;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/fusion/a/c/d;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/io/File;

    .line 9
    const-string v1, "sdcard"

    .line 11
    const-string v2, "specific_fence.txt"

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    new-instance v0, Ljava/io/File;

    .line 24
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "specific_fence.txt"

    .line 30
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    move-object p1, v0

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/amap/location/support/util/FileUtils;->readLines(Ljava/io/File;)Ljava/util/List;

    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    .line 46
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 51
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d;->c(Lcom/amap/location/fusion/a/c/d;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 58
    move-result-wide v1

    .line 59
    iget-object v3, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 61
    invoke-static {v3}, Lcom/amap/location/fusion/a/c/d;->c(Lcom/amap/location/fusion/a/c/d;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 68
    move-result-wide v3

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p1

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_5

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Ljava/lang/String;

    .line 87
    invoke-static {v7}, Lcom/amap/location/fusion/a/c/c;->a(Ljava/lang/String;)Lcom/amap/location/fusion/a/c/c;

    .line 90
    move-result-object v8

    .line 91
    if-eqz v8, :cond_4

    .line 93
    invoke-virtual {v8, v1, v2, v3, v4}, Lcom/amap/location/fusion/a/c/c;->a(DD)V

    .line 96
    iget v7, v8, Lcom/amap/location/fusion/a/c/c;->a:I

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/util/List;

    .line 108
    if-nez v7, :cond_3

    .line 110
    new-instance v7, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget v9, v8, Lcom/amap/location/fusion/a/c/c;->a:I

    .line 117
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v9

    .line 121
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_3
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    if-nez v6, :cond_2

    .line 130
    const-string v6, "SpecificFenceManager"

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v9, "load error:"

    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v7

    .line 149
    invoke-static {v6, v7}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v6, 0x1

    .line 153
    goto :goto_0

    .line 154
    :cond_5
    iget-object p1, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 156
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 160
    move-result-object v1

    .line 161
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v1

    .line 165
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_7

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 180
    move-result v2

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v3

    .line 185
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Ljava/util/List;

    .line 191
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 194
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 197
    move-result v4

    .line 198
    const/16 v6, 0x14

    .line 200
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 203
    move-result v4

    .line 204
    iget-object v6, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 206
    invoke-static {v6}, Lcom/amap/location/fusion/a/c/d;->d(Lcom/amap/location/fusion/a/c/d;)Ljava/util/Map;

    .line 209
    move-result-object v6

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    move-result-object v7

    .line 214
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-result-object v6

    .line 218
    check-cast v6, Lcom/amap/location/fusion/a/c/d$c;

    .line 220
    if-nez v6, :cond_6

    .line 222
    new-instance v6, Lcom/amap/location/fusion/a/c/d$c;

    .line 224
    iget-object v7, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 226
    invoke-direct {v6, v7, v2}, Lcom/amap/location/fusion/a/c/d$c;-><init>(Lcom/amap/location/fusion/a/c/d;I)V

    .line 229
    iget-object v7, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 231
    invoke-static {v7}, Lcom/amap/location/fusion/a/c/d;->d(Lcom/amap/location/fusion/a/c/d;)Ljava/util/Map;

    .line 234
    move-result-object v7

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object v8

    .line 239
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_6
    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 245
    move-result-object v3

    .line 246
    invoke-static {v6}, Lcom/amap/location/fusion/a/c/d$c;->a(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/support/fence/FenceState;

    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4, v3}, Lcom/amap/location/support/fence/FenceState;->updateFenceList(Ljava/util/List;)V

    .line 253
    const-string v4, "SpecificFenceManager"

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    .line 257
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v2, " fence load over:"

    .line 265
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 271
    move-result v2

    .line 272
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object v2

    .line 279
    invoke-static {v4, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    goto :goto_1

    .line 283
    :cond_7
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 285
    invoke-static {v1}, Lcom/amap/location/fusion/a/c/d;->d(Lcom/amap/location/fusion/a/c/d;)Ljava/util/Map;

    .line 288
    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 292
    move-result-object v1

    .line 293
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 296
    move-result-object v1

    .line 297
    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_9

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/Integer;

    .line 309
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 312
    move-result v2

    .line 313
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v3

    .line 317
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-result-object v3

    .line 321
    if-nez v3, :cond_8

    .line 323
    iget-object v3, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 325
    invoke-static {v3}, Lcom/amap/location/fusion/a/c/d;->d(Lcom/amap/location/fusion/a/c/d;)Ljava/util/Map;

    .line 328
    move-result-object v3

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Lcom/amap/location/fusion/a/c/d$c;

    .line 339
    invoke-static {v2}, Lcom/amap/location/fusion/a/c/d$c;->a(Lcom/amap/location/fusion/a/c/d$c;)Lcom/amap/location/support/fence/FenceState;

    .line 342
    move-result-object v2

    .line 343
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v2, v3}, Lcom/amap/location/support/fence/FenceState;->updateFenceList(Ljava/util/List;)V

    .line 350
    goto :goto_2

    .line 351
    :cond_9
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :try_start_2
    iget-object p1, p0, Lcom/amap/location/fusion/a/c/d$b;->a:Lcom/amap/location/fusion/a/c/d;

    .line 354
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 357
    move-result-object v0

    .line 358
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 361
    move-result-wide v0

    .line 362
    invoke-static {p1, v0, v1}, Lcom/amap/location/fusion/a/c/d;->a(Lcom/amap/location/fusion/a/c/d;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 365
    goto :goto_3

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 369
    :catch_0
    move-exception p1

    .line 370
    const-string v0, "SpecificFenceManager"

    .line 372
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :goto_3
    return-void
.end method
