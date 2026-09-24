.class public abstract Lu1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "AdapterUtils"

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    aput-object p0, v1, v4

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object p0

    .line 29
    aput-object p0, v1, v2

    .line 31
    const-string p0, "mkdirs:{?}, is {?}"

    .line 33
    invoke-static {v3, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return v0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 43
    const-string p0, "mkdirs fail:{?} is file"

    .line 45
    new-array v0, v4, [Ljava/lang/Object;

    .line 47
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return v4

    .line 51
    :cond_1
    return v2
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 8
    move-result v3

    .line 9
    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 14
    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    const/16 p0, 0x400

    .line 19
    :try_start_2
    new-array v4, p0, [B

    .line 21
    :goto_0
    invoke-virtual {v3, v4, v0, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 24
    move-result v5

    .line 25
    if-lez v5, :cond_0

    .line 27
    invoke-virtual {v2, v4, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 34
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 38
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :catch_1
    move-exception p0

    .line 47
    move-object v3, v1

    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    move-object v2, v1

    .line 51
    goto :goto_2

    .line 52
    :catch_2
    move-exception p0

    .line 53
    move-object v2, v1

    .line 54
    move-object v3, v2

    .line 55
    :goto_1
    :try_start_3
    const-string v4, "readByteArray"

    .line 57
    const-string v5, "exception:"

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {v4, v5, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 70
    return-object v1

    .line 71
    :catchall_2
    move-exception p0

    .line 72
    move-object v1, v3

    .line 73
    :goto_2
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 76
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 79
    throw p0
.end method

.method public static c(Landroid/content/Intent;II)Z
    .locals 10

    .line 1
    const-string v0, "startActivity"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    const-string v3, "intent {?}"

    .line 7
    new-array v4, v2, [Ljava/lang/Object;

    .line 9
    aput-object p0, v4, v1

    .line 11
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lrv;->H()Lrv;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return v2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    aput-object p0, v2, v1

    .line 31
    const-string v3, "SHOW_NETWORK_SETTING {?}"

    .line 33
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-static {}, Lpi;->n()Lpi;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lpi;->m()Ljava/lang/String;

    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v9

    .line 50
    move v4, p1

    .line 51
    move v5, p2

    .line 52
    invoke-static/range {v4 .. v9}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return v1
.end method

.method public static d(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lu1;->c(Landroid/content/Intent;II)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static e(Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    const/4 p0, 0x3

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {v0, p0, p1}, Lu1;->c(Landroid/content/Intent;II)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static f([B)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_0

    .line 7
    goto :goto_3

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
    const/4 p0, 0x0

    .line 19
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 21
    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    const/16 v4, 0x200

    .line 26
    new-array v4, v4, [B

    .line 28
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 31
    move-result v5

    .line 32
    if-ltz v5, :cond_1

    .line 34
    invoke-virtual {v1, v4, p0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 41
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception v3

    .line 46
    :try_start_1
    const-string v4, "uncompress"

    .line 48
    const-string v5, "exception:"

    .line 50
    new-array p0, p0, [Ljava/lang/Object;

    .line 52
    invoke-static {v4, v5, v3, p0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_1
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 58
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 61
    return-object v0

    .line 62
    :goto_2
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_3
    return-object v0
.end method

.method public static g(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "uncompressFiles end"

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "AdapterUtils"

    .line 8
    const-string v4, "uncompressFiles start"

    .line 10
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    new-instance v2, Ljava/util/zip/ZipInputStream;

    .line 15
    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    const/4 p0, 0x0

    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v4, :cond_7

    .line 26
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v7

    .line 34
    if-nez v7, :cond_6

    .line 36
    const-string v7, ".."

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 44
    goto/16 :goto_3

    .line 46
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 52
    const-string v4, "ignore dir:{?}"

    .line 54
    new-array v5, v5, [Ljava/lang/Object;

    .line 56
    aput-object v6, v5, v1

    .line 58
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v7, "unzip file:"

    .line 69
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    new-array v7, v1, [Ljava/lang/Object;

    .line 81
    invoke-static {v3, v4, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v4, Ljava/io/File;

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v6

    .line 106
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 112
    move-result v6

    .line 113
    const/4 v7, 0x2

    .line 114
    if-eqz v6, :cond_2

    .line 116
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 119
    move-result v6

    .line 120
    const-string v8, "delete {?}, result={?}"

    .line 122
    new-array v7, v7, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 127
    move-result-object v9

    .line 128
    aput-object v9, v7, v1

    .line 130
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    move-result-object v6

    .line 134
    aput-object v6, v7, v5

    .line 136
    invoke-static {v3, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 147
    move-result v6

    .line 148
    if-nez v6, :cond_3

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 157
    move-result v6

    .line 158
    const-string v8, "mkdir {?}, result={?}"

    .line 160
    new-array v7, v7, [Ljava/lang/Object;

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 165
    move-result-object v9

    .line 166
    aput-object v9, v7, v1

    .line 168
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    move-result-object v6

    .line 172
    aput-object v6, v7, v5

    .line 174
    invoke-static {v3, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 180
    move-result v6

    .line 181
    if-nez v6, :cond_4

    .line 183
    const-string v6, "cannot create file:{?}"

    .line 185
    new-array v5, v5, [Ljava/lang/Object;

    .line 187
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 190
    move-result-object v4

    .line 191
    aput-object v4, v5, v1

    .line 193
    invoke-static {v3, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_4
    new-instance v5, Ljava/io/FileOutputStream;

    .line 200
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    const/16 p0, 0x400

    .line 205
    :try_start_1
    new-array v4, p0, [B

    .line 207
    :goto_2
    invoke-virtual {v2, v4, v1, p0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    .line 210
    move-result v6

    .line 211
    if-lez v6, :cond_5

    .line 213
    invoke-virtual {v5, v4, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    goto :goto_2

    .line 217
    :cond_5
    move-object p0, v5

    .line 218
    goto/16 :goto_0

    .line 220
    :catchall_0
    move-exception p1

    .line 221
    move-object p0, v5

    .line 222
    goto :goto_5

    .line 223
    :catch_0
    move-exception p1

    .line 224
    move-object p0, v5

    .line 225
    goto :goto_4

    .line 226
    :cond_6
    :goto_3
    :try_start_2
    const-string v4, "ignore name:{?}"

    .line 228
    new-array v5, v5, [Ljava/lang/Object;

    .line 230
    aput-object v6, v5, v1

    .line 232
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_7
    invoke-static {v2}, Lms;->a(Ljava/io/Closeable;)V

    .line 240
    invoke-static {p0}, Lms;->a(Ljava/io/Closeable;)V

    .line 243
    new-array p0, v1, [Ljava/lang/Object;

    .line 245
    invoke-static {v3, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return v5

    .line 249
    :catchall_1
    move-exception p1

    .line 250
    goto :goto_5

    .line 251
    :catch_1
    move-exception p1

    .line 252
    :goto_4
    :try_start_3
    const-string v4, "uncompressFiles exception:"

    .line 254
    new-array v5, v1, [Ljava/lang/Object;

    .line 256
    invoke-static {v3, v4, p1, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    invoke-static {v2}, Lms;->a(Ljava/io/Closeable;)V

    .line 262
    invoke-static {p0}, Lms;->a(Ljava/io/Closeable;)V

    .line 265
    new-array p0, v1, [Ljava/lang/Object;

    .line 267
    invoke-static {v3, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    return v1

    .line 271
    :goto_5
    invoke-static {v2}, Lms;->a(Ljava/io/Closeable;)V

    .line 274
    invoke-static {p0}, Lms;->a(Ljava/io/Closeable;)V

    .line 277
    new-array p0, v1, [Ljava/lang/Object;

    .line 279
    invoke-static {v3, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    throw p1
.end method

.method public static h(Ljava/lang/String;I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "valueOfInt"

    .line 12
    const-string v2, "exception:"

    .line 14
    invoke-static {v1, v2, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 17
    return p1
.end method
