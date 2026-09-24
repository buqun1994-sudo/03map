.class public abstract Lam;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :catchall_0
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "storage"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 9
    :try_start_0
    const-string v0, "android.os.storage.StorageVolume"

    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "getVolumeList"

    .line 21
    const/4 v3, 0x0

    .line 22
    new-array v4, v3, [Ljava/lang/Class;

    .line 24
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "getPath"

    .line 30
    new-array v4, v3, [Ljava/lang/Class;

    .line 32
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object v2

    .line 36
    const-string v4, "isRemovable"

    .line 38
    new-array v5, v3, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v0

    .line 44
    new-array v4, v3, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 53
    move-result v1

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_0
    if-ge v4, v1, :cond_1

    .line 57
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    new-array v6, v3, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/String;

    .line 69
    new-array v7, v3, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/Boolean;

    .line 77
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    if-ne p1, v5, :cond_0

    .line 83
    return-object v6

    .line 84
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    goto :goto_1

    .line 92
    :catch_1
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    goto :goto_1

    .line 97
    :catch_2
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    goto :goto_1

    .line 102
    :catch_3
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 107
    return-object p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-class v0, Lam;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {p0, v1}, Lam;->b(Landroid/content/Context;Z)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v2, "FileStorageModel"

    .line 11
    const-string v3, "readAdiuFile sdcardPath is :{?}"

    .line 13
    const/4 v4, 0x1

    .line 14
    new-array v5, v4, [Ljava/lang/Object;

    .line 16
    aput-object p0, v5, v1

    .line 18
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 27
    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 29
    monitor-exit v0

    .line 30
    return-object p0

    .line 31
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p0, "backups"

    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    const-string v2, "FileStorageModel"

    .line 55
    const-string v3, "readAdiuFile adiuDir is :{?}"

    .line 57
    new-array v5, v4, [Ljava/lang/Object;

    .line 59
    aput-object p0, v5, v1

    .line 61
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v2, Ljava/io/File;

    .line 66
    const-string v3, ".adiu"

    .line 68
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_5

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_1

    .line 83
    goto/16 :goto_b

    .line 85
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 88
    move-result-wide v5

    .line 89
    const-wide/16 v7, 0x0

    .line 91
    cmp-long p0, v5, v7

    .line 93
    if-nez p0, :cond_2

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 98
    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 100
    monitor-exit v0

    .line 101
    return-object p0

    .line 102
    :cond_2
    const/4 p0, 0x0

    .line 103
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    .line 105
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 110
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    const/16 v5, 0x400

    .line 115
    :try_start_4
    new-array v5, v5, [B

    .line 117
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 119
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    :goto_0
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 125
    move-result p0

    .line 126
    const/4 v7, -0x1

    .line 127
    if-eq p0, v7, :cond_3

    .line 129
    invoke-virtual {v6, v5, v1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    new-instance p0, Ljava/lang/String;

    .line 135
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 138
    move-result-object v5

    .line 139
    const-string v7, "UTF-8"

    .line 141
    invoke-direct {p0, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_4

    .line 150
    const-string v5, "#"

    .line 152
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_4

    .line 158
    const-string v5, "#"

    .line 160
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    if-eqz p0, :cond_4

    .line 166
    array-length v5, p0

    .line 167
    const/4 v7, 0x2

    .line 168
    if-ne v5, v7, :cond_4

    .line 170
    aget-object v1, p0, v1

    .line 172
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_4

    .line 178
    aget-object p0, p0, v4
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 180
    :try_start_6
    invoke-static {v6}, Lam;->a(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v2}, Lam;->a(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v3}, Lam;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 189
    monitor-exit v0

    .line 190
    return-object p0

    .line 191
    :cond_4
    :try_start_7
    invoke-static {v6}, Lam;->a(Ljava/io/Closeable;)V

    .line 194
    invoke-static {v2}, Lam;->a(Ljava/io/Closeable;)V

    .line 197
    :goto_1
    invoke-static {v3}, Lam;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 200
    goto/16 :goto_9

    .line 202
    :catch_0
    move-exception p0

    .line 203
    goto :goto_4

    .line 204
    :catch_1
    move-exception p0

    .line 205
    goto/16 :goto_6

    .line 207
    :catch_2
    move-exception p0

    .line 208
    goto/16 :goto_8

    .line 210
    :catchall_0
    move-exception p1

    .line 211
    move-object v6, p0

    .line 212
    goto :goto_2

    .line 213
    :catch_3
    move-exception p1

    .line 214
    move-object v6, p0

    .line 215
    goto :goto_3

    .line 216
    :catch_4
    move-exception p1

    .line 217
    move-object v6, p0

    .line 218
    goto :goto_5

    .line 219
    :catch_5
    move-exception p1

    .line 220
    move-object v6, p0

    .line 221
    goto :goto_7

    .line 222
    :catchall_1
    move-exception p1

    .line 223
    move-object v2, p0

    .line 224
    move-object v6, v2

    .line 225
    goto :goto_2

    .line 226
    :catch_6
    move-exception p1

    .line 227
    move-object v2, p0

    .line 228
    move-object v6, v2

    .line 229
    goto :goto_3

    .line 230
    :catch_7
    move-exception p1

    .line 231
    move-object v2, p0

    .line 232
    move-object v6, v2

    .line 233
    goto :goto_5

    .line 234
    :catch_8
    move-exception p1

    .line 235
    move-object v2, p0

    .line 236
    move-object v6, v2

    .line 237
    goto :goto_7

    .line 238
    :catchall_2
    move-exception p1

    .line 239
    move-object v2, p0

    .line 240
    move-object v3, v2

    .line 241
    move-object v6, v3

    .line 242
    :goto_2
    move-object p0, p1

    .line 243
    goto :goto_a

    .line 244
    :catch_9
    move-exception p1

    .line 245
    move-object v2, p0

    .line 246
    move-object v3, v2

    .line 247
    move-object v6, v3

    .line 248
    :goto_3
    move-object p0, p1

    .line 249
    :goto_4
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 252
    :try_start_9
    invoke-static {v6}, Lam;->a(Ljava/io/Closeable;)V

    .line 255
    invoke-static {v2}, Lam;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 258
    goto :goto_1

    .line 259
    :catch_a
    move-exception p1

    .line 260
    move-object v2, p0

    .line 261
    move-object v3, v2

    .line 262
    move-object v6, v3

    .line 263
    :goto_5
    move-object p0, p1

    .line 264
    :goto_6
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 267
    :try_start_b
    invoke-static {v6}, Lam;->a(Ljava/io/Closeable;)V

    .line 270
    invoke-static {v2}, Lam;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 273
    goto :goto_1

    .line 274
    :catch_b
    move-exception p1

    .line 275
    move-object v2, p0

    .line 276
    move-object v3, v2

    .line 277
    move-object v6, v3

    .line 278
    :goto_7
    move-object p0, p1

    .line 279
    :goto_8
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 282
    :try_start_d
    invoke-static {v6}, Lam;->a(Ljava/io/Closeable;)V

    .line 285
    invoke-static {v2}, Lam;->a(Ljava/io/Closeable;)V

    .line 288
    goto :goto_1

    .line 289
    :goto_9
    const-string p0, ""
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 291
    monitor-exit v0

    .line 292
    return-object p0

    .line 293
    :catchall_3
    move-exception p0

    .line 294
    :goto_a
    :try_start_e
    invoke-static {v6}, Lam;->a(Ljava/io/Closeable;)V

    .line 297
    invoke-static {v2}, Lam;->a(Ljava/io/Closeable;)V

    .line 300
    invoke-static {v3}, Lam;->a(Ljava/io/Closeable;)V

    .line 303
    throw p0

    .line 304
    :cond_5
    :goto_b
    const-string p0, ""
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 306
    monitor-exit v0

    .line 307
    return-object p0

    .line 308
    :catchall_4
    move-exception p0

    .line 309
    monitor-exit v0

    .line 310
    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lam;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {p0, v1}, Lam;->b(Landroid/content/Context;Z)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v2, "FileStorageModel"

    .line 11
    const-string v3, "writeAdiuFile sdcardPath is :{?}"

    .line 13
    const/4 v4, 0x1

    .line 14
    new-array v5, v4, [Ljava/lang/Object;

    .line 16
    aput-object p0, v5, v1

    .line 18
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    if-eqz v2, :cond_0

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, "#"

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string p0, "backups"

    .line 64
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    const-string p2, "FileStorageModel"

    .line 73
    const-string v2, "writeAdiuFile sdcardPath is :{?}"

    .line 75
    new-array v3, v4, [Ljava/lang/Object;

    .line 77
    aput-object p0, v3, v1

    .line 79
    invoke-static {p2, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance p2, Ljava/io/File;

    .line 84
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance p0, Ljava/io/File;

    .line 89
    const-string v1, ".adiu"

    .line 91
    invoke-direct {p0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 94
    const/4 v1, 0x0

    .line 95
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_2

    .line 107
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 113
    new-instance p2, Ljava/io/FileOutputStream;

    .line 115
    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    :try_start_3
    new-instance p0, Ljava/io/BufferedOutputStream;

    .line 120
    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    :try_start_4
    const-string v1, "UTF-8"

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    :try_start_5
    invoke-static {p0}, Lam;->a(Ljava/io/Closeable;)V

    .line 138
    :goto_0
    invoke-static {p2}, Lam;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    move-object v1, p0

    .line 144
    move-object p0, p1

    .line 145
    goto :goto_1

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    goto :goto_1

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    move-object p2, v1

    .line 150
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 153
    :try_start_7
    invoke-static {v1}, Lam;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 156
    goto :goto_0

    .line 157
    :goto_2
    monitor-exit v0

    .line 158
    return-void

    .line 159
    :catchall_3
    move-exception p0

    .line 160
    :try_start_8
    invoke-static {v1}, Lam;->a(Ljava/io/Closeable;)V

    .line 163
    invoke-static {p2}, Lam;->a(Ljava/io/Closeable;)V

    .line 166
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 167
    :catchall_4
    move-exception p0

    .line 168
    monitor-exit v0

    .line 169
    throw p0
.end method
