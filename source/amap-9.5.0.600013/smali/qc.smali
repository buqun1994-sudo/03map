.class public abstract Lqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrp;


# instance fields
.field public a:[B

.field public b:[Ljava/io/File;

.field public c:Lbr;

.field public d:Z


# direct methods
.method public constructor <init>([B[Ljava/io/File;Lbr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lqc;->a:[B

    .line 6
    iput-object p2, p0, Lqc;->b:[Ljava/io/File;

    .line 8
    iput-object p3, p0, Lqc;->c:Lbr;

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lqc;->d:Z

    .line 13
    return-void
.end method

.method public static h([B)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 10
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 15
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    :try_start_0
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    .line 20
    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    const/16 v2, 0x100

    .line 25
    new-array v2, v2, [B

    .line 27
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 30
    move-result v3

    .line 31
    if-ltz v3, :cond_1

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 41
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object p0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v2, "Exception:"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 68
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 7

    .line 1
    const-string v0, "http on Finish"

    .line 3
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 9
    move-result v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "result:"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v4, "key:"

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v4, " value:"

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Lbz;->d(Ljava/lang/String;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lqc;->c:Lbr;

    .line 99
    invoke-interface {v2}, Lbr;->K()Z

    .line 102
    move-result v2

    .line 103
    const/4 v3, 0x0

    .line 104
    if-eqz v2, :cond_3

    .line 106
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 108
    const/16 v4, 0x400

    .line 110
    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 113
    new-array v4, v4, [B

    .line 115
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 118
    move-result v5

    .line 119
    const/4 v6, -0x1

    .line 120
    if-eq v5, v6, :cond_1

    .line 122
    invoke-virtual {v2, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 129
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/autonavi/common/tool/util/AESUtils;->c([B)[B

    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_2

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v4, "response:"

    .line 146
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v4, Ljava/lang/String;

    .line 151
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, Lbz;->d(Ljava/lang/String;)V

    .line 164
    invoke-static {v1}, Lqc;->h([B)[B

    .line 167
    move-result-object v1

    .line 168
    if-eqz v1, :cond_2

    .line 170
    new-instance v2, Ljava/lang/String;

    .line 172
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 175
    goto :goto_3

    .line 176
    :cond_2
    const/4 v2, 0x0

    .line 177
    goto :goto_3

    .line 178
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    new-instance v4, Ljava/io/InputStreamReader;

    .line 185
    const-string v5, "utf-8"

    .line 187
    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 190
    new-instance v1, Ljava/io/BufferedReader;

    .line 192
    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 198
    move-result-object v4

    .line 199
    if-eqz v4, :cond_4

    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    goto :goto_2

    .line 205
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 209
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v4, "content:"

    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-static {v1}, Lbz;->d(Ljava/lang/String;)V

    .line 229
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 232
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    const-string v4, ""

    .line 235
    if-nez v1, :cond_5

    .line 237
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 239
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v2, "result"

    .line 244
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 247
    move-result v3

    .line 248
    const-string v2, "message"

    .line 250
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object v4

    .line 254
    const/16 v1, 0x12c

    .line 256
    if-ge v0, v1, :cond_5

    .line 258
    if-eqz v3, :cond_5

    .line 260
    const-string v1, "http success"

    .line 262
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lqc;->b:[Ljava/io/File;

    .line 267
    invoke-virtual {p0, v1}, Lqc;->d([Ljava/io/File;)V

    .line 270
    const/4 v1, 0x1

    .line 271
    iput-boolean v1, p0, Lqc;->d:Z

    .line 273
    :cond_5
    iget-boolean v1, p0, Lqc;->d:Z

    .line 275
    if-nez v1, :cond_6

    .line 277
    const-string v1, "http error"

    .line 279
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lbh;->s()Lbh;

    .line 285
    move-result-object v1

    .line 286
    iget-object v2, p0, Lqc;->b:[Ljava/io/File;

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    const-string v6, " uploadFailed. result:"

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string v0, " errorMessage:"

    .line 303
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v0, " result:"

    .line 311
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v1, v2, v0}, Lbh;->f([Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 327
    move-result-object v0

    .line 328
    if-eqz v0, :cond_7

    .line 330
    :goto_4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    goto :goto_5

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    goto :goto_6

    .line 340
    :catch_0
    move-exception v0

    .line 341
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    invoke-static {}, Lbh;->s()Lbh;

    .line 347
    move-result-object v1

    .line 348
    iget-object v2, p0, Lqc;->b:[Ljava/io/File;

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    .line 352
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    const-string v4, " uploadFailed. exception:"

    .line 357
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v1, v2, v0}, Lbh;->f([Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    if-eqz p1, :cond_7

    .line 376
    :try_start_4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 379
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 380
    if-eqz v0, :cond_7

    .line 382
    goto :goto_4

    .line 383
    :catch_1
    :cond_7
    :goto_5
    return-void

    .line 384
    :goto_6
    if-eqz p1, :cond_8

    .line 386
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 389
    move-result-object v1

    .line 390
    if-eqz v1, :cond_8

    .line 392
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 399
    :catch_2
    :cond_8
    throw v0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    invoke-static {}, Lbh;->s()Lbh;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lqc;->b:[Ljava/io/File;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v3, " uploadFailed. exception:"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, v1, p1}, Lbh;->f([Ljava/io/File;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d([Ljava/io/File;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_3

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    aget-object v3, p1, v2

    .line 14
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 28
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    .line 30
    invoke-direct {v4, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 33
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_3
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lqc;->i()V

    .line 4
    invoke-virtual {p0}, Lqc;->c()V

    .line 7
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqc;->a:[B

    .line 3
    if-eqz v0, :cond_0

    .line 5
    array-length v0, v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lqc;->b:[Ljava/io/File;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    array-length v0, v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lqc;->c:Lbr;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lqc;->d:Z

    .line 3
    return v0
.end method

.method public abstract i()V
.end method
